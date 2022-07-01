.class public Lccsancom/google/android/exoplayer2/extractor/ogg/OggExtractor;
.super Ljava/lang/Object;
.source "OggExtractor.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/extractor/Extractor;


# static fields
.field public static final FACTORY:Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private static final MAX_VERIFICATION_BYTES:I = 0x8


# instance fields
.field private output:Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private streamReader:Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;

.field private streamReaderInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-object v0, Lccsancom/google/android/exoplayer2/extractor/ogg/OggExtractor$$ExternalSyntheticLambda0;->INSTANCE:Lccsancom/google/android/exoplayer2/extractor/ogg/OggExtractor$$ExternalSyntheticLambda0;

    sput-object v0, Lccsancom/google/android/exoplayer2/extractor/ogg/OggExtractor;->FACTORY:Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$static$0()[Lccsancom/google/android/exoplayer2/extractor/Extractor;
    .locals 3

    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Lccsancom/google/android/exoplayer2/extractor/Extractor;

    new-instance v1, Lccsancom/google/android/exoplayer2/extractor/ogg/OggExtractor;

    invoke-direct {v1}, Lccsancom/google/android/exoplayer2/extractor/ogg/OggExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private static resetPosition(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/util/ParsableByteArray;
    .locals 1
    .param p0, "scratch"    # Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 116
    return-object p0
.end method

.method private sniffInternal(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 6
    .param p1, "input"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "streamReader"
        }
        result = true
    .end annotation

    .line 93
    new-instance v0, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;-><init>()V

    .line 94
    .local v0, "header":Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->populate(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget v2, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->type:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto :goto_1

    .line 98
    :cond_0
    iget v2, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    const/16 v4, 0x8

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 99
    .local v2, "length":I
    new-instance v4, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v4, v2}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 100
    .local v4, "scratch":Lccsancom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-virtual {v4}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v5

    invoke-interface {p1, v5, v3, v2}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 102
    invoke-static {v4}, Lccsancom/google/android/exoplayer2/extractor/ogg/OggExtractor;->resetPosition(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    move-result-object v5

    invoke-static {v5}, Lccsancom/google/android/exoplayer2/extractor/ogg/FlacReader;->verifyBitstreamType(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 103
    new-instance v3, Lccsancom/google/android/exoplayer2/extractor/ogg/FlacReader;

    invoke-direct {v3}, Lccsancom/google/android/exoplayer2/extractor/ogg/FlacReader;-><init>()V

    iput-object v3, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;

    goto :goto_0

    .line 104
    :cond_1
    invoke-static {v4}, Lccsancom/google/android/exoplayer2/extractor/ogg/OggExtractor;->resetPosition(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    move-result-object v5

    invoke-static {v5}, Lccsancom/google/android/exoplayer2/extractor/ogg/VorbisReader;->verifyBitstreamType(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 105
    new-instance v3, Lccsancom/google/android/exoplayer2/extractor/ogg/VorbisReader;

    invoke-direct {v3}, Lccsancom/google/android/exoplayer2/extractor/ogg/VorbisReader;-><init>()V

    iput-object v3, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;

    goto :goto_0

    .line 106
    :cond_2
    invoke-static {v4}, Lccsancom/google/android/exoplayer2/extractor/ogg/OggExtractor;->resetPosition(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    move-result-object v5

    invoke-static {v5}, Lccsancom/google/android/exoplayer2/extractor/ogg/OpusReader;->verifyBitstreamType(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 107
    new-instance v3, Lccsancom/google/android/exoplayer2/extractor/ogg/OpusReader;

    invoke-direct {v3}, Lccsancom/google/android/exoplayer2/extractor/ogg/OpusReader;-><init>()V

    iput-object v3, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;

    .line 111
    :goto_0
    return v1

    .line 109
    :cond_3
    return v3

    .line 95
    .end local v2    # "length":I
    .end local v4    # "scratch":Lccsancom/google/android/exoplayer2/util/ParsableByteArray;
    :cond_4
    :goto_1
    return v3
.end method


# virtual methods
.method public init(Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0
    .param p1, "output"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 57
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/OggExtractor;->output:Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 58
    return-void
.end method

.method public read(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;Lccsancom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 4
    .param p1, "input"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lccsancom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/OggExtractor;->output:Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;

    if-nez v0, :cond_1

    .line 76
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/extractor/ogg/OggExtractor;->sniffInternal(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {p1}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_0

    .line 77
    :cond_0
    const/4 v0, 0x0

    const-string v1, "Failed to determine bitstream type"

    invoke-static {v1, v0}, Lccsancom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lccsancom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 82
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReaderInitialized:Z

    if-nez v0, :cond_2

    .line 83
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/OggExtractor;->output:Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    .line 84
    .local v0, "trackOutput":Lccsancom/google/android/exoplayer2/extractor/TrackOutput;
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/OggExtractor;->output:Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v1}, Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 85
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;

    iget-object v3, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/OggExtractor;->output:Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-virtual {v1, v3, v0}, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->init(Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;Lccsancom/google/android/exoplayer2/extractor/TrackOutput;)V

    .line 86
    iput-boolean v2, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReaderInitialized:Z

    .line 88
    .end local v0    # "trackOutput":Lccsancom/google/android/exoplayer2/extractor/TrackOutput;
    :cond_2
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->read(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;Lccsancom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 0

    .line 70
    return-void
.end method

.method public seek(JJ)V
    .locals 1
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 62
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, p1, p2, p3, p4}, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->seek(JJ)V

    .line 65
    :cond_0
    return-void
.end method

.method public sniff(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 2
    .param p1, "input"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    :try_start_0
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/extractor/ogg/OggExtractor;->sniffInternal(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0
    :try_end_0
    .catch Lccsancom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Lccsancom/google/android/exoplayer2/ParserException;
    const/4 v1, 0x0

    return v1
.end method
