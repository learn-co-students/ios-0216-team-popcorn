//
//  TPCBed.m
//  TeamPopcorn
//
//  Created by Flatiron School on 4/12/16.
//  Copyright © 2016 Popcorn. All rights reserved.
//

#import "TPCBed.h"

@implementation TPCBed

// Insert code here to add functionality to your managed object subclass


-(instancetype)init {
    self.name=@"basic";
    self=[self initWithWidth:bedWidth length:bedLength height:bedHeight image:[UIImage imageNamed:@"basicBed.png"] weight:bedWeight];
    self.bedSize = Twin;
    return self;
}

-(instancetype)initWithBedSize:(TPCBedSize)bedSize {
    
    switch (bedSize) {
        case Twin:
            self=[self initWithWidth:38 length:75 height:20 image:[UIImage imageNamed:@"basicBed.png"] weight:bedWeight];
            self.name= @"twin";
            self.bedSize=bedSize;
            return self;
            
        case Full:
            self.name=@"full";
            self=[self initWithWidth:53 length:75 height:20 image:[UIImage imageNamed:@"basicBed.png"] weight:bedWeight];
            self.bedSize=bedSize;
            return self;
            
        case Queen:
            self.name=@"queen";
            self=[self initWithWidth:60 length:80 height:20 image:[UIImage imageNamed:@"basicBed.png"] weight:bedWeight];
            self.bedSize=bedSize;
            return self;
            
        case King:
            self.name=@"king";
            self=[self initWithWidth:76 length:80 height:20 image:[UIImage imageNamed:@"basicBed.png"]
                              weight:bedWeight];
            self.bedSize=bedSize;
            return self;
            
        case CaliforniaKing:
            self.name=@"california king";
            self=[self initWithWidth:72 length:84 height:20 image:[UIImage imageNamed:@"basicBed.png"] weight:bedWeight];
            self.bedSize=bedSize;
            return self;
            
        default:
            
            self=[self initWithWidth:38 length:75 height:20 image:[UIImage imageNamed:@"basicBed.png"] weight:bedWeight];
            self.bedSize=bedSize;
            return self;
            
    }
    
}


+(instancetype)twinBed {
    return [[self alloc]initWithBedSize:Twin];
}

+(instancetype)fullBed {
    return [[self alloc]initWithBedSize:Full];
}

+(instancetype)queenBed {
    return [[self alloc]initWithBedSize:Queen];
}

+(instancetype)kingBed {
    return [[self alloc]initWithBedSize:King];
}

+(instancetype)californiaKingBed {
    return [[self alloc]initWithBedSize:CaliforniaKing];
}

+(instancetype)cribBed {
    return [[self alloc]initWithBedSize:Crib];
}

+(instancetype)futonBed {
    return [[self alloc]initWithBedSize:Futon];
}


@end
