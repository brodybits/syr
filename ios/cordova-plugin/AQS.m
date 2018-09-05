#import "AQS.h"

#import "SyrNative.h"

// static UIWebView * webView = NULL;

@implementation AQS

// -(void)pluginInitialize
// {
//   // webView = self.webView;
//   // ...
// }

- (void) ch: (CDVInvokedUrlCommand *)c
{
#if 0
  // init rootView
  SyrRootView* rootView = [[SyrRootView alloc] initWithBundlePath:@"http://localhost:8080" initialProperties:@{@"foo": @"baz"}];
  // rootView.frame = self.view.frame;
  rootView.frame = self.webView.frame;

  // UIWebView * v1 = [[UIWebView alloc] initWithFrame: self.view.frame];

  // attach rootView
  // [self.view addSubview:rootView];
  [self.webView addSubview:rootView];
#endif

  UIWebView * v1 = [[UIWebView alloc] initWithFrame: self.webView.frame];

  // [self.view addSubview:v1];
  [self.webView addSubview:v1];

#if 1
  SyrRootView* rootView = [[SyrRootView alloc] initWithBundlePath:@"http://localhost:8080" initialProperties:@{@"foo": @"baz"}];
  rootView.frame = v1.frame;
  [v1 addSubview:rootView];
#endif
}

@end
