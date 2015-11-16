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


#ifndef MSGRAPHOUTLOOKITEMCOLLECTIONFETCHER_H
#define MSGRAPHOUTLOOKITEMCOLLECTIONFETCHER_H

@class MSGraphOutlookItemFetcher;

#import "core/MSOrcCollectionFetcher.h"
#import "api/api.h"
#import "core/core.h"
#import "MSGraphModels.h"

/** MSGraphOutlookItemCollectionFetcher
 *
 */
@interface MSGraphOutlookItemCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (void)readWithCallback:(void (^)(NSArray *, MSOrcError *))callback;

- (MSGraphOutlookItemFetcher *)getById: (id) identifier;
- (void)add:(MSGraphOutlookItem *)entity callback:(void (^)(MSGraphOutlookItem *, MSOrcError *))callback;

- (MSGraphOutlookItemCollectionFetcher *)select:(NSString *)params;
- (MSGraphOutlookItemCollectionFetcher *)filter:(NSString *)params;
- (MSGraphOutlookItemCollectionFetcher *)search:(NSString *)params;
- (MSGraphOutlookItemCollectionFetcher *)top:(int)value;
- (MSGraphOutlookItemCollectionFetcher *)skip:(int)value;
- (MSGraphOutlookItemCollectionFetcher *)expand:(NSString *)value;
- (MSGraphOutlookItemCollectionFetcher *)orderBy:(NSString *)params;
- (MSGraphOutlookItemCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphOutlookItemCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
