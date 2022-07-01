.class Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$2;
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

    .line 116
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 120
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$000(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$000(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$102(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;J)J

    .line 122
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$100(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 124
    nop

    .line 126
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$000(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$000(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_0

    .line 127
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$000(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v5

    div-long/2addr v5, v2

    long-to-int v0, v5

    goto :goto_0

    .line 130
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v5}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$200(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 131
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v5, v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$300(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;I)V

    .line 132
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v5, v4}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$202(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;Z)Z

    .line 135
    :cond_1
    if-ltz v1, :cond_2

    if-lez v0, :cond_2

    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 136
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v5, v1, v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$400(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;II)V

    .line 139
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0, v4}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$502(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;Z)Z

    .line 140
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$600(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 141
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$700(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)V

    .line 144
    :cond_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$2;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$800(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsanandroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_4
    goto :goto_1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_1
    return-void
.end method
