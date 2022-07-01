.class Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$2;
.super Ljava/lang/Object;
.source "VideoFeedsPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;
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

    .line 169
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$2;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 173
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$2;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$000(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$2;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayerIsPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 174
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$2;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$000(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$102(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;J)J

    .line 175
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$2;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$100(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 176
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$2;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$100(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    rem-long/2addr v1, v3

    long-to-float v1, v1

    .line 177
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 178
    nop

    .line 179
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$2;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$000(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object v2

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$2;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$000(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v7

    cmp-long v2, v7, v5

    if-lez v2, :cond_0

    .line 181
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$2;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$000(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v7

    div-long/2addr v7, v3

    .line 182
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    const/high16 v2, 0x43fa0000    # 500.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_0
    move-wide v7, v5

    :cond_1
    :goto_0
    if-ltz v0, :cond_2

    cmp-long v1, v7, v5

    if-lez v1, :cond_2

    int-to-long v1, v0

    const-wide/16 v5, 0x1

    add-long/2addr v5, v7

    cmp-long v9, v1, v5

    if-gez v9, :cond_2

    .line 187
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$2;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    long-to-int v2, v7

    invoke-static {v1, v0, v2}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$200(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;II)V

    .line 190
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$2;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$302(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;Z)Z

    .line 191
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$2;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$400(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 192
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$2;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$500(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)V

    .line 195
    :cond_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$2;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$600(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Lccsanandroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v3, v4}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_4
    goto :goto_1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :goto_1
    return-void
.end method
