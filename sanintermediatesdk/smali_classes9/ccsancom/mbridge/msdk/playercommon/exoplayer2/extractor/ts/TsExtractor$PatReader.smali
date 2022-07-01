.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PatReader;
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
    name = "PatReader"
.end annotation


# instance fields
.field private final patScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)V
    .locals 1

    .line 333
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 335
    return-void
.end method


# virtual methods
.method public consume(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V
    .locals 9

    .line 345
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 346
    if-eqz v0, :cond_0

    .line 348
    return-void

    .line 353
    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 355
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    .line 356
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 357
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1, v4, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;I)V

    .line 358
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 359
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 360
    const/16 v5, 0xd

    if-nez v4, :cond_1

    .line 361
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1

    .line 363
    :cond_1
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 364
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)Lccsanandroid/util/SparseArray;

    move-result-object v5

    new-instance v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SectionReader;

    new-instance v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;

    iget-object v8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-direct {v7, v8, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;I)V

    invoke-direct {v6, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SectionReader;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SectionPayloadReader;)V

    invoke-virtual {v5, v4, v6}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 365
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$108(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)I

    .line 356
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 368
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$200(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    .line 369
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)Lccsanandroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v2}, Lccsanandroid/util/SparseArray;->remove(I)V

    .line 371
    :cond_3
    return-void
.end method

.method public init(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0

    .line 341
    return-void
.end method
