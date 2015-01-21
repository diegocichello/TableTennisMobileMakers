//
//  ViewController.m
//  TableTennisMobileMakers
//
//  Created by Diego Cichello on 1/21/15.
//  Copyright (c) 2015 Mobile Makers. All rights reserved.
//

#import "ViewController.h"
#import "iCarousel.h"
#import "FXImageView.h"

@interface ViewController () 

@property NSMutableArray *images;

@end

@implementation ViewController

@synthesize carousel = _carousel;
@synthesize images = _images;





- (void)viewDidLoad {
    [super viewDidLoad];

    self.images= [[NSMutableArray alloc]init];


    [self.images addObject:[UIImage imageNamed:@"Diego"]];
    [self.images addObject:[UIImage imageNamed:@"Joe"]];
    [self.images addObject:[UIImage imageNamed:@"Kevin"]];
    [self.images addObject:[UIImage imageNamed:@"Seaver"]];
    [self.images addObject:[UIImage imageNamed:@"Evan"]];
    [self.images addObject:[UIImage imageNamed:@"Mychilo"]];
    [self.images addObject:[UIImage imageNamed:@"Gus"]];
    [self.images addObject:[UIImage imageNamed:@"Dave"]];
    [self.images addObject:[UIImage imageNamed:@"Ted"]];
    [self.images addObject:[UIImage imageNamed:@"Chris"]];



    _carousel.type = iCarouselTypeCoverFlow2;
}


- (UIView *)carousel:(iCarousel *)carousel viewForItemAtIndex:(NSInteger)index reusingView:(UIView *)view
{



    //create new view if no view is available for recycling
    if (view == nil)
    {
        FXImageView *imageView = [[FXImageView alloc] initWithFrame:CGRectMake(0, 0, 200.0f, 200.0f)];
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        imageView.asynchronous = YES;
        imageView.reflectionScale = 0.5f;
        imageView.reflectionAlpha = 0.25f;
        imageView.reflectionGap = 10.0f;
        imageView.shadowOffset = CGSizeMake(0.0f, 2.0f);
        imageView.shadowBlur = 5.0f;
        imageView.cornerRadius = 10.0f;
        view = imageView;
    }

    //show placeholder
//((FXImageView *)view).processedImage = [UIImage imageNamed:@"placeholder.png"];

    //set image
    ((FXImageView *)view).image = [self.images objectAtIndex:index];

    return view;

    
}


- (NSInteger)numberOfItemsInCarousel:(iCarousel *)carousel
{
    return 10;
}



@end
