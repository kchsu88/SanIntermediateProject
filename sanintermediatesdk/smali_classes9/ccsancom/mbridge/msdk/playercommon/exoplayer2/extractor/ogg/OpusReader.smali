.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OpusReader;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/StreamReader;
.source "OpusReader.java"


# static fields
.field private static final DEFAULT_SEEK_PRE_ROLL_SAMPLES:I = 0xf00

.field private static final OPUS_CODE:I

.field private static final OPUS_SIGNATURE:[B

.field private static final SAMPLE_RATE:I = 0xbb80


# instance fields
.field private headerRead:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-string v0, "Opus"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OpusReader;->OPUS_CODE:I

    .line 43
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OpusReader;->OPUS_SIGNATURE:[B

    return-void

    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/StreamReader;-><init>()V

    return-void
.end method

.method private getPacketDurationUs([B)J
    .locals 6

    .line 107
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 109
    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 118
    aget-byte p1, p1, v2

    and-int/lit8 p1, p1, 0x3f

    goto :goto_0

    .line 115
    :pswitch_0
    const/4 p1, 0x2

    .line 116
    goto :goto_0

    .line 111
    :pswitch_1
    nop

    .line 112
    const/4 p1, 0x1

    .line 122
    :goto_0
    const/4 v1, 0x3

    shr-int/2addr v0, v1

    .line 123
    and-int/lit8 v3, v0, 0x3

    .line 124
    const/16 v4, 0x10

    if-lt v0, v4, :cond_0

    .line 125
    const/16 v0, 0x9c4

    shl-int/2addr v0, v3

    goto :goto_1

    .line 126
    :cond_0
    const/16 v4, 0xc

    const/16 v5, 0x2710

    if-lt v0, v4, :cond_1

    .line 127
    and-int/lit8 v0, v3, 0x1

    shl-int v0, v5, v0

    goto :goto_1

    .line 128
    :cond_1
    if-ne v3, v1, :cond_2

    .line 129
    const v0, 0xea60

    goto :goto_1

    .line 131
    :cond_2
    shl-int v0, v5, v3

    .line 133
    :goto_1
    int-to-long v1, p1

    int-to-long v3, v0

    mul-long v1, v1, v3

    return-wide v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private putNativeOrderLong(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;I)V"
        }
    .end annotation

    .line 95
    int-to-long v0, p2

    const-wide/32 v2, 0x3b9aca00

    mul-long v0, v0, v2

    const-wide/32 v2, 0xbb80

    div-long/2addr v0, v2

    .line 96
    const/16 p2, 0x8

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    .line 97
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public static verifyBitstreamType(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Z
    .locals 4

    .line 48
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    sget-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OpusReader;->OPUS_SIGNATURE:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    .line 49
    return v3

    .line 51
    :cond_0
    array-length v0, v1

    new-array v0, v0, [B

    .line 52
    array-length v2, v1

    invoke-virtual {p0, v0, v3, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 53
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected final preparePayload(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)J
    .locals 2

    .line 66
    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OpusReader;->getPacketDurationUs([B)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OpusReader;->convertTimeToGranule(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final readHeaders(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;JLccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/StreamReader$SetupData;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 72
    iget-boolean p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OpusReader;->headerRead:Z

    const/4 p3, 0x1

    if-nez p2, :cond_0

    .line 73
    iget-object p2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result p1

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    .line 74
    const/16 p2, 0x9

    aget-byte p2, p1, p2

    and-int/lit16 v5, p2, 0xff

    .line 75
    const/16 p2, 0xb

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    const/16 v0, 0xa

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p2, v0

    .line 77
    new-instance v7, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-direct {p0, v7, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OpusReader;->putNativeOrderLong(Ljava/util/List;I)V

    .line 80
    const/16 p1, 0xf00

    invoke-direct {p0, v7, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OpusReader;->putNativeOrderLong(Ljava/util/List;I)V

    .line 82
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const v6, 0xbb80

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v1, "audio/opus"

    invoke-static/range {v0 .. v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object p1

    iput-object p1, p4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 85
    iput-boolean p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OpusReader;->headerRead:Z

    .line 86
    nop

    .line 91
    return p3

    .line 87
    :cond_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p2

    sget p4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OpusReader;->OPUS_CODE:I

    const/4 v0, 0x0

    if-ne p2, p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 88
    :goto_0
    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 89
    return p3
.end method

.method protected final reset(Z)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/StreamReader;->reset(Z)V

    .line 59
    if-eqz p1, :cond_0

    .line 60
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OpusReader;->headerRead:Z

    .line 62
    :cond_0
    return-void
.end method
