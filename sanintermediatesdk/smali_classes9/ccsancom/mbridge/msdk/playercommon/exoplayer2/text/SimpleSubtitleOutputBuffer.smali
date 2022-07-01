.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SimpleSubtitleOutputBuffer;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;
.source "SimpleSubtitleOutputBuffer.java"


# instance fields
.field private final owner:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SimpleSubtitleDecoder;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SimpleSubtitleDecoder;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;-><init>()V

    .line 30
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SimpleSubtitleOutputBuffer;->owner:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SimpleSubtitleDecoder;

    .line 31
    return-void
.end method


# virtual methods
.method public final release()V
    .locals 1

    .line 35
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SimpleSubtitleOutputBuffer;->owner:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SimpleSubtitleDecoder;

    invoke-virtual {v0, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SimpleSubtitleDecoder;->releaseOutputBuffer(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;)V

    .line 36
    return-void
.end method
