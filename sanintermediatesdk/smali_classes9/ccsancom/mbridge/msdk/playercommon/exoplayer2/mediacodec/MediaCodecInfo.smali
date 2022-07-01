.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# static fields
.field public static final MAX_SUPPORTED_INSTANCES_UNKNOWN:I = -0x1

.field public static final TAG:Ljava/lang/String; = "MediaCodecInfo"


# instance fields
.field public final adaptive:Z

.field public final capabilities:Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;

.field public final mimeType:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final passthrough:Z

.field public final secure:Z

.field public final tunneling:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;ZZZ)V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 154
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    .line 155
    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;

    .line 156
    iput-boolean p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->passthrough:Z

    .line 157
    const/4 p1, 0x1

    const/4 p2, 0x0

    if-nez p5, :cond_0

    if-eqz p3, :cond_0

    invoke-static {p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->isAdaptive(Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    iput-boolean p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->adaptive:Z

    .line 158
    if-eqz p3, :cond_1

    invoke-static {p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->isTunneling(Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p4, 0x1

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_1
    iput-boolean p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->tunneling:Z

    .line 159
    if-nez p6, :cond_3

    if-eqz p3, :cond_2

    invoke-static {p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->isSecure(Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :cond_3
    :goto_2
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    .line 160
    return-void
.end method

.method private static adjustMaxInputChannelCount(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    .line 349
    const/4 v0, 0x1

    if-gt p2, v0, :cond_5

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    if-lez p2, :cond_0

    goto/16 :goto_2

    .line 353
    :cond_0
    const-string v0, "audio/mpeg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 354
    const-string v0, "audio/3gpp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 355
    const-string v0, "audio/amr-wb"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 356
    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 357
    const-string v0, "audio/vorbis"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 358
    const-string v0, "audio/opus"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 359
    const-string v0, "audio/raw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 360
    const-string v0, "audio/flac"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 361
    const-string v0, "audio/g711-alaw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 362
    const-string v0, "audio/g711-mlaw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 363
    const-string v0, "audio/gsm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 369
    :cond_1
    const-string v0, "audio/ac3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    const/4 p1, 0x6

    goto :goto_0

    .line 371
    :cond_2
    const-string v0, "audio/eac3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 372
    const/16 p1, 0x10

    goto :goto_0

    .line 375
    :cond_3
    const/16 p1, 0x1e

    .line 377
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AssumedMaxChannelAdjustment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", ["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "MediaCodecInfo"

    invoke-static {p2, p0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return p1

    .line 365
    :cond_4
    :goto_1
    return p2

    .line 351
    :cond_5
    :goto_2
    return p2
.end method

.method private static areSizeAndRateSupportedV21(Lccsanandroid/media/MediaCodecInfo$VideoCapabilities;IID)Z
    .locals 3

    .line 412
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v2, p3, v0

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v2, p3, v0

    if-gtz v2, :cond_0

    goto :goto_0

    .line 414
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lccsanandroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result p0

    goto :goto_1

    .line 413
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lccsanandroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result p0

    .line 412
    :goto_1
    return p0
.end method

.method private static getMaxSupportedInstancesV23(Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;)I
    .locals 0

    .line 419
    invoke-virtual {p0}, Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;->getMaxSupportedInstances()I

    move-result p0

    return p0
.end method

.method private static isAdaptive(Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 2

    .line 383
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->isAdaptiveV19(Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isAdaptiveV19(Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1

    .line 388
    const-string v0, "adaptive-playback"

    invoke-virtual {p0, v0}, Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isSecure(Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 2

    .line 401
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->isSecureV21(Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSecureV21(Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1

    .line 406
    const-string v0, "secure-playback"

    invoke-virtual {p0, v0}, Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isTunneling(Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 2

    .line 392
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->isTunnelingV21(Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isTunnelingV21(Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1

    .line 397
    const-string v0, "tunneled-playback"

    invoke-virtual {p0, v0}, Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private logAssumedSupport(Ljava/lang/String;)V
    .locals 2

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AssumedSupport ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCodecInfo"

    invoke-static {v0, p1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-void
.end method

.method private logNoSupport(Ljava/lang/String;)V
    .locals 2

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NoSupport ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCodecInfo"

    invoke-static {v0, p1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;
    .locals 8

    .line 117
    new-instance v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;ZZZ)V

    return-object v7
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;
    .locals 8

    .line 142
    new-instance v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;ZZZ)V

    return-object v7
.end method

.method public static newPassthroughInstance(Ljava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;
    .locals 8

    .line 98
    new-instance v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;ZZZ)V

    return-object v7
.end method


# virtual methods
.method public final alignVideoSizeV21(II)Lccsanandroid/graphics/Point;
    .locals 3

    .line 269
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 270
    const-string p1, "align.caps"

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 271
    return-object v1

    .line 273
    :cond_0
    invoke-virtual {v0}, Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Lccsanandroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    .line 274
    if-nez v0, :cond_1

    .line 275
    const-string p1, "align.vCaps"

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 276
    return-object v1

    .line 278
    :cond_1
    invoke-virtual {v0}, Lccsanandroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v1

    .line 279
    invoke-virtual {v0}, Lccsanandroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v0

    .line 280
    new-instance v2, Lccsanandroid/graphics/Point;

    invoke-static {p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->ceilDivide(II)I

    move-result p1

    mul-int p1, p1, v1

    .line 281
    invoke-static {p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->ceilDivide(II)I

    move-result p2

    mul-int p2, p2, v0

    invoke-direct {v2, p1, p2}, Lccsanandroid/graphics/Point;-><init>(II)V

    .line 280
    return-object v2
.end method

.method public final getMaxSupportedInstances()I
    .locals 2

    .line 180
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v0, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->getMaxSupportedInstancesV23(Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;)I

    move-result v0

    goto :goto_1

    .line 181
    :cond_1
    :goto_0
    const/4 v0, -0x1

    .line 180
    :goto_1
    return v0
.end method

.method public final getProfileLevels()[Lccsanandroid/media/MediaCodecInfo$CodecProfileLevel;
    .locals 1

    .line 168
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Lccsanandroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez v0, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v0, v0, Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Lccsanandroid/media/MediaCodecInfo$CodecProfileLevel;

    goto :goto_1

    .line 168
    :cond_1
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Lccsanandroid/media/MediaCodecInfo$CodecProfileLevel;

    :goto_1
    return-object v0
.end method

.method public final isAudioChannelCountSupportedV21(I)Z
    .locals 4

    .line 320
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 321
    const-string p1, "channelCount.caps"

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 322
    return v1

    .line 324
    :cond_0
    invoke-virtual {v0}, Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Lccsanandroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v0

    .line 325
    if-nez v0, :cond_1

    .line 326
    const-string p1, "channelCount.aCaps"

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 327
    return v1

    .line 329
    :cond_1
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    .line 330
    invoke-virtual {v0}, Lccsanandroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v0

    .line 329
    invoke-static {v2, v3, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->adjustMaxInputChannelCount(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 331
    if-ge v0, p1, :cond_2

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channelCount.support, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 333
    return v1

    .line 335
    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final isAudioSampleRateSupportedV21(I)Z
    .locals 3

    .line 294
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 295
    const-string p1, "sampleRate.caps"

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 296
    return v1

    .line 298
    :cond_0
    invoke-virtual {v0}, Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Lccsanandroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v0

    .line 299
    if-nez v0, :cond_1

    .line 300
    const-string p1, "sampleRate.aCaps"

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 301
    return v1

    .line 303
    :cond_1
    invoke-virtual {v0, p1}, Lccsanandroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sampleRate.support, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 305
    return v1

    .line 307
    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final isCodecSupported(Ljava/lang/String;)Z
    .locals 11

    .line 193
    const/4 v0, 0x1

    if-eqz p1, :cond_6

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 196
    :cond_0
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    if-nez v1, :cond_1

    .line 198
    return v0

    .line 200
    :cond_1
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ", "

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "codec.mime "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 202
    return v4

    .line 204
    :cond_2
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Ljava/lang/String;)Lccsanandroid/util/Pair;

    move-result-object v2

    .line 205
    if-nez v2, :cond_3

    .line 207
    return v0

    .line 209
    :cond_3
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->getProfileLevels()[Lccsanandroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_5

    aget-object v8, v5, v7

    .line 210
    iget v9, v8, Lccsanandroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    iget-object v10, v2, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v9, v10, :cond_4

    iget v8, v8, Lccsanandroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    iget-object v9, v2, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    .line 211
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lt v8, v9, :cond_4

    .line 212
    return v0

    .line 209
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 215
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "codec.profileLevel, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 216
    return v4

    .line 194
    :cond_6
    :goto_1
    return v0
.end method

.method public final isVideoSizeAndRateSupportedV21(IID)Z
    .locals 4

    .line 232
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 233
    const-string p1, "sizeAndRate.caps"

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 234
    return v1

    .line 236
    :cond_0
    invoke-virtual {v0}, Lccsanandroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Lccsanandroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    .line 237
    if-nez v0, :cond_1

    .line 238
    const-string p1, "sizeAndRate.vCaps"

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 239
    return v1

    .line 241
    :cond_1
    invoke-static {v0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->areSizeAndRateSupportedV21(Lccsanandroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v2

    if-nez v2, :cond_4

    .line 245
    const-string v2, "x"

    if-ge p1, p2, :cond_3

    .line 246
    invoke-static {v0, p2, p1, p3, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->areSizeAndRateSupportedV21(Lccsanandroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 250
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sizeAndRate.rotated, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->logAssumedSupport(Ljava/lang/String;)V

    goto :goto_1

    .line 247
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sizeAndRate.support, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 248
    return v1

    .line 252
    :cond_4
    :goto_1
    const/4 p1, 0x1

    return p1
.end method
