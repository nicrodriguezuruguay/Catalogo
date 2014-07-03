//
//  ProductVC.m
//  Catalogo
//
//  Created by Nicolas Rodriguez on 30/06/14.
//  Copyright (c) 2014 LakeViewLabs. All rights reserved.
//

#import "ProductVC.h"
#import "Product.h"
#import "ApiVC.h"
#import "ProductCell.h"

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
    ApiVC * api = [ApiVC getInstance];
    listProduct = [api getAllProductsApi]; // Cargo los productos a la lista
    
    
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
    //ProductCell * cellProduct = [[ProductCell alloc]init] ;
    static NSString *cellIdentifier = @"cell";
    
    ProductCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];

    ///// Capturo los datos de la api en estas variables ////////
    NSString * id_Product =[[listProduct valueForKey:@"id_Product"] objectAtIndex:[indexPath row]];
    NSString * description_Product =[[listProduct valueForKey:@"description"] objectAtIndex:[indexPath row]];
    NSString * name_Product =[[listProduct valueForKey:@"name"] objectAtIndex:[indexPath row]];
    NSString * price_Product =[[listProduct valueForKey:@"price"] objectAtIndex:[indexPath row]];
    ///// Capturo los datos de la api en estas variables ////////
    
    
    ///////Coloco los datos en las labels de los botones para mostrar los productos //////////
    [[cell button_products_1]setTag:(NSInteger)name_Product];
    cell.text_button_1.text = name_Product;
    cell.price_text_button_1.text=price_Product;
    ///////Coloco los datos en las labels de los botones para mostrar los productos //////////
    
    
    //Le coloco al tag del boton el numero de id del producto para poder pasarlo como parametro
    //a la siguiente ventana que es donde muestro el producto
    
    
    
    NSString *currentValue = [[listProduct valueForKey:@"name"] objectAtIndex:[indexPath row]];
   // [[cell textLabel]setText:currentValue];
    return cell;
}


- (IBAction)show_products:(id)sender {
}
@end
