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


#ifndef MSGRAPHPERMISSIONCOLLECTIONFETCHER_H
#define MSGRAPHPERMISSIONCOLLECTIONFETCHER_H

@class MSGraphPermissionFetcher;

#import "core/MSOrcCollectionFetcher.h"
#import "api/api.h"
#import "core/core.h"
#import "MSGraphModels.h"

/** MSGraphPermissionCollectionFetcher
 *
 */
@interface MSGraphPermissionCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (void)readWithCallback:(void (^)(NSArray *, MSOrcError *))callback;

- (MSGraphPermissionFetcher *)getById: (id) identifier;
- (void)add:(MSGraphPermission *)entity callback:(void (^)(MSGraphPermission *, MSOrcError *))callback;

- (MSGraphPermissionCollectionFetcher *)select:(NSString *)params;
- (MSGraphPermissionCollectionFetcher *)filter:(NSString *)params;
- (MSGraphPermissionCollectionFetcher *)search:(NSString *)params;
- (MSGraphPermissionCollectionFetcher *)top:(int)value;
- (MSGraphPermissionCollectionFetcher *)skip:(int)value;
- (MSGraphPermissionCollectionFetcher *)expand:(NSString *)value;
- (MSGraphPermissionCollectionFetcher *)orderBy:(NSString *)params;
- (MSGraphPermissionCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphPermissionCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
