//
//  main.m
//  lockscreen
//
//  Created by Don Reilly on 4/18/14.
//  Copyright (c) 2014 Don Reilly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import "newPrincipalClass.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSBundle *bundle = [NSBundle bundleWithPath:@"/Applications/Utilities/Keychain Access.app/Contents/Resources/Keychain.menu"];
        Class newPrincipalClass = [bundle principalClass];
        id instance = [[newPrincipalClass alloc] init];
        [instance _lockScreenMenuHit:NULL];
        
    }
    return 0;
}

