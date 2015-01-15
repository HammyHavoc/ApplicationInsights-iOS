#import "MSAIObject.h"

@implementation MSAIObject

/// Not needed, since this is the base implementation of NSObject
- (instancetype)init {
  if (self = [super init]) {
    
  }
  return self;
}

// empty implementation for the base class
- (NSMutableDictionary *)serializeToDictionary  {
	NSMutableDictionary *dict = [NSMutableDictionary new];
	return dict;
}

- (NSString *)serializeToString {
  NSMutableDictionary *dict = [self serializeToDictionary];
  NSMutableString  *jsonString;
  NSError *error = nil;
  NSData *json;
  json = [NSJSONSerialization dataWithJSONObject:dict options:NSJSONWritingPrettyPrinted error:&error];
  jsonString = [[NSMutableString alloc] initWithData:json encoding:NSUTF8StringEncoding];
  return jsonString;
}

@end