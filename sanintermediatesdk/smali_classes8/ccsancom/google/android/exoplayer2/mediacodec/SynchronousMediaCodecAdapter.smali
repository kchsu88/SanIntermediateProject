.class public Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;
.super Ljava/lang/Object;
.source "SynchronousMediaCodecAdapter.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$Api18;,
        Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$Factory;
    }
.end annotation


# instance fields
.field private final codec:Lccsanandroid/media/MediaCodec;

.field private inputByteBuffers:[Ljava/nio/ByteBuffer;

.field private final inputSurface:Lccsanandroid/view/Surface;

.field private outputByteBuffers:[Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Lccsanandroid/media/MediaCodec;Lccsanandroid/view/Surface;)V
    .locals 2
    .param p1, "mediaCodec"    # Lccsanandroid/media/MediaCodec;
    .param p2, "inputSurface"    # Lccsanandroid/view/Surface;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Lccsanandroid/media/MediaCodec;

    .line 101
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->inputSurface:Lccsanandroid/view/Surface;

    .line 102
    sget v0, Lccsancom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 103
    invoke-virtual {p1}, Lccsanandroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->inputByteBuffers:[Ljava/nio/ByteBuffer;

    .line 104
    invoke-virtual {p1}, Lccsanandroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->outputByteBuffers:[Ljava/nio/ByteBuffer;

    .line 106
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lccsanandroid/media/MediaCodec;Lccsanandroid/view/Surface;Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lccsanandroid/media/MediaCodec;
    .param p2, "x1"    # Lccsanandroid/view/Surface;
    .param p3, "x2"    # Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$1;

    .line 40
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;-><init>(Lccsanandroid/media/MediaCodec;Lccsanandroid/view/Surface;)V

    return-void
.end method


# virtual methods
.method public dequeueInputBufferIndex()I
    .locals 3

    .line 115
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Lccsanandroid/media/MediaCodec;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanandroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    return v0
.end method

.method public dequeueOutputBufferIndex(Lccsanandroid/media/MediaCodec$BufferInfo;)I
    .locals 4
    .param p1, "bufferInfo"    # Lccsanandroid/media/MediaCodec$BufferInfo;

    .line 122
    :goto_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Lccsanandroid/media/MediaCodec;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lccsanandroid/media/MediaCodec;->dequeueOutputBuffer(Lccsanandroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 123
    .local v0, "index":I
    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    sget v2, Lccsancom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    .line 124
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Lccsanandroid/media/MediaCodec;

    invoke-virtual {v2}, Lccsanandroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->outputByteBuffers:[Ljava/nio/ByteBuffer;

    .line 126
    :cond_0
    if-eq v0, v1, :cond_1

    .line 128
    return v0

    .line 126
    :cond_1
    goto :goto_0
.end method

.method public flush()V
    .locals 1

    .line 188
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Lccsanandroid/media/MediaCodec;

    invoke-virtual {v0}, Lccsanandroid/media/MediaCodec;->flush()V

    .line 189
    return-void
.end method

.method public getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I

    .line 139
    sget v0, Lccsancom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Lccsanandroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Lccsanandroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 142
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->inputByteBuffers:[Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getInputSurface()Lccsanandroid/view/Surface;
    .locals 1

    .line 149
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->inputSurface:Lccsanandroid/view/Surface;

    return-object v0
.end method

.method public getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I

    .line 155
    sget v0, Lccsancom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Lccsanandroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Lccsanandroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 158
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->outputByteBuffers:[Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getOutputFormat()Lccsanandroid/media/MediaFormat;
    .locals 1

    .line 133
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Lccsanandroid/media/MediaCodec;

    invoke-virtual {v0}, Lccsanandroid/media/MediaCodec;->getOutputFormat()Lccsanandroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$setOnFrameRenderedListener$0$com-google-android-exoplayer2-mediacodec-SynchronousMediaCodecAdapter(Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;Lccsanandroid/media/MediaCodec;JJ)V
    .locals 6
    .param p1, "listener"    # Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;
    .param p2, "codec"    # Lccsanandroid/media/MediaCodec;
    .param p3, "presentationTimeUs"    # J
    .param p5, "nanoTime"    # J

    .line 212
    move-object v0, p1

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p5

    invoke-interface/range {v0 .. v5}, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;->onFrameRendered(Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;JJ)V

    return-void
.end method

.method public needsReconfiguration()Z
    .locals 1

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public queueInputBuffer(IIIJI)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "presentationTimeUs"    # J
    .param p6, "flags"    # I

    .line 165
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Lccsanandroid/media/MediaCodec;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lccsanandroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 166
    return-void
.end method

.method public queueSecureInputBuffer(IILccsancom/google/android/exoplayer2/decoder/CryptoInfo;JI)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "offset"    # I
    .param p3, "info"    # Lccsancom/google/android/exoplayer2/decoder/CryptoInfo;
    .param p4, "presentationTimeUs"    # J
    .param p6, "flags"    # I

    .line 171
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Lccsanandroid/media/MediaCodec;

    .line 172
    invoke-virtual {p3}, Lccsancom/google/android/exoplayer2/decoder/CryptoInfo;->getFrameworkCryptoInfo()Lccsanandroid/media/MediaCodec$CryptoInfo;

    move-result-object v3

    .line 171
    move v1, p1

    move v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lccsanandroid/media/MediaCodec;->queueSecureInputBuffer(IILccsanandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 173
    return-void
.end method

.method public release()V
    .locals 1

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->inputByteBuffers:[Ljava/nio/ByteBuffer;

    .line 194
    iput-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->outputByteBuffers:[Ljava/nio/ByteBuffer;

    .line 195
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->inputSurface:Lccsanandroid/view/Surface;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Lccsanandroid/view/Surface;->release()V

    .line 198
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Lccsanandroid/media/MediaCodec;

    invoke-virtual {v0}, Lccsanandroid/media/MediaCodec;->release()V

    .line 199
    return-void
.end method

.method public releaseOutputBuffer(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "renderTimeStampNs"    # J

    .line 183
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Lccsanandroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 184
    return-void
.end method

.method public releaseOutputBuffer(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "render"    # Z

    .line 177
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Lccsanandroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 178
    return-void
.end method

.method public setOnFrameRenderedListener(Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;Lccsanandroid/os/Handler;)V
    .locals 2
    .param p1, "listener"    # Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;
    .param p2, "handler"    # Lccsanandroid/os/Handler;

    .line 210
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Lccsanandroid/media/MediaCodec;

    new-instance v1, Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;-><init>(Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;)V

    invoke-virtual {v0, v1, p2}, Lccsanandroid/media/MediaCodec;->setOnFrameRenderedListener(Lccsanandroid/media/MediaCodec$OnFrameRenderedListener;Lccsanandroid/os/Handler;)V

    .line 215
    return-void
.end method

.method public setOutputSurface(Lccsanandroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Lccsanandroid/view/Surface;

    .line 220
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Lccsanandroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Lccsanandroid/media/MediaCodec;->setOutputSurface(Lccsanandroid/view/Surface;)V

    .line 221
    return-void
.end method

.method public setParameters(Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "params"    # Lccsanandroid/os/Bundle;

    .line 226
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Lccsanandroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Lccsanandroid/media/MediaCodec;->setParameters(Lccsanandroid/os/Bundle;)V

    .line 227
    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 1
    .param p1, "scalingMode"    # I

    .line 231
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Lccsanandroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Lccsanandroid/media/MediaCodec;->setVideoScalingMode(I)V

    .line 232
    return-void
.end method

.method public signalEndOfInputStream()V
    .locals 1

    .line 204
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Lccsanandroid/media/MediaCodec;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$Api18;->signalEndOfInputStream(Lccsanandroid/media/MediaCodec;)V

    .line 205
    return-void
.end method
