//
//  TextSizeViewController.m
//  SettingsApp
//
//  Created by KAWASHIMA Yoshiyuki on 2021/12/05.
//

#import "TextSizeViewController.h"
#import "StepSlider.h"

@interface TextSizeViewController ()

@property (weak, nonatomic) IBOutlet UILabel *previewLabel;
@property (weak, nonatomic) IBOutlet StepSlider *stepSlider;

@end

@implementation TextSizeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.stepSlider.labels = @[@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9"];
}

- (IBAction)sliderDidChange:(StepSlider *)sender {
    self.previewLabel.text = [self sliderStringWithValue:(int)sender.index + 1];
}

- (NSString *)sliderStringWithValue:(int)value {
    NSString *sliderString = @"";
    
    for (int i = 1; i <= value; i++) {
        sliderString = [sliderString stringByAppendingFormat:@"%d", i];
    }
    
    return sliderString;
}

@end
