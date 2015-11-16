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



#import "MSGraphFetchers.h"


/** Implementation for MSGraphDriveOperations
 *
 */
@implementation MSGraphDriveOperations


- (instancetype)initOperationWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {
 
    return [super initOperationWithUrl:urlComponent parent:parent];
}

- (void)allPhotosWithCallback:(void (^)(MSGraphDriveItem *, MSOrcError*))callback {


	id<MSOrcRequest> request = [self.resolver createOrcRequest];
	NSDictionary *params = [[NSDictionary alloc] init];
	
	NSString *parameters = [MSOrcBaseContainer getFunctionParameters:params];

	[request.url appendPathComponent:[[NSString alloc] initWithFormat:@"allPhotos(%@)",parameters]];
	[request setVerb:HTTP_VERB_POST];

	return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
       
        if (e == nil) {
            MSGraphDriveItem * result = (MSGraphDriveItem *)[MSOrcObjectizer objectizeFromString:[[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding] toType: [MSGraphDriveItem  class]];
            callback(result, e);
        }
        else {

            callback(nil, e);
        }
        
    }];
    
        
}


@end


