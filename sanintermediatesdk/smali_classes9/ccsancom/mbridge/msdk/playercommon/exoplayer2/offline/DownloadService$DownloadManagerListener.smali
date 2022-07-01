.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$DownloadManagerListener;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DownloadManagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$DownloadManagerListener;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$1;)V
    .locals 0

    .line 383
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$DownloadManagerListener;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;)V

    return-void
.end method


# virtual methods
.method public final onIdle(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;)V
    .locals 0

    .line 401
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$DownloadManagerListener;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;->access$400(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;)V

    .line 402
    return-void
.end method

.method public final onInitialized(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;)V
    .locals 0

    .line 386
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$DownloadManagerListener;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;->access$200(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;)V

    .line 387
    return-void
.end method

.method public final onTaskStateChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$TaskState;)V
    .locals 0

    .line 391
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$DownloadManagerListener;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;->onTaskStateChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$TaskState;)V

    .line 392
    iget p1, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$TaskState;->state:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 393
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$DownloadManagerListener;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;->access$300(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->startPeriodicUpdates()V

    goto :goto_0

    .line 395
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$DownloadManagerListener;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;->access$300(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->update()V

    .line 397
    :goto_0
    return-void
.end method
