#import <CoreLocation/CoreLocation.h>

%hook CLLocationManager

- (CLLocation *)location {
    return [[CLLocation alloc] initWithLatitude:55.7558 longitude:37.6173];
}

%end
