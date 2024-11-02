//
//  ViewController.h
//  Objective-C-MediaPlayer
//
//  Created by Angelos Staboulis on 2/11/24.
//

#import <UIKit/UIKit.h>
#import "AVKit/AVKit.h"
#import "AVFoundation/AVFoundation.h"
@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *videoPlayer;

@property (weak, nonatomic) IBOutlet UIButton *btnPlay;
-(void) initializeMediaPlayer;
- (IBAction)btnPlay:(id)sender;
@property AVPlayer *video;
@property AVPlayerLayer *layer;
@property bool isPlaying;
@end

