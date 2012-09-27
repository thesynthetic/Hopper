//
//  TunnelController.h
//  Hopper
//
//  Created by Ryan Hittner on 9/1/12.
//  Copyright (c) 2012 Ryan Hittner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface TunnelController : NSObject
{
    
}

@property (nonatomic) CLLocationCoordinate2D *currentCoordinates;

-(void)setCoordinates:(CLLocationCoordinate2D)coordinate;

@end
