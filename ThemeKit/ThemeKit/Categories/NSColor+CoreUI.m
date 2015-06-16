//
//  NSColor+CoreUI.m
//  ThemeKit
//
//  Created by Alexander Zielenski on 6/13/15.
//  Copyright © 2015 Alex Zielenski. All rights reserved.
//

#import "NSColor+CoreUI.h"

@implementation NSColor (CoreUI)

+ (instancetype)colorWithColorDef:(struct colordef)definition {
    CGFloat r = (CGFloat)definition.value.r / 255.0;
    CGFloat g = (CGFloat)definition.value.g / 255.0;
    CGFloat b = (CGFloat)definition.value.b / 255.0;
    CGFloat a = (CGFloat)definition.value.a / 255.0;
    
    return [NSColor colorWithSRGBRed:r green:g blue:b alpha:a];
}

+ (instancetype)colorWithCUIColor:(CUIColor *)color {
    return [NSColor colorWithCGColor:color.CGColor];
}

@end
