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
#import "ProductCelda.h"

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

-(NSInteger)collectionView:(UICollectionView*)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return listProduct.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString * cellIdentifier = @"cellProduct";
    ProductCelda * cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    ///// Capturo los datos de la api en estas variables ////////
    NSString * id_Product =[[listProduct valueForKey:@"id_Product"] objectAtIndex:[indexPath row]];
    NSString * name_Product =[[listProduct valueForKey:@"name"] objectAtIndex:[indexPath row]];
    NSString * price_Product =[[listProduct valueForKey:@"price"] objectAtIndex:[indexPath row]];
    ///// Capturo los datos de la api en estas variables ////////
    
    
    ///////Coloco los datos en las labels de los botones para mostrar los productos //////////
    cell.label_title_collection_product.text = name_Product;
    cell.label_price_collection_product.text=price_Product;
    cell.button_collection_product.tag=[id_Product intValue];
    ///////Coloco los datos en las labels de los botones para mostrar los productos //////////
    
    
    //Le coloco al tag del boton el numero de id del producto para poder pasarlo como parametro
    //a la siguiente ventana que es donde muestro el producto

    return cell;
}




- (IBAction)show_products:(id)sender {
}
@end
