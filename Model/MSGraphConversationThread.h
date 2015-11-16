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


#ifndef MSGRAPHCONVERSATIONTHREAD_H
#define MSGRAPHCONVERSATIONTHREAD_H

#import <Foundation/Foundation.h>
#import "core/MSOrcChangesTrackingArray.h"

@class MSGraphRecipient;
@class MSGraphPost;
#import "MSGraphEntity.h"
#import "api/MSOrcInteroperableWithDictionary.h"

/** Interface MSGraphConversationThread
 *
 */
@interface MSGraphConversationThread : MSGraphEntity <MSOrcInteroperableWithDictionary>

/** Property toRecipients
 *
 */
@property (nonatomic,  copy, setter=setToRecipients:, getter=toRecipients) NSMutableArray * toRecipients;

/** Property topic
 *
 */
@property (nonatomic,  copy, setter=setTopic:, getter=topic) NSString * topic;

/** Property hasAttachments
 *
 */
@property (nonatomic,  setter=setHasAttachments:, getter=hasAttachments) bool hasAttachments;

/** Property lastDeliveredDateTime
 *
 */
@property (nonatomic,  copy, setter=setLastDeliveredDateTime:, getter=lastDeliveredDateTime) NSDate * lastDeliveredDateTime;

/** Property uniqueSenders
 *
 */
@property (nonatomic,  copy, setter=setUniqueSenders:, getter=uniqueSenders) NSMutableArray * uniqueSenders;

/** Property ccRecipients
 *
 */
@property (nonatomic,  copy, setter=setCcRecipients:, getter=ccRecipients) NSMutableArray * ccRecipients;

/** Property preview
 *
 */
@property (nonatomic,  copy, setter=setPreview:, getter=preview) NSString * preview;

/** Property isLocked
 *
 */
@property (nonatomic,  setter=setIsLocked:, getter=isLocked) bool isLocked;

/** Property posts
 *
 */
@property (nonatomic,  copy, setter=setPosts:, getter=posts) NSMutableArray * posts;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings;


@end

#endif
