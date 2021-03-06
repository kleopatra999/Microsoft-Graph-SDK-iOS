/*******************************************************************************
**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).

Copyright (c) Microsoft Corporation. All Rights Reserved.
Licensed under the Apache License 2.0; see LICENSE in the source repository
root for authoritative license information.﻿
******************************************************************************/



#import "MSGraphServiceEventType.h"

@implementation MSGraphServiceEventTypeSerializer

+(MSGraphServiceEventType) fromString:(NSString *) string {

    static NSDictionary *stringMappings=nil;
    
    if(stringMappings==nil)
    {
        stringMappings=[[NSDictionary alloc] initWithObjectsAndKeys:
         [NSNumber numberWithInt:MSGraphServiceEventTypeSingleInstance], @"singleInstance", [NSNumber numberWithInt:MSGraphServiceEventTypeOccurrence], @"occurrence", [NSNumber numberWithInt:MSGraphServiceEventTypeException], @"exception", [NSNumber numberWithInt:MSGraphServiceEventTypeSeriesMaster], @"seriesMaster",
            nil        
        ];
    }
    
    return [stringMappings[string] intValue];

}

+(NSString *) toString: (MSGraphServiceEventType) value {

    static NSDictionary *stringMappings=nil;
    
    if(stringMappings==nil)
    {
        stringMappings=[[NSDictionary alloc] initWithObjectsAndKeys:
         @"singleInstance", [NSNumber numberWithInt:MSGraphServiceEventTypeSingleInstance], @"occurrence", [NSNumber numberWithInt:MSGraphServiceEventTypeOccurrence], @"exception", [NSNumber numberWithInt:MSGraphServiceEventTypeException], @"seriesMaster", [NSNumber numberWithInt:MSGraphServiceEventTypeSeriesMaster],
            nil        
        ];
    }
    
    return stringMappings[[NSNumber numberWithInt:value]];
}

@end

