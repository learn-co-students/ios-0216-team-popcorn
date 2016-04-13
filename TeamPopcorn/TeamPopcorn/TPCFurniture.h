//
//  TPCFurniture.h
//  TeamPopcorn
//
//  Created by Flatiron School on 4/12/16.
//  Copyright © 2016 Popcorn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <UIKit/UIKit.h>

@class TPCFurnitureButton;

NS_ASSUME_NONNULL_BEGIN

@interface TPCFurniture : NSManagedObject

@property (atomic) NSUInteger horizontalDistanceFromOrigin;
@property (atomic) NSUInteger verticalDistanceFromOrigin;

@property (atomic) CGFloat scale, widthscaled, lengthscaled, widthscale, lengthscale;

@property (strong, nonatomic) UIImage *image;
@property (nonatomic) BOOL hasScaled;
@property (nonatomic) CGPoint centerValues;
@property (nonatomic) BOOL hasMoved;

// Insert code here to declare functionality of your managed object subclass

-(instancetype)init;

-(instancetype)initWithWidth:(NSUInteger)width
                      length:(NSUInteger)length
                      height:(NSUInteger)height
                       image:(UIImage*)image
                      weight:(NSUInteger)weight;

@end

NS_ASSUME_NONNULL_END

#import "TPCFurniture+CoreDataProperties.h"
