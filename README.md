# DMRNotificationView
DMRNotificationView is a simple panel that slides down to inform the user about something. It has a title and subtitle (optional). You can set custom tint colors (automatically adds 0.85 transparency to tint color), fonts and dismiss interval.

![DMRNotificationView](http://bascarsija.s3.amazonaws.com/dmrnotificationview.png)


### Installation
* Add the `DMRNotificationView.h` + `DMRNotificationView.m` to your project

### Usage
Usage is pretty self-explanatory if you check the demo. DMRNotificationView can be used in different ways. It comes with a few convenience initializers which allow you to present the panel in one line of code. See the header file for more methods.

    // The most basic method. 
    [DMRNotificationView showInView:self.view
                              title:@"Simple notification"
                           subTitle:@"This method allows you to quickly show a notification panel."];

    // Use a similar method to show a warning 
    [DMRNotificationView showWarningInView:self.view
                                   title:@"Warning!"
                                subTitle:@"Simple method to quickly show a warning"];


You can use the default initialiser for advanced usage.

	// Create a new DMRNotificationView instance with the default initializer
    DMRNotificationView *notificationView = [[DMRNotificationView alloc] initWithTitle:@"Some title" subTitle:@"Some subtitle" targetView:self.view];

    // Customise fonts
    [notificationView setTitleFont:[UIFont fontWithName:@"MarkerFelt-Thin" size:20.0]];
    [notificationView setSubTitleFont:[UIFont fontWithName:@"MarkerFelt-Thin" size:13.0]];

    // Customise the time interval which causes the panel to dismiss. Set to 0.0 to disable auto dismiss
    [notificationView setHideTimeInterval:6.0];    

    // Set a custom tint color. If tint color is bright, the text will be dark, otherwise white. Tint color can't be clearColor or nil
    [notificationView setTintColor:[UIColor greenColor]];

    // Optionally disable transparency
    [notificationView setIsTransparent:NO];   

    [notificationView setDidTapHandler:^() {
        // be notified when user taps on panel
    }];

    [notificationView showAnimated:YES];


### Issues
- Layout issue when changing interface orientation
- Title can only be one line, no support for long titles