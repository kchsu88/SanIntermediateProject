.class final Lccsancom/google/android/exoplayer2/extractor/mp3/VbriSeeker;
.super Ljava/lang/Object;
.source "VbriSeeker.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/extractor/mp3/Seeker;


# static fields
.field private static final TAG:Ljava/lang/String; = "VbriSeeker"


# instance fields
.field private final dataEndPosition:J

.field private final durationUs:J

.field private final positions:[J

.field private final timesUs:[J


# direct methods
.method private constructor <init>([J[JJJ)V
    .locals 0
    .param p1, "timesUs"    # [J
    .param p2, "positions"    # [J
    .param p3, "durationUs"    # J
    .param p5, "dataEndPosition"    # J

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->timesUs:[J

    .line 107
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->positions:[J

    .line 108
    iput-wide p3, p0, Lccsancom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->durationUs:J

    .line 109
    iput-wide p5, p0, Lccsancom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->dataEndPosition:J

    .line 110
    return-void
.end method

.method public static create(JJLccsancom/google/android/exoplayer2/audio/MpegAudioUtil$Header;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/extractor/mp3/VbriSeeker;
    .locals 24
    .param p0, "inputLength"    # J
    .param p2, "position"    # J
    .param p4, "mpegAudioHeader"    # Lccsancom/google/android/exoplayer2/audio/MpegAudioUtil$Header;
    .param p5, "frame"    # Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    .line 52
    move-wide/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 53
    invoke-virtual/range {p5 .. p5}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 54
    .local v4, "numFrames":I
    const/4 v5, 0x0

    if-gtz v4, :cond_0

    .line 55
    return-object v5

    .line 57
    :cond_0
    iget v6, v2, Lccsancom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->sampleRate:I

    .line 58
    .local v6, "sampleRate":I
    int-to-long v7, v4

    const-wide/32 v9, 0xf4240

    .line 60
    const/16 v11, 0x7d00

    if-lt v6, v11, :cond_1

    const/16 v11, 0x480

    goto :goto_0

    :cond_1
    const/16 v11, 0x240

    :goto_0
    int-to-long v11, v11

    mul-long v9, v9, v11

    int-to-long v11, v6

    .line 59
    invoke-static/range {v7 .. v12}, Lccsancom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    .line 61
    .local v7, "durationUs":J
    invoke-virtual/range {p5 .. p5}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    .line 62
    .local v9, "entryCount":I
    invoke-virtual/range {p5 .. p5}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    .line 63
    .local v10, "scale":I
    invoke-virtual/range {p5 .. p5}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    .line 64
    .local v11, "entrySize":I
    const/4 v12, 0x2

    invoke-virtual {v3, v12}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 66
    iget v12, v2, Lccsancom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    int-to-long v12, v12

    add-long v14, p2, v12

    .line 68
    .local v14, "minPosition":J
    new-array v12, v9, [J

    .line 69
    .local v12, "timesUs":[J
    new-array v13, v9, [J

    .line 70
    .local v13, "positions":[J
    const/16 v16, 0x0

    move/from16 v20, v6

    move/from16 v2, v16

    move-wide/from16 v5, p2

    .end local v6    # "sampleRate":I
    .end local p2    # "position":J
    .local v2, "index":I
    .local v5, "position":J
    .local v20, "sampleRate":I
    :goto_1
    if-ge v2, v9, :cond_2

    .line 71
    move/from16 v21, v4

    .end local v4    # "numFrames":I
    .local v21, "numFrames":I
    int-to-long v3, v2

    mul-long v3, v3, v7

    move-wide/from16 v22, v7

    .end local v7    # "durationUs":J
    .local v22, "durationUs":J
    int-to-long v7, v9

    div-long/2addr v3, v7

    aput-wide v3, v12, v2

    .line 74
    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    aput-wide v3, v13, v2

    .line 76
    packed-switch v11, :pswitch_data_0

    .line 90
    const/4 v3, 0x0

    return-object v3

    .line 87
    :pswitch_0
    invoke-virtual/range {p5 .. p5}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    .line 88
    .local v3, "segmentSize":I
    goto :goto_2

    .line 84
    .end local v3    # "segmentSize":I
    :pswitch_1
    invoke-virtual/range {p5 .. p5}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v3

    .line 85
    .restart local v3    # "segmentSize":I
    goto :goto_2

    .line 81
    .end local v3    # "segmentSize":I
    :pswitch_2
    invoke-virtual/range {p5 .. p5}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    .line 82
    .restart local v3    # "segmentSize":I
    goto :goto_2

    .line 78
    .end local v3    # "segmentSize":I
    :pswitch_3
    invoke-virtual/range {p5 .. p5}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 79
    .restart local v3    # "segmentSize":I
    nop

    .line 92
    :goto_2
    mul-int v4, v3, v10

    int-to-long v7, v4

    add-long/2addr v5, v7

    .line 70
    .end local v3    # "segmentSize":I
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, p5

    move/from16 v4, v21

    move-wide/from16 v7, v22

    goto :goto_1

    .end local v21    # "numFrames":I
    .end local v22    # "durationUs":J
    .restart local v4    # "numFrames":I
    .restart local v7    # "durationUs":J
    :cond_2
    move/from16 v21, v4

    move-wide/from16 v22, v7

    .line 94
    .end local v2    # "index":I
    .end local v4    # "numFrames":I
    .end local v7    # "durationUs":J
    .restart local v21    # "numFrames":I
    .restart local v22    # "durationUs":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    cmp-long v2, v0, v5

    if-eqz v2, :cond_3

    .line 95
    const/16 v2, 0x43

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "VBRI data size mismatch: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VbriSeeker"

    invoke-static {v3, v2}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_3
    new-instance v2, Lccsancom/google/android/exoplayer2/extractor/mp3/VbriSeeker;

    move-object v3, v13

    .end local v13    # "positions":[J
    .local v3, "positions":[J
    move-object v13, v2

    move-wide v7, v14

    .end local v14    # "minPosition":J
    .local v7, "minPosition":J
    move-object v14, v12

    move-object v15, v3

    move-wide/from16 v16, v22

    move-wide/from16 v18, v5

    invoke-direct/range {v13 .. v19}, Lccsancom/google/android/exoplayer2/extractor/mp3/VbriSeeker;-><init>([J[JJJ)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDataEndPosition()J
    .locals 2

    .line 141
    iget-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->dataEndPosition:J

    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    .line 136
    iget-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lccsancom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 8
    .param p1, "timeUs"    # J

    .line 119
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->timesUs:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lccsancom/google/android/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    .line 120
    .local v0, "tableIndex":I
    new-instance v2, Lccsancom/google/android/exoplayer2/extractor/SeekPoint;

    iget-object v3, p0, Lccsancom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->timesUs:[J

    aget-wide v4, v3, v0

    iget-object v3, p0, Lccsancom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->positions:[J

    aget-wide v6, v3, v0

    invoke-direct {v2, v4, v5, v6, v7}, Lccsancom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 121
    .local v2, "seekPoint":Lccsancom/google/android/exoplayer2/extractor/SeekPoint;
    iget-wide v3, v2, Lccsancom/google/android/exoplayer2/extractor/SeekPoint;->timeUs:J

    cmp-long v5, v3, p1

    if-gez v5, :cond_1

    iget-object v3, p0, Lccsancom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->timesUs:[J

    array-length v3, v3

    sub-int/2addr v3, v1

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    new-instance v1, Lccsancom/google/android/exoplayer2/extractor/SeekPoint;

    iget-object v3, p0, Lccsancom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->timesUs:[J

    add-int/lit8 v4, v0, 0x1

    aget-wide v4, v3, v4

    iget-object v3, p0, Lccsancom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->positions:[J

    add-int/lit8 v6, v0, 0x1

    aget-wide v6, v3, v6

    invoke-direct {v1, v4, v5, v6, v7}, Lccsancom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 125
    .local v1, "nextSeekPoint":Lccsancom/google/android/exoplayer2/extractor/SeekPoint;
    new-instance v3, Lccsancom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {v3, v2, v1}, Lccsancom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lccsancom/google/android/exoplayer2/extractor/SeekPoint;Lccsancom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v3

    .line 122
    .end local v1    # "nextSeekPoint":Lccsancom/google/android/exoplayer2/extractor/SeekPoint;
    :cond_1
    :goto_0
    new-instance v1, Lccsancom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {v1, v2}, Lccsancom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lccsancom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v1
.end method

.method public getTimeUs(J)J
    .locals 3
    .param p1, "position"    # J

    .line 131
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->timesUs:[J

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->positions:[J

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2, v2}, Lccsancom/google/android/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result v1

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public isSeekable()Z
    .locals 1

    .line 114
    const/4 v0, 0x1

    return v0
.end method
