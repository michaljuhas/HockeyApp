/**
 * Your Copyright Here
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
 */
#import "HockeySDK/HockeySDK.h"
#import "TiHockeystickModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"


@implementation TiHockeystickModule

#pragma mark Internal

// this is generated for your module, please do not change it
-(id)moduleGUID
{
	return @"20e11fcd-46d1-44fd-ad61-416cda43b916";
}

// this is generated for your module, please do not change it
-(NSString*)moduleId
{
	return @"ti.hockeystick";
}

#pragma mark Lifecycle

-(void)startup
{
	// this method is called when the module is first loaded
	// you *must* call the superclass
	[super startup];
    
    NSLog(@"[INFO] ---------------------------1",self);
    
    [[BITHockeyManager sharedHockeyManager] configureWithBetaIdentifier:@"1cb059232414ede07b15495ba1ea219f"
                                                         liveIdentifier:@"1cb059232414ede07b15495ba1ea219f"
                                                               delegate:self];
    NSLog(@"[INFO] ---------------------------2",self);
    [[BITHockeyManager sharedHockeyManager] startManager];
	
	NSLog(@"[INFO] %@ loaded now have fun",self);
}

-(void)shutdown:(id)sender
{
	// this method is called when the module is being unloaded
	// typically this is during shutdown. make sure you don't do too
	// much processing here or the app will be quit forceably
	
	// you *must* call the superclass
	[super shutdown:sender];
}

#pragma mark Cleanup 

-(void)dealloc
{
	// release any resources that have been retained by the module
	[super dealloc];
}

#pragma mark Internal Memory Management

-(void)didReceiveMemoryWarning:(NSNotification*)notification
{
	// optionally release any resources that can be dynamically
	// reloaded once memory is available - such as caches
	[super didReceiveMemoryWarning:notification];
}

#pragma mark Listener Notifications

-(void)_listenerAdded:(NSString *)type count:(int)count
{
	if (count == 1 && [type isEqualToString:@"my_event"])
	{
		// the first (of potentially many) listener is being added 
		// for event named 'my_event'
	}
}

-(void)_listenerRemoved:(NSString *)type count:(int)count
{
	if (count == 0 && [type isEqualToString:@"my_event"])
	{
		// the last listener called for event named 'my_event' has
		// been removed, we can optionally clean up any resources
		// since no body is listening at this point for that event
	}
}

#pragma Public APIs

-(id)example:(id)args
{

    
    NSDecimalNumber *boom = (NSDecimalNumber *)[NSDecimalNumber
                                                numberWithInt:0];
    [boom decimalNumberByAdding:nil];
	// example method
	return @"Hockey Stick";
}

-(id)exampleProp
{
	// example property getter
	return @"hello world";
}

-(void)setExampleProp:(id)value
{
    [NSException raise:NSInvalidArgumentException
                 format:@"Foo must not be nil"];
	// example property setter
}

@end
