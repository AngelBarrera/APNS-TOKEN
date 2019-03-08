#import <Cordova/CDVPlugin.h>

@interface ApnsToken : CDVPlugin

- (void)getToken:(CDVInvokedUrlCommand*)command;

@end