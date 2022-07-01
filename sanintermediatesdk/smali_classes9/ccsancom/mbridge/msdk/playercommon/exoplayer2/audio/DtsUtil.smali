.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DtsUtil;
.super Ljava/lang/Object;
.source "DtsUtil.java"


# static fields
.field private static final CHANNELS_BY_AMODE:[I

.field private static final FIRST_BYTE_14B_BE:B = 0x1ft

.field private static final FIRST_BYTE_14B_LE:B = -0x1t

.field private static final FIRST_BYTE_BE:B = 0x7ft

.field private static final FIRST_BYTE_LE:B = -0x2t

.field private static final SAMPLE_RATE_BY_SFREQ:[I

.field private static final SYNC_VALUE_14B_BE:I = 0x1fffe800

.field private static final SYNC_VALUE_14B_LE:I = -0xe0ff18

.field private static final SYNC_VALUE_BE:I = 0x7ffe8001

.field private static final SYNC_VALUE_LE:I = -0x180fe80

.field private static final TWICE_BITRATE_KBPS_BY_RATE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DtsUtil;->CHANNELS_BY_AMODE:[I

    .line 48
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DtsUtil;->SAMPLE_RATE_BY_SFREQ:[I

    .line 54
    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DtsUtil;->TWICE_BITRATE_KBPS_BY_RATE:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x6
        0x6
        0x6
        0x7
        0x8
        0x8
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x1f40
        0x3e80
        0x7d00
        -0x1
        -0x1
        0x2b11
        0x5622
        0xac44
        -0x1
        -0x1
        0x2ee0
        0x5dc0
        0xbb80
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x40
        0x70
        0x80
        0xc0
        0xe0
        0x100
        0x180
        0x1c0
        0x200
        0x280
        0x300
        0x380
        0x400
        0x480
        0x500
        0x600
        0x780
        0x800
        0x900
        0xa00
        0xa80
        0xb00
        0xb07
        0xb80
        0xc00
        0xf00
        0x1000
        0x1800
        0x1e00
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDtsFrameSize([B)I
    .locals 6

    .line 160
    nop

    .line 161
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/4 v2, 0x6

    const/4 v3, 0x7

    const/4 v4, 0x1

    const/4 v5, 0x4

    sparse-switch v1, :sswitch_data_0

    .line 175
    const/4 v1, 0x5

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0xc

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v5

    or-int/2addr v1, v2

    aget-byte p0, p0, v3

    and-int/lit16 p0, p0, 0xf0

    shr-int/2addr p0, v5

    or-int/2addr p0, v1

    add-int/2addr p0, v4

    goto :goto_0

    .line 163
    :sswitch_0
    aget-byte v0, p0, v2

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0xc

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v5

    or-int/2addr v0, v1

    const/16 v1, 0x8

    aget-byte p0, p0, v1

    and-int/lit8 p0, p0, 0x3c

    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    add-int/2addr p0, v4

    .line 164
    nop

    .line 165
    const/4 v0, 0x1

    goto :goto_0

    .line 170
    :sswitch_1
    aget-byte v0, p0, v3

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0xc

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v5

    or-int/2addr v0, v1

    const/16 v1, 0x9

    aget-byte p0, p0, v1

    and-int/lit8 p0, p0, 0x3c

    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    add-int/2addr p0, v4

    .line 171
    nop

    .line 172
    const/4 v0, 0x1

    goto :goto_0

    .line 167
    :sswitch_2
    aget-byte v1, p0, v5

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0xc

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v5

    or-int/2addr v1, v3

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xf0

    shr-int/2addr p0, v5

    or-int/2addr p0, v1

    add-int/2addr p0, v4

    .line 168
    nop

    .line 179
    :goto_0
    if-eqz v0, :cond_0

    mul-int/lit8 p0, p0, 0x10

    div-int/lit8 p0, p0, 0xe

    :cond_0
    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method private static getNormalizedFrameHeader([B)Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;
    .locals 5

    .line 183
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_0

    .line 185
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;-><init>([B)V

    return-object v0

    .line 188
    :cond_0
    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 189
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DtsUtil;->isLittleEndianFrameHeader([B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 192
    aget-byte v2, p0, v1

    .line 193
    add-int/lit8 v3, v1, 0x1

    aget-byte v4, p0, v3

    aput-byte v4, p0, v1

    .line 194
    aput-byte v2, p0, v3

    .line 191
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 197
    :cond_1
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;-><init>([B)V

    .line 198
    aget-byte v0, p0, v0

    const/16 v2, 0x1f

    if-ne v0, v2, :cond_2

    .line 200
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;-><init>([B)V

    .line 201
    :goto_1
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    .line 202
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 203
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->putInt(II)V

    goto :goto_1

    .line 206
    :cond_2
    invoke-virtual {v1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->reset([B)V

    .line 207
    return-object v1
.end method

.method private static isLittleEndianFrameHeader([B)Z
    .locals 3

    .line 211
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    aget-byte p0, p0, v0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isSyncWord(I)Z
    .locals 1

    .line 66
    const v0, 0x7ffe8001

    if-eq p0, v0, :cond_1

    const v0, -0x180fe80

    if-eq p0, v0, :cond_1

    const v0, 0x1fffe800

    if-eq p0, v0, :cond_1

    const v0, -0xe0ff18

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static parseDtsAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 2

    .line 133
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 135
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 147
    add-int/lit8 v1, v0, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xfc

    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v1

    goto :goto_0

    .line 143
    :sswitch_0
    add-int/lit8 v1, v0, 0x5

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit8 p0, p0, 0x3c

    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v1

    .line 144
    goto :goto_0

    .line 140
    :sswitch_1
    add-int/lit8 v1, v0, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit8 p0, p0, 0x3c

    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v1

    .line 141
    goto :goto_0

    .line 137
    :sswitch_2
    add-int/lit8 v1, v0, 0x5

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xfc

    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v1

    .line 138
    nop

    .line 149
    :goto_0
    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0x20

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method public static parseDtsAudioSampleCount([B)I
    .locals 5

    .line 107
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    sparse-switch v0, :sswitch_data_0

    .line 119
    aget-byte v0, p0, v4

    and-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, v2

    aget-byte p0, p0, v3

    and-int/lit16 p0, p0, 0xfc

    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    goto :goto_0

    .line 115
    :sswitch_0
    aget-byte v0, p0, v3

    and-int/2addr v0, v1

    shl-int/2addr v0, v4

    aget-byte p0, p0, v2

    and-int/lit8 p0, p0, 0x3c

    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    .line 116
    goto :goto_0

    .line 112
    :sswitch_1
    aget-byte v0, p0, v4

    and-int/2addr v0, v1

    shl-int/2addr v0, v4

    aget-byte p0, p0, v1

    and-int/lit8 p0, p0, 0x3c

    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    .line 113
    goto :goto_0

    .line 109
    :sswitch_2
    aget-byte v0, p0, v3

    and-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, v2

    aget-byte p0, p0, v4

    and-int/lit16 p0, p0, 0xfc

    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    .line 110
    nop

    .line 121
    :goto_0
    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0x20

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method public static parseDtsFormat([BLjava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 15

    .line 84
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DtsUtil;->getNormalizedFrameHeader([B)Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    move-result-object v0

    .line 85
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 86
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 87
    sget-object v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DtsUtil;->CHANNELS_BY_AMODE:[I

    aget v1, v2, v1

    .line 88
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 89
    sget-object v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DtsUtil;->SAMPLE_RATE_BY_SFREQ:[I

    aget v10, v3, v2

    .line 90
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 91
    sget-object v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DtsUtil;->TWICE_BITRATE_KBPS_BY_RATE:[I

    array-length v4, v3

    const/4 v5, 0x2

    if-lt v2, v4, :cond_0

    const/4 v2, -0x1

    const/4 v7, -0x1

    goto :goto_0

    .line 92
    :cond_0
    aget v2, v3, v2

    mul-int/lit16 v2, v2, 0x3e8

    div-int/2addr v2, v5

    move v7, v2

    .line 93
    :goto_0
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 94
    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    add-int v9, v1, v0

    .line 95
    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-string v5, "audio/vnd.dts"

    move-object/from16 v4, p1

    move-object/from16 v12, p3

    move-object/from16 v14, p2

    invoke-static/range {v4 .. v14}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method
