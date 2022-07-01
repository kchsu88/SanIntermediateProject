.class final Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;
.super Ljava/lang/Object;
.source "DefaultOggSeeker.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/extractor/ogg/OggSeeker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;
    }
.end annotation


# static fields
.field private static final DEFAULT_OFFSET:I = 0x7530

.field private static final MATCH_BYTE_RANGE:I = 0x186a0

.field private static final MATCH_RANGE:I = 0x11940

.field private static final STATE_IDLE:I = 0x4

.field private static final STATE_READ_LAST_PAGE:I = 0x1

.field private static final STATE_SEEK:I = 0x2

.field private static final STATE_SEEK_TO_END:I = 0x0

.field private static final STATE_SKIP:I = 0x3


# instance fields
.field private end:J

.field private endGranule:J

.field private final pageHeader:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

.field private final payloadEndPosition:J

.field private final payloadStartPosition:J

.field private positionBeforeSeekToEnd:J

.field private start:J

.field private startGranule:J

.field private state:I

.field private final streamReader:Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;

.field private targetGranule:J

.field private totalGranules:J


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;JJJJZ)V
    .locals 4
    .param p1, "streamReader"    # Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;
    .param p2, "payloadStartPosition"    # J
    .param p4, "payloadEndPosition"    # J
    .param p6, "firstPayloadPageSize"    # J
    .param p8, "firstPayloadPageGranulePosition"    # J
    .param p10, "firstPayloadPageIsLastPage"    # Z

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_0

    cmp-long v1, p4, p2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 79
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->streamReader:Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;

    .line 80
    iput-wide p2, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->payloadStartPosition:J

    .line 81
    iput-wide p4, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    .line 82
    sub-long v1, p4, p2

    cmp-long v3, p6, v1

    if-eqz v3, :cond_2

    if-eqz p10, :cond_1

    goto :goto_1

    .line 87
    :cond_1
    iput v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    goto :goto_2

    .line 84
    :cond_2
    :goto_1
    iput-wide p8, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    .line 85
    const/4 v0, 0x4

    iput v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    .line 89
    :goto_2
    new-instance v0, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    .line 90
    return-void
.end method

.method static synthetic access$100(Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;)Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;

    .line 33
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->streamReader:Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;

    return-object v0
.end method

.method static synthetic access$200(Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;)J
    .locals 2
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;

    .line 33
    iget-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->payloadStartPosition:J

    return-wide v0
.end method

.method static synthetic access$300(Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;)J
    .locals 2
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;

    .line 33
    iget-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    return-wide v0
.end method

.method static synthetic access$400(Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;)J
    .locals 2
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;

    .line 33
    iget-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    return-wide v0
.end method

.method private getNextSeekPosition(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .locals 25
    .param p1, "input"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    iget-wide v4, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->end:J

    const-wide/16 v6, -0x1

    cmp-long v8, v2, v4

    if-nez v8, :cond_0

    .line 156
    return-wide v6

    .line 159
    :cond_0
    invoke-interface/range {p1 .. p1}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    .line 160
    .local v2, "currentPosition":J
    iget-object v4, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v8, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->end:J

    invoke-virtual {v4, v1, v8, v9}, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->skipToNextPage(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;J)Z

    move-result v4

    if-nez v4, :cond_2

    .line 161
    iget-wide v4, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    .line 164
    return-wide v4

    .line 162
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "No ogg page can be found."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 167
    :cond_2
    iget-object v4, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->populate(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    .line 168
    invoke-interface/range {p1 .. p1}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 170
    iget-wide v4, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    iget-object v8, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v8, v8, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    sub-long/2addr v4, v8

    .line 171
    .local v4, "granuleDistance":J
    iget-object v8, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v8, v8, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    iget-object v9, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v9, v9, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v8, v9

    .line 172
    .local v8, "pageSize":I
    const-wide/16 v9, 0x0

    cmp-long v11, v9, v4

    if-gtz v11, :cond_3

    const-wide/32 v11, 0x11940

    cmp-long v13, v4, v11

    if-gez v13, :cond_3

    .line 173
    return-wide v6

    .line 176
    :cond_3
    cmp-long v6, v4, v9

    if-gez v6, :cond_4

    .line 177
    iput-wide v2, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->end:J

    .line 178
    iget-object v6, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v6, v6, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    iput-wide v6, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->endGranule:J

    goto :goto_0

    .line 180
    :cond_4
    invoke-interface/range {p1 .. p1}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    int-to-long v11, v8

    add-long/2addr v6, v11

    iput-wide v6, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    .line 181
    iget-object v6, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v6, v6, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    iput-wide v6, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->startGranule:J

    .line 184
    :goto_0
    iget-wide v6, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->end:J

    iget-wide v11, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    sub-long/2addr v6, v11

    const-wide/32 v13, 0x186a0

    cmp-long v15, v6, v13

    if-gez v15, :cond_5

    .line 185
    iput-wide v11, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->end:J

    .line 186
    return-wide v11

    .line 189
    :cond_5
    int-to-long v6, v8

    cmp-long v13, v4, v9

    if-gtz v13, :cond_6

    const-wide/16 v9, 0x2

    goto :goto_1

    :cond_6
    const-wide/16 v9, 0x1

    :goto_1
    mul-long v6, v6, v9

    .line 190
    .local v6, "offset":J
    nop

    .line 191
    invoke-interface/range {p1 .. p1}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v9

    sub-long/2addr v9, v6

    iget-wide v13, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->end:J

    iget-wide v11, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    sub-long v17, v13, v11

    mul-long v17, v17, v4

    move-wide/from16 v21, v2

    .end local v2    # "currentPosition":J
    .local v21, "currentPosition":J
    iget-wide v1, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->endGranule:J

    move-wide/from16 v23, v4

    .end local v4    # "granuleDistance":J
    .local v23, "granuleDistance":J
    iget-wide v3, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->startGranule:J

    sub-long/2addr v1, v3

    div-long v17, v17, v1

    add-long v9, v9, v17

    .line 194
    .local v9, "nextPosition":J
    const-wide/16 v1, 0x1

    sub-long v19, v13, v1

    move-wide v15, v9

    move-wide/from16 v17, v11

    invoke-static/range {v15 .. v20}, Lccsancom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v1

    return-wide v1
.end method

.method private skipToPageOfTargetGranule(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 5
    .param p1, "input"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    :goto_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->skipToNextPage(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    .line 209
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->populate(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    .line 210
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v0, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    iget-wide v2, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 211
    nop

    .line 217
    invoke-interface {p1}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 218
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v0, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v1, v1, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 214
    invoke-interface {p1}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    .line 215
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v0, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->startGranule:J

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic createSeekMap()Lccsancom/google/android/exoplayer2/extractor/SeekMap;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->createSeekMap()Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;

    move-result-object v0

    return-object v0
.end method

.method public createSeekMap()Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;
    .locals 6

    .line 130
    iget-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    new-instance v0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;

    invoke-direct {v0, p0, v2}, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;-><init>(Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker$1;)V

    move-object v2, v0

    :cond_0
    return-object v2
.end method

.method public read(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .locals 8
    .param p1, "input"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    const-wide/16 v1, -0x1

    const/4 v3, 0x4

    packed-switch v0, :pswitch_data_0

    .line 123
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 96
    :pswitch_0
    return-wide v1

    .line 111
    :pswitch_1
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->getNextSeekPosition(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v4

    .line 112
    .local v4, "position":J
    cmp-long v0, v4, v1

    if-eqz v0, :cond_0

    .line 113
    return-wide v4

    .line 115
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    .line 118
    .end local v4    # "position":J
    :pswitch_2
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->skipToPageOfTargetGranule(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 119
    iput v3, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    .line 120
    iget-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->startGranule:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    neg-long v0, v0

    return-wide v0

    .line 98
    :pswitch_3
    invoke-interface {p1}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->positionBeforeSeekToEnd:J

    .line 99
    const/4 v2, 0x1

    iput v2, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    .line 101
    iget-wide v4, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    const-wide/32 v6, 0xff1b

    sub-long/2addr v4, v6

    .line 102
    .local v4, "lastPageSearchPosition":J
    cmp-long v2, v4, v0

    if-lez v2, :cond_1

    .line 103
    return-wide v4

    .line 107
    .end local v4    # "lastPageSearchPosition":J
    :cond_1
    :pswitch_4
    invoke-virtual {p0, p1}, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->readGranuleOfLastPage(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    .line 108
    iput v3, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    .line 109
    iget-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->positionBeforeSeekToEnd:J

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method readGranuleOfLastPage(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .locals 7
    .param p1, "input"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->reset()V

    .line 231
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->skipToNextPage(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->populate(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    .line 235
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v0, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v1, v1, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 236
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v0, v0, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    .line 237
    .local v0, "granulePosition":J
    :goto_0
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v2, v2, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->type:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    .line 238
    invoke-virtual {v2, p1}, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->skipToNextPage(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 239
    invoke-interface {p1}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-wide v4, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    .line 240
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->populate(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result v2

    .line 241
    .local v2, "hasPopulated":Z
    if-eqz v2, :cond_1

    iget-object v3, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v3, v3, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    iget-object v4, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v4, v4, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v3, v4

    invoke-static {p1, v3}, Lccsancom/google/android/exoplayer2/extractor/ExtractorUtil;->skipFullyQuietly(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 246
    :cond_0
    iget-object v3, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v0, v3, Lccsancom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    .line 247
    .end local v2    # "hasPopulated":Z
    goto :goto_0

    .line 244
    .restart local v2    # "hasPopulated":Z
    :cond_1
    :goto_1
    return-wide v0

    .line 248
    .end local v2    # "hasPopulated":Z
    :cond_2
    return-wide v0

    .line 232
    .end local v0    # "granulePosition":J
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public startSeek(J)V
    .locals 10
    .param p1, "targetGranule"    # J

    .line 135
    iget-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    const-wide/16 v2, 0x1

    sub-long v8, v0, v2

    const-wide/16 v6, 0x0

    move-wide v4, p1

    invoke-static/range {v4 .. v9}, Lccsancom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    .line 136
    const/4 v0, 0x2

    iput v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    .line 137
    iget-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->payloadStartPosition:J

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    .line 138
    iget-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->end:J

    .line 139
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->startGranule:J

    .line 140
    iget-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->endGranule:J

    .line 141
    return-void
.end method
