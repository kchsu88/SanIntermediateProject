.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;
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
    name = "MediaCodecListCompatV16"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecUtil$1;)V
    .locals 0

    .line 596
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCodecCount()I
    .locals 1

    .line 600
    invoke-static {}, Lccsanandroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    return v0
.end method

.method public final getCodecInfoAt(I)Lccsanandroid/media/MediaCodecInfo;
    .locals 0

    .line 605
    invoke-static {p1}, Lccsanandroid/media/MediaCodecList;->getCodecInfoAt(I)Lccsanandroid/media/MediaCodecInfo;

    move-result-object p1

    return-object p1
.end method

.method public final isSecurePlaybackSupported(Ljava/lang/String;Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    .line 617
    const-string p2, "video/avc"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final secureDecodersExplicit()Z
    .locals 1

    .line 610
    const/4 v0, 0x0

    return v0
.end method
