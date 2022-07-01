.class Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$7;
.super Ljava/lang/Object;
.source "VideoFeedsPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnBufferingStarOnMainThread(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

.field final synthetic val$bufferMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;Ljava/lang/String;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$7;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$7;->val$bufferMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 379
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$7;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$1100(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    if-eqz v0, :cond_0

    .line 381
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$7;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$1100(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$7;->val$bufferMsg:Ljava/lang/String;

    invoke-interface {v0, v2}, Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;->onBufferingStart(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_0
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$7;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$1200(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 389
    :try_start_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$7;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$1200(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$7;->val$bufferMsg:Ljava/lang/String;

    invoke-interface {v0, v2}, Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;->onBufferingStart(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 392
    goto :goto_1

    .line 390
    :catch_1
    move-exception v0

    .line 391
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_1
    :goto_1
    return-void
.end method
