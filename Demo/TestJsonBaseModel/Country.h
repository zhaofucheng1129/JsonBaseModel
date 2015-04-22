//
//  Country.h
//  PanliApp
//
//  Created by jason on 13-4-16.
//  Copyright (c) 2013年 Panli. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseModel.h"
@interface Country : BaseModel

{
    int _countryId;
    NSString * _code;
    NSString * _name;
}

/**
 *国家id
 */
@property(nonatomic,assign)int countryId;

/**
 *国家代码
 */
@property (nonatomic, retain)  NSString * code;

/**
 *国家名称
 */
@property (nonatomic, retain)  NSString * name;

@end
