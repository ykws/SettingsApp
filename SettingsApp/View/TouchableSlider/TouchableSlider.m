//
//  TouchableSlider.m
//  SettingsApp
//
//  Created by KAWASHIMA Yoshiyuki on 2021/12/12.
//

#import "TouchableSlider.h"

@implementation TouchableSlider

- (BOOL)beginTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event {
    CGPoint point = [touch locationInView:self];
    CGFloat fraction = point.x / self.bounds.size.width;
    float newValue = (self.maximumValue - self.minimumValue) * fraction + self.minimumValue;
    if (newValue != self.value) {
        self.value = newValue;
    }
    return YES;
}

@end
