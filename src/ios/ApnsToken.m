#import "ApnsToken.h"
#import <Cordova/CDVPluginResult.h>

@implementation ApnsToken

- (void)getToken:(CDVInvokedUrlCommand*)command{
  CDVPluginResult* pluginResult = nil;

  NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
  NSString *deviceToken = [defaults stringForKey:@"IOSToken"];

  // Prepare the Device Token for Registration (remove spaces and  )
  NSString *devToken = [[[deviceToken
  stringByReplacingOccurrencesOfString:@"<"withString:@""]
  stringByReplacingOccurrencesOfString:@">" withString:@""]
  stringByReplacingOccurrencesOfString: @" " withString: @""];
    
  NSString *result = [NSString stringWithFormat:@"%@", devToken];
  //NSLog(@"%@",msg);
  //[self createAlert:msg];

  pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:result];
  [self.commandDelegate sendPluginResult:pluginResult
  callbackId:command.callbackId];
}

/*- (void)createAlert:(NSString *)msg {
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Message Received" message:[NSString stringWithFormat:@"%@", msg]delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alertView show];
}*/

@end