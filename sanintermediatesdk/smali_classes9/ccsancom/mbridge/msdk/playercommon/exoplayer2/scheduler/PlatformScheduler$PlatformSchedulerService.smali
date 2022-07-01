.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/PlatformScheduler$PlatformSchedulerService;
.super Lccsanandroid/app/job/JobService;
.source "PlatformScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/PlatformScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlatformSchedulerService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Lccsanandroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStartJob(Lccsanandroid/app/job/JobParameters;)Z
    .locals 4

    .line 135
    const-string v0, "PlatformSchedulerService started"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/PlatformScheduler;->access$000(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Lccsanandroid/app/job/JobParameters;->getExtras()Lccsanandroid/os/PersistableBundle;

    move-result-object v0

    .line 137
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;

    const-string v2, "requirements"

    invoke-virtual {v0, v2}, Lccsanandroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;-><init>(I)V

    .line 138
    invoke-virtual {v1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;->checkRequirements(Lccsanandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const-string p1, "Requirements are met"

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/PlatformScheduler;->access$000(Ljava/lang/String;)V

    .line 140
    const-string p1, "service_action"

    invoke-virtual {v0, p1}, Lccsanandroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 141
    const-string v1, "service_package"

    invoke-virtual {v0, v1}, Lccsanandroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    new-instance v1, Lccsanandroid/content/Intent;

    invoke-direct {v1, p1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lccsanandroid/content/Intent;->setPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object v1

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " package: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/PlatformScheduler;->access$000(Ljava/lang/String;)V

    .line 144
    invoke-static {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->startForegroundService(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)Lccsanandroid/content/ComponentName;

    .line 145
    goto :goto_0

    .line 146
    :cond_0
    const-string v0, "Requirements are not met"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/PlatformScheduler;->access$000(Ljava/lang/String;)V

    .line 147
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/PlatformScheduler$PlatformSchedulerService;->jobFinished(Lccsanandroid/app/job/JobParameters;Z)V

    .line 149
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onStopJob(Lccsanandroid/app/job/JobParameters;)Z
    .locals 0

    .line 154
    const/4 p1, 0x0

    return p1
.end method
