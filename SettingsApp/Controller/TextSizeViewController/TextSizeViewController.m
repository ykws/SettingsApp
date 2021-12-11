//
//  TextSizeViewController.m
//  SettingsApp
//
//  Created by KAWASHIMA Yoshiyuki on 2021/12/05.
//

#import "TextSizeViewController.h"

@interface TextSizeViewController ()

@property (weak, nonatomic) IBOutlet UILabel *previewLabel;

@end

@implementation TextSizeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)sliderDidChange:(UISlider *)sender {
    [sender setValue:round(sender.value) animated:YES];
    
    self.previewLabel.text = [self sliderStringWithValue:(int)sender.value];
}

- (NSString *)sliderStringWithValue:(int)value {
    NSString *sliderString = @"";
    
    for (int i = 1; i <= value; i++) {
        sliderString = [sliderString stringByAppendingFormat:@"%d", i];
    }
    
    return sliderString;
}

@end
