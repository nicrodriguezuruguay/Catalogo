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
            inst.listProduct = [[NSMutableArray alloc]init];//inicializo la lista de productos
        
        }
    }
    return inst;
}
//////////////////////////////////////////////////////////////////////
@synthesize listProduct ;

-(void) viewDidLoad {
     Product * new_product = [[Product alloc]init];
    
}

-(void)addProduct:(NSString*) name description:(NSString*)description price:(int) price{
    Product * new_product = [[Product alloc]init];
    
    new_product.id_Product = listProduct.count;
    new_product.name = name;
    new_product.description=description;
    new_product.price = price;
    
    [listProduct addObject:new_product];
    
    
}
-(void)deleteProduct:(int) id_Product{
    
}
-(void)modifyProduct:(int) id_Product name:(NSString*) name description:(NSString*)description price:(int) price{
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return listProduct.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }
    
    //NSString *currentValue = [shareValues objectAtIndex:[indexPath row]];
    [[cell textLabel]setText:@"hola"];
    return cell;
}


@end
