.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$2;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->loadActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$2;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 457
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$2;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->access$900(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ActionFile;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$2;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->access$800(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;)[Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction$Deserializer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ActionFile;->load([Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction$Deserializer;)[Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;

    move-result-object v0

    .line 458
    const-string v1, "Action file is loaded."

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->access$1000(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    goto :goto_0

    .line 459
    :catchall_0
    move-exception v0

    .line 460
    const-string v1, "DownloadManager"

    const-string v2, "Action file loading failed."

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 461
    const/4 v0, 0x0

    new-array v0, v0, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;

    .line 463
    :goto_0
    nop

    .line 464
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$2;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->access$1900(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;)Lccsanandroid/os/Handler;

    move-result-object v1

    new-instance v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$2$1;

    invoke-direct {v2, p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$2$1;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$2;[Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;)V

    invoke-virtual {v1, v2}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 496
    return-void
.end method
