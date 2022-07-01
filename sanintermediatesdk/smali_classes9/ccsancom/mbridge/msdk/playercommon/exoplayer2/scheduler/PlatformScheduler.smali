.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/PlatformScheduler;
.super Ljava/lang/Object;
.source "PlatformScheduler.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Scheduler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/PlatformScheduler$PlatformSchedulerService;
    }
.end annotation


# static fields
.field private static final KEY_REQUIREMENTS:Ljava/lang/String; = "requirements"

.field private static final KEY_SERVICE_ACTION:Ljava/lang/String; = "service_action"

.field private static final KEY_SERVICE_PACKAGE:Ljava/lang/String; = "service_package"

.field private static final TAG:Ljava/lang/String; = "PlatformScheduler"


# instance fields
.field private final jobId:I

.field private final jobScheduler:Lccsanandroid/app/job/JobScheduler;

.field private final jobServiceComponentName:Lccsanandroid/content/ComponentName;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;I)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/PlatformScheduler;->jobId:I

    .line 52
    new-instance p2, Lccsanandroid/content/ComponentName;

    const-class v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/PlatformScheduler$PlatformSchedulerService;

    invoke-direct {p2, p1, v0}, Lccsanandroid/content/ComponentName;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/PlatformScheduler;->jobServiceComponentName:Lccsanandroid/content/ComponentName;

    .line 53
    const-string p2, "jobscheduler"

    invoke-virtual {p1, p2}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/app/job/JobScheduler;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/PlatformScheduler;->jobScheduler:Lccsanandroid/app/job/JobScheduler;

    .line 54
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/PlatformScheduler;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private static buildJobInfo(ILccsanandroid/content/ComponentName;Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/app/job/JobInfo;
    .locals 2

    .line 80
    new-instance v0, Lccsanandroid/app/job/JobInfo$Builder;

    invoke-direct {v0, p0, p1}, Lccsanandroid/app/job/JobInfo$Builder;-><init>(ILccsanandroid/content/ComponentName;)V

    .line 83
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;->getRequiredNetworkType()I

    move-result p0

    const/4 p1, 0x1

    packed-switch p0, :pswitch_data_0

    .line 108
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 101
    :pswitch_0
    sget p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p0, v1, :cond_0

    .line 102
    const/4 p0, 0x4

    goto :goto_0

    .line 104
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 94
    :pswitch_1
    sget p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt p0, v1, :cond_1

    .line 95
    const/4 p0, 0x3

    goto :goto_0

    .line 97
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 91
    :pswitch_2
    const/4 p0, 0x2

    .line 92
    goto :goto_0

    .line 88
    :pswitch_3
    nop

    .line 89
    const/4 p0, 0x1

    goto :goto_0

    .line 85
    :pswitch_4
    const/4 p0, 0x0

    .line 86
    nop

    .line 111
    :goto_0
    invoke-virtual {v0, p0}, Lccsanandroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Lccsanandroid/app/job/JobInfo$Builder;

    .line 112
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;->isIdleRequired()Z

    move-result p0

    invoke-virtual {v0, p0}, Lccsanandroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Lccsanandroid/app/job/JobInfo$Builder;

    .line 113
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;->isChargingRequired()Z

    move-result p0

    invoke-virtual {v0, p0}, Lccsanandroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Lccsanandroid/app/job/JobInfo$Builder;

    .line 114
    invoke-virtual {v0, p1}, Lccsanandroid/app/job/JobInfo$Builder;->setPersisted(Z)Lccsanandroid/app/job/JobInfo$Builder;

    .line 116
    new-instance p0, Lccsanandroid/os/PersistableBundle;

    invoke-direct {p0}, Lccsanandroid/os/PersistableBundle;-><init>()V

    .line 117
    const-string p1, "service_action"

    invoke-virtual {p0, p1, p3}, Lccsanandroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string p1, "service_package"

    invoke-virtual {p0, p1, p4}, Lccsanandroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;->getRequirementsData()I

    move-result p1

    const-string p2, "requirements"

    invoke-virtual {p0, p2, p1}, Lccsanandroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 120
    invoke-virtual {v0, p0}, Lccsanandroid/app/job/JobInfo$Builder;->setExtras(Lccsanandroid/os/PersistableBundle;)Lccsanandroid/app/job/JobInfo$Builder;

    .line 122
    invoke-virtual {v0}, Lccsanandroid/app/job/JobInfo$Builder;->build()Lccsanandroid/app/job/JobInfo;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 0

    .line 129
    return-void
.end method


# virtual methods
.method public final cancel()Z
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Canceling job: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/PlatformScheduler;->jobId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/PlatformScheduler;->logd(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/PlatformScheduler;->jobScheduler:Lccsanandroid/app/job/JobScheduler;

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/PlatformScheduler;->jobId:I

    invoke-virtual {v0, v1}, Lccsanandroid/app/job/JobScheduler;->cancel(I)V

    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public final schedule(Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 58
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/PlatformScheduler;->jobId:I

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/PlatformScheduler;->jobServiceComponentName:Lccsanandroid/content/ComponentName;

    .line 59
    invoke-static {v0, v1, p1, p3, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/PlatformScheduler;->buildJobInfo(ILccsanandroid/content/ComponentName;Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/app/job/JobInfo;

    move-result-object p1

    .line 60
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/PlatformScheduler;->jobScheduler:Lccsanandroid/app/job/JobScheduler;

    invoke-virtual {p2, p1}, Lccsanandroid/app/job/JobScheduler;->schedule(Lccsanandroid/app/job/JobInfo;)I

    move-result p1

    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Scheduling job: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/PlatformScheduler;->jobId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " result: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/PlatformScheduler;->logd(Ljava/lang/String;)V

    .line 62
    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method
