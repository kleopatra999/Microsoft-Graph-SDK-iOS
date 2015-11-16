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



#ifndef MSGRAPHENTITYFETCHER_H
#define MSGRAPHENTITYFETCHER_H

#import "MSGraphModels.h"
#import "api/api.h"
#import "core/core.h"
#import "core/MSOrcEntityFetcher.h"

@class MSGraphDirectoryObjectFetcher;	
@class MSGraphConversationThreadFetcher;	
@class MSGraphCalendarFetcher;	
@class MSGraphOutlookItemFetcher;	
@class MSGraphConversationFetcher;	
@class MSGraphProfilePhotoFetcher;	
@class MSGraphDriveFetcher;	
@class MSGraphSubscribedSkuFetcher;	
@class MSGraphMailFolderFetcher;	
@class MSGraphCalendarGroupFetcher;	
@class MSGraphContactFolderFetcher;	
@class MSGraphAttachmentFetcher;	
@class MSGraphDriveItemFetcher;	
@class MSGraphShareFetcher;	
@class MSGraphPermissionFetcher;	
@class MSGraphThumbnailSetFetcher;	
@class MSGraphEntityOperations;


/** MSGraphEntityFetcher
 *
 */
@interface MSGraphEntityFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSGraphEntityOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSGraphEntity *, MSOrcError *))callback;
- (void)update:(MSGraphEntity *)entity callback:(void (^)(MSGraphEntity *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSGraphEntityFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphEntityFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSGraphEntityFetcher *)select:(NSString *)params;
- (MSGraphEntityFetcher *)expand:(NSString *)value;
- (MSGraphDirectoryObjectFetcher *)asDirectoryObject;	
- (MSGraphConversationThreadFetcher *)asConversationThread;	
- (MSGraphCalendarFetcher *)asCalendar;	
- (MSGraphOutlookItemFetcher *)asOutlookItem;	
- (MSGraphConversationFetcher *)asConversation;	
- (MSGraphProfilePhotoFetcher *)asProfilePhoto;	
- (MSGraphDriveFetcher *)asDrive;	
- (MSGraphSubscribedSkuFetcher *)asSubscribedSku;	
- (MSGraphMailFolderFetcher *)asMailFolder;	
- (MSGraphCalendarGroupFetcher *)asCalendarGroup;	
- (MSGraphContactFolderFetcher *)asContactFolder;	
- (MSGraphAttachmentFetcher *)asAttachment;	
- (MSGraphDriveItemFetcher *)asDriveItem;	
- (MSGraphShareFetcher *)asShare;	
- (MSGraphPermissionFetcher *)asPermission;	
- (MSGraphThumbnailSetFetcher *)asThumbnailSet;	

@end

#endif
