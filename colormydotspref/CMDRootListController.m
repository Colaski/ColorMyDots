#include "CMDRootListController.h"

@implementation CMDRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}
//Thanks to Chris(Simalary) for this snippit
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Apply" style:UIBarButtonItemStyleDone target:self action:@selector(restartSpringBoard:)];
    self.navigationItem.rightBarButtonItem.tintColor = [UIColor whiteColor];
}

@end
