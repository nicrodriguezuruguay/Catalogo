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
#import "ProductVCSecondView.h"

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
@synthesize listProduct,product_selected;

-(void) viewDidLoad {
    ProductVC * productVCS = [ProductVC getInstance];
    ApiVC * api = [ApiVC getInstance];
    productVCS.listProduct = [api getAllProductsApi]; // Cargo los productos a la lista
    
    
    
}

-(NSInteger)collectionView:(UICollectionView*)collectionView numberOfItemsInSection:(NSInteger)section{
    //aca le pongo la cantidad de elementos que hay en la lista
    ProductVC * productVCS = [ProductVC getInstance];
    return productVCS.listProduct.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    ProductVC * productVCS = [ProductVC getInstance];
    static NSString * cellIdentifier = @"cellProduct";
    
    ProductCelda * cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    ///// Capturo los datos de la api en estas variables ////////
    int id_Product = [[[productVCS.listProduct valueForKey:@"id_Product"] objectAtIndex:[indexPath row]]integerValue];
    //INTEGER VALUE convierte ese valor de string a int
    NSString * name_Product =[[productVCS.listProduct valueForKey:@"name"] objectAtIndex:[indexPath row]];
    int price_Product =[[[productVCS.listProduct valueForKey:@"price"] objectAtIndex:[indexPath row]]integerValue];
    ///// Capturo los datos de la api en estas variables ////////
    
    
    ///////Coloco los datos en las labels de los botones para mostrar los productos //////////
    cell.label_title_collection_product.text = name_Product;
    cell.label_price_collection_product.text=[NSString stringWithFormat:@"%d",price_Product];
    cell.button_collection_product.tag=id_Product;
    ///////Coloco los datos en las labels de los botones para mostrar los productos //////////
    
    
    //Le coloco al tag del boton el numero de id del producto para poder pasarlo como parametro
    //a la siguiente ventana que es donde muestro el producto

    return cell;
}



- (IBAction)show_products:(id)sender {
    //ProductVCSecondView * productVCS = [ProductVCSecondView getInstance];
    ProductVC * productVCS = [ProductVC getInstance];
    productVCS.product_selected = [[Product alloc]init];
    productVCS.product_selected =[self findProduct:[sender tag]];
    
    //productVCS.name = [product_selected valueForKeyPath:@"name"];
   
    ProductVCSecondView *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"productSelected"];
    [self presentViewController:vc animated:YES completion:nil];//para volver al login
    
}

-(Product*) findProduct:(int) id_product {
    Product * myProduct= [[Product alloc]init];
    ProductVC * productVCS = [ProductVC getInstance];
    
    for(id key in productVCS.listProduct) {
        int id_product_key = [[key valueForKeyPath:@"id_Product"]integerValue];
        if (id_product_key == id_product) {
            myProduct=key;
            return myProduct;
        }
  
    }
    return  myProduct;
}
@end
