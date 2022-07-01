.class public final synthetic Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;


# static fields
.field public static final synthetic INSTANCE:Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda1;->INSTANCE:Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getScore(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    invoke-static {p1}, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->lambda$applyWorkarounds$1(Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)I

    move-result p1

    return p1
.end method
