/*******************************************************************************
**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).

Copyright (c) Microsoft Open Technologies, Inc. All Rights Reserved.
Licensed under the Apache License 2.0; see LICENSE in the source repository
root for authoritative license information.﻿
******************************************************************************/



#import "MSGraphModels.h"
#import "core/MSOrcObjectizer.h"


/** Implementation for MSGraphReferenceAttachment
 *
 */
@implementation MSGraphReferenceAttachment


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
        if(_$$$_$$$propertiesNamesMappings==nil) {
    
        _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"LastModifiedDateTime", @"lastModifiedDateTime", @"Name", @"name", @"ContentType", @"contentType", @"Size", @"size", @"IsInline", @"isInline", @"id", @"_id", nil];
        
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.referenceAttachment";
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
        if(dic!=nil) {
		self.lastModifiedDateTime = (![dic objectForKey: @"LastModifiedDateTime"] || [ [dic objectForKey: @"LastModifiedDateTime"] isKindOfClass:[NSNull class]] )?self.lastModifiedDateTime:[MSOrcObjectizer dateFromString:[dic objectForKey: @"LastModifiedDateTime"]];
		self.name = (![dic objectForKey: @"Name"] || [ [dic objectForKey: @"Name"] isKindOfClass:[NSNull class]] )?self.name:[[dic objectForKey: @"Name"] copy];
		self.contentType = (![dic objectForKey: @"ContentType"] || [ [dic objectForKey: @"ContentType"] isKindOfClass:[NSNull class]] )?self.contentType:[[dic objectForKey: @"ContentType"] copy];
		self.size = (![dic objectForKey: @"Size"] || [ [dic objectForKey: @"Size"] isKindOfClass:[NSNull class]] )?self.size:[[dic objectForKey: @"Size"] intValue];
		self.isInline = (![dic objectForKey: @"IsInline"] || [ [dic objectForKey: @"IsInline"] isKindOfClass:[NSNull class]] )?self.isInline:[[dic objectForKey: @"IsInline"] boolValue];
		self._id = (![dic objectForKey: @"id"] || [ [dic objectForKey: @"id"] isKindOfClass:[NSNull class]] )?self._id:[[dic objectForKey: @"id"] copy];
    }
    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [MSOrcObjectizer stringFromDate:self.lastModifiedDateTime];if (curVal!=nil) [dic setValue: curVal forKey: @"LastModifiedDateTime"];}
	{id curVal = [self.name copy];if (curVal!=nil) [dic setValue: curVal forKey: @"Name"];}
	{id curVal = [self.contentType copy];if (curVal!=nil) [dic setValue: curVal forKey: @"ContentType"];}
	{[dic setValue: [NSNumber numberWithInt: self.size] forKey: @"Size"];}
	{[dic setValue: (self.isInline?@"true":@"false") forKey: @"IsInline"];}
	{id curVal = [self._id copy];if (curVal!=nil) [dic setValue: curVal forKey: @"id"];}
    [dic setValue: @"#microsoft.graph.referenceAttachment" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.lastModifiedDateTime;
    if([self.updatedValues containsObject:@"LastModifiedDateTime"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"LastModifiedDateTime"];
            }
    }
	{id curVal = self.name;
    if([self.updatedValues containsObject:@"Name"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"Name"];
            }
    }
	{id curVal = self.contentType;
    if([self.updatedValues containsObject:@"ContentType"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"ContentType"];
            }
    }
 if([self.updatedValues containsObject:@"Size"])
            { [dic setValue: [NSNumber numberWithInt: self.size] forKey: @"Size"];
} if([self.updatedValues containsObject:@"IsInline"])
            { [dic setValue: (self.isInline?@"true":@"false") forKey: @"IsInline"];
}	{id curVal = self._id;
    if([self.updatedValues containsObject:@"id"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"id"];
            }
    }
    return dic;
}



@end
