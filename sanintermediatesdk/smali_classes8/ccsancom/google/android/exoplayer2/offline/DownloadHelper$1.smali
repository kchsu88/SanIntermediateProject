.class Lccsancom/google/android/exoplayer2/offline/DownloadHelper$1;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/exoplayer2/offline/DownloadHelper;->getRendererCapabilities(Lccsancom/google/android/exoplayer2/RenderersFactory;)[Lccsancom/google/android/exoplayer2/RendererCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onDroppedFrames(IJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$-CC;->$default$onDroppedFrames(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;IJ)V

    return-void
.end method

.method public synthetic onRenderedFirstFrame(Ljava/lang/Object;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$-CC;->$default$onRenderedFirstFrame(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;Ljava/lang/Object;J)V

    return-void
.end method

.method public synthetic onVideoCodecError(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$-CC;->$default$onVideoCodecError(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$-CC;->$default$onVideoDecoderInitialized(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic onVideoDecoderReleased(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$-CC;->$default$onVideoDecoderReleased(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onVideoDisabled(Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$-CC;->$default$onVideoDisabled(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onVideoEnabled(Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$-CC;->$default$onVideoEnabled(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onVideoFrameProcessingOffset(JI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$-CC;->$default$onVideoFrameProcessingOffset(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;JI)V

    return-void
.end method

.method public synthetic onVideoInputFormatChanged(Lccsancom/google/android/exoplayer2/Format;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$-CC;->$default$onVideoInputFormatChanged(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;Lccsancom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public synthetic onVideoInputFormatChanged(Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$-CC;->$default$onVideoInputFormatChanged(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(Lccsancom/google/android/exoplayer2/video/VideoSize;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$-CC;->$default$onVideoSizeChanged(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;Lccsancom/google/android/exoplayer2/video/VideoSize;)V

    return-void
.end method
