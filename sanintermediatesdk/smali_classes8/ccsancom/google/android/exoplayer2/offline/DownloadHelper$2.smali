.class Lccsancom/google/android/exoplayer2/offline/DownloadHelper$2;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;


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

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onAudioCodecError(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$-CC;->$default$onAudioCodecError(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$-CC;->$default$onAudioDecoderInitialized(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic onAudioDecoderReleased(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$-CC;->$default$onAudioDecoderReleased(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onAudioDisabled(Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$-CC;->$default$onAudioDisabled(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onAudioEnabled(Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$-CC;->$default$onAudioEnabled(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onAudioInputFormatChanged(Lccsancom/google/android/exoplayer2/Format;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$-CC;->$default$onAudioInputFormatChanged(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;Lccsancom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public synthetic onAudioInputFormatChanged(Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$-CC;->$default$onAudioInputFormatChanged(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public synthetic onAudioPositionAdvancing(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$-CC;->$default$onAudioPositionAdvancing(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;J)V

    return-void
.end method

.method public synthetic onAudioSinkError(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$-CC;->$default$onAudioSinkError(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onAudioUnderrun(IJJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$-CC;->$default$onAudioUnderrun(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;IJJ)V

    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$-CC;->$default$onSkipSilenceEnabledChanged(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;Z)V

    return-void
.end method
