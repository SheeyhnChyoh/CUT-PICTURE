//
//  MainViewController.m
//  按比例裁剪图片
//
//  Created by zt on 14-4-11.
//  Copyright (c) 2014年 zt. All rights reserved.
//

#import "MainViewController.h"
#import "CroppingController.h"

@interface MainViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *mamaImage;

@end

@implementation MainViewController

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
    // Do any additional setup after loading the view from its nib.
    self.navigationController.navigationBar.hidden = YES;
}

- (IBAction)buttonAction:(id)sender {
    CroppingController *cropVC = [[CroppingController alloc] initWithCompleteBlock:^(UIImage *img) {
        //...
        self.mamaImage.image = img;
        
    }];
    [self.navigationController pushViewController:cropVC animated:NO];
}
@end
