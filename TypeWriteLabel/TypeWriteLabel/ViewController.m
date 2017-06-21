//
//  ViewController.m
//  TypeWriteLabel
//
//  Created by Tesla_Chen on 2017/6/16.
//  Copyright © 2017年 Telsa_Chen. All rights reserved.
//

#import "ViewController.h"

#import "TypeWriterLabel.h"


@interface ViewController ()

@property (nonatomic, strong)TypeWriterLabel        *typeLabel;

@end

@implementation ViewController


-(TypeWriterLabel *)typeLabel{
    if (!_typeLabel) {
        _typeLabel = [[TypeWriterLabel alloc] init];
        [_typeLabel setTypewriteTimeInterval:0.05f];
        [_typeLabel setTypewriteEffectColor:[UIColor grayColor]];
        [_typeLabel setCurrentIndex:0];
        [_typeLabel setBackgroundColor:[UIColor clearColor]];
        [_typeLabel setTextColor:[UIColor clearColor]];
        [_typeLabel setNumberOfLines:0];
    }
    return _typeLabel;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UIImageView *backImageView = [[UIImageView alloc] init];
    [backImageView setFrame:self.view.bounds];
    [backImageView setImage:[UIImage imageNamed:@"1.jpg"]];
    [self.view addSubview:backImageView];
    
    
    [self.typeLabel setFrame:(CGRectMake(20, 30, [UIScreen mainScreen].bounds.size.width - 40, [UIScreen mainScreen].bounds.size.height - 40))];
    [self.view addSubview:self.typeLabel];
    
    [self.typeLabel setText:@"拉塞尔·威斯布鲁克（Russell Westbrook）， 1988年11月12日出生于美国加利福尼亚州长滩（Long Beach, CA），美国职业篮球运动员，司职控球后卫，效力于NBA俄克拉荷马城雷霆队。\n拉塞尔·威斯布鲁克于2008年通过选秀进入NBA，新秀赛季入选最佳新秀阵容第一阵容；6次入选全明星阵容，2015、2016连续两年获得全明星赛MVP；2次入选最佳阵容第一阵容，4次入选最佳阵容第二阵容。\n2017年4月10日，雷霆客场106-105战胜掘金，拉塞尔·威斯布鲁克出场37分钟，得到50分16篮板10助攻，收获赛季第42次、职业生涯常规赛第79次三双，打破了1961-62赛季奥斯卡·罗伯特森创造的单赛季41次三纪录。同时，这是威斯布鲁克赛季第3次得分50+的三双，成为NBA历史第一人"];
    [self.typeLabel startTypewrite];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
