//
//  RestClient.m
//  RestClient
//
//  Created by James Golick on 28/02/09.
//  Copyright 2009 GiraffeSoft Inc.. All rights reserved.
//

#import "RestClient.h"


@implementation RestClient

NSURL* url;
NSURLRequest * request;
NSURLConnection * connection;
NSMutableData * receivedData;
id delegate;

-(id) initWithString: (NSString *) urlAsString delegate: (id) delegateToBe {
  self = [super init];

  if (self) {
    url	         = [NSURL URLWithString: urlAsString];
    request      = [NSURLRequest requestWithURL: url];
    connection	 = [NSURLConnection connectionWithRequest: request delegate: self];
    receivedData = [[NSMutableData alloc] init];
    delegate	 = delegateToBe;
  }

  return self;
}

- (void) connection: (NSURLConnection *) connection didReceiveData: (NSData *) data {
  [receivedData appendData: data];
}

- (void) connectionDidFinishLoading: (NSURLConnection *) connection {
  [delegate didFinishLoading: [[NSString alloc] initWithData: receivedData]];
}

+(NSString *) methodWithNoReturn {
  [NSURL URLWithString: @"http://google.ca"];
}

@end
