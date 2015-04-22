//
//  Category.m
//  PanliApp
//
//  Created by jason on 13-6-5.
//  Copyright (c) 2013年 Panli. All rights reserved.
//

#import "MyCategory.h"

@implementation MyCategory


///**
// *序列化
// */
//- (void) encodeWithCoder:(NSCoder *)aCoder
//{
//    [aCoder encodeInt:_parentId forKey:@"parentId"];
//    [aCoder encodeInt:_categoryId forKey:@"categoryId"];
//    [aCoder encodeObject:_categoryName forKey:@"categoryName"];
//    [aCoder encodeInt:_sortId forKey:@"sortId"];
//    [aCoder encodeObject:_childCategory forKey:@"childCategory"];
//    [aCoder encodeObject:_icons forKey:@"icons"];
//}
//
///**
// *反序列化
// */
//- (id) initWithCoder:(NSCoder *)aDecoder
//{
//    if (self = [super init])
//    {
//        self.parentId = [aDecoder decodeIntForKey:@"parentId"];
//        self.categoryId = [aDecoder decodeIntForKey:@"categoryId"];
//        self.categoryName = [aDecoder decodeObjectForKey:@"categoryName"];
//        self.sortId = [aDecoder decodeIntForKey:@"sortId"];
//        self.childCategory = [aDecoder decodeObjectForKey:@"childCategory"];
//        self.icons = [aDecoder decodeObjectForKey:@"icons"];
//    }
//    return self;
//}

- (void)setAttributes:(NSDictionary *)dataDic {
    [super setAttributes:dataDic];
    
    NSDictionary *country = [dataDic objectForKey:@"country"];
    if (country != nil) {
        Country *countryModel = [[Country alloc] initWithDictionary:country error:nil];
        self.country = countryModel;
        [countryModel release];
    }
}

-(void)dealloc
{
//     DLOG(@"%@ dealloc",[self class]);
//    SAFE_RELEASE(_categoryName);
//    SAFE_RELEASE(_childCategory);
//    SAFE_RELEASE(_icons);
    [super dealloc];
}

@end
