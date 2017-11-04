//
//  AboutWindowController.m
//  DSYMTools
//
//  Created by answer on 7/26/16.
//  Copyright © 2016 answer. All rights reserved.
//

#import "AboutWindowController.h"
#import "NSAttributedString+Hyperlink.h"

@interface AboutWindowController ()
@property (weak) IBOutlet NSTextField *blog;

@property (weak) IBOutlet NSTextField *weibo;
@property (weak) IBOutlet NSTextField *gitHub;
@end

@implementation AboutWindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    [self.weibo setAllowsEditingTextAttributes:YES];
    [self.weibo setSelectable:YES];
    
    [self.blog setAllowsEditingTextAttributes:YES];
    [self.blog setSelectable:YES];
    
    [self.gitHub setAllowsEditingTextAttributes:YES];
    [self.gitHub setSelectable:YES];

    
    NSURL* url1 = [NSURL URLWithString:@"https://github.com/Paulswith"];
    NSMutableAttributedString* string1 = [[NSMutableAttributedString alloc] init];
    [string1 appendAttributedString: [NSAttributedString hyperlinkFromString:@"Paulswith" withURL:url1]];
    [self.weibo setAttributedStringValue: string1];
    
    NSURL* url2 = [NSURL URLWithString:@"https://paulswith.github.io/"];
    NSMutableAttributedString* string2 = [[NSMutableAttributedString alloc] init];
    [string2 appendAttributedString: [NSAttributedString hyperlinkFromString:@"paulswith.github.io/" withURL:url2]];
    [self.blog setAttributedStringValue: string2];
    
    NSURL* url3 = [NSURL URLWithString:@"https://github.com/Paulswith/StackTools"];
    NSMutableAttributedString* string3 = [[NSMutableAttributedString alloc] init];
    [string3 appendAttributedString: [NSAttributedString hyperlinkFromString:@"StackTools" withURL:url3]];
    [self.gitHub setAttributedStringValue: string3];
}
- (IBAction)close:(id)sender {
    [self.window.sheetParent endSheet:self.window returnCode:NSModalResponseOK];
}

@end
