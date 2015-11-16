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



#ifndef MSGRAPHGEOCOORDINATES_H
#define MSGRAPHGEOCOORDINATES_H

#import <Foundation/Foundation.h>
#import "core/MSOrcChangesTrackingArray.h"

#import "core/MSOrcBaseEntity.h"
#import "api/MSOrcInteroperableWithDictionary.h"

/** Interface MSGraphGeoCoordinates
 *
 */
@interface MSGraphGeoCoordinates : MSOrcBaseEntity <MSOrcInteroperableWithDictionary>

/** Property altitude
 *
 */
@property (nonatomic,  setter=setAltitude:, getter=altitude) double altitude;

/** Property latitude
 *
 */
@property (nonatomic,  setter=setLatitude:, getter=latitude) double latitude;

/** Property longitude
 *
 */
@property (nonatomic,  setter=setLongitude:, getter=longitude) double longitude;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings;


@end

#endif
