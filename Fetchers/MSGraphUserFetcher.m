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


#import "MSGraphFetchers.h"
#import "core/core.h"

@implementation MSGraphUserFetcher

@synthesize operations = _operations;

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {

    if (self = [super initWithUrl:urlComponent parent:parent asClass:[MSGraphUser class]]) {

		_operations = [[MSGraphUserOperations alloc] initOperationWithUrl:urlComponent parent:parent];
    }

    return self;
}

- (void)update:(id)entity callback:(void (^)(MSGraphUser *user, MSOrcError *e))callback {

	return [super update:entity callback:callback];
}

- (void)delete:(void (^)(int status, MSOrcError *e))callback {

	return [super deleteWithCallback:callback];
}

- (MSGraphUserFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value {
    [super addCustomParametersWithName:name value:value];
    
    return self;
}

- (MSGraphUserFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value {
    [super addCustomHeaderWithName:name value:value];
    
    return self;
}

- (MSGraphUserFetcher *)select:(NSString *)params {
    [super select:params];
    
    return self;
}

- (MSGraphUserFetcher *)expand:(NSString *)value {
    [super expand:value];
    
    return self;
}

- (void) readWithCallback:(void (^)(MSGraphUser *user, MSOrcError *error))callback {
    [super readWithCallback:^(id response, MSOrcError *error) {
        callback(response, error);
    }];
}

- (MSGraphDirectoryObjectCollectionFetcher *)ownedDevices {

    return [[MSGraphDirectoryObjectCollectionFetcher alloc] initWithUrl:@"ownedDevices" parent:self asClass:[MSGraphDirectoryObject class]];
}

- (MSGraphDirectoryObjectFetcher *)ownedDevicesById:(NSString *)identifier {

    return [[[MSGraphDirectoryObjectCollectionFetcher alloc] initWithUrl:@"ownedDevices" parent:self asClass:[MSGraphDirectoryObject class]] getById:identifier];

}

- (MSGraphDirectoryObjectCollectionFetcher *)registeredDevices {

    return [[MSGraphDirectoryObjectCollectionFetcher alloc] initWithUrl:@"registeredDevices" parent:self asClass:[MSGraphDirectoryObject class]];
}

- (MSGraphDirectoryObjectFetcher *)registeredDevicesById:(NSString *)identifier {

    return [[[MSGraphDirectoryObjectCollectionFetcher alloc] initWithUrl:@"registeredDevices" parent:self asClass:[MSGraphDirectoryObject class]] getById:identifier];

}

- (MSGraphDirectoryObjectFetcher *)manager {

	 return [[MSGraphDirectoryObjectFetcher alloc] initWithUrl:@"manager" parent:self asClass:[MSGraphDirectoryObject class]];
}

- (MSGraphDirectoryObjectCollectionFetcher *)directReports {

    return [[MSGraphDirectoryObjectCollectionFetcher alloc] initWithUrl:@"directReports" parent:self asClass:[MSGraphDirectoryObject class]];
}

- (MSGraphDirectoryObjectFetcher *)directReportsById:(NSString *)identifier {

    return [[[MSGraphDirectoryObjectCollectionFetcher alloc] initWithUrl:@"directReports" parent:self asClass:[MSGraphDirectoryObject class]] getById:identifier];

}

- (MSGraphDirectoryObjectCollectionFetcher *)memberOf {

    return [[MSGraphDirectoryObjectCollectionFetcher alloc] initWithUrl:@"memberOf" parent:self asClass:[MSGraphDirectoryObject class]];
}

- (MSGraphDirectoryObjectFetcher *)memberOfById:(NSString *)identifier {

    return [[[MSGraphDirectoryObjectCollectionFetcher alloc] initWithUrl:@"memberOf" parent:self asClass:[MSGraphDirectoryObject class]] getById:identifier];

}

- (MSGraphDirectoryObjectCollectionFetcher *)createdObjects {

    return [[MSGraphDirectoryObjectCollectionFetcher alloc] initWithUrl:@"createdObjects" parent:self asClass:[MSGraphDirectoryObject class]];
}

- (MSGraphDirectoryObjectFetcher *)createdObjectsById:(NSString *)identifier {

    return [[[MSGraphDirectoryObjectCollectionFetcher alloc] initWithUrl:@"createdObjects" parent:self asClass:[MSGraphDirectoryObject class]] getById:identifier];

}

- (MSGraphDirectoryObjectCollectionFetcher *)ownedObjects {

    return [[MSGraphDirectoryObjectCollectionFetcher alloc] initWithUrl:@"ownedObjects" parent:self asClass:[MSGraphDirectoryObject class]];
}

- (MSGraphDirectoryObjectFetcher *)ownedObjectsById:(NSString *)identifier {

    return [[[MSGraphDirectoryObjectCollectionFetcher alloc] initWithUrl:@"ownedObjects" parent:self asClass:[MSGraphDirectoryObject class]] getById:identifier];

}

- (MSGraphMessageCollectionFetcher *)messages {

    return [[MSGraphMessageCollectionFetcher alloc] initWithUrl:@"Messages" parent:self asClass:[MSGraphMessage class]];
}

- (MSGraphMessageFetcher *)messagesById:(NSString *)identifier {

    return [[[MSGraphMessageCollectionFetcher alloc] initWithUrl:@"Messages" parent:self asClass:[MSGraphMessage class]] getById:identifier];

}

- (MSGraphGroupCollectionFetcher *)joinedGroups {

    return [[MSGraphGroupCollectionFetcher alloc] initWithUrl:@"JoinedGroups" parent:self asClass:[MSGraphGroup class]];
}

- (MSGraphGroupFetcher *)joinedGroupsById:(NSString *)identifier {

    return [[[MSGraphGroupCollectionFetcher alloc] initWithUrl:@"JoinedGroups" parent:self asClass:[MSGraphGroup class]] getById:identifier];

}

- (MSGraphMailFolderCollectionFetcher *)mailFolders {

    return [[MSGraphMailFolderCollectionFetcher alloc] initWithUrl:@"MailFolders" parent:self asClass:[MSGraphMailFolder class]];
}

- (MSGraphMailFolderFetcher *)mailFoldersById:(NSString *)identifier {

    return [[[MSGraphMailFolderCollectionFetcher alloc] initWithUrl:@"MailFolders" parent:self asClass:[MSGraphMailFolder class]] getById:identifier];

}

- (MSGraphCalendarFetcher *)calendar {

	 return [[MSGraphCalendarFetcher alloc] initWithUrl:@"Calendar" parent:self asClass:[MSGraphCalendar class]];
}

- (MSGraphCalendarCollectionFetcher *)calendars {

    return [[MSGraphCalendarCollectionFetcher alloc] initWithUrl:@"Calendars" parent:self asClass:[MSGraphCalendar class]];
}

- (MSGraphCalendarFetcher *)calendarsById:(NSString *)identifier {

    return [[[MSGraphCalendarCollectionFetcher alloc] initWithUrl:@"Calendars" parent:self asClass:[MSGraphCalendar class]] getById:identifier];

}

- (MSGraphCalendarGroupCollectionFetcher *)calendarGroups {

    return [[MSGraphCalendarGroupCollectionFetcher alloc] initWithUrl:@"CalendarGroups" parent:self asClass:[MSGraphCalendarGroup class]];
}

- (MSGraphCalendarGroupFetcher *)calendarGroupsById:(NSString *)identifier {

    return [[[MSGraphCalendarGroupCollectionFetcher alloc] initWithUrl:@"CalendarGroups" parent:self asClass:[MSGraphCalendarGroup class]] getById:identifier];

}

- (MSGraphEventCollectionFetcher *)calendarView {

    return [[MSGraphEventCollectionFetcher alloc] initWithUrl:@"CalendarView" parent:self asClass:[MSGraphEvent class]];
}

- (MSGraphEventFetcher *)calendarViewById:(NSString *)identifier {

    return [[[MSGraphEventCollectionFetcher alloc] initWithUrl:@"CalendarView" parent:self asClass:[MSGraphEvent class]] getById:identifier];

}

- (MSGraphEventCollectionFetcher *)events {

    return [[MSGraphEventCollectionFetcher alloc] initWithUrl:@"Events" parent:self asClass:[MSGraphEvent class]];
}

- (MSGraphEventFetcher *)eventsById:(NSString *)identifier {

    return [[[MSGraphEventCollectionFetcher alloc] initWithUrl:@"Events" parent:self asClass:[MSGraphEvent class]] getById:identifier];

}

- (MSGraphContactCollectionFetcher *)contacts {

    return [[MSGraphContactCollectionFetcher alloc] initWithUrl:@"Contacts" parent:self asClass:[MSGraphContact class]];
}

- (MSGraphContactFetcher *)contactsById:(NSString *)identifier {

    return [[[MSGraphContactCollectionFetcher alloc] initWithUrl:@"Contacts" parent:self asClass:[MSGraphContact class]] getById:identifier];

}

- (MSGraphContactFolderCollectionFetcher *)contactFolders {

    return [[MSGraphContactFolderCollectionFetcher alloc] initWithUrl:@"ContactFolders" parent:self asClass:[MSGraphContactFolder class]];
}

- (MSGraphContactFolderFetcher *)contactFoldersById:(NSString *)identifier {

    return [[[MSGraphContactFolderCollectionFetcher alloc] initWithUrl:@"ContactFolders" parent:self asClass:[MSGraphContactFolder class]] getById:identifier];

}

- (MSGraphProfilePhotoFetcher *)photo {

	 return [[MSGraphProfilePhotoFetcher alloc] initWithUrl:@"Photo" parent:self asClass:[MSGraphProfilePhoto class]];
}

- (MSGraphDriveFetcher *)drive {

	 return [[MSGraphDriveFetcher alloc] initWithUrl:@"drive" parent:self asClass:[MSGraphDrive class]];
}

@end
