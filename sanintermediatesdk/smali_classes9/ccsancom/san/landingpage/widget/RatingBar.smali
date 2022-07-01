.class public Lccsancom/san/landingpage/widget/RatingBar;
.super Lccsanandroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/landingpage/widget/RatingBar$OnStarChangeListener;
    }
.end annotation


# static fields
.field private static getDownloadingList:I

.field private static unifiedDownload:I


# instance fields
.field private integerMark:Z

.field private markable:Z

.field private maxScore:I

.field private onStarChangeListener:Lccsancom/san/landingpage/widget/RatingBar$OnStarChangeListener;

.field private paint:Lccsanandroid/graphics/Paint;

.field private passType:Z

.field private scaleScore:F

.field private starCount:I

.field private starDistance:I

.field private starEmptyDrawable:Lccsanandroid/graphics/drawable/Drawable;

.field private starFillBitmap:Lccsanandroid/graphics/Bitmap;

.field private starMark:F

.field private starSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/san/landingpage/widget/RatingBar;->starDistance:I

    .line 3
    const/16 v1, 0xa

    iput v1, p0, Lccsancom/san/landingpage/widget/RatingBar;->maxScore:I

    .line 4
    const/4 v2, 0x5

    iput v2, p0, Lccsancom/san/landingpage/widget/RatingBar;->starCount:I

    .line 6
    const/4 v3, 0x0

    iput v3, p0, Lccsancom/san/landingpage/widget/RatingBar;->starMark:F

    .line 11
    iput-boolean v0, p0, Lccsancom/san/landingpage/widget/RatingBar;->integerMark:Z

    .line 14
    iput-boolean v0, p0, Lccsancom/san/landingpage/widget/RatingBar;->passType:Z

    int-to-float v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 16
    iput v0, p0, Lccsancom/san/landingpage/widget/RatingBar;->scaleScore:F

    .line 20
    invoke-direct {p0, p1, p2}, Lccsancom/san/landingpage/widget/RatingBar;->init(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 3

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 22
    const/4 p3, 0x0

    iput p3, p0, Lccsancom/san/landingpage/widget/RatingBar;->starDistance:I

    .line 23
    const/16 v0, 0xa

    iput v0, p0, Lccsancom/san/landingpage/widget/RatingBar;->maxScore:I

    .line 24
    const/4 v1, 0x5

    iput v1, p0, Lccsancom/san/landingpage/widget/RatingBar;->starCount:I

    .line 26
    const/4 v2, 0x0

    iput v2, p0, Lccsancom/san/landingpage/widget/RatingBar;->starMark:F

    .line 31
    iput-boolean p3, p0, Lccsancom/san/landingpage/widget/RatingBar;->integerMark:Z

    .line 34
    iput-boolean p3, p0, Lccsancom/san/landingpage/widget/RatingBar;->passType:Z

    int-to-float p3, v1

    int-to-float v0, v0

    div-float/2addr p3, v0

    .line 36
    iput p3, p0, Lccsancom/san/landingpage/widget/RatingBar;->scaleScore:F

    .line 45
    invoke-direct {p0, p1, p2}, Lccsancom/san/landingpage/widget/RatingBar;->init(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    return-void
.end method

.method private drawableToBitmap(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/Bitmap;
    .locals 6
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 4
    .end local p1    # "drawable":Lccsanandroid/graphics/drawable/Drawable;
    sget v0, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    and-int/lit8 v1, v0, 0x6f

    or-int/lit8 v2, v0, 0x6f

    xor-int/lit8 v2, v2, -0x1

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 0
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 4
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .line 1
    iget v0, p0, Lccsancom/san/landingpage/widget/RatingBar;->starSize:I

    sget-object v3, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v3}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    new-instance v3, Lccsanandroid/graphics/Canvas;

    invoke-direct {v3, v0}, Lccsanandroid/graphics/Canvas;-><init>(Lccsanandroid/graphics/Bitmap;)V

    .line 3
    iget v5, p0, Lccsancom/san/landingpage/widget/RatingBar;->starSize:I

    invoke-virtual {p1, v1, v1, v5, v5}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4
    invoke-virtual {p1, v3}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    goto :goto_1

    :pswitch_0
    or-int/lit8 p1, v0, 0x1b

    shl-int/lit8 v1, p1, 0x1

    and-int/lit8 v3, v0, 0x1b

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr p1, v3

    sub-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    :cond_2
    or-int/lit8 p1, v0, 0x63

    shl-int/2addr p1, v2

    xor-int/lit8 v0, v0, 0x63

    sub-int/2addr p1, v0

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    rem-int/lit8 p1, p1, 0x2

    return-object v4

    :goto_1
    sget p1, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    and-int/lit8 v3, p1, 0x38

    or-int/lit8 p1, p1, 0x38

    add-int/2addr v3, p1

    and-int/lit8 p1, v3, -0x1

    or-int/lit8 v3, v3, -0x1

    add-int/2addr p1, v3

    rem-int/lit16 v3, p1, 0x80

    sput v3, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    packed-switch v2, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-object v0

    :goto_3
    :try_start_0
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private init(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 16
    .end local p1    # "context":Lccsanandroid/content/Context;
    .end local p2    # "attrs":Lccsanandroid/util/AttributeSet;
    nop

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->setClickable(Z)V

    .line 2
    const-string v1, "san_RatingBar"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedList(Ljava/lang/String;)[I

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    const-string p2, "starDistance"

    invoke-static {v1, p2}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Lccsanandroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lccsancom/san/landingpage/widget/RatingBar;->starDistance:I

    .line 4
    const-string p2, "starSize"

    invoke-static {v1, p2}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {p1, p2, v2}, Lccsanandroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lccsancom/san/landingpage/widget/RatingBar;->starSize:I

    .line 5
    const-string p2, "starCount"

    invoke-static {v1, p2}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/4 v2, 0x5

    invoke-virtual {p1, p2, v2}, Lccsanandroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lccsancom/san/landingpage/widget/RatingBar;->starCount:I

    .line 6
    const-string p2, "maxScore"

    invoke-static {v1, p2}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/16 v2, 0xa

    invoke-virtual {p1, p2, v2}, Lccsanandroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lccsancom/san/landingpage/widget/RatingBar;->maxScore:I

    .line 7
    const-string p2, "starEmpty"

    invoke-static {v1, p2}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lccsanandroid/content/res/TypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lccsancom/san/landingpage/widget/RatingBar;->starEmptyDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 8
    const-string p2, "starFill"

    invoke-static {v1, p2}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lccsanandroid/content/res/TypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p2}, Lccsancom/san/landingpage/widget/RatingBar;->drawableToBitmap(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lccsancom/san/landingpage/widget/RatingBar;->starFillBitmap:Lccsanandroid/graphics/Bitmap;

    .line 9
    iget p2, p0, Lccsancom/san/landingpage/widget/RatingBar;->starCount:I

    int-to-float p2, p2

    iget v1, p0, Lccsancom/san/landingpage/widget/RatingBar;->maxScore:I

    int-to-float v1, v1

    div-float/2addr p2, v1

    iput p2, p0, Lccsancom/san/landingpage/widget/RatingBar;->scaleScore:F

    .line 12
    invoke-virtual {p1}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 14
    new-instance p1, Lccsanandroid/graphics/Paint;

    invoke-direct {p1}, Lccsanandroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lccsancom/san/landingpage/widget/RatingBar;->paint:Lccsanandroid/graphics/Paint;

    .line 15
    invoke-virtual {p1, v0}, Lccsanandroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    iget-object p1, p0, Lccsancom/san/landingpage/widget/RatingBar;->paint:Lccsanandroid/graphics/Paint;

    new-instance p2, Lccsanandroid/graphics/BitmapShader;

    iget-object v1, p0, Lccsancom/san/landingpage/widget/RatingBar;->starFillBitmap:Lccsanandroid/graphics/Bitmap;

    sget-object v2, Lccsanandroid/graphics/Shader$TileMode;->CLAMP:Lccsanandroid/graphics/Shader$TileMode;

    invoke-direct {p2, v1, v2, v2}, Lccsanandroid/graphics/BitmapShader;-><init>(Lccsanandroid/graphics/Bitmap;Lccsanandroid/graphics/Shader$TileMode;Lccsanandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, p2}, Lccsanandroid/graphics/Paint;->setShader(Lccsanandroid/graphics/Shader;)Lccsanandroid/graphics/Shader;

    sget p1, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    add-int/lit8 p1, p1, 0x34

    xor-int/lit8 p2, p1, -0x1

    and-int/lit8 p1, p1, -0x1

    shl-int/2addr p1, v0

    add-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    rem-int/lit8 p2, p2, 0x2

    return-void
.end method


# virtual methods
.method public getStarMark()F
    .locals 3

    .line 1
    sget v0, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x14

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget v0, p0, Lccsancom/san/landingpage/widget/RatingBar;->starMark:F

    and-int/lit8 v2, v1, 0x9

    xor-int/lit8 v1, v1, 0x9

    or-int/2addr v1, v2

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    return v0
.end method

.method protected onDraw(Lccsanandroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 25
    .end local p1    # "canvas":Lccsanandroid/graphics/Canvas;
    sget v2, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    and-int/lit8 v3, v2, 0x23

    xor-int/lit8 v2, v2, 0x23

    or-int/2addr v2, v3

    add-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 7
    const/16 v2, 0x46

    goto :goto_0

    :cond_0
    const/16 v2, 0x4a

    :goto_0
    const/4 v8, 0x0

    packed-switch v2, :pswitch_data_0

    .line 1
    invoke-super/range {p0 .. p1}, Lccsanandroid/view/View;->onDraw(Lccsanandroid/graphics/Canvas;)V

    .line 2
    iget-object v2, v1, Lccsancom/san/landingpage/widget/RatingBar;->starFillBitmap:Lccsanandroid/graphics/Bitmap;

    goto :goto_2

    .line 1
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lccsanandroid/view/View;->onDraw(Lccsanandroid/graphics/Canvas;)V

    .line 2
    iget-object v2, v1, Lccsancom/san/landingpage/widget/RatingBar;->starFillBitmap:Lccsanandroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 7
    const/16 v2, 0x49

    goto :goto_1

    :cond_1
    const/16 v2, 0x38

    :goto_1
    packed-switch v2, :pswitch_data_1

    :pswitch_1
    goto :goto_4

    .line 2
    :goto_2
    :try_start_0
    invoke-super {v8}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_2

    .line 7
    const/4 v2, 0x6

    goto :goto_3

    :cond_2
    const/16 v2, 0x5d

    :goto_3
    packed-switch v2, :pswitch_data_2

    .line 2
    :pswitch_2
    iget-object v2, v1, Lccsancom/san/landingpage/widget/RatingBar;->starEmptyDrawable:Lccsanandroid/graphics/drawable/Drawable;

    const/16 v3, 0x1d

    const/4 v9, 0x1

    if-nez v2, :cond_5

    sget v0, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    or-int/lit8 v2, v0, 0x1d

    shl-int/2addr v2, v9

    xor-int/2addr v0, v3

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    .line 25
    :cond_3
    nop

    :goto_4
    nop

    .line 2
    sget v0, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    and-int/lit8 v2, v0, 0x69

    or-int/lit8 v0, v0, 0x69

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_4

    .line 7
    const/16 v0, 0x57

    goto :goto_5

    :cond_4
    const/4 v0, 0x5

    :goto_5
    packed-switch v0, :pswitch_data_3

    .line 2
    goto :goto_6

    .line 25
    :pswitch_3
    return-void

    .line 2
    :goto_6
    :try_start_1
    array-length v0, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    throw v2

    :cond_5
    sget v2, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    add-int/lit8 v2, v2, 0x1f

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v10, 0x0

    if-eqz v2, :cond_6

    .line 7
    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    packed-switch v2, :pswitch_data_4

    .line 25
    goto :goto_8

    .line 2
    :pswitch_4
    nop

    .line 5
    :goto_8
    const/4 v2, 0x0

    :goto_9
    iget v4, v1, Lccsancom/san/landingpage/widget/RatingBar;->starCount:I

    if-ge v2, v4, :cond_7

    .line 7
    const/16 v4, 0x1d

    goto :goto_a

    :cond_7
    const/16 v4, 0x3a

    :goto_a
    const/16 v11, 0x59

    packed-switch v4, :pswitch_data_5

    .line 9
    iget v2, v1, Lccsancom/san/landingpage/widget/RatingBar;->starMark:F

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v12

    if-lez v3, :cond_a

    goto/16 :goto_e

    .line 14
    :pswitch_5
    sget v4, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    and-int/lit8 v5, v4, 0x59

    xor-int/2addr v4, v11

    or-int/2addr v4, v5

    or-int v6, v5, v4

    shl-int/2addr v6, v9

    xor-int/2addr v4, v5

    sub-int/2addr v6, v4

    rem-int/lit16 v4, v6, 0x80

    sput v4, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_8

    .line 7
    const/4 v4, 0x0

    goto :goto_b

    :cond_8
    const/4 v4, 0x1

    :goto_b
    packed-switch v4, :pswitch_data_6

    .line 6
    iget-object v4, v1, Lccsancom/san/landingpage/widget/RatingBar;->starEmptyDrawable:Lccsanandroid/graphics/drawable/Drawable;

    iget v5, v1, Lccsancom/san/landingpage/widget/RatingBar;->starDistance:I

    iget v6, v1, Lccsancom/san/landingpage/widget/RatingBar;->starSize:I

    xor-int v7, v5, v6

    and-int v11, v5, v6

    shl-int/2addr v11, v9

    add-int/2addr v7, v11

    mul-int v7, v7, v2

    neg-int v11, v6

    neg-int v11, v11

    and-int v12, v5, v11

    xor-int/lit8 v13, v12, -0x1

    or-int/2addr v5, v11

    and-int/2addr v5, v13

    shl-int/lit8 v11, v12, 0x1

    xor-int/lit8 v11, v11, -0x1

    sub-int/2addr v5, v11

    sub-int/2addr v5, v9

    mul-int v5, v5, v2

    xor-int v11, v5, v6

    and-int/2addr v5, v6

    or-int/2addr v5, v11

    shl-int/2addr v5, v9

    sub-int/2addr v5, v11

    invoke-virtual {v4, v7, v10, v5, v6}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7
    iget-object v4, v1, Lccsancom/san/landingpage/widget/RatingBar;->starEmptyDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    and-int/lit8 v4, v2, -0x2

    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    and-int/lit8 v2, v2, 0x1

    shl-int/2addr v2, v9

    xor-int v5, v4, v2

    and-int/2addr v2, v4

    shl-int/2addr v2, v9

    add-int/2addr v5, v2

    move v2, v5

    goto :goto_c

    .line 6
    :pswitch_6
    iget-object v4, v1, Lccsancom/san/landingpage/widget/RatingBar;->starEmptyDrawable:Lccsanandroid/graphics/drawable/Drawable;

    iget v5, v1, Lccsancom/san/landingpage/widget/RatingBar;->starDistance:I

    iget v6, v1, Lccsancom/san/landingpage/widget/RatingBar;->starSize:I

    div-int v7, v5, v6

    neg-int v11, v2

    and-int/lit8 v12, v11, -0x1

    xor-int/lit8 v12, v12, -0x1

    or-int/lit8 v11, v11, -0x1

    and-int/2addr v11, v12

    neg-int v11, v11

    xor-int v12, v7, v11

    and-int/2addr v7, v11

    shl-int/2addr v7, v9

    add-int/2addr v12, v7

    sub-int/2addr v12, v9

    rem-int/2addr v5, v6

    mul-int v5, v5, v2

    mul-int v5, v5, v6

    invoke-virtual {v4, v12, v10, v5, v6}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7
    iget-object v4, v1, Lccsancom/san/landingpage/widget/RatingBar;->starEmptyDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x47

    .line 2
    :goto_c
    sget v4, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    and-int/lit8 v5, v4, 0x71

    xor-int/lit8 v4, v4, 0x71

    or-int/2addr v4, v5

    add-int/2addr v5, v4

    rem-int/lit16 v4, v5, 0x80

    sput v4, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_9

    .line 7
    const/16 v4, 0x34

    goto :goto_d

    :cond_9
    const/16 v4, 0x3d

    :goto_d
    packed-switch v4, :pswitch_data_7

    .line 25
    goto/16 :goto_9

    .line 2
    :pswitch_7
    goto/16 :goto_9

    .line 7
    :goto_e
    const/4 v3, 0x0

    goto :goto_f

    :cond_a
    const/4 v3, 0x1

    :goto_f
    packed-switch v3, :pswitch_data_8

    .line 25
    iget v3, v1, Lccsancom/san/landingpage/widget/RatingBar;->starSize:I

    int-to-float v6, v3

    mul-float v5, v6, v2

    iget-object v7, v1, Lccsancom/san/landingpage/widget/RatingBar;->paint:Lccsanandroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lccsanandroid/graphics/Canvas;->drawRect(FFFFLccsanandroid/graphics/Paint;)V

    goto/16 :goto_1a

    .line 2
    :pswitch_8
    sget v2, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    and-int/lit8 v3, v2, 0x4f

    xor-int/lit8 v4, v3, -0x1

    or-int/lit8 v2, v2, 0x4f

    and-int/2addr v2, v4

    shl-int/2addr v3, v9

    xor-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    sub-int/2addr v2, v9

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_b

    .line 10
    :cond_b
    iget v2, v1, Lccsancom/san/landingpage/widget/RatingBar;->starSize:I

    int-to-float v6, v2

    iget-object v7, v1, Lccsancom/san/landingpage/widget/RatingBar;->paint:Lccsanandroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p1

    move v5, v6

    invoke-virtual/range {v2 .. v7}, Lccsanandroid/graphics/Canvas;->drawRect(FFFFLccsanandroid/graphics/Paint;)V

    .line 11
    iget v2, v1, Lccsancom/san/landingpage/widget/RatingBar;->starMark:F

    float-to-int v3, v2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/4 v13, 0x0

    cmpl-float v2, v2, v13

    if-nez v2, :cond_c

    .line 7
    const/4 v2, 0x1

    goto :goto_10

    :cond_c
    const/4 v2, 0x0

    :goto_10
    const/16 v14, 0x3c

    packed-switch v2, :pswitch_data_9

    .line 2
    sget v2, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    or-int/lit8 v3, v2, 0x53

    shl-int/2addr v3, v9

    xor-int/lit8 v2, v2, 0x53

    sub-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_11

    goto/16 :goto_15

    .line 14
    :pswitch_9
    nop

    .line 2
    sget v2, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    xor-int/lit8 v3, v2, 0x53

    and-int/lit8 v4, v2, 0x53

    or-int/2addr v3, v4

    shl-int/2addr v3, v9

    and-int/lit8 v4, v2, -0x54

    xor-int/lit8 v2, v2, -0x1

    and-int/lit8 v2, v2, 0x53

    or-int/2addr v2, v4

    neg-int v2, v2

    xor-int/lit8 v2, v2, -0x1

    sub-int/2addr v3, v2

    sub-int/2addr v3, v9

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_d

    .line 25
    :cond_d
    const/4 v15, 0x1

    .line 14
    :goto_11
    int-to-float v2, v15

    .line 17
    iget v3, v1, Lccsancom/san/landingpage/widget/RatingBar;->starMark:F

    sub-float/2addr v3, v12

    cmpg-float v2, v2, v3

    if-gez v2, :cond_e

    .line 7
    const/16 v2, 0x59

    goto :goto_12

    :cond_e
    const/16 v2, 0x32

    :goto_12
    packed-switch v2, :pswitch_data_a

    .line 21
    iget v2, v1, Lccsancom/san/landingpage/widget/RatingBar;->starDistance:I

    iget v3, v1, Lccsancom/san/landingpage/widget/RatingBar;->starSize:I

    neg-int v3, v3

    neg-int v3, v3

    and-int v4, v2, v3

    xor-int/2addr v2, v3

    or-int/2addr v2, v4

    neg-int v2, v2

    neg-int v2, v2

    and-int v3, v4, v2

    or-int/2addr v2, v4

    add-int/2addr v3, v2

    int-to-float v2, v3

    invoke-virtual {v0, v2, v13}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 22
    iget v2, v1, Lccsancom/san/landingpage/widget/RatingBar;->starSize:I

    int-to-float v2, v2

    iget v3, v1, Lccsancom/san/landingpage/widget/RatingBar;->starMark:F

    float-to-int v4, v3

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x41200000    # 10.0f

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v12

    div-float/2addr v3, v4

    mul-float v5, v2, v3

    iget v2, v1, Lccsancom/san/landingpage/widget/RatingBar;->starSize:I

    int-to-float v6, v2

    iget-object v7, v1, Lccsancom/san/landingpage/widget/RatingBar;->paint:Lccsanandroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lccsanandroid/graphics/Canvas;->drawRect(FFFFLccsanandroid/graphics/Paint;)V

    goto :goto_14

    .line 25
    :pswitch_a
    sget v2, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    and-int/lit8 v3, v2, 0x5b

    xor-int/lit8 v2, v2, 0x5b

    or-int/2addr v2, v3

    neg-int v2, v2

    neg-int v2, v2

    or-int v4, v3, v2

    shl-int/2addr v4, v9

    xor-int/2addr v2, v3

    sub-int/2addr v4, v2

    rem-int/lit16 v2, v4, 0x80

    sput v2, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_f

    .line 18
    :cond_f
    iget v2, v1, Lccsancom/san/landingpage/widget/RatingBar;->starDistance:I

    iget v3, v1, Lccsancom/san/landingpage/widget/RatingBar;->starSize:I

    xor-int/lit8 v3, v3, -0x1

    neg-int v3, v3

    xor-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    sub-int/2addr v2, v9

    and-int/lit8 v3, v2, -0x1

    or-int/lit8 v2, v2, -0x1

    add-int/2addr v3, v2

    int-to-float v2, v3

    invoke-virtual {v0, v2, v13}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 19
    iget v2, v1, Lccsancom/san/landingpage/widget/RatingBar;->starSize:I

    int-to-float v6, v2

    iget-object v7, v1, Lccsancom/san/landingpage/widget/RatingBar;->paint:Lccsanandroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p1

    move v5, v6

    invoke-virtual/range {v2 .. v7}, Lccsanandroid/graphics/Canvas;->drawRect(FFFFLccsanandroid/graphics/Paint;)V

    and-int/lit8 v2, v15, -0x6a

    or-int/lit8 v3, v15, -0x6a

    neg-int v3, v3

    neg-int v3, v3

    and-int v4, v2, v3

    or-int/2addr v2, v3

    add-int/2addr v4, v2

    xor-int/lit8 v2, v4, 0x6b

    and-int/lit8 v3, v4, 0x6b

    or-int/2addr v3, v2

    shl-int/2addr v3, v9

    neg-int v2, v2

    xor-int v4, v3, v2

    and-int/2addr v2, v3

    shl-int/2addr v2, v9

    add-int v15, v4, v2

    .line 14
    sget v2, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    xor-int/lit8 v3, v2, 0x51

    and-int/lit8 v2, v2, 0x51

    shl-int/2addr v2, v9

    add-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_10

    .line 7
    const/4 v2, 0x0

    goto :goto_13

    :cond_10
    const/4 v2, 0x1

    :goto_13
    packed-switch v2, :pswitch_data_b

    .line 14
    goto/16 :goto_11

    .line 25
    :pswitch_b
    goto/16 :goto_11

    .line 14
    :goto_14
    sget v0, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    or-int/lit8 v2, v0, 0x3c

    shl-int/2addr v2, v9

    xor-int/2addr v0, v14

    sub-int/2addr v2, v0

    and-int/lit8 v0, v2, -0x1

    or-int/lit8 v2, v2, -0x1

    add-int/2addr v0, v2

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_16

    goto/16 :goto_1b

    .line 11
    :cond_11
    :goto_15
    nop

    .line 2
    add-int/2addr v2, v9

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_12

    .line 25
    :cond_12
    const/4 v10, 0x1

    .line 11
    :goto_16
    int-to-float v2, v10

    .line 12
    iget v3, v1, Lccsancom/san/landingpage/widget/RatingBar;->starMark:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_13

    .line 7
    const/16 v2, 0xc

    goto :goto_17

    :cond_13
    const/16 v2, 0x13

    :goto_17
    packed-switch v2, :pswitch_data_c

    goto/16 :goto_1c

    .line 2
    :pswitch_c
    sget v2, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    or-int/lit8 v3, v2, 0x15

    shl-int/lit8 v4, v3, 0x1

    and-int/lit8 v2, v2, 0x15

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v3

    neg-int v2, v2

    xor-int/lit8 v2, v2, -0x1

    sub-int/2addr v4, v2

    sub-int/2addr v4, v9

    rem-int/lit16 v2, v4, 0x80

    sput v2, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_14

    .line 7
    const/16 v2, 0x3c

    goto :goto_18

    :cond_14
    const/16 v2, 0x36

    :goto_18
    packed-switch v2, :pswitch_data_d

    .line 13
    iget v2, v1, Lccsancom/san/landingpage/widget/RatingBar;->starDistance:I

    iget v3, v1, Lccsancom/san/landingpage/widget/RatingBar;->starSize:I

    shl-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v0, v2, v3}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 14
    iget v2, v1, Lccsancom/san/landingpage/widget/RatingBar;->starSize:I

    int-to-float v6, v2

    iget-object v7, v1, Lccsancom/san/landingpage/widget/RatingBar;->paint:Lccsanandroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v2, p1

    move v5, v6

    invoke-virtual/range {v2 .. v7}, Lccsanandroid/graphics/Canvas;->drawRect(FFFFLccsanandroid/graphics/Paint;)V

    xor-int/lit16 v2, v10, 0x98

    and-int/lit16 v3, v10, 0x98

    or-int/2addr v2, v3

    shl-int/2addr v2, v9

    xor-int/lit8 v3, v3, -0x1

    or-int/lit16 v4, v10, 0x98

    and-int/2addr v3, v4

    neg-int v3, v3

    xor-int v4, v2, v3

    and-int/2addr v2, v3

    shl-int/2addr v2, v9

    add-int/2addr v4, v2

    xor-int/lit8 v2, v4, -0x42

    and-int/lit8 v3, v4, -0x42

    or-int/2addr v2, v3

    shl-int/2addr v2, v9

    xor-int/lit8 v3, v3, -0x1

    or-int/lit8 v4, v4, -0x42

    and-int/2addr v3, v4

    neg-int v3, v3

    or-int v4, v2, v3

    shl-int/2addr v4, v9

    xor-int/2addr v2, v3

    goto :goto_19

    .line 13
    :pswitch_d
    iget v2, v1, Lccsancom/san/landingpage/widget/RatingBar;->starDistance:I

    iget v3, v1, Lccsancom/san/landingpage/widget/RatingBar;->starSize:I

    neg-int v3, v3

    neg-int v3, v3

    and-int v4, v2, v3

    or-int/2addr v2, v3

    add-int/2addr v4, v2

    int-to-float v2, v4

    invoke-virtual {v0, v2, v13}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 14
    iget v2, v1, Lccsancom/san/landingpage/widget/RatingBar;->starSize:I

    int-to-float v6, v2

    iget-object v7, v1, Lccsancom/san/landingpage/widget/RatingBar;->paint:Lccsanandroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p1

    move v5, v6

    invoke-virtual/range {v2 .. v7}, Lccsanandroid/graphics/Canvas;->drawRect(FFFFLccsanandroid/graphics/Paint;)V

    xor-int/lit8 v2, v10, 0x2a

    and-int/lit8 v3, v10, 0x2a

    or-int/2addr v2, v3

    shl-int/2addr v2, v9

    xor-int/lit8 v3, v3, -0x1

    or-int/lit8 v4, v10, 0x2a

    and-int/2addr v3, v4

    sub-int/2addr v2, v3

    const/16 v3, -0x29

    xor-int/lit8 v4, v2, -0x29

    and-int/lit8 v5, v2, -0x29

    or-int/2addr v4, v5

    shl-int/2addr v4, v9

    and-int/lit8 v5, v2, 0x28

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v3

    or-int/2addr v2, v5

    :goto_19
    sub-int/2addr v4, v2

    move v10, v4

    .line 2
    sget v2, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    or-int/lit8 v3, v2, 0x14

    shl-int/2addr v3, v9

    xor-int/lit8 v2, v2, 0x14

    sub-int/2addr v3, v2

    sub-int/2addr v3, v9

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_15

    .line 25
    :cond_15
    goto/16 :goto_16

    .line 2
    :goto_1a
    sget v0, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    or-int/lit8 v2, v0, 0x22

    shl-int/2addr v2, v9

    xor-int/lit8 v0, v0, 0x22

    sub-int/2addr v2, v0

    sub-int/2addr v2, v10

    sub-int/2addr v2, v9

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_16

    .line 25
    :cond_16
    :goto_1b
    nop

    :goto_1c
    nop

    .line 2
    sget v0, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    and-int/lit8 v2, v0, 0x1e

    or-int/lit8 v0, v0, 0x1e

    add-int/2addr v2, v0

    xor-int/lit8 v0, v2, -0x1

    and-int/lit8 v2, v2, -0x1

    shl-int/2addr v2, v9

    add-int/2addr v0, v2

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_17

    .line 7
    const/16 v0, 0x2d

    goto :goto_1d

    :cond_17
    const/16 v0, 0xf

    :goto_1d
    packed-switch v0, :pswitch_data_e

    .line 2
    goto :goto_1e

    .line 25
    :pswitch_e
    return-void

    .line 2
    :goto_1e
    :try_start_2
    invoke-super {v8}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    move-object v2, v0

    throw v2

    .line 25
    :catchall_2
    move-exception v0

    move-object v2, v0

    goto :goto_20

    :goto_1f
    throw v2

    :goto_20
    goto :goto_1f

    :pswitch_data_0
    .packed-switch 0x4a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x49
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5d
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1d
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x34
        :pswitch_7
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x59
        :pswitch_a
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x1
        :pswitch_b
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0xc
        :pswitch_c
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x36
        :pswitch_d
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0xf
        :pswitch_e
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 2
    .end local p1    # "widthMeasureSpec":I
    .end local p2    # "heightMeasureSpec":I
    sget v0, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    invoke-super {p0, p1, p2}, Lccsanandroid/view/View;->onMeasure(II)V

    .line 2
    iget p1, p0, Lccsancom/san/landingpage/widget/RatingBar;->starSize:I

    iget p2, p0, Lccsancom/san/landingpage/widget/RatingBar;->starCount:I

    mul-int v0, p1, p2

    iget v1, p0, Lccsancom/san/landingpage/widget/RatingBar;->starDistance:I

    or-int/lit8 v2, p2, -0x1

    shl-int/lit8 v2, v2, 0x1

    xor-int/lit8 p2, p2, -0x1

    sub-int/2addr v2, p2

    mul-int v1, v1, v2

    or-int p2, v0, v1

    shl-int/lit8 p2, p2, 0x1

    xor-int/lit8 v2, v1, -0x1

    and-int/2addr v2, v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    or-int/2addr v0, v2

    sub-int/2addr p2, v0

    invoke-virtual {p0, p2, p1}, Lccsanandroid/view/View;->setMeasuredDimension(II)V

    sget p1, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    add-int/lit8 p1, p1, 0x18

    add-int/lit8 p1, p1, -0x1

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/16 p1, 0x4c

    goto :goto_0

    :cond_1
    const/16 p1, 0x4a

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x4a
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Lccsanandroid/view/MotionEvent;

    .line 28
    .end local p1    # "event":Lccsanandroid/view/MotionEvent;
    sget v0, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    xor-int/lit8 v1, v0, 0x53

    and-int/lit8 v0, v0, 0x53

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    .line 1
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    iget-boolean v1, p0, Lccsancom/san/landingpage/widget/RatingBar;->markable:Z

    goto :goto_3

    :pswitch_0
    iget-boolean v1, p0, Lccsancom/san/landingpage/widget/RatingBar;->markable:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    :goto_2
    goto/16 :goto_f

    :goto_3
    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_2

    const/16 v1, 0x3c

    goto :goto_4

    :cond_2
    const/16 v1, 0x62

    :goto_4
    packed-switch v1, :pswitch_data_2

    goto :goto_2

    .line 4
    :pswitch_1
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    if-gez v1, :cond_3

    .line 1
    const/4 v4, 0x0

    goto :goto_5

    :cond_3
    const/4 v4, 0x1

    :goto_5
    packed-switch v4, :pswitch_data_3

    sget v1, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    xor-int/lit8 v4, v1, 0x29

    and-int/lit8 v5, v1, 0x29

    shl-int/2addr v5, v2

    neg-int v5, v5

    neg-int v5, v5

    or-int v6, v4, v5

    shl-int/2addr v6, v2

    xor-int/2addr v4, v5

    sub-int/2addr v6, v4

    rem-int/lit16 v4, v6, 0x80

    sput v4, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_4

    .line 4
    :cond_4
    nop

    .line 1
    and-int/lit8 v4, v1, 0x27

    xor-int/lit8 v1, v1, 0x27

    or-int/2addr v1, v4

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v4, v1

    sub-int/2addr v4, v2

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    .line 28
    :cond_5
    const/4 v1, 0x0

    .line 6
    :pswitch_2
    invoke-virtual {p0}, Lccsanandroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-le v1, v4, :cond_6

    .line 1
    const/4 v4, 0x0

    goto :goto_6

    :cond_6
    const/4 v4, 0x1

    :goto_6
    packed-switch v4, :pswitch_data_4

    goto :goto_a

    .line 28
    :pswitch_3
    sget v1, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x15

    sub-int/2addr v1, v2

    and-int/lit8 v4, v1, -0x1

    or-int/lit8 v1, v1, -0x1

    add-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_7

    .line 1
    goto :goto_7

    :cond_7
    const/4 v0, 0x1

    :goto_7
    packed-switch v0, :pswitch_data_5

    .line 28
    invoke-virtual {p0}, Lccsanandroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_8

    .line 6
    :pswitch_4
    invoke-virtual {p0}, Lccsanandroid/view/View;->getMeasuredWidth()I

    move-result v0

    move v1, v0

    goto :goto_9

    .line 28
    :goto_8
    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v0

    :goto_9
    goto :goto_a

    :catchall_0
    move-exception p1

    throw p1

    .line 9
    :goto_a
    invoke-virtual {p0}, Lccsanandroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v4, p0, Lccsancom/san/landingpage/widget/RatingBar;->starCount:I

    div-int/2addr v0, v4

    .line 11
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_9

    .line 1
    sget v0, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    and-int/lit8 v1, v0, -0x3c

    xor-int/lit8 v4, v0, -0x1

    and-int/lit8 v4, v4, 0x3b

    or-int/2addr v1, v4

    and-int/lit8 v0, v0, 0x3b

    shl-int/2addr v0, v2

    neg-int v0, v0

    neg-int v0, v0

    or-int v4, v1, v0

    shl-int/2addr v4, v2

    xor-int/2addr v0, v1

    sub-int/2addr v4, v0

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_8

    const/16 v0, 0x54

    goto :goto_b

    :cond_8
    const/16 v0, 0x5a

    :goto_b
    packed-switch v0, :pswitch_data_6

    .line 28
    goto :goto_d

    .line 11
    :cond_9
    int-to-float v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    .line 14
    invoke-virtual {p0}, Lccsanandroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    div-float/2addr v0, v4

    iget v1, p0, Lccsancom/san/landingpage/widget/RatingBar;->maxScore:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-virtual {p0, v0}, Lccsancom/san/landingpage/widget/RatingBar;->setStarMark(F)V

    .line 28
    sget v0, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    .line 1
    const/16 v0, 0x3a

    goto :goto_c

    :cond_a
    const/4 v0, 0x7

    :goto_c
    packed-switch v0, :pswitch_data_7

    .line 28
    :goto_d
    :pswitch_5
    nop

    .line 27
    :pswitch_6
    invoke-virtual {p0}, Lccsanandroid/view/View;->invalidate()V

    .line 28
    invoke-super {p0, p1}, Lccsanandroid/view/View;->onTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result p1

    .line 1
    sget v0, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    xor-int/lit8 v1, v0, 0x2f

    and-int/lit8 v4, v0, 0x2f

    or-int/2addr v1, v4

    shl-int/2addr v1, v2

    and-int/lit8 v4, v0, -0x30

    xor-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, 0x2f

    or-int/2addr v0, v4

    neg-int v0, v0

    xor-int v4, v1, v0

    and-int/2addr v0, v1

    shl-int/2addr v0, v2

    add-int/2addr v4, v0

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_b

    const/16 v0, 0x45

    goto :goto_e

    :cond_b
    const/16 v0, 0xe

    :goto_e
    packed-switch v0, :pswitch_data_8

    .line 28
    return p1

    .line 1
    :pswitch_7
    :try_start_2
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return p1

    :catchall_1
    move-exception p1

    throw p1

    .line 28
    :goto_f
    sget v0, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    and-int/lit8 v1, v0, 0x35

    xor-int/lit8 v3, v1, -0x1

    or-int/lit8 v0, v0, 0x35

    and-int/2addr v0, v3

    shl-int/2addr v1, v2

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_c

    .line 2
    :cond_c
    invoke-super {p0, p1}, Lccsanandroid/view/View;->onTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result p1

    .line 28
    sget v0, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    return p1

    :catchall_2
    move-exception p1

    goto :goto_11

    :goto_10
    throw p1

    :goto_11
    goto :goto_10

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x62
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x54
        :pswitch_6
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x3a
        :pswitch_5
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x45
        :pswitch_7
    .end packed-switch
.end method

.method public setIntegerMark(Z)V
    .locals 2
    .param p1, "integerMark"    # Z

    .line 1
    .end local p1    # "integerMark":Z
    sget v0, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x78

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-boolean p1, p0, Lccsancom/san/landingpage/widget/RatingBar;->integerMark:Z

    xor-int/lit8 p1, v1, 0x6c

    and-int/lit8 v0, v1, 0x6c

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr p1, v0

    xor-int/lit8 v0, p1, -0x1

    and-int/lit8 p1, p1, -0x1

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public setMarkable(Z)V
    .locals 3
    .param p1, "markable"    # Z

    .line 1
    .end local p1    # "markable":Z
    sget v0, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    xor-int/lit8 v1, v0, 0x69

    and-int/lit8 v2, v0, 0x69

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v2, v2, -0x1

    or-int/lit8 v0, v0, 0x69

    and-int/2addr v0, v2

    neg-int v0, v0

    xor-int v2, v1, v0

    and-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    :cond_0
    iput-boolean p1, p0, Lccsancom/san/landingpage/widget/RatingBar;->markable:Z

    xor-int/lit8 p1, v0, 0x9

    and-int/lit8 v1, v0, 0x9

    or-int/2addr p1, v1

    shl-int/lit8 p1, p1, 0x1

    xor-int/lit8 v1, v1, -0x1

    or-int/lit8 v0, v0, 0x9

    and-int/2addr v0, v1

    sub-int/2addr p1, v0

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public setOnStarChangeListener(Lccsancom/san/landingpage/widget/RatingBar$OnStarChangeListener;)V
    .locals 4
    .param p1, "onStarChangeListener"    # Lccsancom/san/landingpage/widget/RatingBar$OnStarChangeListener;

    .line 1
    .end local p1    # "onStarChangeListener":Lccsancom/san/landingpage/widget/RatingBar$OnStarChangeListener;
    sget v0, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    and-int/lit8 v1, v0, 0x45

    xor-int/lit8 v2, v0, 0x45

    or-int/2addr v2, v1

    or-int v3, v1, v2

    shl-int/lit8 v3, v3, 0x1

    xor-int/2addr v1, v2

    sub-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    :cond_0
    iput-object p1, p0, Lccsancom/san/landingpage/widget/RatingBar;->onStarChangeListener:Lccsancom/san/landingpage/widget/RatingBar$OnStarChangeListener;

    and-int/lit8 p1, v0, 0x2b

    xor-int/lit8 v0, v0, 0x2b

    or-int/2addr v0, p1

    and-int v1, p1, v0

    or-int/2addr p1, v0

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 p1, 0x36

    goto :goto_0

    :cond_1
    const/16 p1, 0x4d

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p1, 0x3f

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_0
    .end packed-switch
.end method

.method public setPassType(Z)V
    .locals 3
    .param p1, "passType"    # Z

    .line 1
    .end local p1    # "passType":Z
    sget v0, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    xor-int/lit8 v1, v0, 0x75

    and-int/lit8 v2, v0, 0x75

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v2, v2, -0x1

    or-int/lit8 v0, v0, 0x75

    and-int/2addr v0, v2

    neg-int v0, v0

    xor-int v2, v1, v0

    and-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    const/16 v0, 0x3c

    goto :goto_0

    :cond_0
    const/16 v0, 0x2b

    :goto_0
    iput-boolean p1, p0, Lccsancom/san/landingpage/widget/RatingBar;->passType:Z

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
    .end packed-switch
.end method

.method public setStarMark(F)V
    .locals 11
    .param p1, "mark"    # F

    .line 9
    .end local p1    # "mark":F
    sget v0, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    and-int/lit8 v1, v0, 0x5

    xor-int/lit8 v0, v0, 0x5

    or-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    xor-int v2, v1, v0

    and-int/2addr v0, v1

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    const/4 v3, 0x2

    rem-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 1
    :cond_0
    iget-boolean v2, p0, Lccsancom/san/landingpage/widget/RatingBar;->integerMark:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 2
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 7
    xor-int/lit8 v2, v0, 0x47

    and-int/lit8 v0, v0, 0x47

    or-int/2addr v0, v2

    shl-int/2addr v0, v1

    neg-int v2, v2

    and-int v5, v0, v2

    or-int/2addr v0, v2

    add-int/2addr v5, v0

    rem-int/lit16 v0, v5, 0x80

    sput v0, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    rem-int/2addr v5, v3

    if-eqz v5, :cond_3

    goto :goto_3

    .line 4
    :pswitch_0
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    iget v0, p0, Lccsancom/san/landingpage/widget/RatingBar;->scaleScore:F

    mul-float p1, p1, v0

    iput p1, p0, Lccsancom/san/landingpage/widget/RatingBar;->starMark:F

    .line 7
    sget p1, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    and-int/lit8 v0, p1, -0x5a

    xor-int/lit8 v2, p1, -0x1

    and-int/lit8 v2, v2, 0x59

    or-int/2addr v0, v2

    and-int/lit8 p1, p1, 0x59

    shl-int/2addr p1, v1

    or-int v2, v0, p1

    shl-int/2addr v2, v1

    xor-int/2addr p1, v0

    sub-int/2addr v2, p1

    rem-int/lit16 p1, v2, 0x80

    sput p1, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_2

    .line 2
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_1

    .line 7
    goto :goto_8

    .line 9
    :goto_2
    :pswitch_1
    goto :goto_8

    .line 2
    :goto_3
    const/4 v0, 0x2

    goto :goto_4

    :cond_3
    const/4 v0, 0x3

    :goto_4
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    packed-switch v0, :pswitch_data_2

    .line 7
    float-to-double v7, p1

    .line 2
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    iget p1, p0, Lccsancom/san/landingpage/widget/RatingBar;->scaleScore:F

    float-to-double v9, p1

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v7, v9

    rem-double/2addr v7, v5

    :goto_5
    double-to-int p1, v7

    int-to-float p1, p1

    iput p1, p0, Lccsancom/san/landingpage/widget/RatingBar;->starMark:F

    goto :goto_6

    .line 1
    :pswitch_2
    float-to-double v7, p1

    .line 2
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    iget p1, p0, Lccsancom/san/landingpage/widget/RatingBar;->scaleScore:F

    float-to-double v9, p1

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    add-double/2addr v7, v5

    goto :goto_5

    .line 9
    :goto_6
    sget p1, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    add-int/lit8 p1, p1, 0x37

    sub-int/2addr p1, v1

    sub-int/2addr p1, v1

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    rem-int/2addr p1, v3

    if-nez p1, :cond_4

    .line 2
    const/4 p1, 0x0

    goto :goto_7

    :cond_4
    const/4 p1, 0x1

    :goto_7
    packed-switch p1, :pswitch_data_3

    .line 9
    goto :goto_2

    .line 6
    :goto_8
    iget-object p1, p0, Lccsancom/san/landingpage/widget/RatingBar;->onStarChangeListener:Lccsancom/san/landingpage/widget/RatingBar$OnStarChangeListener;

    if-eqz p1, :cond_5

    .line 2
    const/4 v0, 0x0

    goto :goto_9

    :cond_5
    const/4 v0, 0x1

    :goto_9
    packed-switch v0, :pswitch_data_4

    .line 9
    sget v0, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    xor-int/lit8 v2, v0, 0x2d

    and-int/lit8 v5, v0, 0x2d

    or-int/2addr v2, v5

    shl-int/2addr v2, v1

    xor-int/lit8 v5, v5, -0x1

    or-int/lit8 v0, v0, 0x2d

    and-int/2addr v0, v5

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_6

    .line 2
    goto :goto_a

    :cond_6
    const/4 v4, 0x1

    :goto_a
    packed-switch v4, :pswitch_data_5

    .line 7
    iget v0, p0, Lccsancom/san/landingpage/widget/RatingBar;->starMark:F

    invoke-interface {p1, v0}, Lccsancom/san/landingpage/widget/RatingBar$OnStarChangeListener;->onStarChange(F)V

    goto :goto_b

    :pswitch_3
    iget v0, p0, Lccsancom/san/landingpage/widget/RatingBar;->starMark:F

    invoke-interface {p1, v0}, Lccsancom/san/landingpage/widget/RatingBar$OnStarChangeListener;->onStarChange(F)V

    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_b

    .line 9
    :catchall_0
    move-exception p1

    throw p1

    :goto_b
    nop

    :pswitch_4
    invoke-virtual {p0}, Lccsanandroid/view/View;->invalidate()V

    .line 2
    sget p1, Lccsancom/san/landingpage/widget/RatingBar;->unifiedDownload:I

    or-int/lit8 v0, p1, 0x23

    shl-int/2addr v0, v1

    xor-int/lit8 p1, p1, 0x23

    sub-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/RatingBar;->getDownloadingList:I

    rem-int/2addr v0, v3

    .line 9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method
