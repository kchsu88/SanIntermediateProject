.class public Lccsancom/san/landingpage/widget/AnimatedDoorLayout;
.super Lccsanandroid/view/ViewGroup;
.source ""


# static fields
.field public static final HORIZONTAL_DOOR:I = 0x1

.field static final IS_JBMR2:Z

.field private static final TAG:Ljava/lang/String; = "AnimatedDoorLayout"

.field public static final VERTICAL_DOOR:I = 0x2

.field private static addDownloadListener:I

.field private static unifiedDownload:I


# instance fields
.field private mDoorType:I

.field private mFullBitmap:Lccsanandroid/graphics/Bitmap;

.field private mOriginalHeight:I

.field private mOriginalWidth:I

.field private mProgress:F

.field private mRect:Lccsanandroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    const/16 v3, 0xb

    packed-switch v2, :pswitch_data_0

    sget v2, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    xor-int/lit8 v4, v2, 0xb

    and-int/lit8 v5, v2, 0xb

    or-int/2addr v4, v5

    shl-int/2addr v4, v1

    and-int/lit8 v5, v2, -0xc

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v3

    or-int/2addr v2, v5

    sub-int/2addr v4, v2

    rem-int/lit16 v2, v4, 0x80

    sput v2, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    goto :goto_1

    :pswitch_0
    sget v2, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    add-int/lit8 v2, v2, 0xd

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_3

    :cond_2
    :goto_1
    and-int/lit8 v4, v2, 0x29

    xor-int/lit8 v5, v4, -0x1

    or-int/lit8 v2, v2, 0x29

    and-int/2addr v2, v5

    shl-int/2addr v4, v1

    xor-int v5, v2, v4

    and-int/2addr v2, v4

    shl-int/2addr v2, v1

    add-int/2addr v5, v2

    rem-int/lit16 v2, v5, 0x80

    sput v2, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    packed-switch v2, :pswitch_data_1

    :pswitch_1
    const/4 v2, 0x1

    :goto_3
    sput-boolean v2, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->IS_JBMR2:Z

    sget v2, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    and-int/lit8 v4, v2, 0x57

    xor-int/lit8 v2, v2, 0x57

    or-int/2addr v2, v4

    neg-int v2, v2

    neg-int v2, v2

    xor-int/lit8 v2, v2, -0x1

    sub-int/2addr v4, v2

    sub-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_4

    const/16 v1, 0x2e

    goto :goto_4

    :cond_4
    const/16 v1, 0x40

    :goto_4
    packed-switch v1, :pswitch_data_2

    return-void

    :pswitch_2
    :try_start_0
    div-int/2addr v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2e
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsanandroid/view/ViewGroup;-><init>(Lccsanandroid/content/Context;)V

    .line 2
    new-instance p1, Lccsanandroid/graphics/Rect;

    invoke-direct {p1}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mRect:Lccsanandroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lccsanandroid/view/ViewGroup;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Lccsanandroid/graphics/Rect;

    invoke-direct {p1}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mRect:Lccsanandroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/view/ViewGroup;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 6
    new-instance p1, Lccsanandroid/graphics/Rect;

    invoke-direct {p1}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mRect:Lccsanandroid/graphics/Rect;

    return-void
.end method

.method private prepareDoor()V
    .locals 5

    .line 11
    sget v0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    or-int/lit8 v1, v0, 0x39

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x39

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 11
    sget v0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    or-int/lit8 v3, v0, 0x25

    shl-int/2addr v3, v2

    xor-int/lit8 v0, v0, 0x25

    sub-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :goto_0
    const/16 v0, 0x50

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    .line 5
    :cond_2
    invoke-virtual {p0}, Lccsanandroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mOriginalWidth:I

    .line 6
    invoke-virtual {p0}, Lccsanandroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mOriginalHeight:I

    .line 8
    sget-boolean v3, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->IS_JBMR2:Z

    if-eqz v3, :cond_3

    .line 9
    iget v3, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mOriginalWidth:I

    sget-object v4, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v4}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mFullBitmap:Lccsanandroid/graphics/Bitmap;

    .line 10
    new-instance v0, Lccsanandroid/graphics/Canvas;

    iget-object v3, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mFullBitmap:Lccsanandroid/graphics/Bitmap;

    invoke-direct {v0, v3}, Lccsanandroid/graphics/Canvas;-><init>(Lccsanandroid/graphics/Bitmap;)V

    .line 11
    invoke-virtual {p0, v1}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Lccsanandroid/view/View;->draw(Lccsanandroid/graphics/Canvas;)V

    sget v0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    or-int/lit8 v3, v0, 0xf

    shl-int/2addr v3, v2

    and-int/lit8 v4, v0, -0x10

    xor-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, 0xf

    or-int/2addr v0, v4

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    :cond_3
    sget v0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    and-int/lit8 v3, v0, 0x64

    or-int/lit8 v0, v0, 0x64

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_4

    const/4 v2, 0x0

    :cond_4
    packed-switch v2, :pswitch_data_1

    return-void

    :pswitch_1
    const/4 v0, 0x0

    :try_start_1
    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private throwCustomException(I)V
    .locals 4
    .param p1, "numOfChildViews"    # I

    .line 1
    .end local p1    # "numOfChildViews":I
    sget v0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    or-int/lit8 v1, v0, 0x67

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v3, v0, 0x67

    sub-int/2addr v1, v3

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    if-eq p1, v2, :cond_1

    goto :goto_1

    .line 0
    :pswitch_0
    if-eq p1, v2, :cond_1

    .line 1
    :goto_1
    add-int/lit8 v0, v0, 0x79

    sub-int/2addr v0, v2

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "only one child please"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updateDoor()V
    .locals 2

    .line 2
    sget v0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x36

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-direct {p0}, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->prepareDoor()V

    .line 2
    invoke-virtual {p0}, Lccsanandroid/view/ViewGroup;->invalidate()V

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-direct {p0}, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->prepareDoor()V

    .line 2
    invoke-virtual {p0}, Lccsanandroid/view/ViewGroup;->invalidate()V

    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    sget v0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    xor-int/lit8 v1, v0, 0x69

    and-int/lit8 v0, v0, 0x69

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addView(Lccsanandroid/view/View;ILccsanandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Lccsanandroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Lccsanandroid/view/ViewGroup$LayoutParams;

    .line 2
    .end local p1    # "child":Lccsanandroid/view/View;
    .end local p2    # "index":I
    .end local p3    # "params":Lccsanandroid/view/ViewGroup$LayoutParams;
    sget v0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    xor-int/lit8 v1, v0, 0x7b

    and-int/lit8 v0, v0, 0x7b

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->throwCustomException(I)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;ILccsanandroid/view/ViewGroup$LayoutParams;)V

    sget p1, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    xor-int/lit8 p2, p1, 0xd

    and-int/lit8 p3, p1, 0xd

    or-int/2addr p2, p3

    shl-int/lit8 p2, p2, 0x1

    and-int/lit8 p3, p1, -0xe

    xor-int/lit8 p1, p1, -0x1

    and-int/lit8 p1, p1, 0xd

    or-int/2addr p1, p3

    neg-int p1, p1

    and-int p3, p2, p1

    or-int/2addr p1, p2

    add-int/2addr p3, p1

    rem-int/lit16 p1, p3, 0x80

    sput p1, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    rem-int/lit8 p3, p3, 0x2

    return-void
.end method

.method protected addViewInLayout(Lccsanandroid/view/View;ILccsanandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 2
    .param p1, "child"    # Lccsanandroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Lccsanandroid/view/ViewGroup$LayoutParams;
    .param p4, "preventRequestLayout"    # Z

    .line 2
    .end local p1    # "child":Lccsanandroid/view/View;
    .end local p2    # "index":I
    .end local p3    # "params":Lccsanandroid/view/ViewGroup$LayoutParams;
    .end local p4    # "preventRequestLayout":Z
    sget v0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x73

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->throwCustomException(I)V

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroid/view/ViewGroup;->addViewInLayout(Lccsanandroid/view/View;ILccsanandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result p1

    sget p2, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    or-int/lit8 p3, p2, 0x70

    shl-int/lit8 p3, p3, 0x1

    xor-int/lit8 p2, p2, 0x70

    sub-int/2addr p3, p2

    or-int/lit8 p2, p3, -0x1

    shl-int/lit8 p2, p2, 0x1

    xor-int/lit8 p3, p3, -0x1

    sub-int/2addr p2, p3

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    rem-int/lit8 p2, p2, 0x2

    return p1
.end method

.method protected dispatchDraw(Lccsanandroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 48
    .end local p1    # "canvas":Lccsanandroid/graphics/Canvas;
    nop

    .line 24
    sget v0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    xor-int/lit8 v1, v0, 0x1d

    and-int/lit8 v2, v0, 0x1d

    or-int/2addr v1, v2

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    and-int/lit8 v3, v0, -0x1e

    xor-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, 0x1d

    or-int/2addr v0, v3

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    const/4 v0, 0x2

    rem-int/2addr v1, v0

    const/16 v3, 0x29

    if-nez v1, :cond_0

    .line 42
    const/16 v1, 0x29

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    .line 1
    invoke-virtual {p0}, Lccsanandroid/view/ViewGroup;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0}, Lccsanandroid/view/ViewGroup;->isInEditMode()Z

    move-result v1

    :try_start_0
    array-length v6, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 42
    const/16 v1, 0x17

    goto :goto_1

    :cond_1
    const/16 v1, 0x52

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_4

    .line 24
    :catchall_0
    move-exception p1

    throw p1

    .line 42
    :goto_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    const/4 v1, 0x1

    :goto_3
    packed-switch v1, :pswitch_data_2

    .line 1
    :goto_4
    iget v1, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mProgress:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v1, v6

    if-ltz v6, :cond_4

    .line 24
    sget v1, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    or-int/lit8 v3, v1, 0x24

    shl-int/2addr v3, v2

    xor-int/lit8 v1, v1, 0x24

    sub-int/2addr v3, v1

    xor-int/lit8 v1, v3, -0x1

    and-int/lit8 v3, v3, -0x1

    shl-int/2addr v3, v2

    add-int/2addr v1, v3

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_3

    .line 48
    :cond_3
    nop

    :pswitch_1
    invoke-super {p0, p1}, Lccsanandroid/view/ViewGroup;->dispatchDraw(Lccsanandroid/graphics/Canvas;)V

    .line 18
    sget p1, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    xor-int/lit8 v1, p1, 0x25

    and-int/lit8 v3, p1, 0x25

    or-int/2addr v1, v3

    shl-int/2addr v1, v2

    xor-int/lit8 v2, v3, -0x1

    or-int/lit8 p1, p1, 0x25

    and-int/2addr p1, v2

    neg-int p1, p1

    and-int v2, v1, p1

    or-int/2addr p1, v1

    add-int/2addr v2, p1

    rem-int/lit16 p1, v2, 0x80

    sput p1, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    rem-int/2addr v2, v0

    .line 48
    return-void

    .line 7
    :cond_4
    iget v6, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mDoorType:I

    if-ne v6, v0, :cond_5

    .line 42
    const/4 v6, 0x0

    goto :goto_5

    :cond_5
    const/4 v6, 0x1

    :goto_5
    packed-switch v6, :pswitch_data_3

    .line 10
    iget v6, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mOriginalWidth:I

    div-int/2addr v6, v0

    int-to-float v6, v6

    mul-float v6, v6, v1

    float-to-int v1, v6

    goto :goto_7

    .line 48
    :pswitch_2
    sget v6, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    xor-int/lit8 v7, v6, 0x65

    and-int/lit8 v8, v6, 0x65

    or-int/2addr v7, v8

    shl-int/2addr v7, v2

    xor-int/lit8 v8, v8, -0x1

    or-int/lit8 v9, v6, 0x65

    and-int/2addr v8, v9

    neg-int v8, v8

    xor-int v9, v7, v8

    and-int/2addr v7, v8

    shl-int/2addr v7, v2

    add-int/2addr v9, v7

    rem-int/lit16 v7, v9, 0x80

    sput v7, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    rem-int/2addr v9, v0

    if-nez v9, :cond_6

    .line 8
    :cond_6
    iget v7, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mOriginalHeight:I

    div-int/2addr v7, v0

    int-to-float v7, v7

    mul-float v7, v7, v1

    float-to-int v1, v7

    .line 1
    add-int/lit8 v6, v6, 0x42

    sub-int/2addr v6, v2

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    rem-int/2addr v6, v0

    if-nez v6, :cond_7

    .line 42
    const/4 v6, 0x0

    goto :goto_6

    :cond_7
    const/4 v6, 0x1

    :goto_6
    packed-switch v6, :pswitch_data_4

    .line 1
    goto :goto_8

    .line 18
    :goto_7
    sget v6, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    and-int/lit8 v7, v6, 0x7

    xor-int/lit8 v6, v6, 0x7

    or-int/2addr v6, v7

    neg-int v6, v6

    neg-int v6, v6

    or-int v8, v7, v6

    shl-int/2addr v8, v2

    xor-int/2addr v6, v7

    sub-int/2addr v8, v6

    rem-int/lit16 v6, v8, 0x80

    sput v6, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    rem-int/2addr v8, v0

    if-eqz v8, :cond_8

    .line 48
    :cond_8
    :pswitch_3
    nop

    .line 14
    :goto_8
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->save()I

    .line 15
    iget v6, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mDoorType:I

    if-ne v6, v0, :cond_9

    .line 42
    const/4 v6, 0x1

    goto :goto_9

    :cond_9
    const/4 v6, 0x0

    :goto_9
    packed-switch v6, :pswitch_data_5

    .line 48
    sget v3, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    xor-int/lit8 v6, v3, 0x5d

    and-int/lit8 v3, v3, 0x5d

    shl-int/2addr v3, v2

    add-int/2addr v6, v3

    rem-int/lit16 v3, v6, 0x80

    sput v3, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    rem-int/2addr v6, v0

    if-nez v6, :cond_b

    goto :goto_b

    .line 21
    :pswitch_4
    iget-object v6, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mRect:Lccsanandroid/graphics/Rect;

    iget v7, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mOriginalHeight:I

    invoke-virtual {v6, v5, v5, v1, v7}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 24
    sget v6, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    and-int/lit8 v7, v6, 0x29

    xor-int/lit8 v8, v7, -0x1

    or-int/2addr v3, v6

    and-int/2addr v3, v8

    shl-int/lit8 v6, v7, 0x1

    add-int/2addr v3, v6

    rem-int/lit16 v6, v3, 0x80

    sput v6, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    rem-int/2addr v3, v0

    if-eqz v3, :cond_a

    .line 48
    :cond_a
    :goto_a
    goto :goto_d

    .line 42
    :goto_b
    const/4 v3, 0x3

    goto :goto_c

    :cond_b
    const/4 v3, 0x5

    :goto_c
    packed-switch v3, :pswitch_data_6

    .line 18
    iget-object v3, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mRect:Lccsanandroid/graphics/Rect;

    iget v6, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mOriginalHeight:I

    div-int/2addr v6, v0

    neg-int v7, v1

    or-int v8, v6, v7

    shl-int/lit8 v9, v8, 0x1

    and-int/2addr v7, v6

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v7, v8

    neg-int v7, v7

    xor-int v8, v9, v7

    and-int/2addr v7, v9

    shl-int/2addr v7, v2

    add-int/2addr v8, v7

    iget v7, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mOriginalWidth:I

    invoke-virtual {v3, v5, v8, v7, v6}, Lccsanandroid/graphics/Rect;->set(IIII)V

    goto :goto_a

    :pswitch_5
    iget-object v3, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mRect:Lccsanandroid/graphics/Rect;

    iget v6, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mOriginalHeight:I

    ushr-int/lit8 v7, v6, 0x3

    shr-int/2addr v7, v1

    iget v8, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mOriginalWidth:I

    div-int/2addr v6, v0

    invoke-virtual {v3, v2, v7, v8, v6}, Lccsanandroid/graphics/Rect;->set(IIII)V

    goto :goto_a

    .line 23
    :goto_d
    sget-boolean v3, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->IS_JBMR2:Z

    if-eqz v3, :cond_c

    .line 42
    const/4 v6, 0x1

    goto :goto_e

    :cond_c
    const/4 v6, 0x0

    :goto_e
    packed-switch v6, :pswitch_data_7

    .line 26
    iget-object v6, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {p1, v6}, Lccsanandroid/graphics/Canvas;->clipRect(Lccsanandroid/graphics/Rect;)Z

    .line 27
    invoke-super {p0, p1}, Lccsanandroid/view/ViewGroup;->dispatchDraw(Lccsanandroid/graphics/Canvas;)V

    goto :goto_10

    .line 18
    :pswitch_6
    sget v6, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    or-int/lit8 v7, v6, 0x2f

    shl-int/2addr v7, v2

    xor-int/lit8 v6, v6, 0x2f

    sub-int/2addr v7, v6

    rem-int/lit16 v6, v7, 0x80

    sput v6, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    rem-int/2addr v7, v0

    if-eqz v7, :cond_d

    .line 42
    const/4 v6, 0x1

    goto :goto_f

    :cond_d
    const/4 v6, 0x0

    :goto_f
    packed-switch v6, :pswitch_data_8

    .line 24
    iget-object v6, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mFullBitmap:Lccsanandroid/graphics/Bitmap;

    iget-object v7, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {p1, v6, v7, v7, v4}, Lccsanandroid/graphics/Canvas;->drawBitmap(Lccsanandroid/graphics/Bitmap;Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Paint;)V

    goto :goto_11

    :pswitch_7
    iget-object v6, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mFullBitmap:Lccsanandroid/graphics/Bitmap;

    iget-object v7, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {p1, v6, v7, v7, v4}, Lccsanandroid/graphics/Canvas;->drawBitmap(Lccsanandroid/graphics/Bitmap;Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Paint;)V

    :try_start_1
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_11

    .line 18
    :catchall_1
    move-exception p1

    throw p1

    :goto_10
    sget v6, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    or-int/lit8 v7, v6, 0x3b

    shl-int/2addr v7, v2

    xor-int/lit8 v6, v6, 0x3b

    sub-int/2addr v7, v6

    rem-int/lit16 v6, v7, 0x80

    sput v6, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    rem-int/2addr v7, v0

    if-nez v7, :cond_e

    .line 48
    :cond_e
    :goto_11
    nop

    .line 29
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->restore()V

    .line 32
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->save()I

    .line 33
    iget v6, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mDoorType:I

    if-ne v6, v0, :cond_f

    .line 42
    const/16 v6, 0x49

    goto :goto_12

    :cond_f
    const/16 v6, 0x51

    :goto_12
    packed-switch v6, :pswitch_data_9

    .line 39
    iget-object v6, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mRect:Lccsanandroid/graphics/Rect;

    iget v7, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mOriginalWidth:I

    neg-int v1, v1

    and-int v8, v7, v1

    xor-int/lit8 v9, v8, -0x1

    or-int/2addr v1, v7

    and-int/2addr v1, v9

    shl-int/2addr v8, v2

    or-int v9, v1, v8

    shl-int/2addr v9, v2

    xor-int/2addr v1, v8

    sub-int/2addr v9, v1

    iget v1, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mOriginalHeight:I

    invoke-virtual {v6, v9, v5, v7, v1}, Lccsanandroid/graphics/Rect;->set(IIII)V

    goto :goto_14

    .line 18
    :pswitch_8
    sget v6, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    and-int/lit8 v7, v6, 0x71

    or-int/lit8 v6, v6, 0x71

    add-int/2addr v7, v6

    rem-int/lit16 v6, v7, 0x80

    sput v6, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    rem-int/2addr v7, v0

    if-nez v7, :cond_10

    .line 36
    :cond_10
    iget-object v6, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mRect:Lccsanandroid/graphics/Rect;

    iget v7, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mOriginalHeight:I

    div-int/2addr v7, v0

    iget v8, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mOriginalWidth:I

    neg-int v1, v1

    neg-int v1, v1

    and-int v9, v7, v1

    xor-int/2addr v1, v7

    or-int/2addr v1, v9

    neg-int v1, v1

    neg-int v1, v1

    and-int v10, v9, v1

    or-int/2addr v1, v9

    add-int/2addr v10, v1

    invoke-virtual {v6, v5, v7, v8, v10}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 42
    sget v1, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    xor-int/lit8 v6, v1, 0x57

    and-int/lit8 v1, v1, 0x57

    shl-int/2addr v1, v2

    add-int/2addr v6, v1

    rem-int/lit16 v1, v6, 0x80

    sput v1, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    rem-int/2addr v6, v0

    if-eqz v6, :cond_11

    const/4 v1, 0x1

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    :goto_13
    packed-switch v1, :pswitch_data_a

    goto :goto_15

    .line 24
    :goto_14
    sget v1, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    and-int/lit8 v6, v1, 0x2b

    or-int/lit8 v1, v1, 0x2b

    add-int/2addr v6, v1

    rem-int/lit16 v1, v6, 0x80

    sput v1, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    rem-int/2addr v6, v0

    if-nez v6, :cond_12

    .line 48
    :cond_12
    :pswitch_9
    nop

    .line 39
    :goto_15
    if-eqz v3, :cond_13

    .line 42
    const/4 v1, 0x1

    goto :goto_16

    :cond_13
    const/4 v1, 0x0

    :goto_16
    packed-switch v1, :pswitch_data_b

    .line 1
    sget v1, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    xor-int/lit8 v3, v1, 0x13

    and-int/lit8 v1, v1, 0x13

    shl-int/2addr v1, v2

    add-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    rem-int/2addr v3, v0

    if-eqz v3, :cond_16

    goto :goto_19

    .line 44
    :pswitch_a
    iget-object v1, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {p1, v1}, Lccsanandroid/graphics/Canvas;->clipRect(Lccsanandroid/graphics/Rect;)Z

    .line 45
    invoke-super {p0, p1}, Lccsanandroid/view/ViewGroup;->dispatchDraw(Lccsanandroid/graphics/Canvas;)V

    .line 24
    sget v1, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x45

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_14

    .line 42
    const/4 v1, 0x0

    goto :goto_17

    :cond_14
    const/4 v1, 0x1

    :goto_17
    packed-switch v1, :pswitch_data_c

    .line 24
    goto :goto_1c

    .line 48
    :cond_15
    :goto_18
    :pswitch_b
    goto :goto_1c

    .line 42
    :goto_19
    const/16 v1, 0x4d

    goto :goto_1a

    :cond_16
    const/16 v1, 0x2a

    :goto_1a
    packed-switch v1, :pswitch_data_d

    iget-object v1, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mFullBitmap:Lccsanandroid/graphics/Bitmap;

    iget-object v3, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {p1, v1, v3, v3, v4}, Lccsanandroid/graphics/Canvas;->drawBitmap(Lccsanandroid/graphics/Bitmap;Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Paint;)V

    goto :goto_1b

    :pswitch_c
    iget-object v1, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mFullBitmap:Lccsanandroid/graphics/Bitmap;

    iget-object v3, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {p1, v1, v3, v3, v4}, Lccsanandroid/graphics/Canvas;->drawBitmap(Lccsanandroid/graphics/Bitmap;Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Paint;)V

    const/16 v1, 0x1b

    :try_start_2
    div-int/2addr v1, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1b

    .line 1
    :catchall_2
    move-exception p1

    throw p1

    .line 24
    :goto_1b
    sget v1, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x40

    or-int/lit8 v3, v1, -0x1

    shl-int/2addr v3, v2

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    rem-int/2addr v3, v0

    if-eqz v3, :cond_15

    goto :goto_18

    .line 47
    :goto_1c
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->restore()V

    .line 18
    sget p1, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    add-int/lit8 p1, p1, 0x7a

    sub-int/2addr p1, v2

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_17

    .line 42
    const/4 v2, 0x0

    goto :goto_1d

    :cond_17
    nop

    :goto_1d
    packed-switch v2, :pswitch_data_e

    .line 48
    return-void

    .line 18
    :pswitch_d
    :try_start_3
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return-void

    :catchall_3
    move-exception p1

    goto :goto_1f

    :goto_1e
    throw p1

    :goto_1f
    goto :goto_1e

    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x52
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x3
        :pswitch_5
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x49
        :pswitch_8
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_b
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x4d
        :pswitch_c
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public getProgress()F
    .locals 4

    .line 1
    sget v0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    xor-int/lit8 v1, v0, 0x49

    and-int/lit8 v2, v0, 0x49

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v2, v2, -0x1

    or-int/lit8 v0, v0, 0x49

    and-int/2addr v0, v2

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget v1, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mProgress:F

    and-int/lit8 v2, v0, 0x2f

    or-int/lit8 v0, v0, 0x2f

    neg-int v0, v0

    neg-int v0, v0

    xor-int v3, v2, v0

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 3
    .end local p1    # "changed":Z
    .end local p2    # "l":I
    .end local p3    # "t":I
    .end local p4    # "r":I
    .end local p5    # "b":I
    sget p1, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    and-int/lit8 p2, p1, -0x7a

    xor-int/lit8 p3, p1, -0x1

    and-int/lit8 p3, p3, 0x79

    or-int/2addr p2, p3

    and-int/lit8 p1, p1, 0x79

    shl-int/lit8 p1, p1, 0x1

    xor-int p3, p2, p1

    and-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p3, p1

    rem-int/lit16 p1, p3, 0x80

    sput p1, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    rem-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1
    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Lccsanandroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p2}, Lccsanandroid/view/View;->getMeasuredHeight()I

    move-result p4

    invoke-virtual {p2, p1, p1, p3, p4}, Lccsanandroid/view/View;->layout(IIII)V

    .line 3
    invoke-direct {p0}, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->updateDoor()V

    sget p1, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    or-int/lit8 p2, p1, 0x3d

    shl-int/lit8 p3, p2, 0x1

    and-int/lit8 p1, p1, 0x3d

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, p2

    neg-int p1, p1

    xor-int/lit8 p1, p1, -0x1

    sub-int/2addr p3, p1

    add-int/lit8 p3, p3, -0x1

    rem-int/lit16 p1, p3, 0x80

    sput p1, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    rem-int/lit8 p3, p3, 0x2

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 3
    .end local p1    # "widthMeasureSpec":I
    .end local p2    # "heightMeasureSpec":I
    sget v0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    and-int/lit8 v1, v0, -0x72

    xor-int/lit8 v2, v0, -0x1

    and-int/lit8 v2, v2, 0x71

    or-int/2addr v1, v2

    and-int/lit8 v0, v0, 0x71

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 1
    :pswitch_0
    invoke-virtual {p0, v0}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lccsanandroid/view/ViewGroup;->measureChild(Lccsanandroid/view/View;II)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lccsanandroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setDoorType(I)V
    .locals 2
    .param p1, "doorType"    # I

    .line 1
    .end local p1    # "doorType":I
    sget v0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput p1, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mDoorType:I

    add-int/lit8 v1, v1, 0x16

    add-int/lit8 v1, v1, -0x1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 p1, 0x53

    goto :goto_0

    :cond_1
    const/16 p1, 0x47

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p1, 0x60

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x53
        :pswitch_0
    .end packed-switch
.end method

.method public setProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .line 2
    .end local p1    # "progress":F
    sget v0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    and-int/lit8 v1, v0, 0x34

    or-int/lit8 v0, v0, 0x34

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x0

    add-int/lit8 v1, v1, -0x1

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 1
    :cond_0
    iput p1, p0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->mProgress:F

    .line 2
    invoke-virtual {p0}, Lccsanandroid/view/ViewGroup;->invalidate()V

    sget p1, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->addDownloadListener:I

    and-int/lit8 v0, p1, 0x40

    or-int/lit8 p1, p1, 0x40

    add-int/2addr v0, p1

    or-int/lit8 p1, v0, -0x1

    shl-int/lit8 p1, p1, 0x1

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr p1, v0

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/16 p1, 0xb

    goto :goto_0

    :cond_1
    const/16 p1, 0x4c

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method
