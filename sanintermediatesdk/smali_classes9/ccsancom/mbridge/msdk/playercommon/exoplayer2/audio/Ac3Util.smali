.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util$SyncFrameInfo;
    }
.end annotation


# static fields
.field private static final AC3_SYNCFRAME_AUDIO_SAMPLE_COUNT:I = 0x600

.field private static final AUDIO_SAMPLES_PER_AUDIO_BLOCK:I = 0x100

.field private static final BITRATE_BY_HALF_FRMSIZECOD:[I

.field private static final BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

.field private static final CHANNEL_COUNT_BY_ACMOD:[I

.field private static final SAMPLE_RATE_BY_FSCOD:[I

.field private static final SAMPLE_RATE_BY_FSCOD2:[I

.field private static final SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

.field public static final TRUEHD_RECHUNK_SAMPLE_COUNT:I = 0x10

.field public static final TRUEHD_SYNCFRAME_PREFIX_LENGTH:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 115
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    .line 119
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    .line 123
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    .line 127
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    .line 131
    const/16 v0, 0x13

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    .line 136
    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x6
    .end array-data

    :array_1
    .array-data 4
        0xbb80
        0xac44
        0x7d00
    .end array-data

    :array_2
    .array-data 4
        0x5dc0
        0x5622
        0x3e80
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    :array_4
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    :array_5
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findTrueHdSyncframeOffset(Ljava/nio/ByteBuffer;)I
    .locals 5

    .line 475
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 476
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    .line 477
    move v2, v0

    :goto_0
    if-gt v2, v1, :cond_1

    .line 479
    add-int/lit8 v3, v2, 0x4

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    const v4, -0x1000001

    and-int/2addr v3, v4

    const v4, -0x45908d08

    if-ne v3, v4, :cond_0

    .line 480
    sub-int/2addr v2, v0

    return v2

    .line 477
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 483
    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getAc3SyncframeAudioSampleCount()I
    .locals 1

    .line 449
    const/16 v0, 0x600

    return v0
.end method

.method private static getAc3SyncframeSize(II)I
    .locals 4

    .line 523
    div-int/lit8 v0, p1, 0x2

    .line 524
    if-ltz p0, :cond_3

    sget-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    array-length v2, v1

    if-ge p0, v2, :cond_3

    if-ltz p1, :cond_3

    sget-object v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    array-length v3, v2

    if-lt v0, v3, :cond_0

    goto :goto_0

    .line 529
    :cond_0
    aget p0, v1, p0

    .line 530
    const v1, 0xac44

    if-ne p0, v1, :cond_1

    .line 531
    aget p0, v2, v0

    rem-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x2

    return p0

    .line 533
    :cond_1
    sget-object p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    aget p1, p1, v0

    .line 534
    const/16 v0, 0x7d00

    if-ne p0, v0, :cond_2

    .line 535
    mul-int/lit8 p1, p1, 0x6

    return p1

    .line 537
    :cond_2
    mul-int/lit8 p1, p1, 0x4

    return p1

    .line 527
    :cond_3
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static parseAc3AnnexFFormat(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 13

    .line 151
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 152
    sget-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v8, v1, v0

    .line 153
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 154
    sget-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v2, v0, 0x38

    shr-int/lit8 v2, v2, 0x3

    aget v1, v1, v2

    .line 155
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 156
    add-int/lit8 v1, v1, 0x1

    move v7, v1

    goto :goto_0

    .line 155
    :cond_0
    move v7, v1

    .line 158
    :goto_0
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v3, "audio/ac3"

    move-object v2, p1

    move-object/from16 v10, p3

    move-object v12, p2

    invoke-static/range {v2 .. v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static parseAc3SyncframeInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util$SyncFrameInfo;
    .locals 18

    .line 215
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v1

    .line 216
    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 217
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/16 v5, 0x10

    const/4 v6, 0x1

    if-ne v3, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 218
    :goto_0
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 220
    nop

    .line 227
    const/4 v1, -0x1

    const/16 v7, 0x8

    const/4 v8, 0x3

    const/4 v9, 0x6

    const/4 v10, 0x2

    if-eqz v3, :cond_28

    .line 229
    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 230
    invoke-virtual {v0, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 241
    goto :goto_1

    .line 238
    :pswitch_0
    nop

    .line 239
    const/4 v1, 0x2

    goto :goto_1

    .line 235
    :pswitch_1
    nop

    .line 236
    const/4 v1, 0x1

    goto :goto_1

    .line 232
    :pswitch_2
    nop

    .line 233
    const/4 v1, 0x0

    .line 244
    :goto_1
    invoke-virtual {v0, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 245
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    add-int/2addr v3, v6

    mul-int/lit8 v3, v3, 0x2

    .line 246
    invoke-virtual {v0, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 249
    if-ne v11, v8, :cond_1

    .line 250
    nop

    .line 251
    sget-object v12, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    invoke-virtual {v0, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    aget v12, v12, v13

    .line 252
    move v14, v12

    const/4 v12, 0x3

    const/4 v13, 0x6

    goto :goto_2

    .line 254
    :cond_1
    invoke-virtual {v0, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 255
    sget-object v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    aget v13, v13, v12

    .line 256
    sget-object v14, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v14, v14, v11

    .line 258
    :goto_2
    mul-int/lit16 v15, v13, 0x100

    .line 259
    invoke-virtual {v0, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 260
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v16

    .line 261
    sget-object v17, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v17, v17, v4

    add-int v17, v17, v16

    .line 262
    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 263
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 264
    invoke-virtual {v0, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 266
    :cond_2
    if-nez v4, :cond_3

    .line 267
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 268
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 269
    invoke-virtual {v0, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 272
    :cond_3
    if-ne v1, v6, :cond_4

    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 273
    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 275
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    const/4 v8, 0x4

    if-eqz v5, :cond_1d

    .line 276
    if-le v4, v10, :cond_5

    .line 277
    invoke-virtual {v0, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 279
    :cond_5
    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_6

    if-le v4, v10, :cond_6

    .line 280
    invoke-virtual {v0, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 282
    :cond_6
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_7

    .line 283
    invoke-virtual {v0, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 285
    :cond_7
    if-eqz v16, :cond_8

    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 286
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 288
    :cond_8
    if-nez v1, :cond_1d

    .line 289
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 290
    invoke-virtual {v0, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 292
    :cond_9
    if-nez v4, :cond_a

    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 293
    invoke-virtual {v0, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 295
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 296
    invoke-virtual {v0, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 298
    :cond_b
    invoke-virtual {v0, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 299
    if-ne v5, v6, :cond_c

    .line 300
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_3

    .line 301
    :cond_c
    if-ne v5, v10, :cond_d

    .line 302
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_3

    .line 303
    :cond_d
    const/4 v6, 0x3

    if-ne v5, v6, :cond_18

    .line 304
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 305
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 306
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 307
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 308
    invoke-virtual {v0, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 310
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 311
    invoke-virtual {v0, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 313
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 314
    invoke-virtual {v0, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 316
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 317
    invoke-virtual {v0, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 319
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 320
    invoke-virtual {v0, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 322
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 323
    invoke-virtual {v0, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 325
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 326
    invoke-virtual {v0, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 328
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 329
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 330
    invoke-virtual {v0, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 332
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 333
    invoke-virtual {v0, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 337
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 338
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 339
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 340
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 341
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 342
    invoke-virtual {v0, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 346
    :cond_17
    add-int/2addr v5, v10

    mul-int/lit8 v5, v5, 0x8

    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 347
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->byteAlign()V

    .line 349
    :cond_18
    :goto_3
    if-ge v4, v10, :cond_1a

    .line 350
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    const/16 v6, 0xe

    if-eqz v5, :cond_19

    .line 351
    invoke-virtual {v0, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 353
    :cond_19
    if-nez v4, :cond_1a

    .line 354
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 355
    invoke-virtual {v0, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 359
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 360
    if-nez v12, :cond_1b

    .line 361
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_5

    .line 363
    :cond_1b
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v13, :cond_1d

    .line 364
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 365
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 363
    :cond_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 372
    :cond_1d
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 373
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 374
    if-ne v4, v10, :cond_1e

    .line 375
    invoke-virtual {v0, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 377
    :cond_1e
    if-lt v4, v9, :cond_1f

    .line 378
    invoke-virtual {v0, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 380
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 381
    invoke-virtual {v0, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 383
    :cond_20
    if-nez v4, :cond_21

    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 384
    invoke-virtual {v0, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 386
    :cond_21
    const/4 v2, 0x3

    if-ge v11, v2, :cond_23

    .line 387
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBit()V

    goto :goto_6

    .line 372
    :cond_22
    const/4 v2, 0x3

    .line 390
    :cond_23
    :goto_6
    if-nez v1, :cond_24

    if-eq v12, v2, :cond_24

    .line 391
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBit()V

    .line 393
    :cond_24
    if-ne v1, v10, :cond_26

    if-eq v12, v2, :cond_25

    .line 394
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 395
    :cond_25
    invoke-virtual {v0, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 397
    :cond_26
    nop

    .line 398
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 399
    invoke-virtual {v0, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 400
    const/4 v4, 0x1

    if-ne v2, v4, :cond_27

    invoke-virtual {v0, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    if-ne v0, v4, :cond_27

    .line 401
    const-string v0, "audio/eac3-joc"

    goto :goto_7

    .line 404
    :cond_27
    const-string v0, "audio/eac3"

    :goto_7
    move-object v5, v0

    move v6, v1

    move v9, v3

    move v8, v14

    move v10, v15

    move/from16 v7, v17

    goto :goto_8

    .line 405
    :cond_28
    nop

    .line 406
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 407
    invoke-virtual {v0, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 408
    invoke-virtual {v0, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 409
    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util;->getAc3SyncframeSize(II)I

    move-result v3

    .line 410
    invoke-virtual {v0, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 411
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 412
    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_29

    const/4 v5, 0x1

    if-eq v4, v5, :cond_29

    .line 413
    invoke-virtual {v0, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 415
    :cond_29
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_2a

    .line 416
    invoke-virtual {v0, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 418
    :cond_2a
    if-ne v4, v10, :cond_2b

    .line 419
    invoke-virtual {v0, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 421
    :cond_2b
    sget-object v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v14, v5, v2

    .line 422
    const/16 v15, 0x600

    .line 423
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 424
    sget-object v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v2, v2, v4

    add-int v17, v2, v0

    const-string v0, "audio/ac3"

    move-object v5, v0

    move v9, v3

    move v8, v14

    move/from16 v7, v17

    const/4 v6, -0x1

    const/16 v10, 0x600

    .line 426
    :goto_8
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util$SyncFrameInfo;

    const/4 v11, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util$SyncFrameInfo;-><init>(Ljava/lang/String;IIIIILccsancom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util$1;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseAc3SyncframeSize([B)I
    .locals 2

    .line 437
    array-length v0, p0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 438
    const/4 p0, -0x1

    return p0

    .line 440
    :cond_0
    const/4 v0, 0x4

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xc0

    shr-int/lit8 v1, v1, 0x6

    .line 441
    aget-byte p0, p0, v0

    and-int/lit8 p0, p0, 0x3f

    .line 442
    invoke-static {v1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util;->getAc3SyncframeSize(II)I

    move-result p0

    return p0
.end method

.method public static parseEAc3AnnexFFormat(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 15

    .line 174
    const/4 v0, 0x2

    move-object v1, p0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 177
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit16 v2, v2, 0xc0

    shr-int/lit8 v2, v2, 0x6

    .line 178
    sget-object v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v10, v3, v2

    .line 179
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 180
    sget-object v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v4, v2, 0xe

    shr-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    .line 181
    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 182
    add-int/lit8 v3, v3, 0x1

    .line 186
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 187
    and-int/lit8 v2, v2, 0x1e

    shr-int/lit8 v2, v2, 0x1

    .line 188
    if-lez v2, :cond_1

    .line 189
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 192
    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 193
    add-int/lit8 v3, v3, 0x2

    move v9, v3

    goto :goto_0

    .line 196
    :cond_1
    move v9, v3

    :goto_0
    nop

    .line 197
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_2

    .line 198
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 199
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 200
    const-string v0, "audio/eac3-joc"

    move-object v5, v0

    goto :goto_1

    .line 203
    :cond_2
    const-string v0, "audio/eac3"

    move-object v5, v0

    :goto_1
    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v4, p1

    move-object/from16 v12, p3

    move-object/from16 v14, p2

    invoke-static/range {v4 .. v14}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static parseEAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 461
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    const/4 v1, 0x6

    shr-int/2addr v0, v1

    .line 462
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 463
    :cond_0
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit8 p0, p0, 0x30

    shr-int/lit8 p0, p0, 0x4

    aget v1, v0, p0

    :goto_0
    mul-int/lit16 v1, v1, 0x100

    .line 462
    return v1
.end method

.method public static parseTrueHdSyncframeAudioSampleCount(Ljava/nio/ByteBuffer;I)I
    .locals 3

    .line 518
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 519
    :goto_0
    const/16 v1, 0x28

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, p1

    if-eqz v0, :cond_1

    const/16 p1, 0x9

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    :goto_1
    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    shr-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0x7

    shl-int p0, v1, p0

    return p0
.end method

.method public static parseTrueHdSyncframeAudioSampleCount([B)I
    .locals 5

    .line 498
    const/4 v0, 0x4

    aget-byte v1, p0, v0

    const/4 v2, 0x0

    const/4 v3, -0x8

    if-ne v1, v3, :cond_3

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    const/16 v3, 0x72

    if-ne v1, v3, :cond_3

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    const/16 v3, 0x6f

    if-ne v1, v3, :cond_3

    const/4 v1, 0x7

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xfe

    const/16 v4, 0xba

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 504
    :cond_0
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xbb

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    .line 505
    :cond_1
    const/16 v3, 0x28

    if-eqz v2, :cond_2

    const/16 v2, 0x9

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    :goto_0
    aget-byte p0, p0, v2

    shr-int/2addr p0, v0

    and-int/2addr p0, v1

    shl-int p0, v3, p0

    return p0

    .line 502
    :cond_3
    :goto_1
    return v2
.end method
