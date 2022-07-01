.class Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$8;
.super Ljava/lang/Object;
.source "VideoNativePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayProgressMSOnMainThread(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

.field final synthetic val$allDurationSecond:J

.field final synthetic val$curPlayPosition:J


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;JJ)V
    .locals 0

    .line 327
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$8;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    iput-wide p2, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$8;->val$curPlayPosition:J

    iput-wide p4, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$8;->val$allDurationSecond:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 331
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$8;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1300(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$8;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1300(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    iget-wide v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$8;->val$curPlayPosition:J

    long-to-int v2, v1

    iget-wide v3, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$8;->val$allDurationSecond:J

    long-to-int v1, v3

    invoke-interface {v0, v2, v1}, Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;->onPlayProgressMS(II)V

    .line 335
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$8;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1400(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$8;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1400(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    iget-wide v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$8;->val$curPlayPosition:J

    long-to-int v2, v1

    iget-wide v3, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$8;->val$allDurationSecond:J

    long-to-int v1, v3

    invoke-interface {v0, v2, v1}, Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;->onPlayProgressMS(II)V

    .line 338
    :cond_1
    return-void
.end method
