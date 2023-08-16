//
//  RTNEventManager.h
//  PangleDemo
//
//  Created by mile verse on 2023/08/09.
//

#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

@interface RTNEventManager : RCTEventEmitter <RCTBridgeModule>

- (void) socketOpenConnection;
- (void) pangleReuslt:(NSString *)result;

@end
