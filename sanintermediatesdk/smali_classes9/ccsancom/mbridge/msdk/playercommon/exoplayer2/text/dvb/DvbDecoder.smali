.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbDecoder;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SimpleSubtitleDecoder;
.source "DvbDecoder.java"


# instance fields
.field private final parser:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 33
    const-string v0, "DvbDecoder"

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 35
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result p1

    .line 36
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 37
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;

    invoke-direct {v1, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;-><init>(II)V

    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbDecoder;->parser:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;

    .line 38
    return-void
.end method


# virtual methods
.method protected final bridge synthetic decode([BIZ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Subtitle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbDecoder;->decode([BIZ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbSubtitle;

    move-result-object p1

    return-object p1
.end method

.method protected final decode([BIZ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbSubtitle;
    .locals 1

    .line 42
    if-eqz p3, :cond_0

    .line 43
    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbDecoder;->parser:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;

    invoke-virtual {p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->reset()V

    .line 45
    :cond_0
    new-instance p3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbSubtitle;

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbDecoder;->parser:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->decode([BI)Ljava/util/List;

    move-result-object p1

    invoke-direct {p3, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbSubtitle;-><init>(Ljava/util/List;)V

    return-object p3
.end method
