.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$3;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->saveActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;

.field final synthetic val$actions:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;[Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$3;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;

    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$3;->val$actions:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 512
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$3;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->access$900(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ActionFile;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$3;->val$actions:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ActionFile;->store([Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;)V

    .line 513
    const-string v0, "Actions persisted."

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->access$1000(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    goto :goto_0

    .line 514
    :catch_0
    move-exception v0

    .line 515
    const-string v1, "DownloadManager"

    const-string v2, "Persisting actions failed."

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 517
    :goto_0
    return-void
.end method
