.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector$1;
.super Ljava/lang/Object;
.source "MediaCodecSelector.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDecoderInfo(Ljava/lang/String;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 34
    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object p1

    return-object p1
.end method

.method public getPassthroughDecoderInfo()Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 39
    invoke-static {}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecUtil;->getPassthroughDecoderInfo()Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method
