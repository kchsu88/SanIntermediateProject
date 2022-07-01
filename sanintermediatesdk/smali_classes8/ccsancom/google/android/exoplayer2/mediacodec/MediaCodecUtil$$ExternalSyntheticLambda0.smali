.class public final synthetic Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;


# instance fields
.field public final synthetic f$0:Lccsancom/google/android/exoplayer2/Format;


# direct methods
.method public synthetic constructor <init>(Lccsancom/google/android/exoplayer2/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda0;->f$0:Lccsancom/google/android/exoplayer2/Format;

    return-void
.end method


# virtual methods
.method public final getScore(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda0;->f$0:Lccsancom/google/android/exoplayer2/Format;

    check-cast p1, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    invoke-static {v0, p1}, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->lambda$getDecoderInfosSortedByFormatSupport$0(Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)I

    move-result p1

    return p1
.end method
