//
//  ViewController.m
//  Catalogo
//
//  Created by Nicolas Rodriguez on 30/06/14.
//  Copyright (c) 2014 LakeViewLabs. All rights reserved.
//

#import "ViewController.h"
#import "ProductVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self addDataTest];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
    
}

-(void)addDataTest {
    ProductVC * productVC = [ProductVC getInstance];
    [productVC addProduct:@"nombre1" description:@"description1" price:20];
    [productVC addProduct:@"nombre2" description:@"description2" price:23];
}

@end
