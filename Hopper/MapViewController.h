//
//  FirstViewController.h
//  Hopper
//
//  Created by Ryan Hittner on 8/28/12.
//  Copyright (c) 2012 Ryan Hittner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import "CourtAnnotation.h"

@interface MapViewController : UIViewController <CLLocationManagerDelegate>
{
    
}

@property (nonatomic, retain) IBOutlet MKMapView *map;
@property (nonatomic, retain) CLLocationManager *locationManager;

@end
