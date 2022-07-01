.class Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$3;
.super Ljava/util/TimerTask;
.source "VideoFeedsPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->startBufferIngTimer(Ljava/lang/String;)V
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

    .line 239
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$3;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$3;->val$bufferMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 243
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$3;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$700(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$3;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$400(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$3;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$3;->val$bufferMsg:Ljava/lang/String;

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$800(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :cond_1
    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :goto_0
    return-void
.end method
