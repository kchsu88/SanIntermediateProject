.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;
.super Ljava/lang/Object;
.source "SpliceInfoDecoder.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataDecoder;


# static fields
.field private static final TYPE_PRIVATE_COMMAND:I = 0xff

.field private static final TYPE_SPLICE_INSERT:I = 0x5

.field private static final TYPE_SPLICE_NULL:I = 0x0

.field private static final TYPE_SPLICE_SCHEDULE:I = 0x4

.field private static final TYPE_TIME_SIGNAL:I = 0x6


# instance fields
.field private final sectionData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field private final sectionHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

.field private timestampAdjuster:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 45
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 46
    return-void
.end method


# virtual methods
.method public final decode(Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataInputBuffer;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataDecoderException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;

    .line 52
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 53
    :cond_0
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;

    iget-wide v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataInputBuffer;->timeUs:J

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;-><init>(J)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;

    .line 54
    iget-wide v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataInputBuffer;->timeUs:J

    iget-wide v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    .line 57
    :cond_1
    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 58
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 59
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    .line 60
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 61
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->reset([BI)V

    .line 64
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/16 v0, 0x27

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 65
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p1

    int-to-long v1, p1

    .line 66
    const/16 p1, 0x20

    shl-long/2addr v1, p1

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p1

    int-to-long v3, p1

    or-long/2addr v1, v3

    .line 68
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/16 v3, 0x14

    invoke-virtual {p1, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 69
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/16 v3, 0xc

    invoke-virtual {p1, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p1

    .line 70
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 71
    const/4 v4, 0x0

    .line 73
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 74
    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 89
    :sswitch_0
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-static {v3, p1, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand;->parseFromSection(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;IJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand;

    move-result-object v4

    .line 90
    goto :goto_0

    .line 86
    :sswitch_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;

    invoke-static {p1, v1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/TimeSignalCommand;->parseFromSection(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;JLccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/TimeSignalCommand;

    move-result-object v4

    .line 87
    goto :goto_0

    .line 82
    :sswitch_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;

    invoke-static {p1, v1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInsertCommand;->parseFromSection(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;JLccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInsertCommand;

    move-result-object v4

    .line 84
    goto :goto_0

    .line 79
    :sswitch_3
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceScheduleCommand;->parseFromSection(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceScheduleCommand;

    move-result-object v4

    .line 80
    goto :goto_0

    .line 76
    :sswitch_4
    new-instance v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceNullCommand;

    invoke-direct {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceNullCommand;-><init>()V

    .line 77
    nop

    .line 95
    :goto_0
    const/4 p1, 0x0

    if-nez v4, :cond_2

    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    new-array p1, p1, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata$Entry;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;-><init>([Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata$Entry;)V

    goto :goto_1

    :cond_2
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    new-array v0, v0, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata$Entry;

    aput-object v4, v0, p1

    invoke-direct {v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;-><init>([Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata$Entry;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x4 -> :sswitch_3
        0x5 -> :sswitch_2
        0x6 -> :sswitch_1
        0xff -> :sswitch_0
    .end sparse-switch
.end method
