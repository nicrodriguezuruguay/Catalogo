//
//  ProductVCSecondView.m
//  Catalogo
//
//  Created by Nicolas Rodriguez on 06/07/14.
//  Copyright (c) 2014 LakeViewLabs. All rights reserved.
//

#import "ProductVCSecondView.h"
#import "ProductVC.h"

@interface ProductVCSecondView ()

@end

@implementation ProductVCSecondView
@synthesize title_product_selected,price_product_selected,description_product_selected;


////////////////////////////SINGLETON//////////////////////////////////

+(ProductVCSecondView *) getInstance{ // Singleton APIProxi
    static  ProductVCSecondView *inst = nil;
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
       
       // title_product_selected.text=productVCS.name;

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    ProductVC * productVCS = [ProductVC getInstance];
       price_product_selected.text=[NSString stringWithFormat:@"%@",[[productVCS product_selected] valueForKey:@"price"]];
    title_product_selected.text = [[productVCS product_selected]valueForKey:@"name"];
    description_product_selected.text=[[productVCS product_selected]valueForKey:@"description"];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)go_back {
    ProductVC *pvc = [self.storyboard instantiateViewControllerWithIdentifier:@"ProductVC"];
    [self presentViewController:pvc animated:YES completion:nil];//para volver al menu de productos
}


@end
