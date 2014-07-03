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
@property (nonatomic,strong) NSMutableArray * listProduct;


- (IBAction)show_products:(id)sender;



@end
