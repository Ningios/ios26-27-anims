//
//  CG27RebornPrefs.m
//  iOS 27 动画 Reborn — 逆向重建
//

#import "CG27RebornPrefs.h"
#import <UIKit/UIKit.h>
#import <spawn.h>
#import <sys/wait.h>

static NSString *const kCG27PrefsDomain = @"com.bazik1337.ios27animsreborn";
static NSString *const kCG27PrefsReloadNote = @"com.bazik1337.ios27animsreborn/changed";

@implementation CG27RebornPageController

// IMP 0x3ff8
- (NSArray *)specifiers
{
    NSArray *specifiers = [super specifiers];
    if (!specifiers) {
        NSMutableArray *array = [NSMutableArray array];
        NSString *plist = [self.specifier propertyForKey:@"plist"] ?: @"Root";
        NSDictionary *root = [NSDictionary dictionaryWithContentsOfFile:
            [NSString stringWithFormat:@"%@/%@.plist",
             [self bundlePath], plist]];
        if (root[@"items"]) {
            for (NSDictionary *item in root[@"items"]) {
                PSSpecifier *specifier = [PSSpecifier preferenceSpecifierNamed:item[@"label"]
                                                                         target:self
                                                                            set:NSSelectorFromString(@"setPreferenceValue:specifier:")
                                                                            get:NSSelectorFromString(@"readPreferenceValue:")
                                                                         detail:nil
                                                                           cell:[item[@"cell"] isEqualToString:@"PSGroupCell"] ? PSGroupCell :
                                                                                [item[@"cell"] isEqualToString:@"PSSwitchCell"] ? PSSwitchCell :
                                                                                [item[@"cell"] isEqualToString:@"PSButtonCell"] ? PSButtonCell :
                                                                                [item[@"cell"] isEqualToString:@"PSLinkCell"] ? PSLinkCell : PSGroupCell
                                                                            edit:nil];
                for (NSString *key in item) {
                    if ([key isEqualToString:@"label"] || [key isEqualToString:@"cell"]) {
                        continue;
                    }
                    [specifier setProperty:item[key] forKey:key];
                }
                [array addObject:specifier];
            }
        }
        return array;
    }
    return specifiers;
}

// IMP 0x44e4
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.separatorColor = [UIColor colorWithWhite:1.0 alpha:0.08];
}

// IMP 0x4668
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationItem.title = [self titleForPage];
}

// IMP 0x472c
- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    CFPreferencesAppSynchronize((__bridge CFStringRef)kCG27PrefsDomain);
    CFNotificationCenterPostNotification(CFNotificationCenterGetDarwinNotifyCenter(),
                                         (__bridge CFStringRef)kCG27PrefsReloadNote,
                                         NULL, NULL, true);
}

// IMP 0x47ac
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [super tableView:tableView cellForRowAtIndexPath:indexPath];
    PSSpecifier *specifier = [self specifierAtIndexPath:indexPath];
    NSString *symbol = [specifier propertyForKey:@"iconSymbol"];
    if (symbol.length) {
        UIImage *image = [UIImage systemImageNamed:symbol];
        if (image) {
            cell.imageView.image = image;
            cell.imageView.tintColor = self.view.tintColor;
        }
    }
    return cell;
}

- (NSString *)bundlePath
{
    return [[NSBundle bundleForClass:[self class]] bundlePath];
}

- (NSString *)titleForPage
{
    NSDictionary *info = [[NSBundle bundleForClass:[self class]] infoDictionary];
    return info[@"CFBundleDisplayName"] ?: @"iOS 27 动画 Reborn";
}

@end

@implementation CG27RebornRootListController

// IMP 0x48cc
- (void)viewDidLoad
{
    [super viewDidLoad];
    NSDictionary *info = [[NSBundle bundleForClass:[self class]] infoDictionary];
    self.navigationItem.title = info[@"CFBundleDisplayName"] ?: @"iOS 27 动画 Reborn";
}

// IMP 0x4c80
- (void)resetSettings
{
    UIAlertController *alert =
        [UIAlertController alertControllerWithTitle:@"恢复推荐设置？"
                                            message:@"恢复推荐选项，保留当前的插件启用状态。"
                                     preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"取消"
                                              style:UIAlertActionStyleCancel
                                            handler:nil]];
    __weak typeof(self) weakSelf = self;
    [alert addAction:[UIAlertAction actionWithTitle:@"恢复"
                                              style:UIAlertActionStyleDestructive
                                            handler:^(UIAlertAction *action) {
        [weakSelf performReset];
    }]];
    [self presentViewController:alert animated:YES completion:nil];
}

// IMP 0x4ee4
- (void)performReset
{
    BOOL enabled = [[self readPreferenceValue:[self specifierForID:@"Enabled"]] boolValue];
    CFStringRef domain = (__bridge CFStringRef)kCG27PrefsDomain;
    CFPreferencesSetAppValue(CFSTR("Enabled"), enabled ? kCFBooleanTrue : kCFBooleanFalse, domain);
    CFPreferencesSetAppValue(CFSTR("AppAnimations"), kCFBooleanTrue, domain);
    CFPreferencesSetAppValue(CFSTR("NativeWallpaperZoom"), kCFBooleanFalse, domain);
    CFPreferencesSetAppValue(CFSTR("IconFlyIn"), kCFBooleanTrue, domain);
    CFPreferencesSetAppValue(CFSTR("ClearSheet"), kCFBooleanTrue, domain);
    CFPreferencesAppSynchronize(domain);
    CFNotificationCenterPostNotification(CFNotificationCenterGetDarwinNotifyCenter(),
                                         (__bridge CFStringRef)kCG27PrefsReloadNote,
                                         NULL, NULL, true);
    [self reloadSpecifiers];
}

@end

@implementation CG27RebornAboutController

// IMP 0x5088
- (void)respring
{
    const char *candidates[] = {"/var/jb/usr/bin/sbreload", "/usr/bin/sbreload"};
    for (int i = 0; i < 2; i++) {
        if ([[NSFileManager defaultManager] fileExistsAtPath:@(candidates[i])]) {
            pid_t pid = 0;
            const char *argv[] = {candidates[i], NULL};
            posix_spawn(&pid, candidates[i], NULL, NULL, (char *const *)argv, NULL);
            return;
        }
    }
    pid_t pid = 0;
    const char *argv[] = {"/usr/bin/killall", "SpringBoard", NULL};
    posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char *const *)argv, NULL);
}

// IMP 0x51f4
- (void)open:(id)sender
{
    NSString *urlString = [sender isKindOfClass:[NSString class]] ? sender :
        [sender respondsToSelector:@selector(propertyForKey:)] ?
            [sender performSelector:@selector(propertyForKey:) withObject:@"url"] : nil;
    if (![urlString isKindOfClass:[NSString class]]) {
        return;
    }
    NSURL *url = [NSURL URLWithString:urlString];
    if (!url) {
        return;
    }
    [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
}

// IMP 0x5298
- (void)openTelegram
{
    [self open:@"https://t.me/bazik1337"];
}

// IMP 0x52a4
- (void)openChannel
{
    [self open:@"https://t.me/ba31k_tweaks"];
}

// IMP 0x52b0
- (void)openGitHub
{
    [self open:@"https://github.com/ba31k/ios26-27-anims"];
}

@end
