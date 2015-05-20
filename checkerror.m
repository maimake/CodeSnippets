// CheckError
// Function that extracts human-readable information from OSStatus codes.
//
// IDECodeSnippetCompletionPrefix: checkerror
// IDECodeSnippetCompletionScopes: [CodeExpression]
// IDECodeSnippetIdentifier: 91FDE75B-94EC-414E-8A7B-22B1F9EC94F6
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
static void CheckError(OSStatus error, const char *operation) {
    if (error == noErr) {
      return;
    }

    char str[20];
    *(UInt32 *) (str + 1) = CFSwapInt32HostToBig(error);
    if (isprint(str[1]) && isprint(str[2]) && isprint(str[3]) && isprint(str[4])) {
        str[0] = str[5] = '\'';
        str[6] = '\0';
    } else {
        sprintf(str, "%d", (int)error);
    }

    fprintf(stderr, "[Error] %s (%s)\n", operation, str);
    exit(1);
}