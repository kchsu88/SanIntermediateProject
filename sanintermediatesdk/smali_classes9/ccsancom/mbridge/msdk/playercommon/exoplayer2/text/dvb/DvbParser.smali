.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;
.super Ljava/lang/Object;
.source "DvbParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ObjectData;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ClutDefinition;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionObject;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionComposition;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageRegion;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageComposition;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$DisplayDefinition;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;
    }
.end annotation


# static fields
.field private static final DATA_TYPE_24_TABLE_DATA:I = 0x20

.field private static final DATA_TYPE_28_TABLE_DATA:I = 0x21

.field private static final DATA_TYPE_2BP_CODE_STRING:I = 0x10

.field private static final DATA_TYPE_48_TABLE_DATA:I = 0x22

.field private static final DATA_TYPE_4BP_CODE_STRING:I = 0x11

.field private static final DATA_TYPE_8BP_CODE_STRING:I = 0x12

.field private static final DATA_TYPE_END_LINE:I = 0xf0

.field private static final OBJECT_CODING_PIXELS:I = 0x0

.field private static final OBJECT_CODING_STRING:I = 0x1

.field private static final PAGE_STATE_NORMAL:I = 0x0

.field private static final REGION_DEPTH_4_BIT:I = 0x2

.field private static final REGION_DEPTH_8_BIT:I = 0x3

.field private static final SEGMENT_TYPE_CLUT_DEFINITION:I = 0x12

.field private static final SEGMENT_TYPE_DISPLAY_DEFINITION:I = 0x14

.field private static final SEGMENT_TYPE_OBJECT_DATA:I = 0x13

.field private static final SEGMENT_TYPE_PAGE_COMPOSITION:I = 0x10

.field private static final SEGMENT_TYPE_REGION_COMPOSITION:I = 0x11

.field private static final TAG:Ljava/lang/String; = "DvbParser"

.field private static final defaultMap2To4:[B

.field private static final defaultMap2To8:[B

.field private static final defaultMap4To8:[B


# instance fields
.field private bitmap:Lccsanandroid/graphics/Bitmap;

.field private final canvas:Lccsanandroid/graphics/Canvas;

.field private final defaultClutDefinition:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ClutDefinition;

.field private final defaultDisplayDefinition:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

.field private final defaultPaint:Lccsanandroid/graphics/Paint;

.field private final fillRegionPaint:Lccsanandroid/graphics/Paint;

.field private final subtitleService:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->defaultMap2To4:[B

    .line 74
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->defaultMap2To8:[B

    .line 76
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->defaultMap4To8:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x7t
        0x8t
        0xft
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x77t
        -0x78t
        -0x1t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x11t
        0x22t
        0x33t
        0x44t
        0x55t
        0x66t
        0x77t
        -0x78t
        -0x67t
        -0x56t
        -0x45t
        -0x34t
        -0x23t
        -0x12t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 8

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lccsanandroid/graphics/Paint;

    invoke-direct {v0}, Lccsanandroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->defaultPaint:Lccsanandroid/graphics/Paint;

    .line 99
    sget-object v1, Lccsanandroid/graphics/Paint$Style;->FILL_AND_STROKE:Lccsanandroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setStyle(Lccsanandroid/graphics/Paint$Style;)V

    .line 100
    new-instance v1, Lccsanandroid/graphics/PorterDuffXfermode;

    sget-object v2, Lccsanandroid/graphics/PorterDuff$Mode;->SRC:Lccsanandroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Lccsanandroid/graphics/PorterDuffXfermode;-><init>(Lccsanandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setXfermode(Lccsanandroid/graphics/Xfermode;)Lccsanandroid/graphics/Xfermode;

    .line 101
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setPathEffect(Lccsanandroid/graphics/PathEffect;)Lccsanandroid/graphics/PathEffect;

    .line 102
    new-instance v0, Lccsanandroid/graphics/Paint;

    invoke-direct {v0}, Lccsanandroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->fillRegionPaint:Lccsanandroid/graphics/Paint;

    .line 103
    sget-object v2, Lccsanandroid/graphics/Paint$Style;->FILL:Lccsanandroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Lccsanandroid/graphics/Paint;->setStyle(Lccsanandroid/graphics/Paint$Style;)V

    .line 104
    new-instance v2, Lccsanandroid/graphics/PorterDuffXfermode;

    sget-object v3, Lccsanandroid/graphics/PorterDuff$Mode;->DST_OVER:Lccsanandroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Lccsanandroid/graphics/PorterDuffXfermode;-><init>(Lccsanandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Lccsanandroid/graphics/Paint;->setXfermode(Lccsanandroid/graphics/Xfermode;)Lccsanandroid/graphics/Xfermode;

    .line 105
    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setPathEffect(Lccsanandroid/graphics/PathEffect;)Lccsanandroid/graphics/PathEffect;

    .line 106
    new-instance v0, Lccsanandroid/graphics/Canvas;

    invoke-direct {v0}, Lccsanandroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->canvas:Lccsanandroid/graphics/Canvas;

    .line 107
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    const/16 v2, 0x2cf

    const/16 v3, 0x23f

    const/4 v4, 0x0

    const/16 v5, 0x2cf

    const/4 v6, 0x0

    const/16 v7, 0x23f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$DisplayDefinition;-><init>(IIIIII)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->defaultDisplayDefinition:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    .line 108
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    invoke-static {}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->generateDefault2BitClutEntries()[I

    move-result-object v1

    .line 109
    invoke-static {}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->generateDefault4BitClutEntries()[I

    move-result-object v2

    invoke-static {}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->generateDefault8BitClutEntries()[I

    move-result-object v3

    invoke-direct {v0, v4, v1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ClutDefinition;-><init>(I[I[I[I)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->defaultClutDefinition:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    .line 110
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;

    invoke-direct {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;-><init>(II)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->subtitleService:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;

    .line 111
    return-void
.end method

.method private static buildClutMapTable(IILccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;)[B
    .locals 3

    .line 801
    new-array v0, p0, [B

    .line 802
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 803
    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 802
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 805
    :cond_0
    return-object v0
.end method

.method private static generateDefault2BitClutEntries()[I
    .locals 1

    .line 498
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 499
    nop

    .line 500
    nop

    .line 501
    nop

    .line 502
    nop

    .line 503
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        -0x1
        -0x1000000
        -0x808081
    .end array-data
.end method

.method private static generateDefault4BitClutEntries()[I
    .locals 9

    .line 507
    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 508
    const/4 v2, 0x0

    aput v2, v1, v2

    .line 509
    const/4 v3, 0x1

    :goto_0
    if-ge v3, v0, :cond_7

    .line 510
    const/16 v4, 0x8

    const/16 v5, 0xff

    if-ge v3, v4, :cond_3

    .line 511
    nop

    .line 513
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_0

    const/16 v4, 0xff

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 514
    :goto_1
    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_1

    const/16 v6, 0xff

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    .line 515
    :goto_2
    and-int/lit8 v7, v3, 0x4

    if-eqz v7, :cond_2

    const/16 v7, 0xff

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    .line 511
    :goto_3
    invoke-static {v5, v4, v6, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    goto :goto_7

    .line 517
    :cond_3
    nop

    .line 519
    and-int/lit8 v4, v3, 0x1

    const/16 v6, 0x7f

    if-eqz v4, :cond_4

    const/16 v4, 0x7f

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    .line 520
    :goto_4
    and-int/lit8 v7, v3, 0x2

    if-eqz v7, :cond_5

    const/16 v7, 0x7f

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    .line 521
    :goto_5
    and-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_6

    goto :goto_6

    :cond_6
    const/4 v6, 0x0

    .line 517
    :goto_6
    invoke-static {v5, v4, v7, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    .line 509
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 524
    :cond_7
    return-object v1
.end method

.method private static generateDefault8BitClutEntries()[I
    .locals 11

    .line 528
    const/16 v0, 0x100

    new-array v1, v0, [I

    .line 529
    const/4 v2, 0x0

    aput v2, v1, v2

    .line 530
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1c

    .line 531
    const/16 v4, 0x8

    const/16 v5, 0xff

    if-ge v3, v4, :cond_3

    .line 532
    const/16 v4, 0x3f

    .line 534
    and-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_0

    const/16 v6, 0xff

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 535
    :goto_1
    and-int/lit8 v7, v3, 0x2

    if-eqz v7, :cond_1

    const/16 v7, 0xff

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    .line 536
    :goto_2
    and-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_2

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    .line 532
    :goto_3
    invoke-static {v4, v6, v7, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    goto/16 :goto_1c

    .line 538
    :cond_3
    and-int/lit16 v4, v3, 0x88

    const/16 v6, 0x7f

    const/16 v7, 0xaa

    const/16 v8, 0x2b

    const/16 v9, 0x55

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1c

    .line 561
    :sswitch_0
    nop

    .line 563
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_4

    const/16 v4, 0x2b

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    and-int/lit8 v6, v3, 0x10

    if-eqz v6, :cond_5

    const/16 v6, 0x55

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    :goto_5
    add-int/2addr v4, v6

    .line 564
    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_6

    const/16 v6, 0x2b

    goto :goto_6

    :cond_6
    const/4 v6, 0x0

    :goto_6
    and-int/lit8 v7, v3, 0x20

    if-eqz v7, :cond_7

    const/16 v7, 0x55

    goto :goto_7

    :cond_7
    const/4 v7, 0x0

    :goto_7
    add-int/2addr v6, v7

    .line 565
    and-int/lit8 v7, v3, 0x4

    if-eqz v7, :cond_8

    goto :goto_8

    :cond_8
    const/4 v8, 0x0

    :goto_8
    and-int/lit8 v7, v3, 0x40

    if-eqz v7, :cond_9

    goto :goto_9

    :cond_9
    const/4 v9, 0x0

    :goto_9
    add-int/2addr v8, v9

    .line 561
    invoke-static {v5, v4, v6, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    goto/16 :goto_1c

    .line 554
    :sswitch_1
    nop

    .line 556
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_a

    const/16 v4, 0x2b

    goto :goto_a

    :cond_a
    const/4 v4, 0x0

    :goto_a
    add-int/2addr v4, v6

    and-int/lit8 v7, v3, 0x10

    if-eqz v7, :cond_b

    const/16 v7, 0x55

    goto :goto_b

    :cond_b
    const/4 v7, 0x0

    :goto_b
    add-int/2addr v4, v7

    .line 557
    and-int/lit8 v7, v3, 0x2

    if-eqz v7, :cond_c

    const/16 v7, 0x2b

    goto :goto_c

    :cond_c
    const/4 v7, 0x0

    :goto_c
    add-int/2addr v7, v6

    and-int/lit8 v10, v3, 0x20

    if-eqz v10, :cond_d

    const/16 v10, 0x55

    goto :goto_d

    :cond_d
    const/4 v10, 0x0

    :goto_d
    add-int/2addr v7, v10

    .line 558
    and-int/lit8 v10, v3, 0x4

    if-eqz v10, :cond_e

    goto :goto_e

    :cond_e
    const/4 v8, 0x0

    :goto_e
    add-int/2addr v8, v6

    and-int/lit8 v6, v3, 0x40

    if-eqz v6, :cond_f

    goto :goto_f

    :cond_f
    const/4 v9, 0x0

    :goto_f
    add-int/2addr v8, v9

    .line 554
    invoke-static {v5, v4, v7, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    .line 559
    goto/16 :goto_1c

    .line 547
    :sswitch_2
    nop

    .line 549
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_10

    const/16 v4, 0x55

    goto :goto_10

    :cond_10
    const/4 v4, 0x0

    :goto_10
    and-int/lit8 v5, v3, 0x10

    if-eqz v5, :cond_11

    const/16 v5, 0xaa

    goto :goto_11

    :cond_11
    const/4 v5, 0x0

    :goto_11
    add-int/2addr v4, v5

    .line 550
    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_12

    const/16 v5, 0x55

    goto :goto_12

    :cond_12
    const/4 v5, 0x0

    :goto_12
    and-int/lit8 v8, v3, 0x20

    if-eqz v8, :cond_13

    const/16 v8, 0xaa

    goto :goto_13

    :cond_13
    const/4 v8, 0x0

    :goto_13
    add-int/2addr v5, v8

    .line 551
    and-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_14

    goto :goto_14

    :cond_14
    const/4 v9, 0x0

    :goto_14
    and-int/lit8 v8, v3, 0x40

    if-eqz v8, :cond_15

    goto :goto_15

    :cond_15
    const/4 v7, 0x0

    :goto_15
    add-int/2addr v9, v7

    .line 547
    invoke-static {v6, v4, v5, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    .line 552
    goto :goto_1c

    .line 540
    :sswitch_3
    nop

    .line 542
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_16

    const/16 v4, 0x55

    goto :goto_16

    :cond_16
    const/4 v4, 0x0

    :goto_16
    and-int/lit8 v6, v3, 0x10

    if-eqz v6, :cond_17

    const/16 v6, 0xaa

    goto :goto_17

    :cond_17
    const/4 v6, 0x0

    :goto_17
    add-int/2addr v4, v6

    .line 543
    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_18

    const/16 v6, 0x55

    goto :goto_18

    :cond_18
    const/4 v6, 0x0

    :goto_18
    and-int/lit8 v8, v3, 0x20

    if-eqz v8, :cond_19

    const/16 v8, 0xaa

    goto :goto_19

    :cond_19
    const/4 v8, 0x0

    :goto_19
    add-int/2addr v6, v8

    .line 544
    and-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_1a

    goto :goto_1a

    :cond_1a
    const/4 v9, 0x0

    :goto_1a
    and-int/lit8 v8, v3, 0x40

    if-eqz v8, :cond_1b

    goto :goto_1b

    :cond_1b
    const/4 v7, 0x0

    :goto_1b
    add-int/2addr v9, v7

    .line 540
    invoke-static {v5, v4, v6, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    .line 545
    nop

    .line 530
    :goto_1c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 570
    :cond_1c
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x8 -> :sswitch_2
        0x80 -> :sswitch_1
        0x88 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getColor(IIII)I
    .locals 0

    .line 574
    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p3

    return p0
.end method

.method private static paint2BitPixelCodeString(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;[I[BIILccsanandroid/graphics/Paint;Lccsanandroid/graphics/Canvas;)I
    .locals 13

    .line 665
    move-object v0, p0

    move/from16 v1, p4

    move-object/from16 v8, p5

    const/4 v9, 0x0

    move/from16 v10, p3

    const/4 v2, 0x0

    .line 667
    :goto_0
    nop

    .line 668
    nop

    .line 669
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 670
    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 671
    nop

    .line 672
    move v11, v2

    const/4 v12, 0x1

    goto :goto_1

    .line 673
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 674
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    add-int/2addr v6, v4

    .line 675
    invoke-virtual {p0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    move v11, v2

    move v12, v6

    goto :goto_1

    .line 676
    :cond_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 677
    move v11, v2

    const/4 v4, 0x0

    const/4 v12, 0x1

    goto :goto_1

    .line 679
    :cond_2
    invoke-virtual {p0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v11, v2

    const/4 v4, 0x0

    const/4 v12, 0x0

    goto :goto_1

    .line 691
    :pswitch_0
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1d

    .line 692
    invoke-virtual {p0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    move v11, v2

    move v12, v4

    move v4, v3

    goto :goto_1

    .line 687
    :pswitch_1
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    add-int/lit8 v4, v4, 0xc

    .line 688
    invoke-virtual {p0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 689
    move v11, v2

    move v12, v4

    move v4, v3

    goto :goto_1

    .line 684
    :pswitch_2
    nop

    .line 685
    move v11, v2

    const/4 v4, 0x0

    const/4 v12, 0x2

    goto :goto_1

    .line 681
    :pswitch_3
    nop

    .line 682
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 697
    :goto_1
    if-eqz v12, :cond_4

    if-eqz v8, :cond_4

    .line 698
    if-eqz p2, :cond_3

    aget-byte v4, p2, v4

    :cond_3
    aget v2, p1, v4

    invoke-virtual {v8, v2}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 699
    int-to-float v3, v10

    int-to-float v4, v1

    add-int v2, v10, v12

    int-to-float v6, v2

    add-int/lit8 v2, v1, 0x1

    int-to-float v7, v2

    move-object/from16 v2, p6

    move v5, v6

    move v6, v7

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lccsanandroid/graphics/Canvas;->drawRect(FFFFLccsanandroid/graphics/Paint;)V

    .line 702
    :cond_4
    add-int/2addr v10, v12

    .line 703
    if-eqz v11, :cond_5

    .line 705
    return v10

    .line 703
    :cond_5
    move v2, v11

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static paint4BitPixelCodeString(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;[I[BIILccsanandroid/graphics/Paint;Lccsanandroid/graphics/Canvas;)I
    .locals 13

    .line 713
    move-object v0, p0

    move/from16 v1, p4

    move-object/from16 v8, p5

    const/4 v9, 0x0

    move/from16 v10, p3

    const/4 v2, 0x0

    .line 715
    :goto_0
    nop

    .line 716
    nop

    .line 717
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 718
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    .line 719
    nop

    .line 720
    move v11, v2

    const/4 v12, 0x1

    goto/16 :goto_1

    .line 721
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-nez v4, :cond_2

    .line 722
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 723
    if-eqz v3, :cond_1

    .line 724
    add-int/lit8 v5, v3, 0x2

    .line 725
    move v11, v2

    move v12, v5

    const/4 v4, 0x0

    goto :goto_1

    .line 727
    :cond_1
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto :goto_1

    .line 729
    :cond_2
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-nez v4, :cond_3

    .line 730
    invoke-virtual {p0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    add-int/lit8 v5, v4, 0x4

    .line 731
    invoke-virtual {p0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    move v11, v2

    move v12, v5

    goto :goto_1

    .line 733
    :cond_3
    invoke-virtual {p0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v11, v2

    const/4 v4, 0x0

    const/4 v12, 0x0

    goto :goto_1

    .line 745
    :pswitch_0
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    add-int/lit8 v5, v4, 0x19

    .line 746
    invoke-virtual {p0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    move v11, v2

    move v12, v5

    goto :goto_1

    .line 741
    :pswitch_1
    invoke-virtual {p0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    add-int/lit8 v5, v4, 0x9

    .line 742
    invoke-virtual {p0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 743
    move v11, v2

    move v12, v5

    goto :goto_1

    .line 738
    :pswitch_2
    nop

    .line 739
    move v11, v2

    const/4 v4, 0x0

    const/4 v12, 0x2

    goto :goto_1

    .line 735
    :pswitch_3
    nop

    .line 736
    move v11, v2

    const/4 v4, 0x0

    const/4 v12, 0x1

    .line 751
    :goto_1
    if-eqz v12, :cond_5

    if-eqz v8, :cond_5

    .line 752
    if-eqz p2, :cond_4

    aget-byte v4, p2, v4

    :cond_4
    aget v2, p1, v4

    invoke-virtual {v8, v2}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 753
    int-to-float v3, v10

    int-to-float v4, v1

    add-int v2, v10, v12

    int-to-float v5, v2

    add-int/lit8 v2, v1, 0x1

    int-to-float v6, v2

    move-object/from16 v2, p6

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lccsanandroid/graphics/Canvas;->drawRect(FFFFLccsanandroid/graphics/Paint;)V

    .line 756
    :cond_5
    add-int/2addr v10, v12

    .line 757
    if-eqz v11, :cond_6

    .line 759
    return v10

    .line 757
    :cond_6
    move v2, v11

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static paint8BitPixelCodeString(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;[I[BIILccsanandroid/graphics/Paint;Lccsanandroid/graphics/Canvas;)I
    .locals 13

    .line 767
    move-object v0, p0

    move/from16 v1, p4

    move-object/from16 v8, p5

    const/4 v9, 0x0

    move/from16 v10, p3

    const/4 v2, 0x0

    .line 769
    :goto_0
    nop

    .line 770
    nop

    .line 771
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 772
    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 773
    nop

    .line 774
    move v11, v2

    const/4 v12, 0x1

    goto :goto_1

    .line 776
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    const/4 v6, 0x7

    if-nez v4, :cond_2

    .line 777
    invoke-virtual {p0, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 778
    if-eqz v3, :cond_1

    .line 779
    nop

    .line 780
    move v11, v2

    move v12, v3

    const/4 v4, 0x0

    goto :goto_1

    .line 782
    :cond_1
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto :goto_1

    .line 785
    :cond_2
    invoke-virtual {p0, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 786
    invoke-virtual {p0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    move v11, v2

    move v12, v4

    move v4, v3

    .line 790
    :goto_1
    if-eqz v12, :cond_4

    if-eqz v8, :cond_4

    .line 791
    if-eqz p2, :cond_3

    aget-byte v4, p2, v4

    :cond_3
    aget v2, p1, v4

    invoke-virtual {v8, v2}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 792
    int-to-float v3, v10

    int-to-float v4, v1

    add-int v2, v10, v12

    int-to-float v6, v2

    add-int/lit8 v2, v1, 0x1

    int-to-float v7, v2

    move-object/from16 v2, p6

    move v5, v6

    move v6, v7

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lccsanandroid/graphics/Canvas;->drawRect(FFFFLccsanandroid/graphics/Paint;)V

    .line 794
    :cond_4
    add-int/2addr v10, v12

    .line 795
    if-eqz v11, :cond_5

    .line 797
    return v10

    .line 795
    :cond_5
    move v2, v11

    goto :goto_0
.end method

.method private static paintPixelDataSubBlock([B[IIIILccsanandroid/graphics/Paint;Lccsanandroid/graphics/Canvas;)V
    .locals 13

    .line 603
    move v0, p2

    new-instance v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    move-object v1, p0

    invoke-direct {v8, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;-><init>([B)V

    .line 604
    nop

    .line 605
    nop

    .line 606
    nop

    .line 607
    nop

    .line 608
    const/4 v9, 0x0

    move/from16 v4, p3

    move/from16 v10, p4

    move-object v11, v9

    move-object v12, v11

    .line 610
    :goto_0
    invoke-virtual {v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v1

    if-eqz v1, :cond_5

    .line 611
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 612
    const/4 v3, 0x3

    const/4 v5, 0x4

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_5

    .line 650
    :sswitch_0
    nop

    .line 651
    add-int/lit8 v10, v10, 0x2

    .line 652
    move/from16 v4, p3

    goto/16 :goto_5

    .line 647
    :sswitch_1
    const/16 v2, 0x10

    invoke-static {v2, v1, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->buildClutMapTable(IILccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;)[B

    move-result-object v11

    .line 648
    goto/16 :goto_5

    .line 644
    :sswitch_2
    invoke-static {v5, v1, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->buildClutMapTable(IILccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;)[B

    move-result-object v11

    .line 645
    goto/16 :goto_5

    .line 641
    :sswitch_3
    invoke-static {v5, v5, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->buildClutMapTable(IILccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;)[B

    move-result-object v12

    .line 642
    goto/16 :goto_5

    .line 638
    :sswitch_4
    const/4 v3, 0x0

    move-object v1, v8

    move-object v2, p1

    move v5, v10

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->paint8BitPixelCodeString(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;[I[BIILccsanandroid/graphics/Paint;Lccsanandroid/graphics/Canvas;)I

    move-result v4

    .line 639
    goto :goto_5

    .line 628
    :sswitch_5
    if-ne v0, v3, :cond_0

    .line 629
    sget-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->defaultMap4To8:[B

    move-object v3, v1

    goto :goto_1

    .line 631
    :cond_0
    move-object v3, v9

    .line 633
    :goto_1
    move-object v1, v8

    move-object v2, p1

    move v5, v10

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->paint4BitPixelCodeString(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;[I[BIILccsanandroid/graphics/Paint;Lccsanandroid/graphics/Canvas;)I

    move-result v4

    .line 635
    invoke-virtual {v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->byteAlign()V

    .line 636
    goto :goto_5

    .line 615
    :sswitch_6
    if-ne v0, v3, :cond_2

    .line 616
    if-nez v11, :cond_1

    sget-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->defaultMap2To8:[B

    goto :goto_2

    :cond_1
    move-object v1, v11

    :goto_2
    move-object v3, v1

    goto :goto_4

    .line 617
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 618
    if-nez v12, :cond_3

    sget-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->defaultMap2To4:[B

    goto :goto_3

    :cond_3
    move-object v1, v12

    :goto_3
    move-object v3, v1

    goto :goto_4

    .line 620
    :cond_4
    move-object v3, v9

    .line 622
    :goto_4
    move-object v1, v8

    move-object v2, p1

    move v5, v10

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->paint2BitPixelCodeString(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;[I[BIILccsanandroid/graphics/Paint;Lccsanandroid/graphics/Canvas;)I

    move-result v4

    .line 624
    invoke-virtual {v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->byteAlign()V

    .line 625
    nop

    .line 657
    :goto_5
    goto :goto_0

    .line 658
    :cond_5
    return-void

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_6
        0x11 -> :sswitch_5
        0x12 -> :sswitch_4
        0x20 -> :sswitch_3
        0x21 -> :sswitch_2
        0x22 -> :sswitch_1
        0xf0 -> :sswitch_0
    .end sparse-switch
.end method

.method private static paintPixelDataSubBlocks(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ObjectData;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ClutDefinition;IIILccsanandroid/graphics/Paint;Lccsanandroid/graphics/Canvas;)V
    .locals 7

    .line 585
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 586
    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries8Bit:[I

    goto :goto_0

    .line 587
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 588
    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries4Bit:[I

    goto :goto_0

    .line 590
    :cond_1
    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries2Bit:[I

    .line 592
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ObjectData;->topFieldData:[B

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->paintPixelDataSubBlock([B[IIIILccsanandroid/graphics/Paint;Lccsanandroid/graphics/Canvas;)V

    .line 594
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ObjectData;->bottomFieldData:[B

    add-int/lit8 v4, p4, 0x1

    invoke-static/range {v0 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->paintPixelDataSubBlock([B[IIIILccsanandroid/graphics/Paint;Lccsanandroid/graphics/Canvas;)V

    .line 596
    return-void
.end method

.method private static parseClutDefinition(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    .locals 22

    .line 403
    move-object/from16 v0, p0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 404
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 405
    const/4 v3, 0x2

    add-int/lit8 v4, p1, -0x2

    .line 407
    invoke-static {}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->generateDefault2BitClutEntries()[I

    move-result-object v5

    .line 408
    invoke-static {}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->generateDefault4BitClutEntries()[I

    move-result-object v6

    .line 409
    invoke-static {}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->generateDefault8BitClutEntries()[I

    move-result-object v7

    .line 411
    :goto_0
    if-lez v4, :cond_4

    .line 412
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 413
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 414
    add-int/lit8 v4, v4, -0x2

    .line 417
    and-int/lit16 v10, v9, 0x80

    if-eqz v10, :cond_0

    .line 418
    move-object v10, v5

    goto :goto_1

    .line 419
    :cond_0
    and-int/lit8 v10, v9, 0x40

    if-eqz v10, :cond_1

    .line 420
    move-object v10, v6

    goto :goto_1

    .line 422
    :cond_1
    move-object v10, v7

    .line 429
    :goto_1
    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_2

    .line 430
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 431
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 432
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 433
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 434
    add-int/lit8 v4, v4, -0x4

    goto :goto_2

    .line 436
    :cond_2
    const/4 v9, 0x6

    invoke-virtual {v0, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    shl-int/2addr v11, v3

    .line 437
    const/4 v12, 0x4

    invoke-virtual {v0, v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    shl-int/2addr v13, v12

    .line 438
    invoke-virtual {v0, v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v14

    shl-int/lit8 v12, v14, 0x4

    .line 439
    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v14

    shl-int/lit8 v9, v14, 0x6

    .line 440
    add-int/lit8 v4, v4, -0x2

    move/from16 v21, v13

    move v13, v9

    move v9, v11

    move/from16 v11, v21

    .line 443
    :goto_2
    const/16 v15, 0xff

    if-nez v9, :cond_3

    .line 444
    nop

    .line 445
    nop

    .line 446
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xff

    .line 449
    :cond_3
    and-int/2addr v13, v15

    rsub-int v13, v13, 0xff

    int-to-byte v13, v13

    .line 450
    move/from16 p1, v4

    int-to-double v3, v9

    const-wide v16, 0x3ff66e978d4fdf3bL    # 1.402

    add-int/lit8 v11, v11, -0x80

    move/from16 v18, v2

    int-to-double v1, v11

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v16, v16, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-object v11, v10

    add-double v9, v3, v16

    double-to-int v9, v9

    .line 451
    const-wide v16, 0x3fd60663c74fb54aL    # 0.34414

    add-int/lit8 v12, v12, -0x80

    int-to-double v14, v12

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v16, v16, v14

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v16, v3, v16

    const-wide v19, 0x3fe6da3c21187e7cL    # 0.71414

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v19

    sub-double v1, v16, v1

    double-to-int v1, v1

    .line 452
    const-wide v16, 0x3ffc5a1cac083127L    # 1.772

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v16

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v14

    double-to-int v2, v3

    .line 453
    const/4 v3, 0x0

    const/16 v4, 0xff

    invoke-static {v9, v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->constrainValue(III)I

    move-result v9

    .line 454
    invoke-static {v1, v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->constrainValue(III)I

    move-result v1

    invoke-static {v2, v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->constrainValue(III)I

    move-result v2

    .line 453
    invoke-static {v13, v9, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v1

    aput v1, v11, v8

    .line 455
    move/from16 v4, p1

    move/from16 v2, v18

    const/16 v1, 0x8

    const/4 v3, 0x2

    goto/16 :goto_0

    .line 457
    :cond_4
    move/from16 v18, v2

    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    move/from16 v1, v18

    invoke-direct {v0, v1, v5, v6, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ClutDefinition;-><init>(I[I[I[I)V

    return-object v0
.end method

.method private static parseDisplayDefinition(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$DisplayDefinition;
    .locals 9

    .line 303
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 304
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 305
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 306
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 307
    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 313
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 315
    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 316
    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 317
    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p0

    move v8, p0

    move v6, v2

    move v7, v5

    move v5, v0

    goto :goto_0

    .line 319
    :cond_0
    nop

    .line 320
    nop

    .line 321
    nop

    .line 322
    move v6, v3

    move v8, v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 325
    :goto_0
    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$DisplayDefinition;-><init>(IIIIII)V

    return-object p0
.end method

.method private static parseObjectData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ObjectData;
    .locals 6

    .line 466
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 467
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 468
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 469
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    .line 470
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 472
    nop

    .line 473
    nop

    .line 475
    const/4 v5, 0x0

    if-ne v2, v4, :cond_0

    .line 476
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 478
    mul-int/lit8 v2, v2, 0x10

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    .line 479
    :cond_0
    if-nez v2, :cond_3

    .line 480
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 481
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 482
    const/4 v4, 0x0

    if-lez v2, :cond_1

    .line 483
    new-array v5, v2, [B

    .line 484
    invoke-virtual {p0, v5, v4, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBytes([BII)V

    .line 486
    :cond_1
    if-lez v0, :cond_2

    .line 487
    new-array v2, v0, [B

    .line 488
    invoke-virtual {p0, v2, v4, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBytes([BII)V

    goto :goto_1

    .line 490
    :cond_2
    move-object v2, v5

    goto :goto_1

    .line 479
    :cond_3
    :goto_0
    nop

    .line 494
    move-object v2, v5

    :goto_1
    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ObjectData;

    invoke-direct {p0, v1, v3, v5, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ObjectData;-><init>(IZ[B[B)V

    return-object p0
.end method

.method private static parsePageComposition(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageComposition;
    .locals 9

    .line 333
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 334
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 335
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 336
    invoke-virtual {p0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 337
    sub-int/2addr p1, v3

    .line 339
    new-instance v3, Lccsanandroid/util/SparseArray;

    invoke-direct {v3}, Lccsanandroid/util/SparseArray;-><init>()V

    .line 340
    :goto_0
    if-lez p1, :cond_0

    .line 341
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 342
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 343
    const/16 v6, 0x10

    invoke-virtual {p0, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 344
    invoke-virtual {p0, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 345
    add-int/lit8 p1, p1, -0x6

    .line 346
    new-instance v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageRegion;

    invoke-direct {v8, v7, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageRegion;-><init>(II)V

    invoke-virtual {v3, v5, v8}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 347
    goto :goto_0

    .line 349
    :cond_0
    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageComposition;

    invoke-direct {p0, v1, v2, v4, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageComposition;-><init>(IIILccsanandroid/util/SparseArray;)V

    return-object p0
.end method

.method private static parseRegionComposition(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionComposition;
    .locals 24

    .line 356
    move-object/from16 v0, p0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 357
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 358
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    .line 359
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 360
    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 361
    invoke-virtual {v0, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 362
    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 363
    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 364
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 365
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 366
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 367
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 368
    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v14

    .line 369
    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 370
    add-int/lit8 v15, p1, -0xa

    .line 372
    new-instance v1, Lccsanandroid/util/SparseArray;

    invoke-direct {v1}, Lccsanandroid/util/SparseArray;-><init>()V

    .line 373
    :goto_0
    if-lez v15, :cond_2

    .line 374
    invoke-virtual {v0, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 375
    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 376
    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v19

    .line 377
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v20

    .line 378
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 379
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v21

    .line 380
    add-int/lit8 v15, v15, -0x6

    .line 382
    nop

    .line 383
    nop

    .line 384
    const/4 v5, 0x1

    const/16 v17, 0x0

    if-eq v6, v5, :cond_1

    const/4 v5, 0x2

    if-ne v6, v5, :cond_0

    goto :goto_1

    :cond_0
    const/16 v5, 0x8

    const/16 v22, 0x0

    const/16 v23, 0x0

    goto :goto_2

    :cond_1
    const/4 v5, 0x2

    .line 385
    :goto_1
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v16

    .line 386
    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v17

    .line 387
    add-int/lit8 v15, v15, -0x2

    move/from16 v22, v16

    move/from16 v23, v17

    .line 390
    :goto_2
    new-instance v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionObject;

    move-object/from16 v17, v5

    move/from16 v18, v6

    invoke-direct/range {v17 .. v23}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionObject;-><init>(IIIIII)V

    invoke-virtual {v1, v2, v5}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 393
    const/4 v2, 0x4

    const/4 v5, 0x2

    const/16 v6, 0x10

    goto :goto_0

    .line 395
    :cond_2
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionComposition;

    move-object v2, v0

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v12

    move v11, v13

    move v12, v14

    move-object v13, v1

    invoke-direct/range {v2 .. v13}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionComposition;-><init>(IZIIIIIIIILccsanandroid/util/SparseArray;)V

    return-object v0
.end method

.method private static parseSubtitlingSegment(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;)V
    .locals 6

    .line 230
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 231
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 232
    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 233
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->getBytePosition()I

    move-result v3

    add-int/2addr v3, v1

    .line 235
    mul-int/lit8 v4, v1, 0x8

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 236
    const-string p1, "DvbParser"

    const-string v0, "Data field length exceeds limit"

    invoke-static {p1, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result p1

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 239
    return-void

    .line 242
    :cond_0
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 244
    :pswitch_0
    iget v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v0, :cond_7

    .line 245
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->parseDisplayDefinition(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    move-result-object v0

    iput-object v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->displayDefinition:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    goto/16 :goto_2

    .line 282
    :pswitch_1
    iget v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v0, :cond_1

    .line 283
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->parseObjectData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ObjectData;

    move-result-object v0

    .line 284
    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->objects:Lccsanandroid/util/SparseArray;

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ObjectData;->id:I

    invoke-virtual {p1, v1, v0}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 285
    :cond_1
    iget v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    if-ne v2, v0, :cond_2

    .line 286
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->parseObjectData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ObjectData;

    move-result-object v0

    .line 287
    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Lccsanandroid/util/SparseArray;

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ObjectData;->id:I

    invoke-virtual {p1, v1, v0}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 288
    goto/16 :goto_2

    .line 285
    :cond_2
    :goto_0
    goto/16 :goto_2

    .line 273
    :pswitch_2
    iget v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v0, :cond_3

    .line 274
    invoke-static {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->parseClutDefinition(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    move-result-object v0

    .line 275
    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->cluts:Lccsanandroid/util/SparseArray;

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ClutDefinition;->id:I

    invoke-virtual {p1, v1, v0}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 276
    :cond_3
    iget v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    if-ne v2, v0, :cond_4

    .line 277
    invoke-static {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->parseClutDefinition(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    move-result-object v0

    .line 278
    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Lccsanandroid/util/SparseArray;

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ClutDefinition;->id:I

    invoke-virtual {p1, v1, v0}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 279
    goto :goto_2

    .line 276
    :cond_4
    :goto_1
    goto :goto_2

    .line 263
    :pswitch_3
    iget-object v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageComposition;

    .line 264
    iget v4, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v4, :cond_7

    if-eqz v0, :cond_7

    .line 265
    invoke-static {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->parseRegionComposition(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionComposition;

    move-result-object v1

    .line 266
    iget v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageComposition;->state:I

    if-nez v0, :cond_5

    .line 267
    iget-object v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Lccsanandroid/util/SparseArray;

    iget v2, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionComposition;->id:I

    invoke-virtual {v0, v2}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionComposition;

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionComposition;->mergeFrom(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionComposition;)V

    .line 269
    :cond_5
    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Lccsanandroid/util/SparseArray;

    iget v0, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionComposition;->id:I

    invoke-virtual {p1, v0, v1}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 270
    goto :goto_2

    .line 249
    :pswitch_4
    iget v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v0, :cond_7

    .line 250
    iget-object v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageComposition;

    .line 251
    invoke-static {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->parsePageComposition(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageComposition;

    move-result-object v1

    .line 252
    iget v2, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageComposition;->state:I

    if-eqz v2, :cond_6

    .line 253
    iput-object v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageComposition;

    .line 254
    iget-object v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0}, Lccsanandroid/util/SparseArray;->clear()V

    .line 255
    iget-object v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->cluts:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0}, Lccsanandroid/util/SparseArray;->clear()V

    .line 256
    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->objects:Lccsanandroid/util/SparseArray;

    invoke-virtual {p1}, Lccsanandroid/util/SparseArray;->clear()V

    goto :goto_2

    .line 257
    :cond_6
    if-eqz v0, :cond_7

    iget v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageComposition;->version:I

    iget v2, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageComposition;->version:I

    if-eq v0, v2, :cond_7

    .line 258
    iput-object v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageComposition;

    .line 296
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->getBytePosition()I

    move-result p1

    sub-int/2addr v3, p1

    invoke-virtual {p0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBytes(I)V

    .line 297
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final decode([BI)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .line 129
    move-object/from16 v0, p0

    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;-><init>([BI)V

    .line 130
    :goto_0
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v2, 0x8

    .line 131
    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_0

    .line 132
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->subtitleService:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->parseSubtitlingSegment(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->subtitleService:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageComposition;

    if-nez v1, :cond_1

    .line 136
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 140
    :cond_1
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->subtitleService:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->displayDefinition:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    if-eqz v1, :cond_2

    .line 141
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->subtitleService:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->displayDefinition:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->defaultDisplayDefinition:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    .line 142
    :goto_1
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->bitmap:Lccsanandroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    iget v2, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->width:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->bitmap:Lccsanandroid/graphics/Bitmap;

    invoke-virtual {v3}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->height:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->bitmap:Lccsanandroid/graphics/Bitmap;

    .line 143
    invoke-virtual {v3}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 144
    :cond_3
    iget v2, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->width:I

    add-int/lit8 v2, v2, 0x1

    iget v3, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->height:I

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->bitmap:Lccsanandroid/graphics/Bitmap;

    .line 146
    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->canvas:Lccsanandroid/graphics/Canvas;

    invoke-virtual {v3, v2}, Lccsanandroid/graphics/Canvas;->setBitmap(Lccsanandroid/graphics/Bitmap;)V

    .line 150
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 151
    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->subtitleService:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v3, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageComposition;

    iget-object v3, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageComposition;->regions:Lccsanandroid/util/SparseArray;

    .line 152
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v3}, Lccsanandroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_d

    .line 153
    invoke-virtual {v3, v5}, Lccsanandroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageRegion;

    .line 154
    invoke-virtual {v3, v5}, Lccsanandroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 155
    iget-object v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->subtitleService:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v8, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Lccsanandroid/util/SparseArray;

    invoke-virtual {v8, v7}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionComposition;

    .line 158
    iget v8, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageRegion;->horizontalAddress:I

    iget v9, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->horizontalPositionMinimum:I

    add-int/2addr v8, v9

    .line 160
    iget v6, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageRegion;->verticalAddress:I

    iget v9, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->verticalPositionMinimum:I

    add-int/2addr v6, v9

    .line 162
    iget v9, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionComposition;->width:I

    add-int/2addr v9, v8

    iget v10, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->horizontalPositionMaximum:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 164
    iget v10, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionComposition;->height:I

    add-int/2addr v10, v6

    iget v11, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->verticalPositionMaximum:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 166
    iget-object v11, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->canvas:Lccsanandroid/graphics/Canvas;

    int-to-float v15, v8

    int-to-float v14, v6

    int-to-float v9, v9

    int-to-float v10, v10

    sget-object v16, Lccsanandroid/graphics/Region$Op;->REPLACE:Lccsanandroid/graphics/Region$Op;

    move v12, v15

    move v13, v14

    move/from16 v18, v14

    move v14, v9

    move v9, v15

    move v15, v10

    invoke-virtual/range {v11 .. v16}, Lccsanandroid/graphics/Canvas;->clipRect(FFFFLccsanandroid/graphics/Region$Op;)Z

    .line 169
    iget-object v10, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->subtitleService:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v10, v10, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->cluts:Lccsanandroid/util/SparseArray;

    iget v11, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionComposition;->clutId:I

    invoke-virtual {v10, v11}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    .line 170
    if-nez v10, :cond_5

    .line 171
    iget-object v10, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->subtitleService:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v10, v10, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Lccsanandroid/util/SparseArray;

    iget v11, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionComposition;->clutId:I

    invoke-virtual {v10, v11}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    .line 172
    if-nez v10, :cond_5

    .line 173
    iget-object v10, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->defaultClutDefinition:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    .line 177
    :cond_5
    iget-object v15, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionComposition;->regionObjects:Lccsanandroid/util/SparseArray;

    .line 178
    const/4 v14, 0x0

    :goto_3
    invoke-virtual {v15}, Lccsanandroid/util/SparseArray;->size()I

    move-result v11

    if-ge v14, v11, :cond_9

    .line 179
    invoke-virtual {v15, v14}, Lccsanandroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 180
    invoke-virtual {v15, v14}, Lccsanandroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionObject;

    .line 181
    iget-object v13, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->subtitleService:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v13, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->objects:Lccsanandroid/util/SparseArray;

    invoke-virtual {v13, v11}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ObjectData;

    .line 182
    if-nez v13, :cond_6

    .line 183
    iget-object v13, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->subtitleService:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v13, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Lccsanandroid/util/SparseArray;

    invoke-virtual {v13, v11}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ObjectData;

    goto :goto_4

    .line 182
    :cond_6
    move-object v11, v13

    .line 185
    :goto_4
    if-eqz v11, :cond_8

    .line 186
    iget-boolean v13, v11, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ObjectData;->nonModifyingColorFlag:Z

    if-eqz v13, :cond_7

    const/4 v13, 0x0

    goto :goto_5

    :cond_7
    iget-object v13, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->defaultPaint:Lccsanandroid/graphics/Paint;

    :goto_5
    move-object/from16 v16, v13

    .line 187
    iget v13, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionComposition;->depth:I

    iget v4, v12, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionObject;->horizontalPosition:I

    add-int/2addr v4, v8

    iget v12, v12, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionObject;->verticalPosition:I

    add-int v17, v6, v12

    iget-object v12, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->canvas:Lccsanandroid/graphics/Canvas;

    move-object/from16 v19, v12

    move-object v12, v10

    move/from16 v20, v14

    move v14, v4

    move-object v4, v15

    move/from16 v15, v17

    move-object/from16 v17, v19

    invoke-static/range {v11 .. v17}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->paintPixelDataSubBlocks(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ObjectData;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ClutDefinition;IIILccsanandroid/graphics/Paint;Lccsanandroid/graphics/Canvas;)V

    goto :goto_6

    .line 185
    :cond_8
    move/from16 v20, v14

    move-object v4, v15

    .line 178
    :goto_6
    add-int/lit8 v14, v20, 0x1

    move-object v15, v4

    goto :goto_3

    .line 193
    :cond_9
    iget-boolean v4, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionComposition;->fillFlag:Z

    if-eqz v4, :cond_c

    .line 195
    iget v4, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionComposition;->depth:I

    const/4 v11, 0x3

    if-ne v4, v11, :cond_a

    .line 196
    iget-object v4, v10, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries8Bit:[I

    iget v10, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionComposition;->pixelCode8Bit:I

    aget v4, v4, v10

    goto :goto_7

    .line 197
    :cond_a
    iget v4, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionComposition;->depth:I

    const/4 v11, 0x2

    if-ne v4, v11, :cond_b

    .line 198
    iget-object v4, v10, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries4Bit:[I

    iget v10, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionComposition;->pixelCode4Bit:I

    aget v4, v4, v10

    goto :goto_7

    .line 200
    :cond_b
    iget-object v4, v10, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries2Bit:[I

    iget v10, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionComposition;->pixelCode2Bit:I

    aget v4, v4, v10

    .line 202
    :goto_7
    iget-object v10, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->fillRegionPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v10, v4}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 203
    iget-object v12, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->canvas:Lccsanandroid/graphics/Canvas;

    iget v4, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionComposition;->width:I

    add-int/2addr v4, v8

    int-to-float v15, v4

    iget v4, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionComposition;->height:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    iget-object v10, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->fillRegionPaint:Lccsanandroid/graphics/Paint;

    move v13, v9

    move/from16 v14, v18

    move/from16 v16, v4

    move-object/from16 v17, v10

    invoke-virtual/range {v12 .. v17}, Lccsanandroid/graphics/Canvas;->drawRect(FFFFLccsanandroid/graphics/Paint;)V

    .line 209
    :cond_c
    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->bitmap:Lccsanandroid/graphics/Bitmap;

    iget v10, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionComposition;->width:I

    iget v11, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionComposition;->height:I

    invoke-static {v4, v8, v6, v10, v11}, Lccsanandroid/graphics/Bitmap;->createBitmap(Lccsanandroid/graphics/Bitmap;IIII)Lccsanandroid/graphics/Bitmap;

    move-result-object v20

    .line 211
    new-instance v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Cue;

    iget v6, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->width:I

    int-to-float v6, v6

    div-float v21, v9, v6

    const/16 v22, 0x0

    iget v6, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->height:I

    int-to-float v6, v6

    div-float v23, v18, v6

    const/16 v24, 0x0

    iget v6, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionComposition;->width:I

    int-to-float v6, v6

    iget v8, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->width:I

    int-to-float v8, v8

    div-float v25, v6, v8

    iget v6, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionComposition;->height:I

    int-to-float v6, v6

    iget v7, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->height:I

    int-to-float v7, v7

    div-float v26, v6, v7

    move-object/from16 v19, v4

    invoke-direct/range {v19 .. v26}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Cue;-><init>(Lccsanandroid/graphics/Bitmap;FIFIFF)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->canvas:Lccsanandroid/graphics/Canvas;

    sget-object v6, Lccsanandroid/graphics/PorterDuff$Mode;->CLEAR:Lccsanandroid/graphics/PorterDuff$Mode;

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Lccsanandroid/graphics/Canvas;->drawColor(ILccsanandroid/graphics/PorterDuff$Mode;)V

    .line 152
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 219
    :cond_d
    return-object v2
.end method

.method public final reset()V
    .locals 1

    .line 117
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;->subtitleService:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->reset()V

    .line 118
    return-void
.end method
