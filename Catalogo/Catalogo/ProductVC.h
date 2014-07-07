//
//  ProductVC.h
//  Catalogo
//
//  Created by Nicolas Rodriguez on 30/06/14.
//  Copyright (c) 2014 LakeViewLabs. All rights reserved.
//

#import "ProductVCSecondView.h"
#import "Product.h"
@interface ProductVC : UIViewController

////////////////////////////SINGLETON//////////////////////////////////
+(ProductVC *) getInstance;
//////////////////////////////////////////////////////////////////////
@property (nonatomic,strong) NSMutableArray * listProduct;
@property (nonatomic,strong) Product * product_selected;

- (IBAction)show_products:(id)sender;
@property (weak, nonatomic) IBOutlet UICollectionView *colletion_products;
@property (weak, nonatomic) IBOutlet UIButton *button_colletion_products;






@end
