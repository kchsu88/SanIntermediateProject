.class public abstract Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SimpleSubtitleDecoder;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/SimpleDecoder;
.source "SimpleSubtitleDecoder.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/SimpleDecoder<",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;",
        ">;",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoder;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 35
    const/4 v0, 0x2

    new-array v1, v0, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;

    new-array v0, v0, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;

    invoke-direct {p0, v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/SimpleDecoder;-><init>([Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;[Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/OutputBuffer;)V

    .line 36
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SimpleSubtitleDecoder;->name:Ljava/lang/String;

    .line 37
    const/16 p1, 0x400

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SimpleSubtitleDecoder;->setInitialInputBufferSize(I)V

    .line 38
    return-void
.end method


# virtual methods
.method protected bridge synthetic createInputBuffer()Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SimpleSubtitleDecoder;->createInputBuffer()Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected final createInputBuffer()Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;
    .locals 1

    .line 52
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createOutputBuffer()Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/OutputBuffer;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SimpleSubtitleDecoder;->createOutputBuffer()Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected final createOutputBuffer()Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;
    .locals 1

    .line 57
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SimpleSubtitleOutputBuffer;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SimpleSubtitleOutputBuffer;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SimpleSubtitleDecoder;)V

    return-object v0
.end method

.method protected final createUnexpectedDecodeException(Ljava/lang/Throwable;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;
    .locals 2

    .line 62
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;

    const-string v1, "Unexpected decode error"

    invoke-direct {v0, v1, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected bridge synthetic createUnexpectedDecodeException(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SimpleSubtitleDecoder;->createUnexpectedDecodeException(Ljava/lang/Throwable;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;

    move-result-object p1

    return-object p1
.end method

.method protected abstract decode([BIZ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Subtitle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation
.end method

.method protected final decode(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;
    .locals 8

    .line 74
    :try_start_0
    iget-object v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 75
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SimpleSubtitleDecoder;->decode([BIZ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Subtitle;

    move-result-object v5

    .line 76
    iget-wide v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;->timeUs:J

    iget-wide v6, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;->subsampleOffsetUs:J

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;->setContent(JLccsancom/mbridge/msdk/playercommon/exoplayer2/text/Subtitle;J)V

    .line 78
    const/high16 p1, -0x80000000

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;->clearFlag(I)V
    :try_end_0
    .catch Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    const/4 p1, 0x0

    return-object p1

    .line 80
    :catch_0
    move-exception p1

    .line 81
    return-object p1
.end method

.method protected bridge synthetic decode(Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/OutputBuffer;Z)Ljava/lang/Exception;
    .locals 0

    .line 25
    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;

    check-cast p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SimpleSubtitleDecoder;->decode(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;

    move-result-object p1

    return-object p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SimpleSubtitleDecoder;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic releaseOutputBuffer(Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/OutputBuffer;)V
    .locals 0

    .line 25
    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SimpleSubtitleDecoder;->releaseOutputBuffer(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;)V

    return-void
.end method

.method protected final releaseOutputBuffer(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/SimpleDecoder;->releaseOutputBuffer(Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/OutputBuffer;)V

    .line 68
    return-void
.end method

.method public setPositionUs(J)V
    .locals 0

    .line 48
    return-void
.end method
