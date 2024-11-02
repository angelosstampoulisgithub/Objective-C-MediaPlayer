//
//  ViewController.m
//  Objective-C-MediaPlayer
//
//  Created by Angelos Staboulis on 2/11/24.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self initializeMediaPlayer];
   
}
- (void)initializeMediaPlayer{
    NSString *mediaURL = [[NSBundle mainBundle] pathForResource:@"history" ofType:@"mp4"];
    NSURL *mediaPlay = [[NSURL alloc] initFileURLWithPath:mediaURL];
    _video = [[AVPlayer alloc] initWithURL:mediaPlay];
    _layer = [AVPlayerLayer playerLayerWithPlayer:_video];
    [_layer setFrame:CGRectMake(25, 150, 350, 150)];
    [_videoPlayer.layer addSublayer:_layer];
    _isPlaying = true;
    [[_btnPlay layer] setCornerRadius:30];
    
    [_btnPlay setClipsToBounds:TRUE];
    [_btnPlay setImage:[UIImage imageNamed:@"play"] forState:UIControlStateNormal];
}

- (IBAction)btnPlay:(id)sender {
    [_btnPlay setImage:[UIImage imageNamed:@"pause"] forState:UIControlStateNormal];
    if(_isPlaying){
        [[_layer player] play];
        _isPlaying = false;
    }else{
        [[_layer player] pause];
        _isPlaying = true;
        [_btnPlay setImage:[UIImage imageNamed:@"play"] forState:UIControlStateNormal];

    }
}
@end
