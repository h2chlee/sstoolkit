//
//  SSTextField.m
//  SSToolkit
//
//  Created by Sam Soffes on 3/11/10.
//  Copyright 2010 Sam Soffes. All rights reserved.
//

#import "SSTextField.h"

@implementation SSTextField

@synthesize textInsets = _textInsets;

#pragma mark UIView

- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        self.textInsets = UIEdgeInsetsZero;
    }
    return self;
}

#pragma mark UITextField

- (CGRect)textRectForBounds:(CGRect)bounds {
	return UIEdgeInsetsInsetRect(bounds, self.textInsets);
}


- (CGRect)editingRectForBounds:(CGRect)bounds {
	return [self textRectForBounds:bounds];
}

@end
