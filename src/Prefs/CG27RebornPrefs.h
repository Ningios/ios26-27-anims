//
//  CG27RebornPrefs.h
//  iOS 27 动画 Reborn — 逆向重建
//
//  原版 PreferenceBundle：CG27RebornPageController（基类）
//                       CG27RebornRootListController
//                       CG27RebornAboutController
//

#import <Preferences/PSListController.h>
#import <Preferences/PSSpecifier.h>

@interface CG27RebornPageController : PSListController
@end

@interface CG27RebornRootListController : CG27RebornPageController
- (void)resetSettings;
- (void)performReset;
@end

@interface CG27RebornAboutController : CG27RebornPageController
- (void)respring;
- (void)openTelegram;
- (void)openChannel;
- (void)openGitHub;
@end
