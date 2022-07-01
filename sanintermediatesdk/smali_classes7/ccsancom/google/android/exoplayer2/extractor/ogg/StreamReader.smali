.class abstract Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;
.super Ljava/lang/Object;
.source "StreamReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader$UnseekableOggSeeker;,
        Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;
    }
.end annotation


# static fields
.field private static final STATE_END_OF_INPUT:I = 0x3

.field private static final STATE_READ_HEADERS:I = 0x0

.field private static final STATE_READ_PAYLOAD:I = 0x2

.field private static final STATE_SKIP_HEADERS:I = 0x1


# instance fields
.field private currentGranule:J

.field private extractorOutput:Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private formatSet:Z

.field private lengthOfReadPacket:J

.field private final oggPacket:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPacket;

.field private oggSeeker:Lccsancom/google/android/exoplayer2/extractor/ogg/OggSeeker;

.field private payloadStartPosition:J

.field private sampleRate:I

.field private seekMapSet:Z

.field private setupData:Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

.field private state:I

.field private targetGranule:J

.field private trackOutput:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPacket;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPacket;

    .line 67
    new-instance v0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    .line 68
    return-void
.end method

.method private assertInitialized()V
    .locals 1
    .annotation runtime Lccsanorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackOutput",
            "extractorOutput"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->trackOutput:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->extractorOutput:Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-void
.end method

.method private readHeaders(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 4
    .param p1, "input"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "setupData.format"
        }
        result = true
    .end annotation

    .line 145
    :goto_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPacket;->populate(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x3

    iput v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    .line 147
    const/4 v0, 0x0

    return v0

    .line 149
    :cond_0
    invoke-interface {p1}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    .line 151
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPacket;->getPayload()Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    move-result-object v0

    iget-wide v1, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    iget-object v3, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    invoke-virtual {p0, v0, v1, v2, v3}, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->readHeaders(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;JLccsancom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-interface {p1}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    goto :goto_0

    .line 154
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private readHeadersAndUpdateState(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)I
    .locals 15
    .param p1, "input"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackOutput"
        }
    .end annotation

    .line 161
    move-object v11, p0

    invoke-direct/range {p0 .. p1}, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->readHeaders(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    const/4 v0, -0x1

    return v0

    .line 165
    :cond_0
    iget-object v0, v11, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    iget-object v0, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lccsancom/google/android/exoplayer2/Format;

    iget v0, v0, Lccsancom/google/android/exoplayer2/Format;->sampleRate:I

    iput v0, v11, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->sampleRate:I

    .line 166
    iget-boolean v0, v11, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->formatSet:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 167
    iget-object v0, v11, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->trackOutput:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v2, v11, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    iget-object v2, v2, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lccsancom/google/android/exoplayer2/Format;

    invoke-interface {v0, v2}, Lccsancom/google/android/exoplayer2/extractor/TrackOutput;->format(Lccsancom/google/android/exoplayer2/Format;)V

    .line 168
    iput-boolean v1, v11, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->formatSet:Z

    .line 171
    :cond_1
    iget-object v0, v11, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    iget-object v0, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->oggSeeker:Lccsancom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    const/4 v12, 0x0

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, v11, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    iget-object v0, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->oggSeeker:Lccsancom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    iput-object v0, v11, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lccsancom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    goto :goto_1

    .line 173
    :cond_2
    invoke-interface/range {p1 .. p1}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 174
    new-instance v0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader$UnseekableOggSeeker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader$UnseekableOggSeeker;-><init>(Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader$1;)V

    iput-object v0, v11, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lccsancom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    goto :goto_1

    .line 176
    :cond_3
    iget-object v0, v11, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPacket;->getPageHeader()Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    move-result-object v13

    .line 177
    .local v13, "firstPayloadPageHeader":Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;
    iget v0, v13, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->type:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    const/4 v10, 0x1

    goto :goto_0

    :cond_4
    const/4 v10, 0x0

    .line 178
    .local v10, "isLastPage":Z
    :goto_0
    new-instance v14, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;

    iget-wide v2, v11, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    .line 182
    invoke-interface/range {p1 .. p1}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    iget v0, v13, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    iget v1, v13, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v0, v1

    int-to-long v6, v0

    iget-wide v8, v13, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    move-object v0, v14

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;-><init>(Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;JJJJZ)V

    iput-object v14, v11, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lccsancom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    .line 188
    .end local v10    # "isLastPage":Z
    .end local v13    # "firstPayloadPageHeader":Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;
    :goto_1
    const/4 v0, 0x2

    iput v0, v11, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    .line 190
    iget-object v0, v11, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPacket;->trimPayload()V

    .line 191
    return v12
.end method

.method private readPayload(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;Lccsancom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 24
    .param p1, "input"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lccsancom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackOutput",
            "oggSeeker",
            "extractorOutput"
        }
    .end annotation

    .line 196
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lccsancom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    invoke-interface {v2, v1}, Lccsancom/google/android/exoplayer2/extractor/ogg/OggSeeker;->read(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v2

    .line 197
    .local v2, "position":J
    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-ltz v7, :cond_0

    .line 198
    move-object/from16 v7, p2

    iput-wide v2, v7, Lccsancom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 199
    return v4

    .line 200
    :cond_0
    move-object/from16 v7, p2

    const-wide/16 v8, -0x1

    cmp-long v10, v2, v8

    if-gez v10, :cond_1

    .line 201
    const-wide/16 v10, 0x2

    add-long/2addr v10, v2

    neg-long v10, v10

    invoke-virtual {v0, v10, v11}, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->onSeekEnd(J)V

    .line 204
    :cond_1
    iget-boolean v10, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->seekMapSet:Z

    if-nez v10, :cond_2

    .line 205
    iget-object v10, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lccsancom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    invoke-interface {v10}, Lccsancom/google/android/exoplayer2/extractor/ogg/OggSeeker;->createSeekMap()Lccsancom/google/android/exoplayer2/extractor/SeekMap;

    move-result-object v10

    invoke-static {v10}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lccsancom/google/android/exoplayer2/extractor/SeekMap;

    .line 206
    .local v10, "seekMap":Lccsancom/google/android/exoplayer2/extractor/SeekMap;
    iget-object v11, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->extractorOutput:Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v11, v10}, Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lccsancom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 207
    iput-boolean v4, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->seekMapSet:Z

    .line 210
    .end local v10    # "seekMap":Lccsancom/google/android/exoplayer2/extractor/SeekMap;
    :cond_2
    iget-wide v10, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    cmp-long v4, v10, v5

    if-gtz v4, :cond_4

    iget-object v4, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v4, v1}, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPacket;->populate(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 223
    :cond_3
    const/4 v4, 0x3

    iput v4, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    .line 224
    const/4 v4, -0x1

    return v4

    .line 211
    :cond_4
    :goto_0
    iput-wide v5, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    .line 212
    iget-object v4, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v4}, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPacket;->getPayload()Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    move-result-object v4

    .line 213
    .local v4, "payload":Lccsancom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-virtual {v0, v4}, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->preparePayload(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v10

    .line 214
    .local v10, "granulesInPacket":J
    cmp-long v12, v10, v5

    if-ltz v12, :cond_5

    iget-wide v5, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    add-long v12, v5, v10

    iget-wide v14, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->targetGranule:J

    cmp-long v16, v12, v14

    if-ltz v16, :cond_5

    .line 216
    invoke-virtual {v0, v5, v6}, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->convertGranuleToTime(J)J

    move-result-wide v5

    .line 217
    .local v5, "timeUs":J
    iget-object v12, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->trackOutput:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-virtual {v4}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v13

    invoke-interface {v12, v4, v13}, Lccsancom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 218
    iget-object v12, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->trackOutput:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    const/16 v20, 0x1

    invoke-virtual {v4}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v12

    move-wide/from16 v18, v5

    invoke-interface/range {v17 .. v23}, Lccsancom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILccsancom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 219
    iput-wide v8, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->targetGranule:J

    .line 221
    .end local v5    # "timeUs":J
    :cond_5
    iget-wide v5, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    add-long/2addr v5, v10

    iput-wide v5, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    .line 222
    .end local v4    # "payload":Lccsancom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v10    # "granulesInPacket":J
    nop

    .line 226
    const/4 v4, 0x0

    return v4
.end method


# virtual methods
.method protected convertGranuleToTime(J)J
    .locals 4
    .param p1, "granule"    # J

    .line 236
    const-wide/32 v0, 0xf4240

    mul-long v0, v0, p1

    iget v2, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method protected convertTimeToGranule(J)J
    .locals 4
    .param p1, "timeUs"    # J

    .line 246
    iget v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->sampleRate:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method init(Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;Lccsancom/google/android/exoplayer2/extractor/TrackOutput;)V
    .locals 1
    .param p1, "output"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;
    .param p2, "trackOutput"    # Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    .line 71
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->extractorOutput:Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 72
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->trackOutput:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->reset(Z)V

    .line 74
    return-void
.end method

.method protected onSeekEnd(J)V
    .locals 0
    .param p1, "currentGranule"    # J

    .line 276
    iput-wide p1, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    .line 277
    return-void
.end method

.method protected abstract preparePayload(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)J
.end method

.method final read(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;Lccsancom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 2
    .param p1, "input"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lccsancom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->assertInitialized()V

    .line 110
    iget v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    packed-switch v0, :pswitch_data_0

    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 121
    :pswitch_0
    const/4 v0, -0x1

    return v0

    .line 118
    :pswitch_1
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lccsancom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->readPayload(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;Lccsancom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v0

    return v0

    .line 114
    :pswitch_2
    iget-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    long-to-int v1, v0

    invoke-interface {p1, v1}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 115
    const/4 v0, 0x2

    iput v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    .line 116
    const/4 v0, 0x0

    return v0

    .line 112
    :pswitch_3
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->readHeadersAndUpdateState(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract readHeaders(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;JLccsancom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation
.end method

.method protected reset(Z)V
    .locals 4
    .param p1, "headerData"    # Z

    .line 82
    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 83
    new-instance v2, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    invoke-direct {v2}, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;-><init>()V

    iput-object v2, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->setupData:Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    .line 84
    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    .line 85
    const/4 v2, 0x0

    iput v2, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    goto :goto_0

    .line 87
    :cond_0
    const/4 v2, 0x1

    iput v2, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    .line 89
    :goto_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->targetGranule:J

    .line 90
    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    .line 91
    return-void
.end method

.method final seek(JJ)V
    .locals 3
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 95
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPacket;->reset()V

    .line 96
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 97
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->seekMapSet:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->reset(Z)V

    goto :goto_0

    .line 99
    :cond_0
    iget v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p0, p3, p4}, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->convertTimeToGranule(J)J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->targetGranule:J

    .line 101
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lccsancom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    iget-wide v1, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->targetGranule:J

    invoke-interface {v0, v1, v2}, Lccsancom/google/android/exoplayer2/extractor/ogg/OggSeeker;->startSeek(J)V

    .line 102
    const/4 v0, 0x2

    iput v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;->state:I

    .line 105
    :cond_1
    :goto_0
    return-void
.end method
