.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DummyTrackOutput;
.super Ljava/lang/Object;
.source "DummyTrackOutput.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final format(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V
    .locals 0

    .line 32
    return-void
.end method

.method public final sampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;IZ)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 37
    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->skip(I)I

    move-result p1

    .line 38
    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    .line 39
    if-eqz p3, :cond_0

    .line 40
    return p2

    .line 42
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 44
    :cond_1
    return p1
.end method

.method public final sampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)V
    .locals 0

    .line 49
    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 50
    return-void
.end method

.method public final sampleMetadata(JIIILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput$CryptoData;)V
    .locals 0

    .line 56
    return-void
.end method
