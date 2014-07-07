//
//  ProductVCSecondView.h
//  Catalogo
//
//  Created by Nicolas Rodriguez on 06/07/14.
//  Copyright (c) 2014 LakeViewLabs. All rights reserved.
//

#import "ProductVCSecondView.h"

@interface ProductVCSecondView : UIViewController
////////////////////////////SINGLETON//////////////////////////////////
+(ProductVCSecondView *) getInstance;
//////////////////////////////////////////////////////////////////////

////////////Segunda pantalla ////////////////
@property (weak, nonatomic) IBOutlet UILabel *title_product_selected;
@property (weak, nonatomic) IBOutlet UILabel *price_product_selected;
@property (weak, nonatomic) IBOutlet UILabel *description_product_selected;

- (IBAction)go_back;

@end
