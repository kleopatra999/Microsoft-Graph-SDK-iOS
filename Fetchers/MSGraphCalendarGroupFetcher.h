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



#ifndef MSGRAPHCALENDARGROUPFETCHER_H
#define MSGRAPHCALENDARGROUPFETCHER_H

#import "MSGraphModels.h"
#import "api/api.h"
#import "core/core.h"
#import "core/MSOrcEntityFetcher.h"

@class MSGraphCalendarCollectionFetcher;
@class MSGraphCalendarCollectionFetcher;
@class MSGraphCalendarFetcher;
@class MSGraphCalendarGroupOperations;


/** MSGraphCalendarGroupFetcher
 *
 */
@interface MSGraphCalendarGroupFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSGraphCalendarGroupOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSGraphCalendarGroup *, MSOrcError *))callback;
- (void)update:(MSGraphCalendarGroup *)calendarGroup callback:(void (^)(MSGraphCalendarGroup *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSGraphCalendarGroupFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphCalendarGroupFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSGraphCalendarGroupFetcher *)select:(NSString *)params;
- (MSGraphCalendarGroupFetcher *)expand:(NSString *)value;
@property (strong, nonatomic, readonly, getter=calendars) MSGraphCalendarCollectionFetcher *calendars;

- (MSGraphCalendarFetcher *)calendarsById:(id)identifier;


@end

#endif
