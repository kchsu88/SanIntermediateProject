.class Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$12;
.super Ljava/lang/Object;
.source "VideoNativePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

.field final synthetic val$errStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;Ljava/lang/String;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$12;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$12;->val$errStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 419
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$12;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1300(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$12;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1300(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$12;->val$errStr:Ljava/lang/String;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;->onPlayError(Ljava/lang/String;)V

    .line 423
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$12;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1400(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$12;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1400(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$12;->val$errStr:Ljava/lang/String;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;->onPlayError(Ljava/lang/String;)V

    .line 426
    :cond_1
    return-void
.end method
