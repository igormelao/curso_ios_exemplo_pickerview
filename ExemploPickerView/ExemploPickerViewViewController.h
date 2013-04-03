//
//  ExemploPickerViewViewController.h
//  ExemploPickerView
//
//  Created by Igor Gonçalves Caballero Melao on 05/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExemploPickerViewViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>
{
    IBOutlet UIPickerView *meuPicker;
    
    IBOutlet UIImageView *imgEscudo;
    
    IBOutlet UILabel *lblPais, *lblNome;
    
    NSMutableArray *arraySelecoes;
    
    
}

@end
