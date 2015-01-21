//
//  ViewController.h
//  TableTennisMobileMakers
//
//  Created by Diego Cichello on 1/21/15.
//  Copyright (c) 2015 Mobile Makers. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iCarousel.h"

@interface ViewController : UIViewController <iCarouselDataSource,iCarouselDelegate>

@property (nonatomic, strong) IBOutlet iCarousel *carousel;


@end

