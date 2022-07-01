.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"

# interfaces
.implements Lccsanandroid/media/MediaCodec$OnFrameRenderedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/MediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnFrameRenderedListenerV23"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/MediaCodecVideoRenderer;


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/MediaCodecVideoRenderer;Lccsanandroid/media/MediaCodec;)V
    .locals 0

    .line 1378
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/MediaCodecVideoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1379
    new-instance p1, Lccsanandroid/os/Handler;

    invoke-direct {p1}, Lccsanandroid/os/Handler;-><init>()V

    invoke-virtual {p2, p0, p1}, Lccsanandroid/media/MediaCodec;->setOnFrameRenderedListener(Lccsanandroid/media/MediaCodec$OnFrameRenderedListener;Lccsanandroid/os/Handler;)V

    .line 1380
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/MediaCodecVideoRenderer;Lccsanandroid/media/MediaCodec;Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/MediaCodecVideoRenderer$1;)V
    .locals 0

    .line 1376
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/MediaCodecVideoRenderer;Lccsanandroid/media/MediaCodec;)V

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Lccsanandroid/media/MediaCodec;JJ)V
    .locals 0

    .line 1384
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/MediaCodecVideoRenderer;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    if-eq p0, p1, :cond_0

    .line 1386
    return-void

    .line 1388
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/MediaCodecVideoRenderer;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    .line 1389
    return-void
.end method
