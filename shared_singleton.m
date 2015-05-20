// Shared Singleton
// Class method that returns a singleton instance
//
// IDECodeSnippetCompletionPrefix: singleton
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 26BDE95F-27C7-40D7-9C92-EA2F02FF9F98
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
+ (instancetype)shared<#name#> {
    static id _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = <#initializer#>;
    });

    return _sharedInstance;
}
