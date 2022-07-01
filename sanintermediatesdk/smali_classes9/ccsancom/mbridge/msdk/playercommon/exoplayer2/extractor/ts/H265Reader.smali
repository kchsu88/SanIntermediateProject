.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;
.super Ljava/lang/Object;
.source "H265Reader.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader$SampleReader;
    }
.end annotation


# static fields
.field private static final BLA_W_LP:I = 0x10

.field private static final CRA_NUT:I = 0x15

.field private static final PPS_NUT:I = 0x22

.field private static final PREFIX_SEI_NUT:I = 0x27

.field private static final RASL_R:I = 0x9

.field private static final SPS_NUT:I = 0x21

.field private static final SUFFIX_SEI_NUT:I = 0x28

.field private static final TAG:Ljava/lang/String; = "H265Reader"

.field private static final VPS_NUT:I = 0x20


# instance fields
.field private formatId:Ljava/lang/String;

.field private hasOutputFormat:Z

.field private output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

.field private pesTimeUs:J

.field private final pps:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field private final prefixFlags:[Z

.field private final prefixSei:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field private sampleReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader$SampleReader;

.field private final seiReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SeiReader;

.field private final seiWrapper:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field private final sps:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field private final suffixSei:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field private totalBytesWritten:J

.field private final vps:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SeiReader;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->seiReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SeiReader;

    .line 76
    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->prefixFlags:[Z

    .line 77
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x20

    const/16 v1, 0x80

    invoke-direct {p1, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->vps:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 78
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x21

    invoke-direct {p1, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->sps:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 79
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x22

    invoke-direct {p1, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->pps:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 80
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x27

    invoke-direct {p1, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 81
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x28

    invoke-direct {p1, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 82
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 83
    return-void
.end method

.method private endNalUnit(JIIJ)V
    .locals 2

    .line 187
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->sampleReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader$SampleReader;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader$SampleReader;->endNalUnit(JI)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->vps:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 191
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->sps:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 192
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->pps:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 193
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->vps:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->sps:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->pps:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 194
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->formatId:Ljava/lang/String;

    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->vps:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->sps:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->pps:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-static {p2, p3, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->parseMediaFormat(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object p2

    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->format(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V

    .line 195
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->hasOutputFormat:Z

    .line 198
    :cond_1
    :goto_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result p1

    const/4 p2, 0x5

    if-eqz p1, :cond_2

    .line 199
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget p3, p3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {p1, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil;->unescapeStream([BI)I

    move-result p1

    .line 200
    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {p3, v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 203
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 204
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->seiReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SeiReader;

    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, p5, p6, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SeiReader;->consume(JLccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V

    .line 206
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 207
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget p3, p3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {p1, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil;->unescapeStream([BI)I

    move-result p1

    .line 208
    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object p4, p4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {p3, p4, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 211
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 212
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->seiReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SeiReader;

    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, p5, p6, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SeiReader;->consume(JLccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V

    .line 214
    :cond_3
    return-void
.end method

.method private nalUnitData([BII)V
    .locals 1

    .line 175
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->sampleReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader$SampleReader;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader$SampleReader;->readNalUnitData([BII)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->vps:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 179
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->sps:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 180
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->pps:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 182
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 183
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 184
    return-void
.end method

.method private static parseMediaFormat(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 23

    .line 219
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v4, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v3, v4

    iget v4, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 220
    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    const/4 v6, 0x0

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    iget-object v4, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v7, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v4, v6, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    iget-object v4, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v5, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v0, v5

    iget v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v4, v6, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    iget-object v2, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-direct {v0, v2, v6, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;-><init>([BII)V

    .line 226
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 227
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 228
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 231
    const/16 v4, 0x58

    invoke-virtual {v0, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 232
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 233
    nop

    .line 234
    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    .line 235
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 236
    add-int/lit8 v7, v7, 0x59

    .line 238
    :cond_0
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 239
    add-int/lit8 v7, v7, 0x8

    .line 234
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 242
    :cond_2
    invoke-virtual {v0, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 243
    const/4 v5, 0x2

    if-lez v2, :cond_3

    .line 244
    rsub-int/lit8 v7, v2, 0x8

    mul-int/lit8 v7, v7, 0x2

    invoke-virtual {v0, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 247
    :cond_3
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 248
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v7

    .line 249
    if-ne v7, v1, :cond_4

    .line 250
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 252
    :cond_4
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    .line 253
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v8

    .line 254
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_8

    .line 255
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v9

    .line 256
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    .line 257
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    .line 258
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v13

    .line 260
    if-eq v7, v10, :cond_6

    if-ne v7, v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v14, 0x1

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v14, 0x2

    .line 261
    :goto_2
    if-ne v7, v10, :cond_7

    const/4 v7, 0x2

    goto :goto_3

    :cond_7
    const/4 v7, 0x1

    .line 262
    :goto_3
    add-int/2addr v9, v11

    mul-int v14, v14, v9

    sub-int/2addr v1, v14

    .line 263
    add-int/2addr v12, v13

    mul-int v7, v7, v12

    sub-int/2addr v8, v7

    move/from16 v16, v1

    move/from16 v17, v8

    goto :goto_4

    .line 254
    :cond_8
    move/from16 v16, v1

    move/from16 v17, v8

    .line 265
    :goto_4
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 266
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 267
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    .line 269
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x0

    goto :goto_5

    :cond_9
    move v7, v2

    :goto_5
    if-gt v7, v2, :cond_a

    .line 270
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 271
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 272
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 269
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 274
    :cond_a
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 275
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 276
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 277
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 278
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 279
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 281
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    .line 282
    if-eqz v2, :cond_b

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 283
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->skipScalingList(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;)V

    .line 285
    :cond_b
    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 286
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 288
    invoke-virtual {v0, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 289
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 290
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 291
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 294
    :cond_c
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->skipShortTermRefPicSets(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;)V

    .line 295
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 297
    nop

    :goto_6
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    if-ge v6, v2, :cond_d

    .line 298
    add-int/lit8 v2, v1, 0x4

    .line 300
    add-int/2addr v2, v10

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 297
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 303
    :cond_d
    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 304
    const/high16 v1, 0x3f800000    # 1.0f

    .line 305
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 306
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 307
    invoke-virtual {v0, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 308
    const/16 v4, 0xff

    if-ne v2, v4, :cond_f

    .line 309
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v4

    .line 310
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v0

    .line 311
    if-eqz v4, :cond_e

    if-eqz v0, :cond_e

    .line 312
    int-to-float v1, v4

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 314
    :cond_e
    move/from16 v21, v1

    goto :goto_7

    :cond_f
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v0, v0

    if-ge v2, v0, :cond_10

    .line 315
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    aget v0, v0, v2

    move/from16 v21, v0

    goto :goto_7

    .line 317
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "H265Reader"

    invoke-static {v2, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_11
    const/high16 v21, 0x3f800000    # 1.0f

    :goto_7
    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/high16 v18, -0x40800000    # -1.0f

    .line 324
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const/16 v20, -0x1

    const/16 v22, 0x0

    .line 322
    const-string v12, "video/hevc"

    move-object/from16 v11, p0

    invoke-static/range {v11 .. v22}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method private static skipScalingList(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;)V
    .locals 7

    .line 331
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_5

    .line 332
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x6

    if-ge v3, v4, :cond_4

    .line 333
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 335
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    goto :goto_3

    .line 337
    :cond_0
    const/16 v4, 0x40

    shl-int/lit8 v6, v1, 0x1

    add-int/2addr v6, v2

    shl-int v6, v5, v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 338
    if-le v1, v5, :cond_1

    .line 340
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 342
    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_2

    .line 343
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 342
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 332
    :cond_2
    :goto_3
    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    const/4 v5, 0x3

    :cond_3
    add-int/2addr v3, v5

    goto :goto_1

    .line 331
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 348
    :cond_5
    return-void
.end method

.method private static skipShortTermRefPicSets(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;)V
    .locals 8

    .line 355
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    .line 356
    nop

    .line 362
    nop

    .line 363
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    .line 364
    if-eqz v2, :cond_0

    .line 365
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    .line 367
    :cond_0
    if-eqz v3, :cond_2

    .line 368
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 369
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 370
    const/4 v5, 0x0

    :goto_1
    if-gt v5, v4, :cond_5

    .line 371
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 372
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 370
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 376
    :cond_2
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    .line 377
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    .line 378
    add-int v6, v4, v5

    .line 379
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v4, :cond_3

    .line 380
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 381
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 379
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 383
    :cond_3
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_4

    .line 384
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 385
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 383
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    move v4, v6

    .line 363
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 389
    :cond_6
    return-void
.end method

.method private startNalUnit(JIIJ)V
    .locals 8

    .line 163
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    .line 164
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->sampleReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader$SampleReader;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader$SampleReader;->startNalUnit(JIIJ)V

    goto :goto_0

    .line 166
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->vps:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 167
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->sps:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 168
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->pps:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 170
    :goto_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 171
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 172
    return-void
.end method


# virtual methods
.method public final consume(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 113
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_4

    .line 114
    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 115
    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v9

    .line 116
    iget-object v10, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    .line 119
    iget-wide v1, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->totalBytesWritten:J

    .line 120
    iget-object v1, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    invoke-interface {v1, v8, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)V

    .line 123
    :goto_1
    if-ge v0, v9, :cond_3

    .line 124
    iget-object v1, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->prefixFlags:[Z

    invoke-static {v10, v0, v9, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v11

    .line 126
    if-ne v11, v9, :cond_0

    .line 128
    invoke-direct {v7, v10, v0, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->nalUnitData([BII)V

    .line 129
    return-void

    .line 133
    :cond_0
    invoke-static {v10, v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil;->getH265NalUnitType([BI)I

    move-result v12

    .line 137
    sub-int v1, v11, v0

    .line 138
    if-lez v1, :cond_1

    .line 139
    invoke-direct {v7, v10, v0, v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->nalUnitData([BII)V

    .line 142
    :cond_1
    sub-int v13, v9, v11

    .line 143
    iget-wide v2, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->totalBytesWritten:J

    int-to-long v4, v13

    sub-long v14, v2, v4

    .line 147
    nop

    .line 148
    if-gez v1, :cond_2

    neg-int v0, v1

    move v4, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_2
    iget-wide v5, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->pesTimeUs:J

    .line 147
    move-object/from16 v0, p0

    move-wide v1, v14

    move v3, v13

    invoke-direct/range {v0 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->endNalUnit(JIIJ)V

    .line 150
    iget-wide v5, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->pesTimeUs:J

    move v4, v12

    invoke-direct/range {v0 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->startNalUnit(JIIJ)V

    .line 152
    add-int/lit8 v0, v11, 0x3

    .line 153
    goto :goto_1

    .line 154
    :cond_3
    goto :goto_0

    .line 155
    :cond_4
    return-void
.end method

.method public final createTracks(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2

    .line 99
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 100
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->formatId:Ljava/lang/String;

    .line 101
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->track(II)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    .line 102
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader$SampleReader;

    invoke-direct {v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader$SampleReader;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;)V

    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->sampleReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader$SampleReader;

    .line 103
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->seiReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SeiReader;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SeiReader;->createTracks(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 104
    return-void
.end method

.method public final packetFinished()V
    .locals 0

    .line 160
    return-void
.end method

.method public final packetStarted(JZ)V
    .locals 0

    .line 108
    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->pesTimeUs:J

    .line 109
    return-void
.end method

.method public final seek()V
    .locals 2

    .line 87
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->prefixFlags:[Z

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 88
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->vps:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 89
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->sps:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 90
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->pps:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 91
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 92
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 93
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->sampleReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader$SampleReader;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader$SampleReader;->reset()V

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H265Reader;->totalBytesWritten:J

    .line 95
    return-void
.end method
