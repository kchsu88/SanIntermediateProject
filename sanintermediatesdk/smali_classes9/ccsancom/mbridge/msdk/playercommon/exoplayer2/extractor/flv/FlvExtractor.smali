.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;
.super Ljava/lang/Object;
.source "FlvExtractor.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor$States;
    }
.end annotation


# static fields
.field public static final FACTORY:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorsFactory;

.field private static final FLV_HEADER_SIZE:I = 0x9

.field private static final FLV_TAG:I

.field private static final FLV_TAG_HEADER_SIZE:I = 0xb

.field private static final STATE_READING_FLV_HEADER:I = 0x1

.field private static final STATE_READING_TAG_DATA:I = 0x4

.field private static final STATE_READING_TAG_HEADER:I = 0x3

.field private static final STATE_SKIPPING_TO_TAG_HEADER:I = 0x2

.field private static final TAG_TYPE_AUDIO:I = 0x8

.field private static final TAG_TYPE_SCRIPT_DATA:I = 0x12

.field private static final TAG_TYPE_VIDEO:I = 0x9


# instance fields
.field private audioReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/AudioTagPayloadReader;

.field private bytesToNextTagHeader:I

.field private extractorOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

.field private final headerBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field private mediaTagTimestampOffsetUs:J

.field private final metadataReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/ScriptTagPayloadReader;

.field private outputSeekMap:Z

.field private final scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field private state:I

.field private final tagData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field private tagDataSize:I

.field private final tagHeaderBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field private tagTimestampUs:J

.field private tagType:I

.field private videoReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/VideoTagPayloadReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor$1;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor$1;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->FACTORY:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorsFactory;

    .line 71
    const-string v0, "FLV"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->FLV_TAG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 92
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->headerBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 93
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 94
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->tagData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 95
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/ScriptTagPayloadReader;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/ScriptTagPayloadReader;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->metadataReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/ScriptTagPayloadReader;

    .line 96
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->state:I

    .line 97
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    .line 98
    return-void
.end method

.method private ensureReadyForMediaOutput()V
    .locals 5

    .line 295
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->outputSeekMap:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->extractorOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    new-instance v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$Unseekable;

    invoke-direct {v3, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->seekMap(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;)V

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->outputSeekMap:Z

    .line 299
    :cond_0
    iget-wide v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 300
    nop

    .line 301
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->metadataReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/ScriptTagPayloadReader;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/ScriptTagPayloadReader;->getDurationUs()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->tagTimestampUs:J

    neg-long v0, v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    .line 303
    :cond_2
    return-void
.end method

.method private prepareTagData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 284
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->tagDataSize:I

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->tagData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 285
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->tagData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->reset([BI)V

    goto :goto_0

    .line 287
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->tagData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 289
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->tagData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 290
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->tagData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-interface {p1, v0, v2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 291
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->tagData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    return-object p1
.end method

.method private readFlvHeader(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->headerBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    const/16 v2, 0x9

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result p1

    if-nez p1, :cond_0

    .line 189
    return v1

    .line 192
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->headerBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 193
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->headerBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 194
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->headerBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    .line 195
    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 196
    :goto_0
    and-int/2addr p1, v3

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    .line 197
    :cond_2
    if-eqz v4, :cond_3

    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->audioReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/AudioTagPayloadReader;

    if-nez p1, :cond_3

    .line 198
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/AudioTagPayloadReader;

    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->extractorOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    const/16 v5, 0x8

    .line 199
    invoke-interface {v4, v5, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->track(II)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    move-result-object v4

    invoke-direct {p1, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/AudioTagPayloadReader;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->audioReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/AudioTagPayloadReader;

    .line 201
    :cond_3
    const/4 p1, 0x2

    if-eqz v1, :cond_4

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->videoReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/VideoTagPayloadReader;

    if-nez v1, :cond_4

    .line 202
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/VideoTagPayloadReader;

    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->extractorOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    .line 203
    invoke-interface {v4, v2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->track(II)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    move-result-object v4

    invoke-direct {v1, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/VideoTagPayloadReader;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;)V

    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->videoReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/VideoTagPayloadReader;

    .line 205
    :cond_4
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->extractorOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 208
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->headerBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 209
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->state:I

    .line 210
    return v3
.end method

.method private readTagData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 259
    nop

    .line 260
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->tagType:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->audioReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/AudioTagPayloadReader;

    if-eqz v2, :cond_0

    .line 261
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->ensureReadyForMediaOutput()V

    .line 262
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->audioReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/AudioTagPayloadReader;

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->prepareTagData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    move-result-object p1

    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    iget-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->tagTimestampUs:J

    add-long/2addr v2, v4

    invoke-virtual {v0, p1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/AudioTagPayloadReader;->consume(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;J)V

    goto :goto_0

    .line 263
    :cond_0
    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->videoReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/VideoTagPayloadReader;

    if-eqz v2, :cond_1

    .line 264
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->ensureReadyForMediaOutput()V

    .line 265
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->videoReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/VideoTagPayloadReader;

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->prepareTagData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    move-result-object p1

    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    iget-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->tagTimestampUs:J

    add-long/2addr v2, v4

    invoke-virtual {v0, p1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/VideoTagPayloadReader;->consume(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;J)V

    goto :goto_0

    .line 266
    :cond_1
    const/16 v2, 0x12

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->outputSeekMap:Z

    if-nez v0, :cond_3

    .line 267
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->metadataReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/ScriptTagPayloadReader;

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->prepareTagData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    move-result-object p1

    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->tagTimestampUs:J

    invoke-virtual {v0, p1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/ScriptTagPayloadReader;->consume(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;J)V

    .line 268
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->metadataReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/ScriptTagPayloadReader;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/ScriptTagPayloadReader;->getDurationUs()J

    move-result-wide v2

    .line 269
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

    .line 270
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->extractorOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$Unseekable;

    invoke-direct {v0, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->seekMap(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;)V

    .line 271
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->outputSeekMap:Z

    .line 273
    :cond_2
    goto :goto_0

    .line 274
    :cond_3
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-interface {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 275
    const/4 v1, 0x0

    .line 277
    :goto_0
    const/4 p1, 0x4

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 278
    const/4 p1, 0x2

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->state:I

    .line 279
    return v1
.end method

.method private readTagHeader(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result p1

    if-nez p1, :cond_0

    .line 237
    return v1

    .line 240
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 241
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->tagType:I

    .line 242
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result p1

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->tagDataSize:I

    .line 243
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->tagTimestampUs:J

    .line 244
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    int-to-long v0, p1

    iget-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->tagTimestampUs:J

    or-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->tagTimestampUs:J

    .line 245
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 246
    const/4 p1, 0x4

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->state:I

    .line 247
    return v3
.end method

.method private skipToTagHeader(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 221
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    invoke-interface {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 222
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 223
    const/4 p1, 0x3

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->state:I

    .line 224
    return-void
.end method


# virtual methods
.method public final init(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->extractorOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    .line 134
    return-void
.end method

.method public final read(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 152
    :cond_0
    :goto_0
    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->state:I

    const/4 v0, -0x1

    packed-switch p2, :pswitch_data_0

    .line 173
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 167
    :pswitch_0
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->readTagData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 168
    const/4 p1, 0x0

    return p1

    .line 162
    :pswitch_1
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->readTagHeader(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 163
    return v0

    .line 159
    :pswitch_2
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->skipToTagHeader(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)V

    .line 160
    goto :goto_0

    .line 154
    :pswitch_3
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->readFlvHeader(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 155
    return v0

    .line 154
    :cond_1
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final release()V
    .locals 0

    .line 146
    return-void
.end method

.method public final seek(JJ)V
    .locals 0

    .line 138
    const/4 p1, 0x1

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->state:I

    .line 139
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    .line 140
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 141
    return-void
.end method

.method public final sniff(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {p1, v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 104
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 105
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    sget v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->FLV_TAG:I

    if-eq v0, v2, :cond_0

    .line 106
    return v1

    .line 110
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v2, 0x2

    invoke-interface {p1, v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 111
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 112
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    .line 113
    return v1

    .line 117
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 118
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 119
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 121
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 122
    invoke-interface {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 125
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 126
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 128
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
