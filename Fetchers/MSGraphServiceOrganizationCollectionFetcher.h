/*******************************************************************************
**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).

Copyright (c) Microsoft Corporation. All Rights Reserved.
Licensed under the Apache License 2.0; see LICENSE in the source repository
root for authoritative license information.﻿
******************************************************************************/


#ifndef MSGRAPHSERVICEORGANIZATIONCOLLECTIONFETCHER_H
#define MSGRAPHSERVICEORGANIZATIONCOLLECTIONFETCHER_H

@class MSGraphServiceOrganizationFetcher;

#import "core/MSOrcCollectionFetcher.h"
#import "api/api.h"
#import "core/core.h"
#import "MSGraphServiceModels.h"

/** MSGraphServiceOrganizationCollectionFetcher
 *
 */
__deprecated_msg("This SDK is deprecated. Please review the README for further information (https://github.com/OfficeDev/Microsoft-Graph-SDK-iOS).")
@interface MSGraphServiceOrganizationCollectionFetcher : MSOrcCollectionFetcher


- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (void)readWithCallback:(void (^)(NSArray *, MSOrcError *))callback;

- (MSGraphServiceOrganizationFetcher *)getById: (id) identifier;
- (void)add:(MSGraphServiceOrganization *)entity callback:(void (^)(MSGraphServiceOrganization *, MSOrcError *))callback;

- (MSGraphServiceOrganizationCollectionFetcher *)select:(NSString *)params;
- (MSGraphServiceOrganizationCollectionFetcher *)filter:(NSString *)params;
- (MSGraphServiceOrganizationCollectionFetcher *)search:(NSString *)params;
- (MSGraphServiceOrganizationCollectionFetcher *)top:(int)value;
- (MSGraphServiceOrganizationCollectionFetcher *)skip:(int)value;
- (MSGraphServiceOrganizationCollectionFetcher *)expand:(NSString *)value;
- (MSGraphServiceOrganizationCollectionFetcher *)orderBy:(NSString *)params;
- (MSGraphServiceOrganizationCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphServiceOrganizationCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
