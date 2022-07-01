.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaCodecListCompatV21"
.end annotation


# instance fields
.field private final codecKind:I

.field private mediaCodecInfos:[Lccsanandroid/media/MediaCodecInfo;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->codecKind:I

    .line 563
    return-void
.end method

.method private ensureMediaCodecInfosInitialized()V
    .locals 2

    .line 588
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->mediaCodecInfos:[Lccsanandroid/media/MediaCodecInfo;

    if-nez v0, :cond_0

    .line 589
    new-instance v0, Lccsanandroid/media/MediaCodecList;

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->codecKind:I

    invoke-direct {v0, v1}, Lccsanandroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Lccsanandroid/media/MediaCodecList;->getCodecInfos()[Lccsanandroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->mediaCodecInfos:[Lccsanandroid/media/MediaCodecInfo;

    .line 591
    :cond_0
    return-void
.end method


# virtual methods
.method public final getCodecCount()I
    .locals 1

    .line 567
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->ensureMediaCodecInfosInitialized()V

    .line 568
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->mediaCodecInfos:[Lccsanandroid/media/MediaCodecInfo;

    array-length v0, v0

    return v0
.end method

.method public final getCodecInfoAt(I)Lccsanandroid/media/MediaCodecInfo;
    .locals 1

    .line 573
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->ensureMediaCodecInfosInitialized()V

    .line 574
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->mediaCodecInfos:[Lccsanandroid/media/MediaCodecInfo;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final isSecurePlaybackSupported(Ljava/lang/String;Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    .line 584
    const-string p1, "secure-playback"

    invoke-virtual {p2, p1}, Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final secureDecodersExplicit()Z
    .locals 1

    .line 579
    const/4 v0, 0x1

    return v0
.end method
