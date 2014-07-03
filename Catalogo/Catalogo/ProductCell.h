//
//  ProductCell.h
//  Catalogo
//
//  Created by Nicolas Rodriguez on 02/07/14.
//  Copyright (c) 2014 LakeViewLabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIButton *button_products_1;
@property (strong, nonatomic) IBOutlet UIButton *button_products_2;

@property (strong, nonatomic) IBOutlet UILabel *text_button_1;
@property (strong, nonatomic) IBOutlet UILabel *text_button_2;
@property (strong, nonatomic) IBOutlet UILabel *price_text_button_1;
@property (strong, nonatomic) IBOutlet UILabel *price_text_button_2;

@end
