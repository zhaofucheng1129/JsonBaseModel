//
//  Category.h
//  PanliApp
//
//  Created by jason on 13-6-5.
//  Copyright (c) 2013年 Panli. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseModel.h"
#import "Country.h"

@interface MyCategory : BaseModel
{

}

/**
 *父类ID
 */
@property (nonatomic, assign) int parentId;

/**
 *类别ID
 */
@property (nonatomic, assign) int categoryId;

/**
 *类别名称
 */
@property (nonatomic, retain) NSString *categoryName;

/**
 *顺序id
 */
@property (nonatomic, assign) int sortId;

/**
 *子类别
 */
@property (nonatomic, retain) NSMutableArray *childCategory;

/**
 *自定义类别图片
 */
@property (nonatomic, retain) NSString *icons;

/**
 *  测试属性
 */
@property (nonatomic, assign) float aaa_bbb;


@property (nonatomic, retain) NSDictionary *myDic;

@property (nonatomic, retain) Country *country;

@end
