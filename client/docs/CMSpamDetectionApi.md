# CMSpamDetectionApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**spamDetectTextStringAdvancedPost**](CMSpamDetectionApi.md#spamdetecttextstringadvancedpost) | **POST** /spam/detect/text-string/advanced | Perform advanced AI spam detection and classification against input text string.  Analyzes input content as well as embedded URLs with AI deep learnign to detect spam, phishing and other unsafe content.  Uses 25-100 API calls depending on model selected.
[**spamDetectTextStringPost**](CMSpamDetectionApi.md#spamdetecttextstringpost) | **POST** /spam/detect/text-string | Perform AI spam detection and classification against input text string.  Analyzes input content as well as embedded URLs with AI deep learnign to detect spam, phishing and other unsafe content.  Uses 25-75 API calls depending on model selected.


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

