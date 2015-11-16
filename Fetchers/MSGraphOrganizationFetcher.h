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



#ifndef MSGRAPHORGANIZATIONFETCHER_H
#define MSGRAPHORGANIZATIONFETCHER_H

#import "MSGraphModels.h"
#import "api/api.h"
#import "core/core.h"
#import "core/MSOrcEntityFetcher.h"

@class MSGraphAssignedPlanCollectionFetcher;
@class MSGraphProvisionedPlanCollectionFetcher;
@class MSGraphVerifiedDomainCollectionFetcher;
@class MSGraphOrganizationOperations;


/** MSGraphOrganizationFetcher
 *
 */
@interface MSGraphOrganizationFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSGraphOrganizationOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSGraphOrganization *, MSOrcError *))callback;
- (void)update:(MSGraphOrganization *)organization callback:(void (^)(MSGraphOrganization *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSGraphOrganizationFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphOrganizationFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSGraphOrganizationFetcher *)select:(NSString *)params;
- (MSGraphOrganizationFetcher *)expand:(NSString *)value;

@end

#endif
