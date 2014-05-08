//
//  ViewController.m
//  AES256Sample
//
//  Created by EL on 2014-05-08.
//  Copyright (c) 2014 EL. All rights reserved.
//

#import "ViewController.h"
#import "AES256Base64Util.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *originalTextView;
@property (weak, nonatomic) IBOutlet UITextView *encryptedTextView;
@property (weak, nonatomic) IBOutlet UITextView *decryptedTextView;
- (IBAction)encryptButton:(id)sender;
- (IBAction)decryptButton:(id)sender;

@end

/*
 * How to generate key on Terminal:
 
 $ openssl enc -aes-256-cbc -k secret -P -md sha1
 
 * Use 32-bit iv value.
*/
static NSString *k = @"7B6FDD26AF83D4059EB918A1417998BC";

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.originalTextView.text = @"{\"code\":1,\"message\":\"encode me\"}";
    self.encryptedTextView.text = @"";
    self.decryptedTextView.text = @"";
    
    //self.originalTextView.backgroundColor = [UIColor lightGrayColor];
    //self.encryptedTextView.backgroundColor = [UIColor lightGrayColor];
    //self.decryptedTextView.backgroundColor = [UIColor lightGrayColor];
    self.originalTextView.layer.borderWidth = 1.0f;
    self.originalTextView.layer.borderColor = [[UIColor grayColor] CGColor];
    self.encryptedTextView.layer.borderWidth = 1.0f;
    self.encryptedTextView.layer.borderColor = [[UIColor grayColor] CGColor];
    self.decryptedTextView.layer.borderWidth = 1.0f;
    self.decryptedTextView.layer.borderColor = [[UIColor grayColor] CGColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)encryptButton:(id)sender {
    if ([self.originalTextView.text length] > 0) {
        NSString *e = [AES256Base64Util encWithString:self.originalTextView.text key:k];
        self.encryptedTextView.text = e;
        self.decryptedTextView.text = @"";
    }
    [self.originalTextView endEditing:YES];
}

- (IBAction)decryptButton:(id)sender {
    if ([self.encryptedTextView.text length] > 0) {
        NSString *e = [AES256Base64Util decWithString:self.encryptedTextView.text key:k];
        self.decryptedTextView.text = e;
    }}
@end
