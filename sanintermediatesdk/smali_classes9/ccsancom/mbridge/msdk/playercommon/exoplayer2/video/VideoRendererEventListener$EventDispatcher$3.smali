.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher$3;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->inputFormatChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

.field final synthetic val$format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher$3;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher$3;->val$format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 165
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher$3;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher$3;->val$format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;->onVideoInputFormatChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V

    .line 166
    return-void
.end method
