//
//  Country.m
//  PanliApp
//
//  Created by jason on 13-4-16.
//  Copyright (c) 2013年 Panli. All rights reserved.
//

#import "Country.h"

@implementation Country

@synthesize countryId = _countryId;
@synthesize code = _code;
@synthesize name = _name;


///**
// *序列化
// */
//- (void) encodeWithCoder:(NSCoder *)aCoder
//{
//    [aCoder encodeInt:_countryId forKey:@"ID"];
//    [aCoder encodeObject:_code forKey:@"Code"];
//    [aCoder encodeObject:_name forKey:@"Name"];
//}
//
///**
// *反序列化
// */
//- (id) initWithCoder:(NSCoder *)aDecoder
//{
//    if (self = [super init])
//    {
//         self.countryId = [aDecoder decodeIntForKey:@"ID"];
//         self.code      = [aDecoder decodeObjectForKey:@"Code"];
//         self.name      = [aDecoder decodeObjectForKey:@"Name"];
//    }
//    return self;
//}


- (void)dealloc
{
//    DLOG(@"%@ dealloc",[self class]);
//    SAFE_RELEASE(_code);
//    SAFE_RELEASE(_name);
    [super dealloc];
}

@end
