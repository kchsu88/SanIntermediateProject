.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation


# instance fields
.field private final handler:Lccsanandroid/os/Handler;

.field private final listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;


# direct methods
.method public constructor <init>(Lccsanandroid/os/Handler;Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    if-eqz p2, :cond_0

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    .line 124
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;
    .locals 0

    .line 111
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;

    return-object p0
.end method


# virtual methods
.method public final decoderInitialized(Ljava/lang/String;JJ)V
    .locals 9

    .line 146
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    new-instance v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher$2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher$2;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 155
    :cond_0
    return-void
.end method

.method public final disabled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)V
    .locals 2

    .line 219
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher$7;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher$7;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 228
    :cond_0
    return-void
.end method

.method public final droppedFrames(IJ)V
    .locals 2

    .line 175
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher$4;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;IJ)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    :cond_0
    return-void
.end method

.method public final enabled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher$1;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher$1;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    :cond_0
    return-void
.end method

.method public final inputFormatChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V
    .locals 2

    .line 161
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher$3;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher$3;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    :cond_0
    return-void
.end method

.method public final renderedFirstFrame(Lccsanandroid/view/Surface;)V
    .locals 2

    .line 205
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher$6;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher$6;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lccsanandroid/view/Surface;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 213
    :cond_0
    return-void
.end method

.method public final videoSizeChanged(IIIF)V
    .locals 8

    .line 190
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    new-instance v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher$5;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher$5;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;IIIF)V

    invoke-virtual {v0, v7}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    :cond_0
    return-void
.end method
