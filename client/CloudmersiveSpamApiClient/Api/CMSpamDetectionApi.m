#import "CMSpamDetectionApi.h"
#import "CMQueryParamCollection.h"
#import "CMApiClient.h"
#import "CMSpamDetectionAdvancedFormSubmissionRequest.h"
#import "CMSpamDetectionAdvancedRequest.h"
#import "CMSpamDetectionAdvancedResponse.h"
#import "CMSpamDetectionFormSubmissionAdvancedResponse.h"
#import "CMSpamDetectionRequest.h"
#import "CMSpamDetectionResponse.h"


@interface CMSpamDetectionApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation CMSpamDetectionApi

NSString* kCMSpamDetectionApiErrorDomain = @"CMSpamDetectionApiErrorDomain";
NSInteger kCMSpamDetectionApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[CMApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(CMApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Perform advanced AI spam detection and classification against input text string.  Analyzes input content as well as embedded URLs with AI deep learnign to detect spam, phishing and other unsafe content.  Uses 25-100 API calls depending on model selected.
/// 
///  @param model Optional: Specify which AI model to use.  Possible choices are Normal and Advanced.  Default is Advanced. (optional, default to Advanced)
///
///  @param preprocessing Optional: Specify which preprocessing to Use.  Possible choices are None, Compatability and Auto.  Default is Auto. (optional, default to Auto)
///
///  @param allowPhishing True if phishing should be allowed, false otherwise (optional, default to false)
///
///  @param allowUnsolicitedSales True if unsolicited sales should be allowed, false otherwise (optional, default to false)
///
///  @param allowPromotionalContent True if promotional content should be allowed, false otherwise (optional, default to true)
///
///  @param inputFile  (optional)
///
///  @returns CMSpamDetectionAdvancedResponse*
///
-(NSURLSessionTask*) spamDetectFileAdvancedPostWithModel: (NSString*) model
    preprocessing: (NSString*) preprocessing
    allowPhishing: (NSNumber*) allowPhishing
    allowUnsolicitedSales: (NSNumber*) allowUnsolicitedSales
    allowPromotionalContent: (NSNumber*) allowPromotionalContent
    inputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMSpamDetectionAdvancedResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/spam/detect/file/advanced"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (model != nil) {
        headerParams[@"model"] = model;
    }
    if (preprocessing != nil) {
        headerParams[@"preprocessing"] = preprocessing;
    }
    if (allowPhishing != nil) {
        headerParams[@"allowPhishing"] = allowPhishing;
    }
    if (allowUnsolicitedSales != nil) {
        headerParams[@"allowUnsolicitedSales"] = allowUnsolicitedSales;
    }
    if (allowPromotionalContent != nil) {
        headerParams[@"allowPromotionalContent"] = allowPromotionalContent;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/plain", @"application/json", @"text/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    localVarFiles[@"inputFile"] = inputFile;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"CMSpamDetectionAdvancedResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMSpamDetectionAdvancedResponse*)data, error);
                                }
                            }];
}

///
/// Perform AI spam detection and classification on an input image or document (PDF or DOCX).  Analyzes input content as well as embedded URLs with AI deep learnign to detect spam, phishing and other unsafe content.  Uses 100-125 API calls depending on model selected.
/// 
///  @param model Model to use; default setting is Advanced (optional, default to Advanced)
///
///  @param inputFile  (optional)
///
///  @returns CMSpamDetectionResponse*
///
-(NSURLSessionTask*) spamDetectFilePostWithModel: (NSString*) model
    inputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMSpamDetectionResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/spam/detect/file"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (model != nil) {
        headerParams[@"model"] = model;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/plain", @"application/json", @"text/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    localVarFiles[@"inputFile"] = inputFile;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"CMSpamDetectionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMSpamDetectionResponse*)data, error);
                                }
                            }];
}

///
/// Perform advanced AI spam detection and classification against a form submission.  Analyzes form input content as well as embedded URLs with AI deep learnign to detect spam, phishing and other unsafe content.  Uses 25-100 API calls depending on model selected.
/// 
///  @param body Spam detection request (optional)
///
///  @returns CMSpamDetectionFormSubmissionAdvancedResponse*
///
-(NSURLSessionTask*) spamDetectFormSubmissionAdvancedPostWithBody: (CMSpamDetectionAdvancedFormSubmissionRequest*) body
    completionHandler: (void (^)(CMSpamDetectionFormSubmissionAdvancedResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/spam/detect/form-submission/advanced"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/plain", @"application/json", @"text/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"text/json", @"application/_*+json"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = body;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"CMSpamDetectionFormSubmissionAdvancedResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMSpamDetectionFormSubmissionAdvancedResponse*)data, error);
                                }
                            }];
}

///
/// Perform advanced AI spam detection and classification against input text string.  Analyzes input content as well as embedded URLs with AI deep learnign to detect spam, phishing and other unsafe content.  Uses 25-100 API calls depending on model selected.
/// 
///  @param body Spam detection request (optional)
///
///  @returns CMSpamDetectionAdvancedResponse*
///
-(NSURLSessionTask*) spamDetectTextStringAdvancedPostWithBody: (CMSpamDetectionAdvancedRequest*) body
    completionHandler: (void (^)(CMSpamDetectionAdvancedResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/spam/detect/text-string/advanced"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/plain", @"application/json", @"text/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"text/json", @"application/_*+json"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = body;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"CMSpamDetectionAdvancedResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMSpamDetectionAdvancedResponse*)data, error);
                                }
                            }];
}

///
/// Perform AI spam detection and classification against input text string.  Analyzes input content as well as embedded URLs with AI deep learnign to detect spam, phishing and other unsafe content.  Uses 25-75 API calls depending on model selected.
/// 
///  @param body Spam detection request (optional)
///
///  @returns CMSpamDetectionResponse*
///
-(NSURLSessionTask*) spamDetectTextStringPostWithBody: (CMSpamDetectionRequest*) body
    completionHandler: (void (^)(CMSpamDetectionResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/spam/detect/text-string"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/plain", @"application/json", @"text/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"text/json", @"application/_*+json"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = body;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"CMSpamDetectionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMSpamDetectionResponse*)data, error);
                                }
                            }];
}



@end
