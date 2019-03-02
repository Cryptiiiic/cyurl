#include "CyURLRootListController.h"

@implementation CyURLRootListController

- (NSArray *)specifiers
{
	if (!_specifiers)
	{
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}

	return _specifiers;
}

@end
