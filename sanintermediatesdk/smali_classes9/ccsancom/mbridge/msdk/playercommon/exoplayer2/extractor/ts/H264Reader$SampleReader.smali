.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;
.super Ljava/lang/Object;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SampleReader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x80

.field private static final NAL_UNIT_TYPE_AUD:I = 0x9

.field private static final NAL_UNIT_TYPE_IDR:I = 0x5

.field private static final NAL_UNIT_TYPE_NON_IDR:I = 0x1

.field private static final NAL_UNIT_TYPE_PARTITION_A:I = 0x2


# instance fields
.field private final allowNonIdrKeyframes:Z

.field private final bitArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

.field private buffer:[B

.field private bufferLength:I

.field private final detectAccessUnits:Z

.field private isFilling:Z

.field private nalUnitStartPosition:J

.field private nalUnitTimeUs:J

.field private nalUnitType:I

.field private final output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

.field private final pps:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$PpsData;",
            ">;"
        }
    .end annotation
.end field

.field private previousSliceHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

.field private readingSample:Z

.field private sampleIsKeyframe:Z

.field private samplePosition:J

.field private sampleTimeUs:J

.field private sliceHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

.field private final sps:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$SpsData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;ZZ)V
    .locals 0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    .line 250
    iput-boolean p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    .line 251
    iput-boolean p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    .line 252
    new-instance p1, Lccsanandroid/util/SparseArray;

    invoke-direct {p1}, Lccsanandroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sps:Lccsanandroid/util/SparseArray;

    .line 253
    new-instance p1, Lccsanandroid/util/SparseArray;

    invoke-direct {p1}, Lccsanandroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->pps:Lccsanandroid/util/SparseArray;

    .line 254
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$1;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 255
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$1;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 256
    const/16 p1, 0x80

    new-array p1, p1, [B

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->buffer:[B

    .line 257
    new-instance p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;-><init>([BII)V

    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    .line 258
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->reset()V

    .line 259
    return-void
.end method

.method private outputSample(I)V
    .locals 7

    .line 436
    iget-boolean v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    .line 437
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    iget-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->samplePosition:J

    sub-long/2addr v0, v4

    long-to-int v4, v0

    .line 438
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    iget-wide v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleTimeUs:J

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 439
    return-void
.end method


# virtual methods
.method public final appendToNalUnit([BII)V
    .locals 23

    .line 305
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-boolean v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    if-nez v2, :cond_0

    .line 306
    return-void

    .line 308
    :cond_0
    sub-int v2, p3, v1

    .line 309
    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->buffer:[B

    array-length v4, v3

    iget v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    add-int v6, v5, v2

    const/4 v7, 0x2

    if-ge v4, v6, :cond_1

    .line 310
    add-int/2addr v5, v2

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->buffer:[B

    .line 312
    :cond_1
    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->buffer:[B

    iget v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    move-object/from16 v5, p1

    invoke-static {v5, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    add-int/2addr v1, v2

    iput v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    .line 315
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->buffer:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->reset([BII)V

    .line 316
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 317
    return-void

    .line 319
    :cond_2
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 320
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v10

    .line 321
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 325
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_3

    .line 326
    return-void

    .line 328
    :cond_3
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 329
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_4

    .line 330
    return-void

    .line 332
    :cond_4
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    .line 333
    iget-boolean v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-nez v1, :cond_5

    .line 335
    iput-boolean v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 336
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {v1, v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->setSliceType(I)V

    .line 337
    return-void

    .line 339
    :cond_5
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_6

    .line 340
    return-void

    .line 342
    :cond_6
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v13

    .line 343
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->pps:Lccsanandroid/util/SparseArray;

    invoke-virtual {v1, v13}, Lccsanandroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_7

    .line 345
    iput-boolean v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 346
    return-void

    .line 348
    :cond_7
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->pps:Lccsanandroid/util/SparseArray;

    invoke-virtual {v1, v13}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$PpsData;

    .line 349
    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sps:Lccsanandroid/util/SparseArray;

    iget v5, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$PpsData;->seqParameterSetId:I

    invoke-virtual {v3, v5}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$SpsData;

    .line 350
    iget-boolean v3, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$SpsData;->separateColorPlaneFlag:Z

    if-eqz v3, :cond_9

    .line 351
    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v3, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 352
    return-void

    .line 354
    :cond_8
    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v3, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 356
    :cond_9
    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    iget v5, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$SpsData;->frameNumLength:I

    invoke-virtual {v3, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v3

    if-nez v3, :cond_a

    .line 357
    return-void

    .line 359
    :cond_a
    nop

    .line 360
    nop

    .line 361
    nop

    .line 362
    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    iget v5, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$SpsData;->frameNumLength:I

    invoke-virtual {v3, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v12

    .line 363
    iget-boolean v3, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$SpsData;->frameMbsOnlyFlag:Z

    const/4 v5, 0x1

    if-nez v3, :cond_e

    .line 364
    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v3, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v3

    if-nez v3, :cond_b

    .line 365
    return-void

    .line 367
    :cond_b
    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    .line 368
    if-eqz v3, :cond_d

    .line 369
    iget-object v6, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v6, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v6

    if-nez v6, :cond_c

    .line 370
    return-void

    .line 372
    :cond_c
    iget-object v6, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    .line 373
    move v14, v3

    move/from16 v16, v6

    const/4 v15, 0x1

    goto :goto_0

    .line 368
    :cond_d
    move v14, v3

    const/4 v15, 0x0

    const/16 v16, 0x0

    goto :goto_0

    .line 363
    :cond_e
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 376
    :goto_0
    iget v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    if-ne v3, v2, :cond_f

    const/16 v17, 0x1

    goto :goto_1

    :cond_f
    const/16 v17, 0x0

    .line 377
    :goto_1
    nop

    .line 378
    if-eqz v17, :cond_11

    .line 379
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v2

    if-nez v2, :cond_10

    .line 380
    return-void

    .line 382
    :cond_10
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    move/from16 v18, v2

    goto :goto_2

    .line 378
    :cond_11
    const/16 v18, 0x0

    .line 384
    :goto_2
    nop

    .line 385
    nop

    .line 386
    nop

    .line 387
    nop

    .line 388
    iget v2, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-nez v2, :cond_15

    .line 389
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    iget v3, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v2

    if-nez v2, :cond_12

    .line 390
    return-void

    .line 392
    :cond_12
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    iget v3, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 393
    iget-boolean v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    if-eqz v1, :cond_14

    if-nez v14, :cond_14

    .line 394
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_13

    .line 395
    return-void

    .line 397
    :cond_13
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v1

    move/from16 v20, v1

    move/from16 v19, v2

    const/16 v21, 0x0

    const/16 v22, 0x0

    goto :goto_5

    .line 412
    :cond_14
    move/from16 v19, v2

    goto :goto_3

    .line 399
    :cond_15
    iget v2, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-ne v2, v5, :cond_19

    iget-boolean v2, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$SpsData;->deltaPicOrderAlwaysZeroFlag:Z

    if-nez v2, :cond_19

    .line 401
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v2

    if-nez v2, :cond_16

    .line 402
    return-void

    .line 404
    :cond_16
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v2

    .line 405
    iget-boolean v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    if-eqz v1, :cond_18

    if-nez v14, :cond_18

    .line 406
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_17

    .line 407
    return-void

    .line 409
    :cond_17
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v1

    move/from16 v22, v1

    move/from16 v21, v2

    const/16 v19, 0x0

    const/16 v20, 0x0

    goto :goto_5

    .line 412
    :cond_18
    move/from16 v21, v2

    const/16 v19, 0x0

    const/16 v20, 0x0

    goto :goto_4

    :cond_19
    const/16 v19, 0x0

    :goto_3
    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_4
    const/16 v22, 0x0

    :goto_5
    iget-object v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual/range {v8 .. v22}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->setAll(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$SpsData;IIIIZZZZIIIII)V

    .line 415
    iput-boolean v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 416
    return-void
.end method

.method public final endNalUnit(JI)V
    .locals 5

    .line 419
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 420
    invoke-static {v0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->access$100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 422
    :cond_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    if-eqz v0, :cond_1

    .line 423
    iget-wide v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    sub-long/2addr p1, v3

    long-to-int p2, p1

    .line 424
    add-int/2addr p3, p2

    invoke-direct {p0, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->outputSample(I)V

    .line 426
    :cond_1
    iget-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->samplePosition:J

    .line 427
    iget-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitTimeUs:J

    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleTimeUs:J

    .line 428
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    .line 429
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    .line 431
    :cond_2
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/4 p3, 0x5

    if-eq p2, p3, :cond_4

    iget-boolean p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    if-eqz p3, :cond_3

    if-ne p2, v2, :cond_3

    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 432
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isISlice()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :goto_1
    or-int/2addr p1, v1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    .line 433
    return-void
.end method

.method public final needsSpsPps()Z
    .locals 1

    .line 262
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    return v0
.end method

.method public final putPps(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$PpsData;)V
    .locals 2

    .line 270
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->pps:Lccsanandroid/util/SparseArray;

    iget v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$PpsData;->picParameterSetId:I

    invoke-virtual {v0, v1, p1}, Lccsanandroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 271
    return-void
.end method

.method public final putSps(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$SpsData;)V
    .locals 2

    .line 266
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sps:Lccsanandroid/util/SparseArray;

    iget v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$SpsData;->seqParameterSetId:I

    invoke-virtual {v0, v1, p1}, Lccsanandroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 267
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 275
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    .line 276
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->clear()V

    .line 277
    return-void
.end method

.method public final startNalUnit(JIJ)V
    .locals 0

    .line 280
    iput p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    .line 281
    iput-wide p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitTimeUs:J

    .line 282
    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    .line 283
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    if-eq p3, p2, :cond_1

    :cond_0
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x5

    if-eq p3, p1, :cond_1

    if-eq p3, p2, :cond_1

    const/4 p1, 0x2

    if-ne p3, p1, :cond_2

    .line 288
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 289
    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 290
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 291
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->clear()V

    .line 292
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    .line 293
    iput-boolean p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 295
    :cond_2
    return-void
.end method
