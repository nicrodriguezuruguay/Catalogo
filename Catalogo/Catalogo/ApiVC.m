//
//  ApiVC.m
//  Catalogo
//
//  Created by Nicolas Rodriguez on 02/07/14.
//  Copyright (c) 2014 LakeViewLabs. All rights reserved.
//

#import "ApiVC.h"

@interface ApiVC ()

@end

@implementation ApiVC

////////////////////////////SINGLETON//////////////////////////////////

+(ApiVC *) getInstance{ // Singleton APIProxi
    static  ApiVC *inst = nil;
    @synchronized(self){
        if (!inst) {
            inst = [[self alloc] init];
        }
    }
    return inst;
}
//////////////////////////////////////////////////////////////////////
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//////Agrego productos de prueba manualmente y los retorna ////////
-(NSMutableArray*) getAllProductsApi {
    
    NSMutableArray * allProducts = [[NSMutableArray alloc]init];
    NSMutableDictionary * Products=[[NSMutableDictionary alloc]init];
    
    //////// producto 1 ////////
    [Products setValue:[NSNumber numberWithInteger:0] forKey:@"id_Product"];
    
    [Products setValue:@"Nicolas" forKey:@"name"];
    [Products setValue:@"this is a product of Nicolas" forKey:@"description"];
    [Products setValue:[NSNumber numberWithInteger:42] forKey:@"price"];
    [allProducts addObject:Products];
    //////// producto 1 ////////
    
    //////// producto 2 ////////
    Products=[[NSMutableDictionary alloc]init];
    
    [Products setValue:[NSNumber numberWithInteger:1] forKey:@"id_Product"];
    [Products setValue:@"Pablo" forKey:@"name"];
    [Products setValue:@"this is a product of Pablo" forKey:@"description"];
    [Products setValue:[NSNumber numberWithInteger:25] forKey:@"price"];
    [allProducts addObject:Products];
    //////// producto 2 ////////
    
    //////// producto 3 ////////
    Products=[[NSMutableDictionary alloc]init];
    [Products setValue:[NSNumber numberWithInteger:2] forKey:@"id_Product"];
    [Products setValue:@"Fede" forKey:@"name"];
    [Products setValue:@"this is a product of Fede" forKey:@"description"];
    [Products setValue:[NSNumber numberWithInteger:78] forKey:@"price"];
    [allProducts addObject:Products];
    //////// producto 3 ////////
    
    //////// producto 4 ////////
    Products=[[NSMutableDictionary alloc]init];
    [Products setValue:[NSNumber numberWithInteger:3] forKey:@"id_Product"];
    [Products setValue:@"Bananero" forKey:@"name"];
    [Products setValue:@"this is a product of Bananero" forKey:@"description"];
    [Products setValue:[NSNumber numberWithInteger:457] forKey:@"price"];
    [allProducts addObject:Products];
    //////// producto 4 ////////
    
    //////// producto 5 ////////
    Products=[[NSMutableDictionary alloc]init];
    [Products setValue:[NSNumber numberWithInteger:4] forKey:@"id_Product"];
    [Products setValue:@"Santiago" forKey:@"name"];
    [Products setValue:@"this is a product of Santiago" forKey:@"description"];
    [Products setValue:[NSNumber numberWithInteger:97] forKey:@"price"];
    [allProducts addObject:Products];
    //////// producto 5 ////////
    
    //////// producto 6 ////////
    Products=[[NSMutableDictionary alloc]init];
    [Products setValue:[NSNumber numberWithInteger:5] forKey:@"id_Product"];
    [Products setValue:@"Andres" forKey:@"name"];
    [Products setValue:@"this is a product of Andres" forKey:@"description"];
    [Products setValue:[NSNumber numberWithInteger:18] forKey:@"price"];
    [allProducts addObject:Products];
    //////// producto 6 ////////
    
    //////// producto 7 ////////
    Products=[[NSMutableDictionary alloc]init];
    [Products setValue:[NSNumber numberWithInteger:6] forKey:@"id_Product"];
    [Products setValue:@"Mario" forKey:@"name"];
    [Products setValue:@"this is a product of Mario" forKey:@"description"];
    [Products setValue:[NSNumber numberWithInteger:457] forKey:@"price"];
    [allProducts addObject:Products];
    //////// producto 7 ////////
    
    //////// producto 8 ////////
    Products=[[NSMutableDictionary alloc]init];
    [Products setValue:[NSNumber numberWithInteger:7] forKey:@"id_Product"];
    [Products setValue:@"Roberto" forKey:@"name"];
    [Products setValue:@"this is a product of Roberto" forKey:@"description"];
    [Products setValue:[NSNumber numberWithInteger:97] forKey:@"price"];
    [allProducts addObject:Products];
    //////// producto 8 ////////

    return allProducts;
    
}
//////Agrego productos de prueba manualmente y los retorna ////////

@end
