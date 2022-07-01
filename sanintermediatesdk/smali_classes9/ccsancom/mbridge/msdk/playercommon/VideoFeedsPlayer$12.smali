.class Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$12;
.super Ljava/lang/Object;
.source "VideoFeedsPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnPlayCompletedOnMainThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$12;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 530
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$12;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$1100(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    if-eqz v0, :cond_0

    .line 532
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$12;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$1100(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;->onPlayCompleted()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    goto :goto_0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :cond_0
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$12;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$1200(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 539
    :try_start_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$12;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$1200(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;->onPlayCompleted()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 542
    goto :goto_1

    .line 540
    :catch_1
    move-exception v0

    .line 541
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :cond_1
    :goto_1
    return-void
.end method
