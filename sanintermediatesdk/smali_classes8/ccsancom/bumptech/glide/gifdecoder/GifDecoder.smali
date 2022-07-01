.class public Lccsancom/bumptech/glide/gifdecoder/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
    }
.end annotation


# static fields
.field private static final BITMAP_CONFIG:Lccsanandroid/graphics/Bitmap$Config;

.field private static final DISPOSAL_BACKGROUND:I = 0x2

.field private static final DISPOSAL_NONE:I = 0x1

.field private static final DISPOSAL_PREVIOUS:I = 0x3

.field private static final DISPOSAL_UNSPECIFIED:I = 0x0

.field private static final INITIAL_FRAME_POINTER:I = -0x1

.field private static final MAX_STACK_SIZE:I = 0x1000

.field private static final NULL_CODE:I = -0x1

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OPEN_ERROR:I = 0x2

.field public static final STATUS_PARTIAL_DECODE:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field public static final TOTAL_ITERATION_COUNT_FOREVER:I


# instance fields
.field private act:[I

.field private bitmapProvider:Lccsancom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

.field private final block:[B

.field private data:[B

.field private framePointer:I

.field private header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

.field private mainPixels:[B

.field private mainScratch:[I

.field private parser:Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;

.field private final pct:[I

.field private pixelStack:[B

.field private prefix:[S

.field private previousImage:Lccsanandroid/graphics/Bitmap;

.field private rawData:Ljava/nio/ByteBuffer;

.field private savePrevious:Z

.field private status:I

.field private suffix:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    .line 110
    sget-object v0, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    sput-object v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->BITMAP_CONFIG:Lccsanandroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Lccsancom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V
    .locals 2
    .param p1, "provider"    # Lccsancom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/16 v0, 0x100

    new-array v1, v0, [I

    iput-object v1, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->pct:[I

    .line 123
    new-array v0, v0, [B

    iput-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->block:[B

    .line 164
    iput-object p1, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->bitmapProvider:Lccsancom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 165
    new-instance v0, Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {v0}, Lccsancom/bumptech/glide/gifdecoder/GifHeader;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    .line 166
    return-void
.end method

.method private decodeBitmapData(Lccsancom/bumptech/glide/gifdecoder/GifFrame;)V
    .locals 26
    .param p1, "frame"    # Lccsancom/bumptech/glide/gifdecoder/GifFrame;

    .line 591
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_0

    .line 593
    iget-object v2, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    iget v3, v1, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->bufferFrameStart:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 596
    :cond_0
    if-nez v1, :cond_1

    iget-object v2, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v2, v2, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget-object v3, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v3, v3, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->height:I

    goto :goto_0

    :cond_1
    iget v2, v1, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    iget v3, v1, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    :goto_0
    mul-int v2, v2, v3

    .line 600
    .local v2, "npix":I
    iget-object v3, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    if-eqz v3, :cond_2

    array-length v3, v3

    if-ge v3, v2, :cond_3

    .line 602
    :cond_2
    new-array v3, v2, [B

    iput-object v3, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    .line 604
    :cond_3
    iget-object v3, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    const/16 v4, 0x1000

    if-nez v3, :cond_4

    .line 605
    new-array v3, v4, [S

    iput-object v3, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    .line 607
    :cond_4
    iget-object v3, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    if-nez v3, :cond_5

    .line 608
    new-array v3, v4, [B

    iput-object v3, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    .line 610
    :cond_5
    iget-object v3, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    if-nez v3, :cond_6

    .line 611
    const/16 v3, 0x1001

    new-array v3, v3, [B

    iput-object v3, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    .line 615
    :cond_6
    invoke-direct/range {p0 .. p0}, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->read()I

    move-result v3

    .line 616
    .local v3, "dataSize":I
    const/4 v5, 0x1

    shl-int v6, v5, v3

    .line 617
    .local v6, "clear":I
    add-int/lit8 v7, v6, 0x1

    .line 618
    .local v7, "endOfInformation":I
    add-int/lit8 v8, v6, 0x2

    .line 619
    .local v8, "available":I
    const/4 v9, -0x1

    .line 620
    .local v9, "oldCode":I
    add-int/lit8 v10, v3, 0x1

    .line 621
    .local v10, "codeSize":I
    shl-int v11, v5, v10

    sub-int/2addr v11, v5

    .line 622
    .local v11, "codeMask":I
    const/4 v12, 0x0

    .local v12, "code":I
    :goto_1
    const/4 v13, 0x0

    if-ge v12, v6, :cond_7

    .line 624
    iget-object v14, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    aput-short v13, v14, v12

    .line 625
    iget-object v13, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    int-to-byte v14, v12

    aput-byte v14, v13, v12

    .line 622
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 629
    :cond_7
    move v14, v13

    .local v14, "bi":I
    move v15, v13

    .local v15, "pi":I
    move/from16 v16, v13

    .local v16, "top":I
    move/from16 v17, v13

    .local v17, "first":I
    move/from16 v18, v13

    .local v18, "count":I
    move/from16 v19, v13

    .local v19, "bits":I
    move/from16 v20, v13

    .line 630
    .local v20, "datum":I
    const/16 v21, 0x0

    move/from16 v13, v21

    .local v13, "i":I
    :goto_2
    if-ge v13, v2, :cond_15

    .line 632
    const/4 v4, 0x3

    if-nez v18, :cond_9

    .line 634
    invoke-direct/range {p0 .. p0}, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->readBlock()I

    move-result v18

    .line 635
    if-gtz v18, :cond_8

    .line 636
    iput v4, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 637
    move/from16 v23, v3

    move/from16 v24, v6

    goto/16 :goto_8

    .line 639
    :cond_8
    const/4 v14, 0x0

    .line 642
    :cond_9
    iget-object v4, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->block:[B

    aget-byte v4, v4, v14

    and-int/lit16 v4, v4, 0xff

    shl-int v4, v4, v19

    add-int v20, v20, v4

    .line 643
    add-int/lit8 v19, v19, 0x8

    .line 644
    add-int/2addr v14, v5

    .line 645
    const/4 v4, -0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v22, v17

    move/from16 v4, v19

    .line 647
    .end local v17    # "first":I
    .end local v19    # "bits":I
    .local v4, "bits":I
    .local v22, "first":I
    :goto_3
    if-lt v4, v10, :cond_14

    .line 649
    and-int v12, v20, v11

    .line 650
    shr-int v20, v20, v10

    .line 651
    sub-int/2addr v4, v10

    .line 654
    if-ne v12, v6, :cond_a

    .line 656
    add-int/lit8 v10, v3, 0x1

    .line 657
    shl-int v17, v5, v10

    add-int/lit8 v11, v17, -0x1

    .line 658
    add-int/lit8 v8, v6, 0x2

    .line 659
    const/4 v9, -0x1

    .line 660
    goto :goto_3

    .line 663
    :cond_a
    if-le v12, v8, :cond_b

    .line 664
    const/4 v5, 0x3

    iput v5, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 665
    goto :goto_4

    .line 668
    :cond_b
    const/4 v5, 0x3

    if-ne v12, v7, :cond_c

    .line 669
    nop

    .line 630
    :goto_4
    move/from16 v19, v4

    move/from16 v17, v22

    const/16 v4, 0x1000

    const/4 v5, 0x1

    goto :goto_2

    .line 672
    :cond_c
    const/4 v5, -0x1

    if-ne v9, v5, :cond_d

    .line 673
    iget-object v5, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "top":I
    .local v17, "top":I
    iget-object v1, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    aget-byte v1, v1, v12

    aput-byte v1, v5, v16

    .line 674
    move v9, v12

    .line 675
    move/from16 v22, v12

    .line 676
    move-object/from16 v1, p1

    move/from16 v16, v17

    const/4 v5, 0x1

    goto :goto_3

    .line 678
    .end local v17    # "top":I
    .restart local v16    # "top":I
    :cond_d
    move v1, v12

    .line 679
    .local v1, "inCode":I
    if-lt v12, v8, :cond_e

    .line 680
    iget-object v5, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    add-int/lit8 v17, v16, 0x1

    move/from16 v23, v3

    move/from16 v3, v22

    move/from16 v22, v4

    .end local v4    # "bits":I
    .end local v16    # "top":I
    .local v3, "first":I
    .restart local v17    # "top":I
    .local v22, "bits":I
    .local v23, "dataSize":I
    int-to-byte v4, v3

    aput-byte v4, v5, v16

    .line 681
    move v4, v9

    move v12, v4

    move/from16 v16, v17

    .end local v12    # "code":I
    .local v4, "code":I
    goto :goto_5

    .line 679
    .end local v17    # "top":I
    .end local v23    # "dataSize":I
    .local v3, "dataSize":I
    .local v4, "bits":I
    .restart local v12    # "code":I
    .restart local v16    # "top":I
    .local v22, "first":I
    :cond_e
    move/from16 v23, v3

    move/from16 v3, v22

    move/from16 v22, v4

    .line 683
    .end local v4    # "bits":I
    .local v3, "first":I
    .local v22, "bits":I
    .restart local v23    # "dataSize":I
    :goto_5
    if-lt v12, v6, :cond_f

    .line 684
    iget-object v4, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    add-int/lit8 v5, v16, 0x1

    move/from16 v17, v3

    .end local v3    # "first":I
    .end local v16    # "top":I
    .local v5, "top":I
    .local v17, "first":I
    iget-object v3, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    aget-byte v3, v3, v12

    aput-byte v3, v4, v16

    .line 685
    iget-object v3, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    aget-short v12, v3, v12

    move/from16 v16, v5

    move/from16 v3, v17

    goto :goto_5

    .line 687
    .end local v5    # "top":I
    .end local v17    # "first":I
    .restart local v3    # "first":I
    .restart local v16    # "top":I
    :cond_f
    move/from16 v17, v3

    .end local v3    # "first":I
    .restart local v17    # "first":I
    iget-object v3, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    aget-byte v4, v3, v12

    and-int/lit16 v4, v4, 0xff

    .line 688
    .end local v17    # "first":I
    .local v4, "first":I
    iget-object v5, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    add-int/lit8 v17, v16, 0x1

    move/from16 v24, v6

    .end local v6    # "clear":I
    .end local v16    # "top":I
    .local v17, "top":I
    .local v24, "clear":I
    int-to-byte v6, v4

    aput-byte v6, v5, v16

    .line 691
    const/16 v5, 0x1000

    if-ge v8, v5, :cond_11

    .line 692
    iget-object v5, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    int-to-short v6, v9

    aput-short v6, v5, v8

    .line 693
    int-to-byte v5, v4

    aput-byte v5, v3, v8

    .line 694
    add-int/lit8 v8, v8, 0x1

    .line 695
    and-int v3, v8, v11

    if-nez v3, :cond_10

    const/16 v3, 0x1000

    if-ge v8, v3, :cond_12

    .line 696
    add-int/lit8 v10, v10, 0x1

    .line 697
    add-int/2addr v11, v8

    goto :goto_6

    .line 695
    :cond_10
    const/16 v3, 0x1000

    goto :goto_6

    .line 691
    :cond_11
    const/16 v3, 0x1000

    .line 700
    :cond_12
    :goto_6
    move v9, v1

    move/from16 v16, v17

    .line 702
    .end local v17    # "top":I
    .restart local v16    # "top":I
    :goto_7
    if-lez v16, :cond_13

    .line 704
    add-int/lit8 v16, v16, -0x1

    .line 705
    iget-object v5, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    add-int/lit8 v6, v15, 0x1

    .end local v15    # "pi":I
    .local v6, "pi":I
    iget-object v3, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    aget-byte v3, v3, v16

    aput-byte v3, v5, v15

    .line 706
    add-int/lit8 v13, v13, 0x1

    move v15, v6

    const/16 v3, 0x1000

    goto :goto_7

    .line 702
    .end local v6    # "pi":I
    .restart local v15    # "pi":I
    :cond_13
    move-object/from16 v1, p1

    move/from16 v3, v23

    move/from16 v6, v24

    const/4 v5, 0x1

    move/from16 v25, v22

    move/from16 v22, v4

    move/from16 v4, v25

    goto/16 :goto_3

    .line 647
    .end local v1    # "inCode":I
    .end local v23    # "dataSize":I
    .end local v24    # "clear":I
    .local v3, "dataSize":I
    .local v4, "bits":I
    .local v6, "clear":I
    .local v22, "first":I
    :cond_14
    move/from16 v23, v3

    move/from16 v24, v6

    move/from16 v17, v22

    .end local v3    # "dataSize":I
    .end local v6    # "clear":I
    .end local v22    # "first":I
    .local v17, "first":I
    .restart local v23    # "dataSize":I
    .restart local v24    # "clear":I
    move-object/from16 v1, p1

    move/from16 v19, v4

    const/16 v4, 0x1000

    const/4 v5, 0x1

    goto/16 :goto_2

    .line 630
    .end local v4    # "bits":I
    .end local v23    # "dataSize":I
    .end local v24    # "clear":I
    .restart local v3    # "dataSize":I
    .restart local v6    # "clear":I
    .restart local v19    # "bits":I
    :cond_15
    move/from16 v23, v3

    move/from16 v24, v6

    .line 712
    .end local v3    # "dataSize":I
    .end local v6    # "clear":I
    .restart local v23    # "dataSize":I
    .restart local v24    # "clear":I
    :goto_8
    move v1, v15

    .end local v13    # "i":I
    .local v1, "i":I
    :goto_9
    if-ge v1, v2, :cond_16

    .line 713
    iget-object v3, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    const/4 v4, 0x0

    aput-byte v4, v3, v1

    .line 712
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 715
    :cond_16
    return-void
.end method

.method private getHeaderParser()Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;
    .locals 1

    .line 434
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->parser:Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;

    if-nez v0, :cond_0

    .line 435
    new-instance v0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;

    invoke-direct {v0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->parser:Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;

    .line 437
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->parser:Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;

    return-object v0
.end method

.method private getNextBitmap()Lccsanandroid/graphics/Bitmap;
    .locals 4

    .line 756
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->bitmapProvider:Lccsancom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget-object v1, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget-object v2, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v2, v2, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->height:I

    sget-object v3, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->BITMAP_CONFIG:Lccsanandroid/graphics/Bitmap$Config;

    invoke-interface {v0, v1, v2, v3}, Lccsancom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtain(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    .line 757
    .local v0, "result":Lccsanandroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 758
    iget-object v1, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget-object v2, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v2, v2, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->height:I

    invoke-static {v1, v2, v3}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    .line 760
    :cond_0
    invoke-static {v0}, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->setAlpha(Lccsanandroid/graphics/Bitmap;)V

    .line 761
    return-object v0
.end method

.method private read()I
    .locals 3

    .line 721
    const/4 v0, 0x0

    .line 723
    .local v0, "curByte":I
    :try_start_0
    iget-object v1, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v1, 0xff

    .line 726
    goto :goto_0

    .line 724
    :catch_0
    move-exception v1

    .line 725
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    iput v2, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 727
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private readBlock()I
    .locals 5

    .line 736
    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->read()I

    move-result v0

    .line 737
    .local v0, "blockSize":I
    const/4 v1, 0x0

    .line 738
    .local v1, "n":I
    if-lez v0, :cond_1

    .line 741
    :goto_0
    if-ge v1, v0, :cond_0

    .line 742
    sub-int v2, v0, v1

    .line 743
    .local v2, "count":I
    :try_start_0
    iget-object v3, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->block:[B

    invoke-virtual {v3, v4, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    add-int/2addr v1, v2

    goto :goto_0

    .line 747
    .end local v2    # "count":I
    :catch_0
    move-exception v2

    .line 748
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const-string v4, "Error Reading Block"

    invoke-static {v3, v4, v2}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 749
    const/4 v3, 0x1

    iput v3, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    goto :goto_1

    .line 750
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    nop

    .line 752
    :cond_1
    :goto_1
    return v1
.end method

.method private static setAlpha(Lccsanandroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "bitmap"    # Lccsanandroid/graphics/Bitmap;

    .line 766
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 767
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccsanandroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 769
    :cond_0
    return-void
.end method

.method private setPixels(Lccsancom/bumptech/glide/gifdecoder/GifFrame;Lccsancom/bumptech/glide/gifdecoder/GifFrame;)Lccsanandroid/graphics/Bitmap;
    .locals 18
    .param p1, "currentFrame"    # Lccsancom/bumptech/glide/gifdecoder/GifFrame;
    .param p2, "previousFrame"    # Lccsancom/bumptech/glide/gifdecoder/GifFrame;

    .line 477
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v3, v3, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->width:I

    .line 478
    .local v3, "width":I
    iget-object v4, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v12, v4, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->height:I

    .line 481
    .local v12, "height":I
    iget-object v13, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->mainScratch:[I

    .line 484
    .local v13, "dest":[I
    if-nez v2, :cond_0

    .line 485
    const/4 v4, 0x0

    invoke-static {v13, v4}, Ljava/util/Arrays;->fill([II)V

    .line 489
    :cond_0
    if-eqz v2, :cond_5

    iget v4, v2, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    if-lez v4, :cond_5

    .line 492
    iget v4, v2, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 494
    const/4 v4, 0x0

    .line 495
    .local v4, "c":I
    iget-boolean v5, v1, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->transparency:Z

    if-nez v5, :cond_1

    .line 496
    iget-object v5, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v4, v5, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->bgColor:I

    .line 497
    iget-object v5, v1, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    if-eqz v5, :cond_1

    iget-object v5, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v5, v5, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->bgIndex:I

    iget v6, v1, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    if-ne v5, v6, :cond_1

    .line 498
    const/4 v4, 0x0

    .line 502
    :cond_1
    iget v5, v2, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->iy:I

    mul-int v5, v5, v3

    iget v6, v2, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->ix:I

    add-int/2addr v5, v6

    .line 503
    .local v5, "topLeft":I
    iget v6, v2, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    mul-int v6, v6, v3

    add-int/2addr v6, v5

    .line 504
    .local v6, "bottomLeft":I
    move v7, v5

    .local v7, "left":I
    :goto_0
    if-ge v7, v6, :cond_3

    .line 505
    iget v8, v2, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    add-int/2addr v8, v7

    .line 506
    .local v8, "right":I
    move v9, v7

    .local v9, "pointer":I
    :goto_1
    if-ge v9, v8, :cond_2

    .line 507
    aput v4, v13, v9

    .line 506
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 504
    .end local v8    # "right":I
    .end local v9    # "pointer":I
    :cond_2
    add-int/2addr v7, v3

    goto :goto_0

    .end local v4    # "c":I
    .end local v5    # "topLeft":I
    .end local v6    # "bottomLeft":I
    .end local v7    # "left":I
    :cond_3
    goto :goto_2

    .line 510
    :cond_4
    iget v4, v2, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    iget-object v4, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Lccsanandroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    .line 512
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v13

    move v7, v3

    move v10, v3

    move v11, v12

    invoke-virtual/range {v4 .. v11}, Lccsanandroid/graphics/Bitmap;->getPixels([IIIIIII)V

    nop

    .line 517
    :cond_5
    :goto_2
    invoke-direct/range {p0 .. p1}, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->decodeBitmapData(Lccsancom/bumptech/glide/gifdecoder/GifFrame;)V

    .line 520
    const/4 v4, 0x1

    .line 521
    .local v4, "pass":I
    const/16 v5, 0x8

    .line 522
    .local v5, "inc":I
    const/4 v6, 0x0

    .line 523
    .local v6, "iline":I
    const/4 v7, 0x0

    move v14, v4

    move v15, v5

    move v11, v6

    .end local v4    # "pass":I
    .end local v5    # "inc":I
    .end local v6    # "iline":I
    .local v7, "i":I
    .local v11, "iline":I
    .local v14, "pass":I
    .local v15, "inc":I
    :goto_3
    iget v4, v1, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    if-ge v7, v4, :cond_b

    .line 524
    move v4, v7

    .line 525
    .local v4, "line":I
    iget-boolean v5, v1, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->interlace:Z

    if-eqz v5, :cond_7

    .line 526
    iget v5, v1, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    if-lt v11, v5, :cond_6

    .line 527
    add-int/lit8 v14, v14, 0x1

    .line 528
    packed-switch v14, :pswitch_data_0

    goto :goto_4

    .line 537
    :pswitch_0
    const/4 v11, 0x1

    .line 538
    const/4 v15, 0x2

    .line 539
    goto :goto_4

    .line 533
    :pswitch_1
    const/4 v11, 0x2

    .line 534
    const/4 v15, 0x4

    .line 535
    goto :goto_4

    .line 530
    :pswitch_2
    const/4 v11, 0x4

    .line 544
    :cond_6
    :goto_4
    move v4, v11

    .line 545
    add-int/2addr v11, v15

    .line 547
    :cond_7
    iget v5, v1, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->iy:I

    add-int/2addr v4, v5

    .line 548
    iget-object v5, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v5, v5, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->height:I

    if-ge v4, v5, :cond_a

    .line 549
    iget-object v5, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v5, v5, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->width:I

    mul-int v5, v5, v4

    .line 551
    .local v5, "k":I
    iget v6, v1, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->ix:I

    add-int/2addr v6, v5

    .line 553
    .local v6, "dx":I
    iget v8, v1, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    add-int/2addr v8, v6

    .line 554
    .local v8, "dlim":I
    iget-object v9, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v9, v9, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->width:I

    add-int/2addr v9, v5

    if-ge v9, v8, :cond_8

    .line 556
    iget-object v9, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v9, v9, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->width:I

    add-int v8, v5, v9

    .line 559
    :cond_8
    iget v9, v1, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    mul-int v9, v9, v7

    .line 560
    .local v9, "sx":I
    :goto_5
    if-ge v6, v8, :cond_a

    .line 562
    iget-object v10, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    add-int/lit8 v16, v9, 0x1

    .end local v9    # "sx":I
    .local v16, "sx":I
    aget-byte v9, v10, v9

    and-int/lit16 v9, v9, 0xff

    .line 563
    .local v9, "index":I
    iget-object v10, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    aget v10, v10, v9

    .line 564
    .local v10, "c":I
    if-eqz v10, :cond_9

    .line 565
    aput v10, v13, v6

    .line 567
    :cond_9
    nop

    .end local v9    # "index":I
    .end local v10    # "c":I
    add-int/lit8 v6, v6, 0x1

    .line 568
    move/from16 v9, v16

    goto :goto_5

    .line 523
    .end local v4    # "line":I
    .end local v5    # "k":I
    .end local v6    # "dx":I
    .end local v8    # "dlim":I
    .end local v16    # "sx":I
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 573
    .end local v7    # "i":I
    :cond_b
    iget-boolean v4, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    if-eqz v4, :cond_f

    iget v4, v1, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    if-eqz v4, :cond_d

    iget v4, v1, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    goto :goto_6

    :cond_c
    move/from16 v16, v11

    goto :goto_7

    .line 575
    :cond_d
    :goto_6
    iget-object v4, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Lccsanandroid/graphics/Bitmap;

    if-nez v4, :cond_e

    .line 576
    invoke-direct/range {p0 .. p0}, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->getNextBitmap()Lccsanandroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Lccsanandroid/graphics/Bitmap;

    .line 578
    :cond_e
    iget-object v4, v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Lccsanandroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v13

    move v7, v3

    move v10, v3

    move/from16 v16, v11

    .end local v11    # "iline":I
    .local v16, "iline":I
    move v11, v12

    invoke-virtual/range {v4 .. v11}, Lccsanandroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_7

    .line 573
    .end local v16    # "iline":I
    .restart local v11    # "iline":I
    :cond_f
    move/from16 v16, v11

    .line 582
    .end local v11    # "iline":I
    .restart local v16    # "iline":I
    :goto_7
    invoke-direct/range {p0 .. p0}, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->getNextBitmap()Lccsanandroid/graphics/Bitmap;

    move-result-object v17

    .line 583
    .local v17, "result":Lccsanandroid/graphics/Bitmap;
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, v17

    move-object v5, v13

    move v7, v3

    move v10, v3

    move v11, v12

    invoke-virtual/range {v4 .. v11}, Lccsanandroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 584
    return-object v17

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public advance()V
    .locals 2

    .line 196
    iget v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    rem-int/2addr v0, v1

    iput v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    .line 197
    return-void
.end method

.method public clear()V
    .locals 3

    .line 397
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    .line 398
    iput-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->data:[B

    .line 399
    iput-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    .line 400
    iput-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->mainScratch:[I

    .line 401
    iget-object v1, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Lccsanandroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 402
    iget-object v2, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->bitmapProvider:Lccsancom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    invoke-interface {v2, v1}, Lccsancom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->release(Lccsanandroid/graphics/Bitmap;)V

    .line 404
    :cond_0
    iput-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Lccsanandroid/graphics/Bitmap;

    .line 405
    iput-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 406
    return-void
.end method

.method public getCurrentFrameIndex()I
    .locals 1

    .line 239
    iget v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    return v0
.end method

.method public getData()[B
    .locals 1

    .line 177
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->data:[B

    return-object v0
.end method

.method public getDelay(I)I
    .locals 2
    .param p1, "n"    # I

    .line 206
    const/4 v0, -0x1

    .line 207
    .local v0, "delay":I
    if-ltz p1, :cond_0

    iget-object v1, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-ge p1, v1, :cond_0

    .line 208
    iget-object v1, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v1, v1, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/bumptech/glide/gifdecoder/GifFrame;

    iget v0, v1, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->delay:I

    .line 210
    :cond_0
    return v0
.end method

.method public getFrameCount()I
    .locals 1

    .line 230
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 173
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->height:I

    return v0
.end method

.method public getLoopCount()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 255
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 256
    const/4 v0, 0x1

    return v0

    .line 258
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    return v0
.end method

.method public getNetscapeLoopCount()I
    .locals 1

    .line 271
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    return v0
.end method

.method public getNextDelay()I
    .locals 1

    .line 217
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-lez v0, :cond_1

    iget v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    if-gez v0, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->getDelay(I)I

    move-result v0

    return v0

    .line 218
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized getNextFrame()Lccsanandroid/graphics/Bitmap;
    .locals 8

    monitor-enter p0

    .line 314
    :try_start_0
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    if-gez v0, :cond_2

    .line 315
    .end local p0    # "this":Lccsancom/bumptech/glide/gifdecoder/GifDecoder;
    :cond_0
    sget-object v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to decode frame, frameCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v4, v4, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " framePointer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_1
    iput v2, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 320
    :cond_2
    iget v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_9

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    goto :goto_1

    .line 326
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 328
    iget-object v4, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v4, v4, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    iget v5, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/bumptech/glide/gifdecoder/GifFrame;

    .line 329
    .local v4, "currentFrame":Lccsancom/bumptech/glide/gifdecoder/GifFrame;
    const/4 v5, 0x0

    .line 330
    .local v5, "previousFrame":Lccsancom/bumptech/glide/gifdecoder/GifFrame;
    iget v6, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    sub-int/2addr v6, v2

    .line 331
    .local v6, "previousIndex":I
    if-ltz v6, :cond_4

    .line 332
    iget-object v7, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v7, v7, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsancom/bumptech/glide/gifdecoder/GifFrame;

    move-object v5, v7

    .line 336
    :cond_4
    iget-object v7, v4, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    if-eqz v7, :cond_5

    iget-object v7, v4, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v7, v7, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->gct:[I

    :goto_0
    iput-object v7, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    .line 337
    if-nez v7, :cond_7

    .line 338
    sget-object v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 339
    const-string v1, "No Valid Color Table"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_6
    iput v2, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit p0

    return-object v3

    .line 346
    :cond_7
    :try_start_1
    iget-boolean v1, v4, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->transparency:Z

    if-eqz v1, :cond_8

    .line 348
    iget-object v1, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    iget-object v2, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->pct:[I

    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    iget-object v1, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->pct:[I

    iput-object v1, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    .line 352
    iget v2, v4, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    aput v0, v1, v2

    .line 356
    :cond_8
    invoke-direct {p0, v4, v5}, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->setPixels(Lccsancom/bumptech/glide/gifdecoder/GifFrame;Lccsancom/bumptech/glide/gifdecoder/GifFrame;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 321
    .end local v4    # "currentFrame":Lccsancom/bumptech/glide/gifdecoder/GifFrame;
    .end local v5    # "previousFrame":Lccsancom/bumptech/glide/gifdecoder/GifFrame;
    .end local v6    # "previousIndex":I
    :cond_9
    :goto_1
    :try_start_2
    sget-object v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to decode frame, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 324
    :cond_a
    monitor-exit p0

    return-object v3

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStatus()I
    .locals 1

    .line 189
    iget v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    return v0
.end method

.method public getTotalIterationCount()I
    .locals 3

    .line 299
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 300
    return v1

    .line 302
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    if-nez v0, :cond_1

    .line 303
    const/4 v0, 0x0

    return v0

    .line 305
    :cond_1
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 169
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->width:I

    return v0
.end method

.method public read(Ljava/io/InputStream;I)I
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "contentLength"    # I

    .line 366
    if-eqz p1, :cond_2

    .line 368
    const/16 v0, 0x4000

    if-lez p2, :cond_0

    add-int/lit16 v1, p2, 0x1000

    goto :goto_0

    :cond_0
    const/16 v1, 0x4000

    .line 369
    .local v1, "capacity":I
    :goto_0
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 371
    .local v2, "buffer":Ljava/io/ByteArrayOutputStream;
    new-array v0, v0, [B

    .line 372
    .local v0, "data":[B
    :goto_1
    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    move v5, v3

    .local v5, "nRead":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    .line 373
    invoke-virtual {v2, v0, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 375
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 377
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    nop

    .end local v0    # "data":[B
    .end local v1    # "capacity":I
    .end local v2    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "nRead":I
    goto :goto_2

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const-string v2, "Error reading data from stream"

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 382
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 386
    :goto_2
    if-eqz p1, :cond_3

    .line 387
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 389
    :catch_1
    move-exception v0

    .line 390
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v1, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const-string v2, "Error closing stream"

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 391
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :goto_3
    nop

    .line 393
    :goto_4
    iget v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    return v0
.end method

.method public read([B)I
    .locals 4
    .param p1, "data"    # [B

    .line 447
    iput-object p1, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->data:[B

    .line 448
    invoke-direct {p0}, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->getHeaderParser()Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->setData([B)Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;->parseHeader()Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    .line 449
    if-eqz p1, :cond_1

    .line 451
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 452
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 453
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 456
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget-object v1, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int v0, v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    .line 457
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget-object v1, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int v0, v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->mainScratch:[I

    .line 460
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    .line 461
    iget-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v0, v0, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/bumptech/glide/gifdecoder/GifFrame;

    .line 462
    .local v1, "frame":Lccsancom/bumptech/glide/gifdecoder/GifFrame;
    iget v2, v1, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    .line 464
    goto :goto_1

    .line 466
    .end local v1    # "frame":Lccsancom/bumptech/glide/gifdecoder/GifFrame;
    :cond_0
    goto :goto_0

    .line 469
    :cond_1
    :goto_1
    iget v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    return v0
.end method

.method public resetFrameIndex()V
    .locals 1

    .line 243
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    .line 244
    return-void
.end method

.method public setData(Lccsancom/bumptech/glide/gifdecoder/GifHeader;[B)V
    .locals 4
    .param p1, "header"    # Lccsancom/bumptech/glide/gifdecoder/GifHeader;
    .param p2, "data"    # [B

    .line 409
    iput-object p1, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->header:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    .line 410
    iput-object p2, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->data:[B

    .line 411
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 412
    const/4 v1, -0x1

    iput v1, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    .line 414
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 415
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 416
    iget-object v1, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 420
    iput-boolean v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    .line 421
    iget-object v0, p1, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/bumptech/glide/gifdecoder/GifFrame;

    .line 422
    .local v1, "frame":Lccsancom/bumptech/glide/gifdecoder/GifFrame;
    iget v2, v1, Lccsancom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    .line 424
    goto :goto_1

    .line 426
    .end local v1    # "frame":Lccsancom/bumptech/glide/gifdecoder/GifFrame;
    :cond_0
    goto :goto_0

    .line 429
    :cond_1
    :goto_1
    iget v0, p1, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget v1, p1, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int v0, v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    .line 430
    iget v0, p1, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget v1, p1, Lccsancom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int v0, v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->mainScratch:[I

    .line 431
    return-void
.end method
