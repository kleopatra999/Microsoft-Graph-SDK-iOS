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


#ifndef MSGRAPHTHUMBNAILSETCOLLECTIONFETCHER_H
#define MSGRAPHTHUMBNAILSETCOLLECTIONFETCHER_H

@class MSGraphThumbnailSetFetcher;

#import "core/MSOrcCollectionFetcher.h"
#import "api/api.h"
#import "core/core.h"
#import "MSGraphModels.h"

/** MSGraphThumbnailSetCollectionFetcher
 *
 */
@interface MSGraphThumbnailSetCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (void)readWithCallback:(void (^)(NSArray *, MSOrcError *))callback;

- (MSGraphThumbnailSetFetcher *)getById: (id) identifier;
- (void)add:(MSGraphThumbnailSet *)entity callback:(void (^)(MSGraphThumbnailSet *, MSOrcError *))callback;

- (MSGraphThumbnailSetCollectionFetcher *)select:(NSString *)params;
- (MSGraphThumbnailSetCollectionFetcher *)filter:(NSString *)params;
- (MSGraphThumbnailSetCollectionFetcher *)search:(NSString *)params;
- (MSGraphThumbnailSetCollectionFetcher *)top:(int)value;
- (MSGraphThumbnailSetCollectionFetcher *)skip:(int)value;
- (MSGraphThumbnailSetCollectionFetcher *)expand:(NSString *)value;
- (MSGraphThumbnailSetCollectionFetcher *)orderBy:(NSString *)params;
- (MSGraphThumbnailSetCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphThumbnailSetCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
