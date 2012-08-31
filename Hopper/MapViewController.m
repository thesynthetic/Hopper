//
//  FirstViewController.m
//  Hopper
//
//  Created by Ryan Hittner on 8/28/12.
//  Copyright (c) 2012 Ryan Hittner. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

@synthesize locationManager;
@synthesize map;

- (void)viewDidLoad
{
    [super viewDidLoad];

    locationManager = [[CLLocationManager alloc] init];
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    locationManager.distanceFilter = kCLDistanceFilterNone;
    locationManager.delegate = self;
    [locationManager startUpdatingLocation];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - CoreLocationDelegate

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
    
    CLLocationCoordinate2D coordinate = [newLocation coordinate];
    float longitude = coordinate.longitude;
    float latitude = coordinate.latitude;
    
    NSLog(@"dLongitude : %f",longitude);
    NSLog(@"dLatitude : %f", latitude);
    [map setShowsUserLocation:YES];
    [map setCenterCoordinate:coordinate animated:YES];
    [locationManager stopUpdatingLocation];
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    NSLog(@"Hey");
}

#pragma mark - Buttons

- (IBAction)updateLocationButton:(id)sender{
    [locationManager startUpdatingLocation];
}

@end
