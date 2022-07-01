.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PmtReader;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PatReader;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$Mode;
    }
.end annotation


# static fields
.field private static final AC3_FORMAT_IDENTIFIER:J

.field private static final BUFFER_SIZE:I = 0x24b8

.field private static final E_AC3_FORMAT_IDENTIFIER:J

.field public static final FACTORY:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorsFactory;

.field private static final HEVC_FORMAT_IDENTIFIER:J

.field private static final MAX_PID_PLUS_ONE:I = 0x2000

.field public static final MODE_HLS:I = 0x2

.field public static final MODE_MULTI_PMT:I = 0x0

.field public static final MODE_SINGLE_PMT:I = 0x1

.field private static final SNIFF_TS_PACKET_COUNT:I = 0x5

.field private static final TS_PACKET_SIZE:I = 0xbc

.field private static final TS_PAT_PID:I = 0x0

.field public static final TS_STREAM_TYPE_AAC_ADTS:I = 0xf

.field public static final TS_STREAM_TYPE_AAC_LATM:I = 0x11

.field public static final TS_STREAM_TYPE_AC3:I = 0x81

.field public static final TS_STREAM_TYPE_DTS:I = 0x8a

.field public static final TS_STREAM_TYPE_DVBSUBS:I = 0x59

.field public static final TS_STREAM_TYPE_E_AC3:I = 0x87

.field public static final TS_STREAM_TYPE_H262:I = 0x2

.field public static final TS_STREAM_TYPE_H264:I = 0x1b

.field public static final TS_STREAM_TYPE_H265:I = 0x24

.field public static final TS_STREAM_TYPE_HDMV_DTS:I = 0x82

.field public static final TS_STREAM_TYPE_ID3:I = 0x15

.field public static final TS_STREAM_TYPE_MPA:I = 0x3

.field public static final TS_STREAM_TYPE_MPA_LSF:I = 0x4

.field public static final TS_STREAM_TYPE_SPLICE_INFO:I = 0x86

.field private static final TS_SYNC_BYTE:I = 0x47


# instance fields
.field private bytesSinceLastSync:I

.field private final continuityCounters:Lccsanandroid/util/SparseIntArray;

.field private id3Reader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader;

.field private final mode:I

.field private output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

.field private final payloadReaderFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$Factory;

.field private remainingPmts:I

.field private final timestampAdjusters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;",
            ">;"
        }
    .end annotation
.end field

.field private final trackIds:Lccsanandroid/util/SparseBooleanArray;

.field private tracksEnded:Z

.field private final tsPacketBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field private final tsPayloadReaders:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$1;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$1;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->FACTORY:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorsFactory;

    .line 106
    const-string v0, "AC-3"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->AC3_FORMAT_IDENTIFIER:J

    .line 107
    const-string v0, "EAC3"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->E_AC3_FORMAT_IDENTIFIER:J

    .line 108
    const-string v0, "HEVC"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->HEVC_FORMAT_IDENTIFIER:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;-><init>(I)V

    .line 130
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 137
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;-><init>(II)V

    .line 138
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 147
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;-><init>(J)V

    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;

    invoke-direct {v1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;-><init>(ILccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$Factory;)V

    .line 149
    return-void
.end method

.method public constructor <init>(ILccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$Factory;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    invoke-static {p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$Factory;

    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->payloadReaderFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$Factory;

    .line 161
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->mode:I

    .line 162
    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    .line 166
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 163
    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    .line 168
    :goto_1
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    const/16 p2, 0x24b8

    new-array p2, p2, [B

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 169
    new-instance p1, Lccsanandroid/util/SparseBooleanArray;

    invoke-direct {p1}, Lccsanandroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->trackIds:Lccsanandroid/util/SparseBooleanArray;

    .line 170
    new-instance p1, Lccsanandroid/util/SparseArray;

    invoke-direct {p1}, Lccsanandroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Lccsanandroid/util/SparseArray;

    .line 171
    new-instance p1, Lccsanandroid/util/SparseIntArray;

    invoke-direct {p1}, Lccsanandroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->continuityCounters:Lccsanandroid/util/SparseIntArray;

    .line 172
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->resetPayloadReaders()V

    .line 173
    return-void
.end method

.method static synthetic access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)Lccsanandroid/util/SparseArray;
    .locals 0

    .line 51
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Lccsanandroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)I
    .locals 0

    .line 51
    iget p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->remainingPmts:I

    return p0
.end method

.method static synthetic access$1000()J
    .locals 2

    .line 51
    sget-wide v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->E_AC3_FORMAT_IDENTIFIER:J

    return-wide v0
.end method

.method static synthetic access$102(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;I)I
    .locals 0

    .line 51
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->remainingPmts:I

    return p1
.end method

.method static synthetic access$108(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)I
    .locals 2

    .line 51
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->remainingPmts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->remainingPmts:I

    return v0
.end method

.method static synthetic access$1100()J
    .locals 2

    .line 51
    sget-wide v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->HEVC_FORMAT_IDENTIFIER:J

    return-wide v0
.end method

.method static synthetic access$200(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)I
    .locals 0

    .line 51
    iget p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->mode:I

    return p0
.end method

.method static synthetic access$300(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)Ljava/util/List;
    .locals 0

    .line 51
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader;
    .locals 0

    .line 51
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->id3Reader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader;

    return-object p0
.end method

.method static synthetic access$402(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader;
    .locals 0

    .line 51
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->id3Reader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader;

    return-object p1
.end method

.method static synthetic access$500(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$Factory;
    .locals 0

    .line 51
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->payloadReaderFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$Factory;

    return-object p0
.end method

.method static synthetic access$600(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;
    .locals 0

    .line 51
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    return-object p0
.end method

.method static synthetic access$700(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)Lccsanandroid/util/SparseBooleanArray;
    .locals 0

    .line 51
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->trackIds:Lccsanandroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic access$800(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->tracksEnded:Z

    return p0
.end method

.method static synthetic access$802(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->tracksEnded:Z

    return p1
.end method

.method static synthetic access$900()J
    .locals 2

    .line 51
    sget-wide v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->AC3_FORMAT_IDENTIFIER:J

    return-wide v0
.end method

.method private resetPayloadReaders()V
    .locals 7

    .line 314
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->trackIds:Lccsanandroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Lccsanandroid/util/SparseBooleanArray;->clear()V

    .line 315
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0}, Lccsanandroid/util/SparseArray;->clear()V

    .line 316
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->payloadReaderFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$Factory;

    .line 317
    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$Factory;->createInitialPayloadReaders()Lccsanandroid/util/SparseArray;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Lccsanandroid/util/SparseArray;->size()I

    move-result v1

    .line 319
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 320
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0, v3}, Lccsanandroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v0, v3}, Lccsanandroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 319
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 322
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Lccsanandroid/util/SparseArray;

    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SectionReader;

    new-instance v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PatReader;

    invoke-direct {v3, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor$PatReader;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;)V

    invoke-direct {v1, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SectionReader;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/SectionPayloadReader;)V

    invoke-virtual {v0, v2, v1}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->id3Reader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader;

    .line 324
    return-void
.end method


# virtual methods
.method public final init(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;)V
    .locals 3

    .line 197
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    .line 198
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->seekMap(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;)V

    .line 199
    return-void
.end method

.method public final read(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 222
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object p2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    .line 225
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    rsub-int v0, v0, 0x24b8

    const/16 v1, 0xbc

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 226
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 227
    if-lez v0, :cond_0

    .line 228
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    invoke-static {p2, v3, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    :cond_0
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3, p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 234
    :cond_1
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-ge v0, v1, :cond_3

    .line 235
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    .line 236
    rsub-int v3, v0, 0x24b8

    invoke-interface {p1, p2, v0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result v3

    .line 237
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 238
    return v4

    .line 240
    :cond_2
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    add-int/2addr v0, v3

    invoke-virtual {v4, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 241
    goto :goto_0

    .line 244
    :cond_3
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result p1

    .line 245
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 246
    move v1, v0

    .line 247
    :goto_1
    if-ge v1, p1, :cond_4

    aget-byte v3, p2, v1

    const/16 v4, 0x47

    if-eq v3, v4, :cond_4

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 250
    :cond_4
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 252
    add-int/lit16 p2, v1, 0xbc

    .line 253
    const/4 v3, 0x2

    if-le p2, p1, :cond_7

    .line 254
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    sub-int/2addr v1, v0

    add-int/2addr p1, v1

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    .line 255
    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->mode:I

    if-ne p2, v3, :cond_6

    const/16 p2, 0x178

    if-gt p1, p2, :cond_5

    goto :goto_2

    .line 256
    :cond_5
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string p2, "Cannot find sync byte. Most likely not a Transport Stream."

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 258
    :cond_6
    :goto_2
    return v2

    .line 260
    :cond_7
    iput v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    .line 262
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 263
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_8

    .line 265
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 266
    return v2

    .line 268
    :cond_8
    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    const/4 v4, 0x1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    .line 270
    :goto_3
    const v5, 0x1fff00

    and-int/2addr v5, v0

    shr-int/lit8 v5, v5, 0x8

    .line 272
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    goto :goto_4

    :cond_a
    const/4 v6, 0x0

    .line 273
    :goto_4
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_b

    const/4 v7, 0x1

    goto :goto_5

    :cond_b
    const/4 v7, 0x0

    .line 275
    :goto_5
    if-eqz v7, :cond_c

    iget-object v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Lccsanandroid/util/SparseArray;

    invoke-virtual {v7, v5}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader;

    goto :goto_6

    :cond_c
    const/4 v7, 0x0

    .line 276
    :goto_6
    if-nez v7, :cond_d

    .line 277
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 278
    return v2

    .line 282
    :cond_d
    iget v8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->mode:I

    if-eq v8, v3, :cond_f

    .line 283
    and-int/lit8 v0, v0, 0xf

    .line 284
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->continuityCounters:Lccsanandroid/util/SparseIntArray;

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v3, v5, v8}, Lccsanandroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 285
    iget-object v8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->continuityCounters:Lccsanandroid/util/SparseIntArray;

    invoke-virtual {v8, v5, v0}, Lccsanandroid/util/SparseIntArray;->put(II)V

    .line 286
    if-ne v3, v0, :cond_e

    .line 288
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 289
    return v2

    .line 290
    :cond_e
    add-int/2addr v3, v4

    and-int/lit8 v3, v3, 0xf

    if-eq v0, v3, :cond_f

    .line 292
    invoke-interface {v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader;->seek()V

    .line 297
    :cond_f
    if-eqz v6, :cond_10

    .line 298
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 299
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 303
    :cond_10
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 304
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-interface {v7, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader;->consume(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Z)V

    .line 305
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 307
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 308
    return v2
.end method

.method public final release()V
    .locals 0

    .line 217
    return-void
.end method

.method public final seek(JJ)V
    .locals 0

    .line 203
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 204
    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    .line 205
    iget-object p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;->reset()V

    .line 204
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 207
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->reset()V

    .line 208
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->continuityCounters:Lccsanandroid/util/SparseIntArray;

    invoke-virtual {p1}, Lccsanandroid/util/SparseIntArray;->clear()V

    .line 210
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->resetPayloadReaders()V

    .line 211
    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    .line 212
    return-void
.end method

.method public final sniff(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    .line 180
    const/4 v1, 0x0

    const/16 v2, 0x3ac

    invoke-interface {p1, v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 181
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xbc

    if-ge v2, v3, :cond_2

    .line 182
    const/4 v3, 0x0

    .line 183
    :goto_1
    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 184
    invoke-interface {p1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 185
    const/4 p1, 0x1

    return p1

    .line 187
    :cond_0
    mul-int/lit16 v4, v3, 0xbc

    add-int/2addr v4, v2

    aget-byte v4, v0, v4

    const/16 v5, 0x47

    if-eq v4, v5, :cond_1

    .line 188
    nop

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 192
    :cond_2
    return v1
.end method
