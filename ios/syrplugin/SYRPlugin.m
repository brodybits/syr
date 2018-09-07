#import "SYRPlugin.h"

#import "SyrNative.h"

@implementation SYRPlugin

- (void) start: (CDVInvokedUrlCommand *)c
{
  UIView * parentView = self.webView;

  // init rootView

  UIView * rootView = [[SyrRootView alloc] initWithBundlePath:@"http://localhost:8080" initialProperties:@{@"foo": @"baz"}];
  rootView.frame = parentView.frame;

  // attach rootView

  [parentView addSubview:rootView];
}

@end
