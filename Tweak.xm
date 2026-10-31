#import <CoreLocation/CoreLocation.h>
#import <objc/runtime.h>

%hook CLLocationManager
- (CLLocation *)location {
    return [[CLLocation alloc] initWithLatitude:55.7558 longitude:37.6173];
}
%end

%hook IOSSecuritySuite
+ (BOOL)amIJailbroken { return NO; }
+ (BOOL)amIDebugged { return NO; }
+ (BOOL)amIReverseEngineered { return NO; }
+ (BOOL)amIRunInEmulator { return NO; }
%end
