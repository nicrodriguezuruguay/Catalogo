//
//  BusinessVC.m
//  Catalogo
//
//  Created by Nicolas Rodriguez on 30/06/14.
//  Copyright (c) 2014 LakeViewLabs. All rights reserved.
//

#import "BusinessVC.h"

@implementation BusinessVC

////////////////////////////SINGLETON//////////////////////////////////

+(BusinessVC *) getInstance{ // Singleton APIProxi
    static  BusinessVC *inst = nil;
    @synchronized(self){
        if (!inst) {
            inst = [[self alloc] init];
        }
    }
    return inst;
}
//////////////////////////////////////////////////////////////////////


@end
