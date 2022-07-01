.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/FlacReader;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/StreamReader;
.source "FlacReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;
    }
.end annotation


# static fields
.field private static final AUDIO_PACKET_TYPE:B = -0x1t

.field private static final FRAME_HEADER_SAMPLE_NUMBER_OFFSET:I = 0x4

.field private static final SEEKTABLE_PACKET_TYPE:B = 0x3t


# instance fields
.field private flacOggSeeker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;

.field private streamInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/FlacStreamInfo;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/StreamReader;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/FlacReader;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/FlacStreamInfo;
    .locals 0

    .line 34
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/FlacReader;->streamInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/FlacStreamInfo;

    return-object p0
.end method

.method private getFlacFrameBlockSize(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)I
    .locals 3

    .line 96
    iget-object v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x4

    shr-int/2addr v0, v2

    .line 97
    packed-switch v0, :pswitch_data_0

    .line 123
    const/4 p1, -0x1

    return p1

    .line 121
    :pswitch_0
    const/16 p1, 0x100

    add-int/lit8 v0, v0, -0x8

    shl-int/2addr p1, v0

    return p1

    .line 108
    :pswitch_1
    invoke-virtual {p1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 109
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUtf8EncodedLong()J

    .line 110
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 111
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    return v0

    .line 104
    :pswitch_2
    const/16 p1, 0x240

    sub-int/2addr v0, v1

    shl-int/2addr p1, v0

    return p1

    .line 99
    :pswitch_3
    const/16 p1, 0xc0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isAudioPacket([B)Z
    .locals 2

    .line 59
    const/4 v0, 0x0

    aget-byte p0, p0, v0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static verifyBitstreamType(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Z
    .locals 4

    .line 45
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    .line 46
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    const-wide/32 v2, 0x464c4143

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 45
    :goto_0
    return p0
.end method


# virtual methods
.method protected final preparePayload(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)J
    .locals 2

    .line 64
    iget-object v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/FlacReader;->isAudioPacket([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const-wide/16 v0, -0x1

    return-wide v0

    .line 67
    :cond_0
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/FlacReader;->getFlacFrameBlockSize(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)I

    move-result p1

    int-to-long v0, p1

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

    .line 73
    iget-object v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    .line 74
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/FlacReader;->streamInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/FlacStreamInfo;

    if-nez v1, :cond_0

    .line 75
    new-instance p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/FlacStreamInfo;

    const/16 p3, 0x11

    invoke-direct {p2, v0, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/FlacStreamInfo;-><init>([BI)V

    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/FlacReader;->streamInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/FlacStreamInfo;

    .line 76
    const/16 p2, 0x9

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result p1

    invoke-static {v0, p2, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 77
    const/4 p2, 0x4

    const/16 p3, -0x80

    aput-byte p3, p1, p2

    .line 78
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 79
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/FlacReader;->streamInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/FlacStreamInfo;

    .line 80
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/FlacStreamInfo;->bitRate()I

    move-result v4

    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/FlacReader;->streamInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/FlacStreamInfo;

    iget v5, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/FlacStreamInfo;->channels:I

    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/FlacReader;->streamInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/FlacStreamInfo;

    iget v6, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/FlacStreamInfo;->sampleRate:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 79
    const-string v1, "audio/flac"

    invoke-static/range {v0 .. v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object p1

    iput-object p1, p4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 82
    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    and-int/lit8 v2, v2, 0x7f

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 83
    new-instance p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;

    invoke-direct {p2, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/FlacReader;)V

    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/FlacReader;->flacOggSeeker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;

    .line 84
    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->parseSeekTable(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V

    goto :goto_0

    .line 85
    :cond_1
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/FlacReader;->isAudioPacket([B)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 86
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/FlacReader;->flacOggSeeker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;

    if-eqz p1, :cond_2

    .line 87
    invoke-virtual {p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->setFirstFrameOffset(J)V

    .line 88
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/FlacReader;->flacOggSeeker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;

    iput-object p1, p4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/StreamReader$SetupData;->oggSeeker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/OggSeeker;

    .line 90
    :cond_2
    return v1

    .line 92
    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected final reset(Z)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/StreamReader;->reset(Z)V

    .line 52
    if-eqz p1, :cond_0

    .line 53
    const/4 p1, 0x0

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/FlacReader;->streamInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/FlacStreamInfo;

    .line 54
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/FlacReader;->flacOggSeeker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;

    .line 56
    :cond_0
    return-void
.end method
