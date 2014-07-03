//
//  ApiVC.h
//  Catalogo
//
//  Created by Nicolas Rodriguez on 02/07/14.
//  Copyright (c) 2014 LakeViewLabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ApiVC : UIViewController
////////////////////////////SINGLETON//////////////////////////////////
+(ApiVC *) getInstance;
//////////////////////////////////////////////////////////////////////

-(NSMutableArray*) getAllProductsApi;

@end
