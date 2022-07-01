.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaFormatUtil;
.super Ljava/lang/Object;
.source "MediaFormatUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static maybeSetByteBuffer(Lccsanandroid/media/MediaFormat;Ljava/lang/String;[B)V
    .locals 0

    .line 91
    if-eqz p2, :cond_0

    .line 92
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lccsanandroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 94
    :cond_0
    return-void
.end method

.method public static maybeSetColorInfo(Lccsanandroid/media/MediaFormat;Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;)V
    .locals 2

    .line 104
    if-eqz p1, :cond_0

    .line 105
    iget v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;->colorTransfer:I

    const-string v1, "color-transfer"

    invoke-static {p0, v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaFormatUtil;->maybeSetInteger(Lccsanandroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 106
    iget v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;->colorSpace:I

    const-string v1, "color-standard"

    invoke-static {p0, v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaFormatUtil;->maybeSetInteger(Lccsanandroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 107
    iget v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;->colorRange:I

    const-string v1, "color-range"

    invoke-static {p0, v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaFormatUtil;->maybeSetInteger(Lccsanandroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 108
    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    const-string v0, "hdr-static-info"

    invoke-static {p0, v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaFormatUtil;->maybeSetByteBuffer(Lccsanandroid/media/MediaFormat;Ljava/lang/String;[B)V

    .line 110
    :cond_0
    return-void
.end method

.method public static maybeSetFloat(Lccsanandroid/media/MediaFormat;Ljava/lang/String;F)V
    .locals 1

    .line 78
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0, p1, p2}, Lccsanandroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 81
    :cond_0
    return-void
.end method

.method public static maybeSetInteger(Lccsanandroid/media/MediaFormat;Ljava/lang/String;I)V
    .locals 1

    .line 64
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 65
    invoke-virtual {p0, p1, p2}, Lccsanandroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 67
    :cond_0
    return-void
.end method

.method public static setCsdBuffers(Lccsanandroid/media/MediaFormat;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/media/MediaFormat;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "csd-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lccsanandroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method public static setString(Lccsanandroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lccsanandroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method
