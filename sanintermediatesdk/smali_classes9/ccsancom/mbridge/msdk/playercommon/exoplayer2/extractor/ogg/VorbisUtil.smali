.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil;
.super Ljava/lang/Object;
.source "VorbisUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil$Mode;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VorbisUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    return-void
.end method

.method public static iLog(I)I
    .locals 1

    .line 39
    const/4 v0, 0x0

    .line 40
    :goto_0
    if-lez p0, :cond_0

    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 42
    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    return v0
.end method

.method private static mapType1QuantValues(JJ)J
    .locals 2

    .line 407
    long-to-double p0, p0

    long-to-double p2, p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, p2

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-long p0, p0

    return-wide p0
.end method

.method private static readBook(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 346
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v1

    const v2, 0x564342

    if-ne v1, v2, :cond_b

    .line 350
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v3

    .line 351
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v4

    .line 352
    new-array v5, v4, [J

    .line 354
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v7

    .line 355
    const-wide/16 v0, 0x0

    const/4 v2, 0x5

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-nez v7, :cond_3

    .line 356
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v9

    .line 357
    nop

    :goto_0
    if-ge v6, v4, :cond_2

    .line 358
    if-eqz v9, :cond_1

    .line 359
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 360
    goto :goto_1

    .line 362
    :cond_0
    aput-wide v0, v5, v6

    goto :goto_2

    .line 365
    :cond_1
    :goto_1
    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v10

    add-int/2addr v10, v8

    int-to-long v10, v10

    aput-wide v10, v5, v6

    .line 357
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 368
    :cond_2
    goto :goto_5

    .line 369
    :cond_3
    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v2

    add-int/2addr v2, v8

    .line 370
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v4, :cond_5

    .line 371
    sub-int v10, v4, v9

    invoke-static {v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil;->iLog(I)I

    move-result v10

    invoke-virtual {p0, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v10

    .line 372
    const/4 v11, 0x0

    :goto_4
    if-ge v11, v10, :cond_4

    if-ge v9, v4, :cond_4

    .line 373
    int-to-long v12, v2

    aput-wide v12, v5, v9

    .line 372
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 375
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 376
    goto :goto_3

    .line 379
    :cond_5
    :goto_5
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    .line 380
    const/4 v9, 0x2

    if-gt v6, v9, :cond_a

    .line 382
    if-eq v6, v8, :cond_6

    if-ne v6, v9, :cond_9

    .line 383
    :cond_6
    const/16 v9, 0x20

    invoke-virtual {p0, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 384
    invoke-virtual {p0, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 385
    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v2

    add-int/2addr v2, v8

    .line 386
    invoke-virtual {p0, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 388
    if-ne v6, v8, :cond_8

    .line 389
    if-eqz v3, :cond_7

    .line 390
    int-to-long v0, v4

    int-to-long v8, v3

    invoke-static {v0, v1, v8, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil;->mapType1QuantValues(JJ)J

    move-result-wide v0

    goto :goto_6

    .line 392
    :cond_7
    goto :goto_6

    .line 395
    :cond_8
    int-to-long v0, v4

    int-to-long v8, v3

    mul-long v0, v0, v8

    .line 398
    :goto_6
    int-to-long v8, v2

    mul-long v0, v0, v8

    long-to-int v1, v0

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 400
    :cond_9
    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;-><init>(II[JIZ)V

    return-object p0

    .line 381
    :cond_a
    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lookup type greater than 2 not decodable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 347
    :cond_b
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->getPosition()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method

.method private static readFloors(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 292
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 293
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_8

    .line 294
    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    .line 295
    const/4 v7, 0x4

    const/16 v8, 0x8

    packed-switch v6, :pswitch_data_0

    .line 340
    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "floor type greater than 1 not decodable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 308
    :pswitch_0
    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v5

    .line 309
    const/4 v6, -0x1

    .line 310
    new-array v9, v5, [I

    .line 311
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v5, :cond_1

    .line 312
    invoke-virtual {p0, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v11

    aput v11, v9, v10

    .line 313
    aget v11, v9, v10

    if-le v11, v6, :cond_0

    .line 314
    aget v6, v9, v10

    .line 311
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 317
    :cond_1
    add-int/lit8 v6, v6, 0x1

    new-array v10, v6, [I

    .line 318
    const/4 v11, 0x0

    :goto_2
    const/4 v12, 0x2

    if-ge v11, v6, :cond_4

    .line 319
    const/4 v13, 0x3

    invoke-virtual {p0, v13}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v13

    add-int/2addr v13, v2

    aput v13, v10, v11

    .line 320
    invoke-virtual {p0, v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v12

    .line 321
    if-lez v12, :cond_2

    .line 322
    invoke-virtual {p0, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 324
    :cond_2
    const/4 v13, 0x0

    :goto_3
    shl-int v14, v2, v12

    if-ge v13, v14, :cond_3

    .line 325
    invoke-virtual {p0, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 324
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 318
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 328
    :cond_4
    invoke-virtual {p0, v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 329
    invoke-virtual {p0, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    .line 330
    nop

    .line 331
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_4
    if-ge v7, v5, :cond_6

    .line 332
    aget v12, v9, v7

    .line 333
    aget v12, v10, v12

    add-int/2addr v8, v12

    .line 334
    :goto_5
    if-ge v11, v8, :cond_5

    .line 335
    invoke-virtual {p0, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 334
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 331
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 338
    :cond_6
    goto :goto_7

    .line 297
    :pswitch_1
    invoke-virtual {p0, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 298
    invoke-virtual {p0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 299
    invoke-virtual {p0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 300
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 301
    invoke-virtual {p0, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 302
    invoke-virtual {p0, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v5

    add-int/2addr v5, v2

    .line 303
    const/4 v6, 0x0

    :goto_6
    if-ge v6, v5, :cond_7

    .line 304
    invoke-virtual {p0, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 303
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 306
    :cond_7
    nop

    .line 293
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 343
    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static readMappings(ILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 218
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 219
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    .line 220
    const/16 v4, 0x10

    invoke-virtual {p1, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v4

    .line 221
    packed-switch v4, :pswitch_data_0

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mapping type other than 0 not supported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VorbisUtil"

    invoke-static {v5, v4}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 224
    :pswitch_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_0

    .line 225
    invoke-virtual {p1, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v4

    add-int/2addr v4, v1

    goto :goto_1

    .line 227
    :cond_0
    const/4 v4, 0x1

    .line 230
    :goto_1
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v6

    const/16 v7, 0x8

    if-eqz v6, :cond_1

    .line 231
    invoke-virtual {p1, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    add-int/2addr v6, v1

    .line 232
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v6, :cond_1

    .line 233
    add-int/lit8 v9, p0, -0x1

    invoke-static {v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil;->iLog(I)I

    move-result v10

    invoke-virtual {p1, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 234
    invoke-static {v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil;->iLog(I)I

    move-result v9

    invoke-virtual {p1, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 232
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 239
    :cond_1
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    if-nez v6, :cond_4

    .line 242
    if-le v4, v1, :cond_2

    .line 243
    const/4 v6, 0x0

    :goto_3
    if-ge v6, p0, :cond_2

    .line 244
    invoke-virtual {p1, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 243
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 247
    :cond_2
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_3

    .line 248
    invoke-virtual {p1, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 249
    invoke-virtual {p1, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 250
    invoke-virtual {p1, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 247
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 252
    :cond_3
    goto :goto_5

    .line 240
    :cond_4
    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string p1, "to reserved bits must be zero after mapping coupling steps"

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 219
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 257
    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static readModes(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;)[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil$Mode;
    .locals 8

    .line 204
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 205
    new-array v1, v0, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil$Mode;

    .line 206
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v3

    .line 208
    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v5

    .line 209
    invoke-virtual {p0, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v4

    .line 210
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    .line 211
    new-instance v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil$Mode;

    invoke-direct {v7, v3, v5, v4, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil$Mode;-><init>(ZIII)V

    aput-object v7, v1, v2

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    :cond_0
    return-object v1
.end method

.method private static readResidues(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 260
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 261
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_6

    .line 262
    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v5

    .line 263
    const/4 v6, 0x2

    if-gt v5, v6, :cond_5

    .line 266
    const/16 v5, 0x18

    invoke-virtual {p0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 267
    invoke-virtual {p0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 268
    invoke-virtual {p0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 269
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v5

    add-int/2addr v5, v2

    .line 270
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 271
    new-array v7, v5, [I

    .line 272
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_1

    .line 273
    nop

    .line 274
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v9

    .line 275
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 276
    const/4 v10, 0x5

    invoke-virtual {p0, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v10

    goto :goto_2

    .line 275
    :cond_0
    const/4 v10, 0x0

    .line 278
    :goto_2
    mul-int/lit8 v10, v10, 0x8

    add-int/2addr v10, v9

    aput v10, v7, v8

    .line 272
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 280
    :cond_1
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v5, :cond_4

    .line 281
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v6, :cond_3

    .line 282
    aget v10, v7, v8

    shl-int v11, v2, v9

    and-int/2addr v10, v11

    if-eqz v10, :cond_2

    .line 283
    invoke-virtual {p0, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 281
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 280
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 261
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 264
    :cond_5
    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string v0, "residueType greater than 2 is not decodable"

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 289
    :cond_6
    return-void
.end method

.method public static readVorbisCommentHeader(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 92
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Z)Z

    .line 93
    nop

    .line 95
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v2

    long-to-int v0, v2

    .line 96
    nop

    .line 97
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    add-int/2addr v3, v2

    .line 100
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v4

    .line 101
    long-to-int v2, v4

    new-array v2, v2, [Ljava/lang/String;

    .line 102
    add-int/lit8 v3, v3, 0x4

    .line 103
    nop

    :goto_0
    int-to-long v6, v1

    cmp-long v8, v6, v4

    if-gez v8, :cond_0

    .line 104
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v6

    long-to-int v7, v6

    .line 105
    add-int/lit8 v3, v3, 0x4

    .line 106
    invoke-virtual {p0, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    .line 107
    aget-object v6, v2, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v3, v6

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_1

    .line 112
    add-int/lit8 v3, v3, 0x1

    .line 113
    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;

    invoke-direct {p0, v0, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    return-object p0

    .line 110
    :cond_1
    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string v0, "framing bit expected to be set"

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static readVorbisIdentificationHeader(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 59
    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Z)Z

    .line 61
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v4

    .line 62
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 63
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v7

    .line 64
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v9

    .line 65
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v10

    .line 66
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v11

    .line 68
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 69
    and-int/lit8 v12, v3, 0xf

    int-to-double v12, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-int v12, v12

    .line 70
    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    int-to-double v2, v3

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    .line 72
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    and-int/2addr v3, v1

    if-lez v3, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    .line 74
    :goto_0
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v15

    .line 76
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    move-object v3, v0

    move v13, v2

    invoke-direct/range {v3 .. v15}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;-><init>(JIJIIIIIZ[B)V

    return-object v0
.end method

.method public static readVorbisModes(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil$Mode;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 175
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Z)Z

    .line 177
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 179
    new-instance v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;-><init>([B)V

    .line 180
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v2, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 182
    const/4 p0, 0x0

    :goto_0
    if-ge p0, v0, :cond_0

    .line 183
    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil;->readBook(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;

    .line 182
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 186
    :cond_0
    const/4 p0, 0x6

    invoke-virtual {v2, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    .line 187
    nop

    :goto_1
    if-ge v1, p0, :cond_2

    .line 188
    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 189
    :cond_1
    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string p1, "placeholder of time domain transforms not zeroed out"

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 192
    :cond_2
    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil;->readFloors(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;)V

    .line 193
    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil;->readResidues(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;)V

    .line 194
    invoke-static {p1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil;->readMappings(ILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;)V

    .line 196
    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil;->readModes(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;)[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisUtil$Mode;

    move-result-object p0

    .line 197
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 200
    return-object p0

    .line 198
    :cond_3
    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string p1, "framing bit after modes not set as expected"

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static verifyVorbisHeaderCapturePattern(ILccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 129
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    .line 130
    if-eqz p2, :cond_0

    .line 131
    return v1

    .line 133
    :cond_0
    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "too short header: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 137
    :cond_1
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-eq v0, p0, :cond_3

    .line 138
    if-eqz p2, :cond_2

    .line 139
    return v1

    .line 141
    :cond_2
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "expected header type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_3
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x76

    if-ne p0, v0, :cond_5

    .line 146
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x6f

    if-ne p0, v0, :cond_5

    .line 147
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x72

    if-ne p0, v0, :cond_5

    .line 148
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x62

    if-ne p0, v0, :cond_5

    .line 149
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x69

    if-ne p0, v0, :cond_5

    .line 150
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 p1, 0x73

    if-eq p0, p1, :cond_4

    goto :goto_0

    .line 157
    :cond_4
    const/4 p0, 0x1

    return p0

    .line 151
    :cond_5
    :goto_0
    if-eqz p2, :cond_6

    .line 152
    return v1

    .line 154
    :cond_6
    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string p1, "expected characters \'vorbis\'"

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
