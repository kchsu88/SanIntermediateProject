.class Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$3;
.super Ljava/lang/Object;
.source "VideoNativePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$3;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 156
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$3;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$000(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$3;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$3;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$000(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$102(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;J)J

    .line 159
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$3;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$100(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)J

    move-result-wide v0

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    .line 161
    nop

    .line 162
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$3;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v4}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$000(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$3;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v4}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$000(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-lez v4, :cond_0

    .line 163
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$3;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v4}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$000(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v7

    div-long/2addr v7, v2

    goto :goto_0

    .line 166
    :cond_0
    move-wide v7, v5

    :goto_0
    cmp-long v4, v0, v5

    if-ltz v4, :cond_1

    cmp-long v0, v7, v5

    if-lez v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$3;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$3;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$100(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v0, v4, v5, v7, v8}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$900(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;JJ)V

    .line 170
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$3;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$800(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsanandroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_2
    goto :goto_1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :goto_1
    return-void
.end method
