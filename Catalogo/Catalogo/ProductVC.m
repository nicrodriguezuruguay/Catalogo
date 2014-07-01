//
//  ProductVC.m
//  Catalogo
//
//  Created by Nicolas Rodriguez on 30/06/14.
//  Copyright (c) 2014 LakeViewLabs. All rights reserved.
//

#import "ProductVC.h"
#import "Product.h"

@implementation ProductVC

////////////////////////////SINGLETON//////////////////////////////////

+(ProductVC *) getInstance{ // Singleton APIProxi
    static  ProductVC *inst = nil;
    @synchronized(self){
        if (!inst) {
            inst = [[self alloc] init];
        }
    }
    return inst;
}
//////////////////////////////////////////////////////////////////////

-(void)addProduct:(int) id_Product name:(NSString*) name description:(NSString*)description price:(int) price{
    
}
-(void)deleteProduct:(int) id_Product{
    
}
-(void)modifyProduct:(int) id_Product name:(NSString*) name description:(NSString*)description price:(int) price{
    
}


@end
