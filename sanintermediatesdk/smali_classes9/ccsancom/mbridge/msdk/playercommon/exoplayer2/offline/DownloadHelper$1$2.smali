.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadHelper$1$2;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadHelper$1;

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadHelper$1;Ljava/io/IOException;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadHelper$1$2;->this$1:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadHelper$1;

    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadHelper$1$2;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 74
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadHelper$1$2;->this$1:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadHelper$1;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadHelper$1;->val$callback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadHelper$Callback;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadHelper$1$2;->this$1:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadHelper$1;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadHelper$1;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadHelper;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadHelper$1$2;->val$e:Ljava/io/IOException;

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadHelper$Callback;->onPrepareError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadHelper;Ljava/io/IOException;)V

    .line 75
    return-void
.end method
