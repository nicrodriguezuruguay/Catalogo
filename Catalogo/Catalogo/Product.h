//
//  Product.h
//  Catalogo
//
//  Created by Nicolas Rodriguez on 01/07/14.
//  Copyright (c) 2014 LakeViewLabs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Product : NSObject

@property (nonatomic) int id_Product;
@property (nonatomic,strong) NSString * name;
@property (nonatomic,strong) NSString * description;
@property (nonatomic) int price;
//@property (nonatomic) BOOL * dolar;



@end
