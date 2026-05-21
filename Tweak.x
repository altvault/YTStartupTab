#import "Header.h"

static BOOL didSwitch = NO;

%hook YTPivotBarViewController
- (void)viewDidAppear:(BOOL)animated {
    %orig;
    if (!didSwitch) {
        // NSArray *pivotIdentifiers = @[@"FEwhat_to_watch", @"FEshorts", @"FEsubscriptions", @"FElibrary"];
        [self selectItemWithPivotIdentifier:@"FEsubscriptions"];
        didSwitch = YES;
    }
}
%end
