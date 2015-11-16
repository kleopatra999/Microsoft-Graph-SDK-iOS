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



#import "MSGraphDriveItem.h"
#import "MSGraphFetchers.h"


/** Implementation for MSGraphDriveItemCollectionOperations
 *
 */
@implementation MSGraphDriveItemCollectionOperations

- (void)inviteWithRecipients:(MSGraphRecipients *)recipients message:(NSString *)message requireSignIn:(bool)requireSignIn sendInvitation:(bool)sendInvitation roles:(NSString *)roles callback:(void (^)(MSGraphPermission *, MSOrcError*))callback {


      NSString *recipientsString = [MSOrcObjectizer deobjectizeToString:recipients];

  NSString *messageString = [NSString stringWithFormat:@"\"%@\"", message];

  NSString *requireSignInString = [MSOrcObjectizer stringFromBool:requireSignIn];

  NSString *sendInvitationString = [MSOrcObjectizer stringFromBool:sendInvitation];

  NSString *rolesString = [NSString stringWithFormat:@"\"%@\"", roles];

    return [self inviteRawWithRecipients:recipientsString message:messageString requireSignIn:requireSignInString sendInvitation:sendInvitationString roles:rolesString callback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            MSGraphPermission * result = (MSGraphPermission *)[MSOrcObjectizer objectizeFromString:returnValue toType: [MSGraphPermission  class]];
            callback(result, e);
        } 
        else {

            callback(nil, e);
        }
    }];    
    
        
}

- (void)inviteRawWithRecipients:(NSString *)recipients message:(NSString *)message requireSignIn:(NSString *)requireSignIn sendInvitation:(NSString *)sendInvitation roles:(NSString *)roles callback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
    NSArray *parameters = [[NSArray alloc] initWithObjects: [[NSDictionary alloc] initWithObjectsAndKeys:  recipients, @"recipients", message, @"message", requireSignIn, @"requireSignIn", sendInvitation, @"sendInvitation", roles, @"roles", nil ] , nil];
    NSData* payload = [[MSOrcBaseContainer generatePayloadWithParameters:parameters dependencyResolver:self.resolver] dataUsingEncoding:NSUTF8StringEncoding];
    [request setContent:payload];
    
    [request setVerb:HTTP_VERB_POST];
	     
	[request.url appendPathComponent:@"invite"];
        	
    return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
    
    }
- (void)copyWithParentReference:(MSGraphItemReference *)parentReference name:(NSString *)name callback:(void (^)(MSGraphDriveItem *, MSOrcError*))callback {


      NSString *parentReferenceString = [MSOrcObjectizer deobjectizeToString:parentReference];

  NSString *nameString = [NSString stringWithFormat:@"\"%@\"", name];

    return [self copyRawWithParentReference:parentReferenceString name:nameString callback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            MSGraphDriveItem * result = (MSGraphDriveItem *)[MSOrcObjectizer objectizeFromString:returnValue toType: [MSGraphDriveItem  class]];
            callback(result, e);
        } 
        else {

            callback(nil, e);
        }
    }];    
    
        
}

- (void)copyRawWithParentReference:(NSString *)parentReference name:(NSString *)name callback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
    NSArray *parameters = [[NSArray alloc] initWithObjects: [[NSDictionary alloc] initWithObjectsAndKeys:  parentReference, @"parentReference", name, @"name", nil ] , nil];
    NSData* payload = [[MSOrcBaseContainer generatePayloadWithParameters:parameters dependencyResolver:self.resolver] dataUsingEncoding:NSUTF8StringEncoding];
    [request setContent:payload];
    
    [request setVerb:HTTP_VERB_POST];
	     
	[request.url appendPathComponent:@"copy"];
        	
    return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
    
    }
- (void)createLinkWithType:(NSString *)type callback:(void (^)(MSGraphPermission *, MSOrcError*))callback {


      NSString *typeString = [NSString stringWithFormat:@"\"%@\"", type];

    return [self createLinkRawWithType:typeString callback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            MSGraphPermission * result = (MSGraphPermission *)[MSOrcObjectizer objectizeFromString:returnValue toType: [MSGraphPermission  class]];
            callback(result, e);
        } 
        else {

            callback(nil, e);
        }
    }];    
    
        
}

- (void)createLinkRawWithType:(NSString *)type callback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
    NSArray *parameters = [[NSArray alloc] initWithObjects: [[NSDictionary alloc] initWithObjectsAndKeys:  type, @"type", nil ] , nil];
    NSData* payload = [[MSOrcBaseContainer generatePayloadWithParameters:parameters dependencyResolver:self.resolver] dataUsingEncoding:NSUTF8StringEncoding];
    [request setContent:payload];
    
    [request setVerb:HTTP_VERB_POST];
	     
	[request.url appendPathComponent:@"createLink"];
        	
    return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
    
    }
- (void)createSessionWithItem:(MSGraphChunkedUploadSessionDescriptor *)item callback:(void (^)(MSGraphUploadSession *, MSOrcError*))callback {


      NSString *itemString = [MSOrcObjectizer deobjectizeToString:item];

    return [self createSessionRawWithItem:itemString callback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            MSGraphUploadSession * result = (MSGraphUploadSession *)[MSOrcObjectizer objectizeFromString:returnValue toType: [MSGraphUploadSession  class]];
            callback(result, e);
        } 
        else {

            callback(nil, e);
        }
    }];    
    
        
}

- (void)createSessionRawWithItem:(NSString *)item callback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
    NSArray *parameters = [[NSArray alloc] initWithObjects: [[NSDictionary alloc] initWithObjectsAndKeys:  item, @"item", nil ] , nil];
    NSData* payload = [[MSOrcBaseContainer generatePayloadWithParameters:parameters dependencyResolver:self.resolver] dataUsingEncoding:NSUTF8StringEncoding];
    [request setContent:payload];
    
    [request setVerb:HTTP_VERB_POST];
	     
	[request.url appendPathComponent:@"createSession"];
        	
    return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
    
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

- (void)searchWithQ:(NSString *)q callback:(void (^)(MSGraphDriveItem *, MSOrcError*))callback {


	id<MSOrcRequest> request = [self.resolver createOrcRequest];
	NSDictionary *params = [[NSDictionary alloc] initWithObjectsAndKeys:  q, @"q", nil ] ;
	
	NSString *parameters = [MSOrcBaseContainer getFunctionParameters:params];

	[request.url appendPathComponent:[[NSString alloc] initWithFormat:@"search(%@)",parameters]];
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
