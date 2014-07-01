//
//  ProductVC.h
//  Catalogo
//
//  Created by Nicolas Rodriguez on 30/06/14.
//  Copyright (c) 2014 LakeViewLabs. All rights reserved.
//

#import "ViewController.h"
#import "Product.h"
@interface ProductVC : ViewController

////////////////////////////SINGLETON//////////////////////////////////
+(ProductVC *) getInstance;
//////////////////////////////////////////////////////////////////////


-(void)addProduct:(int) id_Product name:(NSString*) name description:(NSString*)description price:(int) price;
-(void)deleteProduct:(int) id_Product;
-(void)modifyProduct:(int) id_Product name:(NSString*) name description:(NSString*)description price:(int) price;

@end
