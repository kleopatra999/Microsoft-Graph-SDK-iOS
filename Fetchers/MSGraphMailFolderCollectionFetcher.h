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


#ifndef MSGRAPHMAILFOLDERCOLLECTIONFETCHER_H
#define MSGRAPHMAILFOLDERCOLLECTIONFETCHER_H

@class MSGraphMailFolderFetcher;

#import "core/MSOrcCollectionFetcher.h"
#import "api/api.h"
#import "core/core.h"
#import "MSGraphModels.h"

/** MSGraphMailFolderCollectionFetcher
 *
 */
@interface MSGraphMailFolderCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (void)readWithCallback:(void (^)(NSArray *, MSOrcError *))callback;

- (MSGraphMailFolderFetcher *)getById: (id) identifier;
- (void)add:(MSGraphMailFolder *)entity callback:(void (^)(MSGraphMailFolder *, MSOrcError *))callback;

- (MSGraphMailFolderCollectionFetcher *)select:(NSString *)params;
- (MSGraphMailFolderCollectionFetcher *)filter:(NSString *)params;
- (MSGraphMailFolderCollectionFetcher *)search:(NSString *)params;
- (MSGraphMailFolderCollectionFetcher *)top:(int)value;
- (MSGraphMailFolderCollectionFetcher *)skip:(int)value;
- (MSGraphMailFolderCollectionFetcher *)expand:(NSString *)value;
- (MSGraphMailFolderCollectionFetcher *)orderBy:(NSString *)params;
- (MSGraphMailFolderCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphMailFolderCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
