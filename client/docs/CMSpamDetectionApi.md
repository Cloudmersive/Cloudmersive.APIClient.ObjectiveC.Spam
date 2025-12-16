# CMSpamDetectionApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**spamDetectFileAdvancedPost**](CMSpamDetectionApi.md#spamdetectfileadvancedpost) | **POST** /spam/detect/file/advanced | Perform advanced AI spam detection and classification against input text string.  Analyzes input content as well as embedded URLs with AI deep learnign to detect spam, phishing and other unsafe content.  Uses 25-100 API calls depending on model selected.
[**spamDetectFilePost**](CMSpamDetectionApi.md#spamdetectfilepost) | **POST** /spam/detect/file | Perform AI spam detection and classification on an input image or document (PDF or DOCX).  Analyzes input content as well as embedded URLs with AI deep learnign to detect spam, phishing and other unsafe content.  Uses 100-125 API calls depending on model selected.
[**spamDetectFormSubmissionAdvancedPost**](CMSpamDetectionApi.md#spamdetectformsubmissionadvancedpost) | **POST** /spam/detect/form-submission/advanced | Perform advanced AI spam detection and classification against a form submission.  Analyzes form input content as well as embedded URLs with AI deep learnign to detect spam, phishing and other unsafe content.  Uses 25-100 API calls depending on model selected.
[**spamDetectTextStringAdvancedPost**](CMSpamDetectionApi.md#spamdetecttextstringadvancedpost) | **POST** /spam/detect/text-string/advanced | Perform advanced AI spam detection and classification against input text string.  Analyzes input content as well as embedded URLs with AI deep learnign to detect spam, phishing and other unsafe content.  Uses 25-100 API calls depending on model selected.
[**spamDetectTextStringPost**](CMSpamDetectionApi.md#spamdetecttextstringpost) | **POST** /spam/detect/text-string | Perform AI spam detection and classification against input text string.  Analyzes input content as well as embedded URLs with AI deep learnign to detect spam, phishing and other unsafe content.  Uses 25-75 API calls depending on model selected.


# **spamDetectFileAdvancedPost**
```objc
-(NSURLSessionTask*) spamDetectFileAdvancedPostWithModel: (NSString*) model
    preprocessing: (NSString*) preprocessing
    allowPhishing: (NSNumber*) allowPhishing
    allowUnsolicitedSales: (NSNumber*) allowUnsolicitedSales
    allowPromotionalContent: (NSNumber*) allowPromotionalContent
    inputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMSpamDetectionAdvancedResponse* output, NSError* error)) handler;
```

Perform advanced AI spam detection and classification against input text string.  Analyzes input content as well as embedded URLs with AI deep learnign to detect spam, phishing and other unsafe content.  Uses 25-100 API calls depending on model selected.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* model = @"Advanced"; // Optional: Specify which AI model to use.  Possible choices are Normal and Advanced.  Default is Advanced. (optional) (default to Advanced)
NSString* preprocessing = @"Auto"; // Optional: Specify which preprocessing to Use.  Possible choices are None, Compatability and Auto.  Default is Auto. (optional) (default to Auto)
NSNumber* allowPhishing = @false; // True if phishing should be allowed, false otherwise (optional) (default to false)
NSNumber* allowUnsolicitedSales = @false; // True if unsolicited sales should be allowed, false otherwise (optional) (default to false)
NSNumber* allowPromotionalContent = @true; // True if promotional content should be allowed, false otherwise (optional) (default to true)
NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; //  (optional)

CMSpamDetectionApi*apiInstance = [[CMSpamDetectionApi alloc] init];

// Perform advanced AI spam detection and classification against input text string.  Analyzes input content as well as embedded URLs with AI deep learnign to detect spam, phishing and other unsafe content.  Uses 25-100 API calls depending on model selected.
[apiInstance spamDetectFileAdvancedPostWithModel:model
              preprocessing:preprocessing
              allowPhishing:allowPhishing
              allowUnsolicitedSales:allowUnsolicitedSales
              allowPromotionalContent:allowPromotionalContent
              inputFile:inputFile
          completionHandler: ^(CMSpamDetectionAdvancedResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMSpamDetectionApi->spamDetectFileAdvancedPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | **NSString***| Optional: Specify which AI model to use.  Possible choices are Normal and Advanced.  Default is Advanced. | [optional] [default to Advanced]
 **preprocessing** | **NSString***| Optional: Specify which preprocessing to Use.  Possible choices are None, Compatability and Auto.  Default is Auto. | [optional] [default to Auto]
 **allowPhishing** | **NSNumber***| True if phishing should be allowed, false otherwise | [optional] [default to false]
 **allowUnsolicitedSales** | **NSNumber***| True if unsolicited sales should be allowed, false otherwise | [optional] [default to false]
 **allowPromotionalContent** | **NSNumber***| True if promotional content should be allowed, false otherwise | [optional] [default to true]
 **inputFile** | **NSURL***|  | [optional] 

### Return type

[**CMSpamDetectionAdvancedResponse***](CMSpamDetectionAdvancedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spamDetectFilePost**
```objc
-(NSURLSessionTask*) spamDetectFilePostWithModel: (NSString*) model
    inputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMSpamDetectionResponse* output, NSError* error)) handler;
```

Perform AI spam detection and classification on an input image or document (PDF or DOCX).  Analyzes input content as well as embedded URLs with AI deep learnign to detect spam, phishing and other unsafe content.  Uses 100-125 API calls depending on model selected.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* model = @"Advanced"; // Model to use; default setting is Advanced (optional) (default to Advanced)
NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; //  (optional)

CMSpamDetectionApi*apiInstance = [[CMSpamDetectionApi alloc] init];

// Perform AI spam detection and classification on an input image or document (PDF or DOCX).  Analyzes input content as well as embedded URLs with AI deep learnign to detect spam, phishing and other unsafe content.  Uses 100-125 API calls depending on model selected.
[apiInstance spamDetectFilePostWithModel:model
              inputFile:inputFile
          completionHandler: ^(CMSpamDetectionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMSpamDetectionApi->spamDetectFilePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | **NSString***| Model to use; default setting is Advanced | [optional] [default to Advanced]
 **inputFile** | **NSURL***|  | [optional] 

### Return type

[**CMSpamDetectionResponse***](CMSpamDetectionResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spamDetectFormSubmissionAdvancedPost**
```objc
-(NSURLSessionTask*) spamDetectFormSubmissionAdvancedPostWithBody: (CMSpamDetectionAdvancedFormSubmissionRequest*) body
        completionHandler: (void (^)(CMSpamDetectionFormSubmissionAdvancedResponse* output, NSError* error)) handler;
```

Perform advanced AI spam detection and classification against a form submission.  Analyzes form input content as well as embedded URLs with AI deep learnign to detect spam, phishing and other unsafe content.  Uses 25-100 API calls depending on model selected.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMSpamDetectionAdvancedFormSubmissionRequest* body = [[CMSpamDetectionAdvancedFormSubmissionRequest alloc] init]; // Spam detection request (optional)

CMSpamDetectionApi*apiInstance = [[CMSpamDetectionApi alloc] init];

// Perform advanced AI spam detection and classification against a form submission.  Analyzes form input content as well as embedded URLs with AI deep learnign to detect spam, phishing and other unsafe content.  Uses 25-100 API calls depending on model selected.
[apiInstance spamDetectFormSubmissionAdvancedPostWithBody:body
          completionHandler: ^(CMSpamDetectionFormSubmissionAdvancedResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMSpamDetectionApi->spamDetectFormSubmissionAdvancedPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CMSpamDetectionAdvancedFormSubmissionRequest***](CMSpamDetectionAdvancedFormSubmissionRequest.md)| Spam detection request | [optional] 

### Return type

[**CMSpamDetectionFormSubmissionAdvancedResponse***](CMSpamDetectionFormSubmissionAdvancedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spamDetectTextStringAdvancedPost**
```objc
-(NSURLSessionTask*) spamDetectTextStringAdvancedPostWithBody: (CMSpamDetectionAdvancedRequest*) body
        completionHandler: (void (^)(CMSpamDetectionAdvancedResponse* output, NSError* error)) handler;
```

Perform advanced AI spam detection and classification against input text string.  Analyzes input content as well as embedded URLs with AI deep learnign to detect spam, phishing and other unsafe content.  Uses 25-100 API calls depending on model selected.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMSpamDetectionAdvancedRequest* body = [[CMSpamDetectionAdvancedRequest alloc] init]; // Spam detection request (optional)

CMSpamDetectionApi*apiInstance = [[CMSpamDetectionApi alloc] init];

// Perform advanced AI spam detection and classification against input text string.  Analyzes input content as well as embedded URLs with AI deep learnign to detect spam, phishing and other unsafe content.  Uses 25-100 API calls depending on model selected.
[apiInstance spamDetectTextStringAdvancedPostWithBody:body
          completionHandler: ^(CMSpamDetectionAdvancedResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMSpamDetectionApi->spamDetectTextStringAdvancedPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CMSpamDetectionAdvancedRequest***](CMSpamDetectionAdvancedRequest.md)| Spam detection request | [optional] 

### Return type

[**CMSpamDetectionAdvancedResponse***](CMSpamDetectionAdvancedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spamDetectTextStringPost**
```objc
-(NSURLSessionTask*) spamDetectTextStringPostWithBody: (CMSpamDetectionRequest*) body
        completionHandler: (void (^)(CMSpamDetectionResponse* output, NSError* error)) handler;
```

Perform AI spam detection and classification against input text string.  Analyzes input content as well as embedded URLs with AI deep learnign to detect spam, phishing and other unsafe content.  Uses 25-75 API calls depending on model selected.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMSpamDetectionRequest* body = [[CMSpamDetectionRequest alloc] init]; // Spam detection request (optional)

CMSpamDetectionApi*apiInstance = [[CMSpamDetectionApi alloc] init];

// Perform AI spam detection and classification against input text string.  Analyzes input content as well as embedded URLs with AI deep learnign to detect spam, phishing and other unsafe content.  Uses 25-75 API calls depending on model selected.
[apiInstance spamDetectTextStringPostWithBody:body
          completionHandler: ^(CMSpamDetectionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMSpamDetectionApi->spamDetectTextStringPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CMSpamDetectionRequest***](CMSpamDetectionRequest.md)| Spam detection request | [optional] 

### Return type

[**CMSpamDetectionResponse***](CMSpamDetectionResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

