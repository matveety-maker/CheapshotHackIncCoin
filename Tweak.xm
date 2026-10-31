#import <CoreLocation/CoreLocation.h>
#import <UIKit/UIKit.h>

// Координаты (Москва, поменяйте на нужные вам)
static double const kFakeLatitude = 55.7558;
static double const kFakeLongitude = 37.6173;

%hook CLLocationManager

- (CLLocation *)location {
    CLLocation *realLoc = %orig;
    return [[CLLocation alloc] initWithLatitude:kFakeLatitude longitude:kFakeLongitude];
}

- (void)startUpdatingLocation {
    %orig;
    CLLocation *fakeLoc = [[CLLocation alloc] initWithLatitude:kFakeLatitude longitude:kFakeLongitude];
    if ([self.delegate respondsToSelector:@selector(locationManager:didUpdateLocations:)]) {
        [self.delegate locationManager:self didUpdateLocations:@[fakeLoc]];
    }
}

%end
