//
//  FirstViewController.m
//  TabbarAndImages
//
//  Created by Jorge Izquierdo on 11/13/11.
//  Copyright (c) 2011 JIzqApps. All rights reserved.
//

#import "FirstViewController.h"

@implementation FirstViewController
@synthesize image, imageView;
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    self.image = [UIImage imageNamed:@"ipadsfera.png"];
    [self ponerImagen:nil];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}
-(IBAction)ponerImagen:(id)sender{
    
    self.imageView.image = self.image;
    self.view.backgroundColor = [UIColor blackColor];
    
}
-(IBAction)quitarImagen:(id)sender{
    
    self.imageView.image = nil;
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end