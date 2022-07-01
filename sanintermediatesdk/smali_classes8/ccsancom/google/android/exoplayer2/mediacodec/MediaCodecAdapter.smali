.class public interface abstract Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
.super Ljava/lang/Object;
.source "MediaCodecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;,
        Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;,
        Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;
    }
.end annotation


# virtual methods
.method public abstract dequeueInputBufferIndex()I
.end method

.method public abstract dequeueOutputBufferIndex(Lccsanandroid/media/MediaCodec$BufferInfo;)I
.end method

.method public abstract flush()V
.end method

.method public abstract getInputBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract getInputSurface()Lccsanandroid/view/Surface;
.end method

.method public abstract getOutputBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract getOutputFormat()Lccsanandroid/media/MediaFormat;
.end method

.method public abstract needsReconfiguration()Z
.end method

.method public abstract queueInputBuffer(IIIJI)V
.end method

.method public abstract queueSecureInputBuffer(IILccsancom/google/android/exoplayer2/decoder/CryptoInfo;JI)V
.end method

.method public abstract release()V
.end method

.method public abstract releaseOutputBuffer(IJ)V
.end method

.method public abstract releaseOutputBuffer(IZ)V
.end method

.method public abstract setOnFrameRenderedListener(Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;Lccsanandroid/os/Handler;)V
.end method

.method public abstract setOutputSurface(Lccsanandroid/view/Surface;)V
.end method

.method public abstract setParameters(Lccsanandroid/os/Bundle;)V
.end method

.method public abstract setVideoScalingMode(I)V
.end method

.method public abstract signalEndOfInputStream()V
.end method
