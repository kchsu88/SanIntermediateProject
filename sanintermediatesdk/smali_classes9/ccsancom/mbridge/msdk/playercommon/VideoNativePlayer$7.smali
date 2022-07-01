.class Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$7;
.super Ljava/lang/Object;
.source "VideoNativePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayProgressOnMainThread(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

.field final synthetic val$allDurationSecond:I

.field final synthetic val$curPlayPosition:I


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;II)V
    .locals 0

    .line 305
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$7;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$7;->val$curPlayPosition:I

    iput p3, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$7;->val$allDurationSecond:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 309
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$7;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1300(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$7;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1300(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$7;->val$curPlayPosition:I

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$7;->val$allDurationSecond:I

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;->onPlayProgress(II)V

    .line 313
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$7;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1400(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$7;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1400(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$7;->val$curPlayPosition:I

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$7;->val$allDurationSecond:I

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;->onPlayProgress(II)V

    .line 316
    :cond_1
    return-void
.end method
