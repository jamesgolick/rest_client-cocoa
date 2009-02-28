//
//  RestClient.h
//  RestClient
//
//  Created by James Golick on 28/02/09.
//  Copyright 2009 GiraffeSoft Inc.. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface RestClient : NSObject {

}

-(id) initWithString: (NSString *) urlAsString delegate: (id) delegate;

@end
