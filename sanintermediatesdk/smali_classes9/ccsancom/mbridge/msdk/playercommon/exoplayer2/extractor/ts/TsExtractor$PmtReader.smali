.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SectionPayloadReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PmtReader"
.end annotation


# static fields
.field private static final TS_PMT_DESC_AC3:I = 0x6a

.field private static final TS_PMT_DESC_DTS:I = 0x7b

.field private static final TS_PMT_DESC_DVBSUBS:I = 0x59

.field private static final TS_PMT_DESC_EAC3:I = 0x7a

.field private static final TS_PMT_DESC_ISO639_LANG:I = 0xa

.field private static final TS_PMT_DESC_REGISTRATION:I = 0x5


# instance fields
.field private final pid:I

.field private final pmtScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

.field private final trackIdToPidScratch:Lccsanandroid/util/SparseIntArray;

.field private final trackIdToReaderScratch:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;I)V
    .locals 1

    .line 392
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v0, 0x5

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 394
    new-instance p1, Lccsanandroid/util/SparseArray;

    invoke-direct {p1}, Lccsanandroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->trackIdToReaderScratch:Lccsanandroid/util/SparseArray;

    .line 395
    new-instance p1, Lccsanandroid/util/SparseIntArray;

    invoke-direct {p1}, Lccsanandroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Lccsanandroid/util/SparseIntArray;

    .line 396
    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pid:I

    .line 397
    return-void
.end method

.method private readEsInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;
    .locals 12

    .line 515
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 516
    add-int/2addr p2, v0

    .line 517
    nop

    .line 518
    nop

    .line 519
    const/4 v1, 0x0

    const/4 v2, -0x1

    move-object v2, v1

    const/4 v3, -0x1

    .line 520
    :goto_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v4

    if-ge v4, p2, :cond_a

    .line 521
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 522
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 523
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v6

    add-int/2addr v6, v5

    .line 524
    const/4 v5, 0x5

    const/16 v7, 0x59

    const/16 v8, 0x87

    const/16 v9, 0x81

    if-ne v4, v5, :cond_3

    .line 525
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    .line 526
    invoke-static {}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$900()J

    move-result-wide v10

    cmp-long v7, v4, v10

    if-nez v7, :cond_0

    .line 527
    const/16 v3, 0x81

    goto :goto_1

    .line 528
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$1000()J

    move-result-wide v9

    cmp-long v7, v4, v9

    if-nez v7, :cond_1

    .line 529
    const/16 v3, 0x87

    goto :goto_1

    .line 530
    :cond_1
    invoke-static {}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$1100()J

    move-result-wide v7

    cmp-long v9, v4, v7

    if-nez v9, :cond_2

    .line 531
    const/16 v3, 0x24

    .line 533
    :cond_2
    :goto_1
    goto :goto_3

    :cond_3
    const/16 v5, 0x6a

    if-ne v4, v5, :cond_4

    .line 534
    const/16 v3, 0x81

    goto :goto_3

    .line 535
    :cond_4
    const/16 v5, 0x7a

    if-ne v4, v5, :cond_5

    .line 536
    const/16 v3, 0x87

    goto :goto_3

    .line 537
    :cond_5
    const/16 v5, 0x7b

    if-ne v4, v5, :cond_6

    .line 538
    const/16 v3, 0x8a

    goto :goto_3

    .line 539
    :cond_6
    const/16 v5, 0xa

    const/4 v8, 0x3

    if-ne v4, v5, :cond_7

    .line 540
    invoke-virtual {p1, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 542
    :cond_7
    if-ne v4, v7, :cond_9

    .line 543
    nop

    .line 544
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 545
    :goto_2
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    if-ge v3, v6, :cond_8

    .line 546
    invoke-virtual {p1, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 547
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 548
    const/4 v5, 0x4

    new-array v9, v5, [B

    .line 549
    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 550
    new-instance v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;

    invoke-direct {v5, v3, v4, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    goto :goto_2

    .line 545
    :cond_8
    const/16 v3, 0x59

    .line 555
    :cond_9
    :goto_3
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v4

    sub-int/2addr v6, v4

    invoke-virtual {p1, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 556
    goto/16 :goto_0

    .line 557
    :cond_a
    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 558
    new-instance v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    .line 559
    invoke-static {p1, v0, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {v4, v3, v1, v2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    .line 558
    return-object v4
.end method


# virtual methods
.method public consume(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V
    .locals 16

    .line 407
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 408
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 410
    return-void

    .line 414
    :cond_0
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$200(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_2

    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$200(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v2

    if-eq v2, v3, :cond_2

    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v2

    if-ne v2, v5, :cond_1

    goto :goto_0

    .line 417
    :cond_1
    new-instance v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;

    iget-object v6, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    .line 418
    invoke-static {v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$300(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;-><init>(J)V

    .line 419
    iget-object v6, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$300(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 415
    :cond_2
    :goto_0
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$300(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;

    .line 423
    :goto_1
    invoke-virtual {v1, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 424
    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    .line 427
    const/4 v7, 0x5

    invoke-virtual {v1, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 430
    iget-object v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v8, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;I)V

    .line 431
    iget-object v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 432
    iget-object v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/16 v10, 0xc

    invoke-virtual {v8, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 435
    invoke-virtual {v1, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 437
    iget-object v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$200(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v8

    const/16 v11, 0x2000

    const/16 v12, 0x15

    if-ne v8, v3, :cond_3

    iget-object v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$400(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader;

    move-result-object v8

    if-nez v8, :cond_3

    .line 440
    new-instance v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;

    new-array v13, v4, [B

    const/4 v14, 0x0

    invoke-direct {v8, v12, v14, v14, v13}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    .line 441
    iget-object v13, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v13}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$500(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$Factory;

    move-result-object v14

    invoke-interface {v14, v12, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$Factory;->createPayloadReader(ILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader;

    move-result-object v8

    invoke-static {v13, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$402(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader;

    .line 442
    iget-object v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$400(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader;

    move-result-object v8

    iget-object v13, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v13}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$600(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    move-result-object v13

    new-instance v14, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    invoke-direct {v14, v6, v12, v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(III)V

    invoke-interface {v8, v2, v13, v14}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader;->init(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 446
    :cond_3
    iget-object v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->trackIdToReaderScratch:Lccsanandroid/util/SparseArray;

    invoke-virtual {v8}, Lccsanandroid/util/SparseArray;->clear()V

    .line 447
    iget-object v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Lccsanandroid/util/SparseIntArray;

    invoke-virtual {v8}, Lccsanandroid/util/SparseIntArray;->clear()V

    .line 448
    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    .line 449
    :goto_2
    if-lez v8, :cond_a

    .line 450
    iget-object v13, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v13, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;I)V

    .line 451
    iget-object v13, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 452
    iget-object v14, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 453
    iget-object v14, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/16 v15, 0xd

    invoke-virtual {v14, v15}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v14

    .line 454
    iget-object v15, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v15, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 455
    iget-object v15, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v15, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v15

    .line 456
    invoke-direct {v0, v1, v15}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->readEsInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;

    move-result-object v7

    .line 457
    const/4 v9, 0x6

    if-ne v13, v9, :cond_4

    .line 458
    iget v13, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->streamType:I

    .line 460
    :cond_4
    add-int/lit8 v15, v15, 0x5

    sub-int/2addr v8, v15

    .line 462
    iget-object v9, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$200(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v9

    if-ne v9, v3, :cond_5

    move v9, v13

    goto :goto_3

    :cond_5
    move v9, v14

    .line 463
    :goto_3
    iget-object v15, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v15}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$700(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)Lccsanandroid/util/SparseBooleanArray;

    move-result-object v15

    invoke-virtual {v15, v9}, Lccsanandroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 464
    goto :goto_5

    .line 467
    :cond_6
    iget-object v15, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v15}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$200(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v15

    if-ne v15, v3, :cond_7

    if-ne v13, v12, :cond_7

    iget-object v7, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$400(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader;

    move-result-object v7

    goto :goto_4

    .line 468
    :cond_7
    iget-object v15, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v15}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$500(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$Factory;

    move-result-object v15

    invoke-interface {v15, v13, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$Factory;->createPayloadReader(ILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader;

    move-result-object v7

    .line 469
    :goto_4
    iget-object v13, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v13}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$200(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v13

    if-ne v13, v3, :cond_8

    iget-object v13, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Lccsanandroid/util/SparseIntArray;

    .line 470
    invoke-virtual {v13, v9, v11}, Lccsanandroid/util/SparseIntArray;->get(II)I

    move-result v13

    if-ge v14, v13, :cond_9

    .line 471
    :cond_8
    iget-object v13, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Lccsanandroid/util/SparseIntArray;

    invoke-virtual {v13, v9, v14}, Lccsanandroid/util/SparseIntArray;->put(II)V

    .line 472
    iget-object v13, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->trackIdToReaderScratch:Lccsanandroid/util/SparseArray;

    invoke-virtual {v13, v9, v7}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 474
    :cond_9
    nop

    .line 449
    :goto_5
    const/4 v7, 0x5

    const/4 v9, 0x4

    goto/16 :goto_2

    .line 476
    :cond_a
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Lccsanandroid/util/SparseIntArray;

    invoke-virtual {v1}, Lccsanandroid/util/SparseIntArray;->size()I

    move-result v1

    .line 477
    const/4 v7, 0x0

    :goto_6
    if-ge v7, v1, :cond_d

    .line 478
    iget-object v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Lccsanandroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Lccsanandroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 479
    iget-object v9, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$700(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)Lccsanandroid/util/SparseBooleanArray;

    move-result-object v9

    invoke-virtual {v9, v8, v5}, Lccsanandroid/util/SparseBooleanArray;->put(IZ)V

    .line 480
    iget-object v9, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->trackIdToReaderScratch:Lccsanandroid/util/SparseArray;

    invoke-virtual {v9, v7}, Lccsanandroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader;

    .line 481
    if-eqz v9, :cond_c

    .line 482
    iget-object v10, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$400(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader;

    move-result-object v10

    if-eq v9, v10, :cond_b

    .line 483
    iget-object v10, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$600(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    move-result-object v10

    new-instance v12, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    invoke-direct {v12, v6, v8, v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(III)V

    invoke-interface {v9, v2, v10, v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader;->init(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 486
    :cond_b
    iget-object v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)Lccsanandroid/util/SparseArray;

    move-result-object v8

    iget-object v10, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Lccsanandroid/util/SparseIntArray;

    invoke-virtual {v10, v7}, Lccsanandroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    invoke-virtual {v8, v10, v9}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 477
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 490
    :cond_d
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$200(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v1

    if-ne v1, v3, :cond_e

    .line 491
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$800(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 492
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$600(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    move-result-object v1

    invoke-interface {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 493
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v1, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$102(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;I)I

    .line 494
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v1, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$802(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;Z)Z

    goto :goto_8

    .line 497
    :cond_e
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)Lccsanandroid/util/SparseArray;

    move-result-object v1

    iget v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pid:I

    invoke-virtual {v1, v2}, Lccsanandroid/util/SparseArray;->remove(I)V

    .line 498
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$200(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v2

    if-ne v2, v5, :cond_f

    goto :goto_7

    :cond_f
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    :goto_7
    invoke-static {v1, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$102(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;I)I

    .line 499
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v1

    if-nez v1, :cond_10

    .line 500
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$600(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    move-result-object v1

    invoke-interface {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 501
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v1, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$802(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;Z)Z

    .line 504
    :cond_10
    :goto_8
    return-void
.end method

.method public init(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0

    .line 403
    return-void
.end method
