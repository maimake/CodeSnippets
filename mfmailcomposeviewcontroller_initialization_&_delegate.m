// MFMailComposeViewController Initialization & Delegate
// Methods required to use the iOS Mail Composer
//
// IDECodeSnippetCompletionPrefix: mailcomp
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 5463EF61-72CF-4F1E-B106-5BBBF0BFC00B
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetPlatformFamily: iphoneos
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
#import <MessageUI/MessageUI.h>

- (void)presentModalMailComposerViewController:(BOOL)animated {
    if ([MFMailComposeViewController canSendMail]) {
        MFMailComposeViewController *composeViewController = [[MFMailComposeViewController alloc] init];
        composeViewController.mailComposeDelegate = self;

        [composeViewController setSubject:<#Subject#>];
        [composeViewController setMessageBody:<#Body#> isHTML:YES];
        [composeViewController setToRecipients:@[<#Recipients#>]];

        [self presentViewController:composeViewController animated:animated completion:nil];
    } else {
        [[[UIAlertView alloc] initWithTitle:NSLocalizedString(@"Error", nil) message:NSLocalizedString(@"<#Cannot Send Mail Message#>", nil) delegate:nil cancelButtonTitle:NSLocalizedString(@"OK", nil) otherButtonTitles:nil] show];
    }
}

#pragma mark - MFMailComposeViewControllerDelegate

- (void)mailComposeController:(MFMailComposeViewController *)controller
          didFinishWithResult:(MFMailComposeResult)result
                        error:(NSError *)error
{
    if (error) {
        NSLog(@"%@", error);
    }

    [self dismissViewControllerAnimated:YES completion:nil];
}