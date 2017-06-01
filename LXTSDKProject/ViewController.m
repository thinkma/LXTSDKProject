//
//  ViewController.m
//  LXTSDKProject
//
//  Created by apple on 5/17/17.
//  Copyright © 2017 mawei. All rights reserved.
//

#import "ViewController.h"
#import "LXTAPINetworking.h"



@interface ViewController ()

@property (nonatomic,strong)NSString * token;

@property (nonatomic,strong)NSString * guid;

@property (nonatomic,strong)NSString * school_guid;

@property (nonatomic,strong)NSString * group_guid;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.token = @"3b2218fc5c5648aeb4bffb4dc9f55a53";
    self.guid = @"82cf4fc8a1ca11e684ca00163e032fb9";
    self.school_guid = @"41a0981ca1c611e6994800163e032fb9";
    self.group_guid = @"41a099dea1c611e6a0dc00163e032fb9";

    [LXTAPINetworking initLXTAPI];

    //1集团登陆
    //[self getSchool_guid];
    
    //2登录
    //[self loginSchool];
    
    
    //3.获取学生个人信息
    //[self getStudentInformationGuid];
    
    
    //4.修改个人信息
    //[self getUpdageStudentInfoGuid];
    
    
    //5.退出登录
    //[self logOutWithUserGuid];
    
    
    //6.获取学生课程列表(获取套餐课本信息)
    //[self getMyCourseWithStudentID];
    
    
    //7.获取当前课本的进度
    //[self getStudentCourseLessonguid];
    
    
    //8. 根据条件获取老师上课列表
    //[self getTeacherListStudentGuid];
    
    
    //9. 获取某个老师的排课列表
    //[self getTeacherClassGuid];
    
    
    //10. 获取学生关注的老师
    //[self getTeacherCollectionListGuid];
    
    
    //11. 关注老师(点击关注与取消关注)
    //[self teacherCollectionTeacherId];
    
    
    //12.预约课程
    //[self getAppointmentClasstime];
    
    
    //13.我的课程信息获取已经预约的课程
    [self getStudentAppointCourseGuid];
    
    
    //14. 已经上完课程的上课记录
    //[self getCourseRecordGuid];
    
    
    //15.取消预约的课程
    //[self getCancelTheCourseGuid];
    
    
    //16.课程上完后学生对老师的评价
    //[self commentsStudentId];
    
    
    //17.分页获取学生对老师的评论列表
    //[self getTeacherCommentsGuid];
    
    
    //18. 进入教室（获取进入教师的参数）
    //[self getClassConfigcompleteGuid];
    
    //19. 获取个人上课评价信息
    //[self getStudentCurveGuid];
    
    
    //20.修改密码(个人中心修改密码接口)
    //[self getChangePasswordGuid];
    
    
    
    



    
    
    
    
    

    
    // Do any additional setup after loading the view, typically from a nib.
}

//1
- (void)getSchool_guid
{
    [LXTAPINetworking lxt_getSchoolGuidUser:@"153000000000" password:@"abc1234" group_guid:self.group_guid complete:^(BOOL successed, id result) {
        NSLog(@"result = %@",result);
        
    } fail:^(NSError *error) {
        NSLog(@"error = %@",error);
        
    }];
}

//2
- (void)loginSchool
{
    [LXTAPINetworking lxt_loginWithUserName:@"153000000000" password:@"abc1234" school_guid:self.school_guid complete:^(BOOL successed, id result) {
        if (successed) {
            NSLog(@"result = %@",result);
        }else{
            NSLog(@"result = %@",result);
        }
    } fail:^(NSError *error) {
        NSLog(@"error = %@",error);
    }];
}

//3
- (void)getStudentInformationGuid
{
    [LXTAPINetworking lxt_getStudentInformationGuid:self.guid token:self.token complete:^(BOOL successed, id result) {
        
    } fail:^(NSError *error) {
        
    }];
}

//4
- (void)getUpdageStudentInfoGuid
{
    [LXTAPINetworking lxt_getUpdageStudentInfoGuid:self.guid school_guid:self.school_guid tel:@"153000000000" userName:@"student245234" sex:@"1" brithday:@"592675200" Email:@"2562826492@qq.com" token:self.token complete:^(BOOL successed, id result) {
        
    } fail:^(NSError *error) {
        
    }];
    
}

//5
- (void)logOutWithUserGuid
{

    [LXTAPINetworking lxt_logOutWithUserGuid:self.guid token:self.token complete:^(BOOL successed, id result) {
        
    } fail:^(NSError *error) {
        
    }];
}

//6
- (void)getMyCourseWithStudentID
{
        [LXTAPINetworking lxt_getMyCourseWithStudentID:self.guid school_guid:self.school_guid token:self.token complete:^(BOOL successed, id result) {
    
            /*
             "course_guid" = acb07f52233811e7a42d00163e2eb842;

             "lesson_guid" = 1eaa94da233911e797de00163e2eb842;
             
             "book_id" = 126;
             
              type = 1;

             */
            
            
        } fail:^(NSError *error) {
    
        }];

}

//7
- (void)getStudentCourseLessonguid
{
    //"course_guid" = acb07f52233811e7a42d00163e2eb842;
    //"lesson_guid" = 1eaa94da233911e797de00163e2eb842;
    //type = 1;
    
    [LXTAPINetworking lxt_getStudentCourseLessonguid:@"1eaa94da233911e797de00163e2eb842" course_guid:@"acb07f52233811e7a42d00163e2eb842" classType:@"1" studentID:self.guid token:self.token complete:^(BOOL successed, id result) {
        
    } fail:^(NSError *error) {
        
    }];
    
}

// 8
- (void)getTeacherListStudentGuid
{
    
    //1495814400 -- 2017/5/27
    [LXTAPINetworking lxt_getTeacherListStudentGuid:self.guid school_guid:self.school_guid classID:@"1eaa94da233911e797de00163e2eb842" Sex:@"0" dateUnix:@"1495814400" timeTag:@"0" isCollect:@"0" Page:@"1" token:self.token complete:^(BOOL successed, id result) {
        
    } fail:^(NSError *error) {
        
    }];
    
    
}

//9
- (void)getTeacherClassGuid
{
    [LXTAPINetworking lxt_getTeacherClassGuid:self.guid teacher_guid:@"00f3cc1aa24511e6945700163e033e10" school_guid:self.school_guid token:self.token complete:^(BOOL successed, id result) {
        
    } fail:^(NSError *error) {
        
    }];
}


//10
- (void)getTeacherCollectionListGuid
{
    [LXTAPINetworking lxt_getTeacherCollectionListGuid:self.guid school_guid:self.school_guid lesson_guid:@"1eaa94da233911e797de00163e2eb842" token:self.token complete:^(BOOL successed, id result) {
    } fail:^(NSError *error) {
    }];
    
}


//11
- (void)teacherCollectionTeacherId
{
    
    [LXTAPINetworking lxt_teacherCollectionTeacherId:@"00f3cc1aa24511e6945700163e033e10" studentId:self.guid school_guid:self.school_guid token:self.token complete:^(BOOL successed, id result) {
    } fail:^(NSError *error) {
    }];
    
}

//12
- (void)getAppointmentClasstime
{
    
    // getTeacherListStudentGuid: (startTime = 1495879200 2017/5/27 18:00:00;   2017/5/27:1495814400    18:00:00:timePort:19)    "book_id" = 126;  "lesson_list_id" = 51195;
    //
    [LXTAPINetworking lxt_getAppointmentClasstime:@"1495814400" guid:self.guid school_guid:self.school_guid lesson_list_id:@"51195" teacher_guid:@"00f3cc1aa24511e6945700163e033e10" book_id:@"126" lesson_guid:@"1eaa94da233911e797de00163e2eb842" timePort:@"19" token:self.token complete:^(BOOL successed, id result) {
        
    } fail:^(NSError *error) {
        
    }];
    
}



//13
- (void)getStudentAppointCourseGuid
{
    [LXTAPINetworking lxt_getStudentAppointCourseGuid:self.guid school_guid:self.school_guid page:1 pageSize:10 token:self.token complete:^(BOOL successed, id result) {
    } fail:^(NSError *error) {
    }];
}


//14
- (void)getCourseRecordGuid
{
    [LXTAPINetworking lxt_getCourseRecordGuid:self.guid page:1 pageSize:10 token:self.token complete:^(BOOL successed, id result) {
    } fail:^(NSError *error) {
    }];
}


//15
- (void)getCancelTheCourseGuid
{
    
// getStudentAppointCourseGuid 接口中
//  bespeak_guid =LessonId
//  timesstap =  StartTime StartTime = "2017-05-27 18:00:00";
    [LXTAPINetworking lxt_getCancelTheCourseGuid:self.guid bespeak_guid:@"d4c2292242a611e7aff700163e106fb7" school_guid:self.school_guid teacher_guid:@"00f3cc1aa24511e6945700163e033e10" timesstap:@"2017-05-27 18:00:00" token:self.token complete:^(BOOL successed, id result) {
    } fail:^(NSError *error) {
    }];
}


//16
- (void)commentsStudentId
{
    
    [LXTAPINetworking lxt_commentsStudentId:self.guid school_guid:self.school_guid bespeak_guid:@"5bf2bf2c428111e7908300163e106fb7" teacher_guid:@"00f3cc1aa24511e6945700163e033e10" fenshu:4 content:@"1231231" tags:@[@"1",@"2"] token:self.token complete:^(BOOL successed, id result) {
        
    } fail:^(NSError *error) {
        
    }];
    
}



//17
- (void)getTeacherCommentsGuid
{
    [LXTAPINetworking lxt_getTeacherCommentsGuid:self.guid teacher_guid:@"00f3cc1aa24511e6945700163e033e10" pageSize:@"10" page:@"1" token:self.token complete:^(BOOL successed, id result) {
        
    } fail:^(NSError *error) {
        
    }];
}

//18
- (void)getClassConfigcompleteGuid
{
    //bespeak_guid:  getStudentAppointCourseGuid  接口中LessonId
    

    [LXTAPINetworking lxt_getClassConfigcompleteGuid:self.guid bespeak_guid:@"60650c72428111e78d7d00163e106fb7" school_guid:self.school_guid deployType:@"TEST" token:self.token complete:^(BOOL successed, id result) {
        
    } fail:^(NSError *error) {
        
    }];
    
}

//19
- (void)getStudentCurveGuid
{
    [LXTAPINetworking lxt_getStudentCurveGuid:self.guid pages:@"1" school_guid:self.school_guid token:self.token complete:^(BOOL successed, id result) {
    } fail:^(NSError *error) {
    }];
}


//20
- (void)getChangePasswordGuid
{

    [LXTAPINetworking lxt_getChangePasswordGuid:self.guid school_guid:self.school_guid oldPassword:@"abc12345" newPassword:@"abc1234" token:self.token complete:^(BOOL successed, id result) {
        
    } fail:^(NSError *error) {
        
    }];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
