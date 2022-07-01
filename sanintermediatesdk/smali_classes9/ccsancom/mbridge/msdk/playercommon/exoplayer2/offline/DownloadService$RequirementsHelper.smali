.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$RequirementsHelper;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RequirementsHelper"
.end annotation


# instance fields
.field private final context:Lccsanandroid/content/Context;

.field private final requirements:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;

.field private final requirementsWatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;

.field private final scheduler:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Scheduler;

.field private final serviceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Scheduler;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Scheduler;",
            "Ljava/lang/Class<",
            "+",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;",
            ">;)V"
        }
    .end annotation

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$RequirementsHelper;->context:Lccsanandroid/content/Context;

    .line 466
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$RequirementsHelper;->requirements:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;

    .line 467
    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$RequirementsHelper;->scheduler:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Scheduler;

    .line 468
    iput-object p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$RequirementsHelper;->serviceClass:Ljava/lang/Class;

    .line 469
    new-instance p3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;

    invoke-direct {p3, p1, p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;-><init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$Listener;Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;)V

    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$RequirementsHelper;->requirementsWatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;

    .line 470
    return-void
.end method

.method synthetic constructor <init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Scheduler;Ljava/lang/Class;Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$1;)V
    .locals 0

    .line 452
    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$RequirementsHelper;-><init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Scheduler;Ljava/lang/Class;)V

    return-void
.end method

.method private startServiceWithAction(Ljava/lang/String;)V
    .locals 3

    .line 504
    new-instance v0, Lccsanandroid/content/Intent;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$RequirementsHelper;->context:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$RequirementsHelper;->serviceClass:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    .line 505
    invoke-virtual {v0, p1}, Lccsanandroid/content/Intent;->setAction(Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object p1

    const-string v0, "foreground"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Z)Lccsanandroid/content/Intent;

    move-result-object p1

    .line 506
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$RequirementsHelper;->context:Lccsanandroid/content/Context;

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->startForegroundService(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)Lccsanandroid/content/ComponentName;

    .line 507
    return-void
.end method


# virtual methods
.method public final requirementsMet(Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;)V
    .locals 0

    .line 485
    const-string p1, "com.google.android.exoplayer.downloadService.action.START_DOWNLOADS"

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$RequirementsHelper;->startServiceWithAction(Ljava/lang/String;)V

    .line 486
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$RequirementsHelper;->scheduler:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Scheduler;

    if-eqz p1, :cond_0

    .line 487
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Scheduler;->cancel()Z

    .line 489
    :cond_0
    return-void
.end method

.method public final requirementsNotMet(Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;)V
    .locals 3

    .line 493
    const-string p1, "com.google.android.exoplayer.downloadService.action.STOP_DOWNLOADS"

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$RequirementsHelper;->startServiceWithAction(Ljava/lang/String;)V

    .line 494
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$RequirementsHelper;->scheduler:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Scheduler;

    if-eqz p1, :cond_0

    .line 495
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$RequirementsHelper;->context:Lccsanandroid/content/Context;

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 496
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$RequirementsHelper;->scheduler:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Scheduler;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$RequirementsHelper;->requirements:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;

    const-string v2, "com.google.android.exoplayer.downloadService.action.RESTART"

    invoke-interface {v0, v1, p1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Scheduler;->schedule(Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 497
    if-nez p1, :cond_0

    .line 498
    const-string p1, "DownloadService"

    const-string v0, "Scheduling downloads failed."

    invoke-static {p1, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_0
    return-void
.end method

.method public final start()V
    .locals 1

    .line 473
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$RequirementsHelper;->requirementsWatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->start()V

    .line 474
    return-void
.end method

.method public final stop()V
    .locals 1

    .line 477
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$RequirementsHelper;->requirementsWatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->stop()V

    .line 478
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$RequirementsHelper;->scheduler:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Scheduler;

    if-eqz v0, :cond_0

    .line 479
    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Scheduler;->cancel()Z

    .line 481
    :cond_0
    return-void
.end method
