#pragma once
#include <UIKit/UIKit.h>

@interface PSSpecifier : NSObject
+ (instancetype)preferenceSpecifierNamed:(NSString *)name
                                 target:(id)target
                                    set:(SEL)set
                                    get:(SEL)get
                                 detail:(Class)detail
                                   cell:(NSString *)cell
                                   edit:(Class)edit;
- (id)propertyForKey:(NSString *)key;
- (void)setProperty:(id)value forKey:(NSString *)key;
@property (retain) NSString *identifier;
@end

@interface PSListController : UITableViewController
- (NSArray *)specifiers;
- (PSSpecifier *)specifier;
- (id)specifierForID:(NSString *)identifier;
- (id)specifierAtIndexPath:(NSIndexPath *)path;
- (id)readPreferenceValue:(PSSpecifier *)specifier;
- (void)setPreferenceValue:(id)value specifier:(PSSpecifier *)specifier;
- (void)reloadSpecifiers;
@end

extern NSString *const PSGroupCell;
extern NSString *const PSSwitchCell;
extern NSString *const PSButtonCell;
extern NSString *const PSLinkCell;
extern NSString *const PSLinkListCell;
extern NSString *const PSTextFieldCell;
