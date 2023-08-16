//
//  RTNEventManager.m
//  PangleDemo
//
//  Created by mile verse on 2023/08/09.
//

#import "RTNEventManager.h"

@implementation RTNEventManager

RCT_EXPORT_MODULE(RTNEventManager);

+ (id)allocWithZone:(NSZone *)zone {
    static RTNEventManager *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [super allocWithZone:zone];
    });
    return sharedInstance;
}

- (NSArray<NSString *> *)supportedEvents
{
  return @[@"onOpened",@"onPangleResult"];
}

- (void)socketOpenConnection
{
  [self sendEventWithName:@"onOpened" body:@{@"callername": @"205-966-1916", @"username": @"9542493959"}];
}

-(void)pangleReuslt:(NSString *)result
{
  [self sendEventWithName:@"onPangleResult" body:@{@"result":result}];
}

@end

