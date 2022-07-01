.class Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$11;
.super Ljava/lang/Object;
.source "VideoNativePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayStartOnMainThread(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

.field final synthetic val$allDuration:I


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;I)V
    .locals 0

    .line 393
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$11;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$11;->val$allDuration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 397
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$11;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1300(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$11;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1300(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$11;->val$allDuration:I

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;->onPlayStarted(I)V

    .line 401
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$11;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1400(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$11;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1400(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$11;->val$allDuration:I

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;->onPlayStarted(I)V

    .line 404
    :cond_1
    return-void
.end method
