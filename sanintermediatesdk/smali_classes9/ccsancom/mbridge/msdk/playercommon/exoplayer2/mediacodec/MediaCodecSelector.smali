.class public interface abstract Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;
.super Ljava/lang/Object;
.source "MediaCodecSelector.java"


# static fields
.field public static final DEFAULT:Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector$1;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector$1;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;

    return-void
.end method


# virtual methods
.method public abstract getDecoderInfo(Ljava/lang/String;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method public abstract getPassthroughDecoderInfo()Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method
