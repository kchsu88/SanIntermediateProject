.class public final synthetic Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

.field public final synthetic f$1:Lccsancom/google/android/exoplayer2/Format;

.field public final synthetic f$2:Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;


# direct methods
.method public synthetic constructor <init>(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$0:Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iput-object p2, p0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$1:Lccsancom/google/android/exoplayer2/Format;

    iput-object p3, p0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$2:Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$0:Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$1:Lccsancom/google/android/exoplayer2/Format;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$2:Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    invoke-virtual {v0, v1, v2}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->lambda$inputFormatChanged$2$com-google-android-exoplayer2-audio-AudioRendererEventListener$EventDispatcher(Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    return-void
.end method
