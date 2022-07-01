.class Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$10;
.super Ljava/lang/Object;
.source "VideoNativePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnBufferinEndOnMainThread()V
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

    .line 371
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$10;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 375
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$10;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1300(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$10;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1300(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;->onBufferingEnd()V

    .line 379
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$10;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1400(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$10;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1400(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;->onBufferingEnd()V

    .line 382
    :cond_1
    return-void
.end method
