//
//  CourtAnnotation.m
//  Hopper
//
//  Created by Ryan Hittner on 9/2/12.
//  Copyright (c) 2012 Ryan Hittner. All rights reserved.
//

#import "CourtAnnotation.h"

@implementation CourtAnnotation

- (CLLocationCoordinate2D)coordinate;
{
    CLLocationCoordinate2D theCoordinate;
    theCoordinate.latitude = 37.810000;
    theCoordinate.longitude = -122.477989;
    return theCoordinate;
}

// required if you set the MKPinAnnotationView's "canShowCallout" property to YES
- (NSString *)title
{
    return @"Golden Gate Bridge";
}

// optional
- (NSString *)subtitle
{
    return @"Opened: May 27, 1937";
}

@end
