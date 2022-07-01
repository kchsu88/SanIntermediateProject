.class public interface abstract Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener$EventDispatcher;
    }
.end annotation


# virtual methods
.method public abstract onDroppedFrames(IJ)V
.end method

.method public abstract onRenderedFirstFrame(Lccsanandroid/view/Surface;)V
.end method

.method public abstract onVideoDecoderInitialized(Ljava/lang/String;JJ)V
.end method

.method public abstract onVideoDisabled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)V
.end method

.method public abstract onVideoEnabled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)V
.end method

.method public abstract onVideoInputFormatChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V
.end method

.method public abstract onVideoSizeChanged(IIIF)V
.end method
