.class public final Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;,
        Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;,
        Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;
    }
.end annotation


# static fields
.field public static final FACTORY:Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private static final STATE_READING_FILE_TYPE:I = 0x0

.field private static final STATE_READING_FORMAT:I = 0x1

.field private static final STATE_READING_SAMPLE_DATA:I = 0x3

.field private static final STATE_SKIPPING_TO_SAMPLE_DATA:I = 0x2

.field private static final TARGET_SAMPLES_PER_SECOND:I = 0xa


# instance fields
.field private dataEndPosition:J

.field private dataStartPosition:I

.field private extractorOutput:Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private outputWriter:Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;

.field private state:I

.field private trackOutput:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    sget-object v0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor$$ExternalSyntheticLambda0;->INSTANCE:Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor$$ExternalSyntheticLambda0;

    sput-object v0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->FACTORY:Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->state:I

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->dataStartPosition:I

    .line 87
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->dataEndPosition:J

    .line 88
    return-void
.end method

.method private assertInitialized()V
    .locals 1
    .annotation runtime Lccsanorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "extractorOutput",
            "trackOutput"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->extractorOutput:Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-void
.end method

.method static synthetic lambda$static$0()[Lccsancom/google/android/exoplayer2/extractor/Extractor;
    .locals 3

    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Lccsancom/google/android/exoplayer2/extractor/Extractor;

    new-instance v1, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;

    invoke-direct {v1}, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private readFileType(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 6
    .param p1, "input"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-interface {p1}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 144
    iget v0, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->dataStartPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 145
    invoke-interface {p1, v0}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 146
    const/4 v0, 0x3

    iput v0, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->state:I

    .line 147
    return-void

    .line 149
    :cond_1
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/extractor/wav/WavHeaderReader;->checkFileType(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    invoke-interface {p1}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v0

    invoke-interface {p1}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    sub-long/2addr v0, v3

    long-to-int v1, v0

    invoke-interface {p1, v1}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 155
    iput v2, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->state:I

    .line 156
    return-void

    .line 151
    :cond_2
    const/4 v0, 0x0

    const-string v1, "Unsupported or unrecognized wav file type."

    invoke-static {v1, v0}, Lccsancom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lccsancom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0
.end method

.method private readFormat(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 9
    .param p1, "input"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput",
            "trackOutput"
        }
    .end annotation

    .line 160
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/extractor/wav/WavHeaderReader;->readFormat(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)Lccsancom/google/android/exoplayer2/extractor/wav/WavFormat;

    move-result-object v6

    .line 161
    .local v6, "wavFormat":Lccsancom/google/android/exoplayer2/extractor/wav/WavFormat;
    iget v0, v6, Lccsancom/google/android/exoplayer2/extractor/wav/WavFormat;->formatType:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 162
    new-instance v0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->extractorOutput:Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-direct {v0, v1, v2, v6}, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;-><init>(Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;Lccsancom/google/android/exoplayer2/extractor/TrackOutput;Lccsancom/google/android/exoplayer2/extractor/wav/WavFormat;)V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->outputWriter:Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;

    goto :goto_0

    .line 163
    :cond_0
    iget v0, v6, Lccsancom/google/android/exoplayer2/extractor/wav/WavFormat;->formatType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 164
    new-instance v7, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->extractorOutput:Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v5, -0x1

    const-string v4, "audio/g711-alaw"

    move-object v0, v7

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;Lccsancom/google/android/exoplayer2/extractor/TrackOutput;Lccsancom/google/android/exoplayer2/extractor/wav/WavFormat;Ljava/lang/String;I)V

    iput-object v7, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->outputWriter:Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;

    goto :goto_0

    .line 171
    :cond_1
    iget v0, v6, Lccsancom/google/android/exoplayer2/extractor/wav/WavFormat;->formatType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 172
    new-instance v7, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->extractorOutput:Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v5, -0x1

    const-string v4, "audio/g711-mlaw"

    move-object v0, v7

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;Lccsancom/google/android/exoplayer2/extractor/TrackOutput;Lccsancom/google/android/exoplayer2/extractor/wav/WavFormat;Ljava/lang/String;I)V

    iput-object v7, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->outputWriter:Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;

    goto :goto_0

    .line 181
    :cond_2
    iget v0, v6, Lccsancom/google/android/exoplayer2/extractor/wav/WavFormat;->formatType:I

    iget v1, v6, Lccsancom/google/android/exoplayer2/extractor/wav/WavFormat;->bitsPerSample:I

    .line 182
    invoke-static {v0, v1}, Lccsancom/google/android/exoplayer2/audio/WavUtil;->getPcmEncodingForType(II)I

    move-result v7

    .line 183
    .local v7, "pcmEncoding":I
    if-eqz v7, :cond_3

    .line 187
    new-instance v8, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->extractorOutput:Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    const-string v4, "audio/raw"

    move-object v0, v8

    move-object v3, v6

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;Lccsancom/google/android/exoplayer2/extractor/TrackOutput;Lccsancom/google/android/exoplayer2/extractor/wav/WavFormat;Ljava/lang/String;I)V

    iput-object v8, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->outputWriter:Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;

    .line 191
    .end local v7    # "pcmEncoding":I
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->state:I

    .line 192
    return-void

    .line 184
    .restart local v7    # "pcmEncoding":I
    :cond_3
    iget v0, v6, Lccsancom/google/android/exoplayer2/extractor/wav/WavFormat;->formatType:I

    const/16 v1, 0x28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unsupported WAV format type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lccsancom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0
.end method

.method private readSampleData(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)I
    .locals 6
    .param p1, "input"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    iget-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->dataEndPosition:J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 205
    iget-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->dataEndPosition:J

    invoke-interface {p1}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    sub-long/2addr v0, v3

    .line 206
    .local v0, "bytesLeft":J
    iget-object v3, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->outputWriter:Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;

    invoke-static {v3}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;

    invoke-interface {v3, p1, v0, v1}, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;->sampleData(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    const/4 v2, -0x1

    goto :goto_1

    .line 208
    :cond_1
    nop

    .line 206
    :goto_1
    return v2
.end method

.method private skipToSampleData(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 5
    .param p1, "input"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/extractor/wav/WavHeaderReader;->skipToSampleData(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)Lccsanandroid/util/Pair;

    move-result-object v0

    .line 196
    .local v0, "dataBounds":Lccsanandroid/util/Pair;, "Lccsanandroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v1, v0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    iput v1, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->dataStartPosition:I

    .line 197
    iget-object v1, v0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->dataEndPosition:J

    .line 198
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->outputWriter:Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;

    iget v2, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->dataStartPosition:I

    iget-wide v3, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->dataEndPosition:J

    invoke-interface {v1, v2, v3, v4}, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;->init(IJ)V

    .line 199
    const/4 v1, 0x3

    iput v1, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->state:I

    .line 200
    return-void
.end method


# virtual methods
.method public init(Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 2
    .param p1, "output"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 97
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->extractorOutput:Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 98
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    .line 99
    invoke-interface {p1}, Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 100
    return-void
.end method

.method public read(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;Lccsancom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 2
    .param p1, "input"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lccsancom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->assertInitialized()V

    .line 119
    iget v0, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->state:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 130
    :pswitch_0
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->readSampleData(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result v0

    return v0

    .line 127
    :pswitch_1
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->skipToSampleData(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 128
    return v1

    .line 124
    :pswitch_2
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->readFormat(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 125
    return v1

    .line 121
    :pswitch_3
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->readFileType(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 122
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 0

    .line 113
    return-void
.end method

.method public seek(JJ)V
    .locals 3
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 104
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->state:I

    .line 105
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor;->outputWriter:Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;

    if-eqz v0, :cond_1

    .line 106
    invoke-interface {v0, p3, p4}, Lccsancom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;->reset(J)V

    .line 108
    :cond_1
    return-void
.end method

.method public sniff(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1
    .param p1, "input"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/extractor/wav/WavHeaderReader;->checkFileType(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    return v0
.end method
