.class public final Lccsancom/google/android/exoplayer2/audio/Ac4Util;
.super Ljava/lang/Object;
.source "Ac4Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;
    }
.end annotation


# static fields
.field public static final AC40_SYNCWORD:I = 0xac40

.field public static final AC41_SYNCWORD:I = 0xac41

.field private static final CHANNEL_COUNT_2:I = 0x2

.field public static final HEADER_SIZE_FOR_PARSER:I = 0x10

.field public static final MAX_RATE_BYTES_PER_SECOND:I = 0x52080

.field private static final SAMPLE_COUNT:[I

.field public static final SAMPLE_HEADER_SIZE:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/google/android/exoplayer2/audio/Ac4Util;->SAMPLE_COUNT:[I

    return-void

    :array_0
    .array-data 4
        0x7d2
        0x7d0
        0x780
        0x641
        0x640
        0x3e9
        0x3e8
        0x3c0
        0x320
        0x320
        0x1e0
        0x190
        0x190
        0x800
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAc4SampleHeader(ILccsancom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 3
    .param p0, "size"    # I
    .param p1, "buffer"    # Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    .line 225
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 226
    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 227
    .local v0, "data":[B
    const/4 v1, 0x0

    const/16 v2, -0x54

    aput-byte v2, v0, v1

    .line 228
    const/4 v1, 0x1

    const/16 v2, 0x40

    aput-byte v2, v0, v1

    .line 229
    const/4 v1, 0x2

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 230
    const/4 v1, 0x3

    aput-byte v2, v0, v1

    .line 231
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    .line 232
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    .line 233
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    .line 234
    return-void
.end method

.method public static parseAc4AnnexEFormat(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lccsancom/google/android/exoplayer2/drm/DrmInitData;)Lccsancom/google/android/exoplayer2/Format;
    .locals 3
    .param p0, "data"    # Lccsancom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "drmInitData"    # Lccsancom/google/android/exoplayer2/drm/DrmInitData;

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 109
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    shr-int/lit8 v1, v1, 0x5

    if-ne v1, v0, :cond_0

    const v0, 0xbb80

    goto :goto_0

    :cond_0
    const v0, 0xac44

    .line 110
    .local v0, "sampleRate":I
    :goto_0
    new-instance v1, Lccsancom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v1}, Lccsancom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 111
    invoke-virtual {v1, p1}, Lccsancom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lccsancom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 112
    const-string v2, "audio/ac4"

    invoke-virtual {v1, v2}, Lccsancom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lccsancom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    const/4 v2, 0x2

    .line 113
    invoke-virtual {v1, v2}, Lccsancom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lccsancom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 114
    invoke-virtual {v1, v0}, Lccsancom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lccsancom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 115
    invoke-virtual {v1, p3}, Lccsancom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lccsancom/google/android/exoplayer2/drm/DrmInitData;)Lccsancom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 116
    invoke-virtual {v1, p2}, Lccsancom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lccsancom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/Format$Builder;->build()Lccsancom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 110
    return-object v1
.end method

.method public static parseAc4SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 215
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 216
    .local v0, "bufferBytes":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 217
    .local v1, "position":I
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 218
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 219
    new-instance v2, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v2, v0}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/audio/Ac4Util;->parseAc4SyncframeInfo(Lccsancom/google/android/exoplayer2/util/ParsableBitArray;)Lccsancom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;

    move-result-object v2

    iget v2, v2, Lccsancom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;->sampleCount:I

    return v2
.end method

.method public static parseAc4SyncframeInfo(Lccsancom/google/android/exoplayer2/util/ParsableBitArray;)Lccsancom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;
    .locals 17
    .param p0, "data"    # Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    .line 128
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 129
    .local v1, "headerSize":I
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 130
    .local v3, "syncWord":I
    const/4 v4, 0x2

    add-int/2addr v1, v4

    .line 131
    invoke-virtual {v0, v2}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 132
    .local v2, "frameSize":I
    add-int/2addr v1, v4

    .line 133
    const v5, 0xffff

    if-ne v2, v5, :cond_0

    .line 134
    const/16 v5, 0x18

    invoke-virtual {v0, v5}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 135
    add-int/lit8 v1, v1, 0x3

    .line 137
    :cond_0
    add-int/2addr v2, v1

    .line 138
    const v5, 0xac41

    if-ne v3, v5, :cond_1

    .line 139
    add-int/lit8 v2, v2, 0x2

    .line 141
    :cond_1
    invoke-virtual {v0, v4}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 142
    .local v5, "bitstreamVersion":I
    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 143
    invoke-static {v0, v4}, Lccsancom/google/android/exoplayer2/audio/Ac4Util;->readVariableBits(Lccsancom/google/android/exoplayer2/util/ParsableBitArray;I)I

    move-result v7

    add-int/2addr v5, v7

    move v12, v5

    goto :goto_0

    .line 142
    :cond_2
    move v12, v5

    .line 145
    .end local v5    # "bitstreamVersion":I
    .local v12, "bitstreamVersion":I
    :goto_0
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 146
    .local v13, "sequenceCounter":I
    invoke-virtual/range {p0 .. p0}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 147
    invoke-virtual {v0, v6}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    if-lez v5, :cond_3

    .line 148
    invoke-virtual {v0, v4}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 151
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    const v5, 0xbb80

    const v7, 0xac44

    if-eqz v4, :cond_4

    const v4, 0xbb80

    goto :goto_1

    :cond_4
    const v4, 0xac44

    .line 152
    .local v4, "sampleRate":I
    :goto_1
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v14

    .line 153
    .local v14, "frameRateIndex":I
    const/4 v8, 0x0

    .line 154
    .local v8, "sampleCount":I
    if-ne v4, v7, :cond_5

    const/16 v7, 0xd

    if-ne v14, v7, :cond_5

    .line 155
    sget-object v5, Lccsancom/google/android/exoplayer2/audio/Ac4Util;->SAMPLE_COUNT:[I

    aget v8, v5, v14

    move v15, v8

    goto :goto_3

    .line 156
    :cond_5
    if-ne v4, v5, :cond_9

    sget-object v5, Lccsancom/google/android/exoplayer2/audio/Ac4Util;->SAMPLE_COUNT:[I

    array-length v7, v5

    if-ge v14, v7, :cond_9

    .line 157
    aget v8, v5, v14

    .line 158
    rem-int/lit8 v5, v13, 0x5

    const/16 v7, 0xb

    const/16 v9, 0x8

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    .line 171
    :pswitch_0
    if-eq v14, v6, :cond_6

    if-eq v14, v9, :cond_6

    if-ne v14, v7, :cond_9

    .line 172
    :cond_6
    add-int/lit8 v8, v8, 0x1

    move v15, v8

    goto :goto_3

    .line 166
    :pswitch_1
    if-eq v14, v9, :cond_7

    if-ne v14, v7, :cond_9

    .line 167
    :cond_7
    add-int/lit8 v8, v8, 0x1

    move v15, v8

    goto :goto_3

    .line 161
    :pswitch_2
    if-eq v14, v6, :cond_8

    if-ne v14, v9, :cond_9

    .line 162
    :cond_8
    add-int/lit8 v8, v8, 0x1

    move v15, v8

    goto :goto_3

    .line 179
    :cond_9
    :goto_2
    move v15, v8

    .end local v8    # "sampleCount":I
    .local v15, "sampleCount":I
    :goto_3
    new-instance v16, Lccsancom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;

    const/4 v7, 0x2

    const/4 v11, 0x0

    move-object/from16 v5, v16

    move v6, v12

    move v8, v4

    move v9, v2

    move v10, v15

    invoke-direct/range {v5 .. v11}, Lccsancom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;-><init>(IIIIILccsancom/google/android/exoplayer2/audio/Ac4Util$1;)V

    return-object v16

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static parseAc4SyncframeSize([BI)I
    .locals 4
    .param p0, "data"    # [B
    .param p1, "syncword"    # I

    .line 190
    array-length v0, p0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 191
    const/4 v0, -0x1

    return v0

    .line 193
    :cond_0
    const/4 v0, 0x2

    .line 194
    .local v0, "headerSize":I
    const/4 v1, 0x2

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 195
    .local v2, "frameSize":I
    add-int/2addr v0, v1

    .line 196
    const v1, 0xffff

    if-ne v2, v1, :cond_1

    .line 197
    const/4 v1, 0x4

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    const/4 v3, 0x5

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    const/4 v3, 0x6

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int v2, v1, v3

    .line 198
    add-int/lit8 v0, v0, 0x3

    .line 200
    :cond_1
    const v1, 0xac41

    if-ne p1, v1, :cond_2

    .line 201
    add-int/lit8 v0, v0, 0x2

    .line 203
    :cond_2
    add-int/2addr v2, v0

    .line 204
    return v2
.end method

.method private static readVariableBits(Lccsancom/google/android/exoplayer2/util/ParsableBitArray;I)I
    .locals 2
    .param p0, "data"    # Lccsancom/google/android/exoplayer2/util/ParsableBitArray;
    .param p1, "bitsPerRead"    # I

    .line 237
    const/4 v0, 0x0

    .line 239
    .local v0, "value":I
    :goto_0
    invoke-virtual {p0, p1}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 240
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    nop

    .line 246
    return v0

    .line 243
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 244
    shl-int/2addr v0, p1

    goto :goto_0
.end method
