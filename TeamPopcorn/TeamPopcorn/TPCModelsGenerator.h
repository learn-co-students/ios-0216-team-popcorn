//
//  TPCModelsGenerator.h
//  TeamPopcorn
//
//  Created by Flatiron School on 3/30/16.
//  Copyright © 2016 Popcorn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TPCModels.h"

@interface TPCModelsGenerator : NSObject

+(NSDictionary<TPCCatalogDescriber *,NSArray<TPCFurniture *> *> *)generateModels;

@end
