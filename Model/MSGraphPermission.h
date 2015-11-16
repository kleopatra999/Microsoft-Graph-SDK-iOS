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


#ifndef MSGRAPHPERMISSION_H
#define MSGRAPHPERMISSION_H

#import <Foundation/Foundation.h>
#import "core/MSOrcChangesTrackingArray.h"

@class MSGraphIdentitySet;
@class MSGraphSharingInvitation;
@class MSGraphItemReference;
@class MSGraphSharingLink;
#import "MSGraphEntity.h"
#import "api/MSOrcInteroperableWithDictionary.h"

/** Interface MSGraphPermission
 *
 */
@interface MSGraphPermission : MSGraphEntity <MSOrcInteroperableWithDictionary>

/** Property grantedTo
 *
 */
@property (nonatomic,  copy, setter=setGrantedTo:, getter=grantedTo) MSGraphIdentitySet * grantedTo;

/** Property invitation
 *
 */
@property (nonatomic,  copy, setter=setInvitation:, getter=invitation) MSGraphSharingInvitation * invitation;

/** Property inheritedFrom
 *
 */
@property (nonatomic,  copy, setter=setInheritedFrom:, getter=inheritedFrom) MSGraphItemReference * inheritedFrom;

/** Property link
 *
 */
@property (nonatomic,  copy, setter=setLink:, getter=link) MSGraphSharingLink * link;

/** Property roles
 *
 */
@property (nonatomic,  copy, setter=setRoles:, getter=roles) NSMutableArray * roles;

/** Property shareId
 *
 */
@property (nonatomic,  copy, setter=setShareId:, getter=shareId) NSString * shareId;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings;


@end

#endif
