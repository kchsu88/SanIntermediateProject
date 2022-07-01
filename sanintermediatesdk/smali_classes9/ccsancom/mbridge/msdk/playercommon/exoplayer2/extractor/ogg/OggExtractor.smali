.class public Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggExtractor;
.super Ljava/lang/Object;
.source "OggExtractor.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;


# static fields
.field public static final FACTORY:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorsFactory;

.field private static final MAX_VERIFICATION_BYTES:I = 0x8


# instance fields
.field private output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

.field private streamReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/StreamReader;

.field private streamReaderInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggExtractor$1;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggExtractor$1;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggExtractor;->FACTORY:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static resetPosition(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;
    .locals 1

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 120
    return-object p0
.end method

.method private sniffInternal(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 97
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;-><init>()V

    .line 98
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->populate(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->type:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto :goto_1

    .line 102
    :cond_0
    iget v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 103
    new-instance v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-direct {v2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 104
    iget-object v4, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v4, v3, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 106
    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggExtractor;->resetPosition(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/FlacReader;->verifyBitstreamType(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 107
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/FlacReader;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/FlacReader;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/StreamReader;

    goto :goto_0

    .line 108
    :cond_1
    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggExtractor;->resetPosition(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisReader;->verifyBitstreamType(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 109
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisReader;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisReader;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/StreamReader;

    goto :goto_0

    .line 110
    :cond_2
    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggExtractor;->resetPosition(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OpusReader;->verifyBitstreamType(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 111
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OpusReader;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OpusReader;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/StreamReader;

    .line 115
    :goto_0
    return v1

    .line 113
    :cond_3
    return v3

    .line 99
    :cond_4
    :goto_1
    return v3
.end method


# virtual methods
.method public init(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggExtractor;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    .line 64
    return-void
.end method

.method public read(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/StreamReader;

    if-nez v0, :cond_1

    .line 82
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggExtractor;->sniffInternal(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_0

    .line 83
    :cond_0
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string p2, "Failed to determine bitstream type"

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggExtractor;->streamReaderInitialized:Z

    if-nez v0, :cond_2

    .line 88
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggExtractor;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->track(II)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggExtractor;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 90
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/StreamReader;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggExtractor;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    invoke-virtual {v1, v3, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/StreamReader;->init(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;)V

    .line 91
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggExtractor;->streamReaderInitialized:Z

    .line 93
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/StreamReader;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/StreamReader;->read(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;)I

    move-result p1

    return p1
.end method

.method public release()V
    .locals 0

    .line 76
    return-void
.end method

.method public seek(JJ)V
    .locals 1

    .line 68
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/StreamReader;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/StreamReader;->seek(JJ)V

    .line 71
    :cond_0
    return-void
.end method

.method public sniff(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 55
    :try_start_0
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggExtractor;->sniffInternal(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Z

    move-result p1
    :try_end_0
    .catch Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 56
    :catch_0
    move-exception p1

    .line 57
    const/4 p1, 0x0

    return p1
.end method