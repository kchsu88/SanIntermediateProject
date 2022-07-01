.class public interface abstract Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;
    }
.end annotation


# virtual methods
.method public abstract onDroppedFrames(IJ)V
.end method

.method public abstract onRenderedFirstFrame(Ljava/lang/Object;J)V
.end method

.method public abstract onVideoCodecError(Ljava/lang/Exception;)V
.end method

.method public abstract onVideoDecoderInitialized(Ljava/lang/String;JJ)V
.end method

.method public abstract onVideoDecoderReleased(Ljava/lang/String;)V
.end method

.method public abstract onVideoDisabled(Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
.end method

.method public abstract onVideoEnabled(Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
.end method

.method public abstract onVideoFrameProcessingOffset(JI)V
.end method

.method public abstract onVideoInputFormatChanged(Lccsancom/google/android/exoplayer2/Format;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onVideoInputFormatChanged(Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
.end method

.method public abstract onVideoSizeChanged(Lccsancom/google/android/exoplayer2/video/VideoSize;)V
.end method
