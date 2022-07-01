.class public Lccsansan/j/unifiedDownload;
.super Lccsanandroid/widget/ProgressBar;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/j/unifiedDownload$IncentiveDownloadUtils;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "AD.TextProgress"


# instance fields
.field private mBoldTextType:Z

.field public mDefaultBtnColor:I

.field public mDefaultTextColor:I

.field public mPaintText:Lccsanandroid/graphics/Paint;

.field public mText:Ljava/lang/String;

.field protected mTextColor:I

.field public mTextMarginBottom:I

.field public mTextMarginLeft:I

.field public mTextMarginRight:I

.field public mTextMarginTop:I

.field private mTextMaxLength:I

.field private mTextSizeProgress:I

.field public normalFinishProgress:I

.field public normalProgress:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lccsanandroid/widget/ProgressBar;-><init>(Lccsanandroid/content/Context;)V

    .line 2
    const/4 p1, -0x1

    iput p1, p0, Lccsansan/j/unifiedDownload;->mTextColor:I

    .line 3
    const/16 p1, 0x14

    iput p1, p0, Lccsansan/j/unifiedDownload;->mTextSizeProgress:I

    .line 4
    const/16 p1, 0x64

    iput p1, p0, Lccsansan/j/unifiedDownload;->normalProgress:I

    .line 5
    iput p1, p0, Lccsansan/j/unifiedDownload;->normalFinishProgress:I

    .line 10
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsansan/j/unifiedDownload;->mBoldTextType:Z

    .line 14
    iput p1, p0, Lccsansan/j/unifiedDownload;->mTextMaxLength:I

    .line 19
    sget-object p1, Lccsansan/j/unifiedDownload;->TAG:Ljava/lang/String;

    const-string v0, "init"

    invoke-static {p1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lccsansan/j/unifiedDownload;->init()V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/ProgressBar;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 22
    const/4 p1, -0x1

    iput p1, p0, Lccsansan/j/unifiedDownload;->mTextColor:I

    .line 23
    const/16 p1, 0x14

    iput p1, p0, Lccsansan/j/unifiedDownload;->mTextSizeProgress:I

    .line 24
    const/16 p1, 0x64

    iput p1, p0, Lccsansan/j/unifiedDownload;->normalProgress:I

    .line 25
    iput p1, p0, Lccsansan/j/unifiedDownload;->normalFinishProgress:I

    .line 30
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsansan/j/unifiedDownload;->mBoldTextType:Z

    .line 34
    iput p1, p0, Lccsansan/j/unifiedDownload;->mTextMaxLength:I

    .line 45
    invoke-direct {p0, p2}, Lccsansan/j/unifiedDownload;->initParams(Lccsanandroid/util/AttributeSet;)V

    .line 46
    sget-object p1, Lccsansan/j/unifiedDownload;->TAG:Ljava/lang/String;

    const-string p2, "init"

    invoke-static {p1, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lccsansan/j/unifiedDownload;->init()V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/ProgressBar;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 49
    const/4 p1, -0x1

    iput p1, p0, Lccsansan/j/unifiedDownload;->mTextColor:I

    .line 50
    const/16 p1, 0x14

    iput p1, p0, Lccsansan/j/unifiedDownload;->mTextSizeProgress:I

    .line 51
    const/16 p1, 0x64

    iput p1, p0, Lccsansan/j/unifiedDownload;->normalProgress:I

    .line 52
    iput p1, p0, Lccsansan/j/unifiedDownload;->normalFinishProgress:I

    .line 57
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsansan/j/unifiedDownload;->mBoldTextType:Z

    .line 61
    iput p1, p0, Lccsansan/j/unifiedDownload;->mTextMaxLength:I

    .line 79
    invoke-direct {p0, p2}, Lccsansan/j/unifiedDownload;->initParams(Lccsanandroid/util/AttributeSet;)V

    .line 80
    sget-object p1, Lccsansan/j/unifiedDownload;->TAG:Ljava/lang/String;

    const-string p2, "init"

    invoke-static {p1, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lccsansan/j/unifiedDownload;->init()V

    return-void
.end method

.method private adapterTextEllipsis(Ljava/lang/String;FF)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lccsanandroid/graphics/Paint;

    invoke-direct {v0}, Lccsanandroid/graphics/Paint;-><init>()V

    .line 7
    invoke-virtual {v0, p2}, Lccsanandroid/graphics/Paint;->setTextSize(F)V

    .line 8
    invoke-virtual {v0, p1}, Lccsanandroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    cmpl-float v0, p2, p3

    if-lez v0, :cond_1

    .line 12
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    div-float/2addr p3, p2

    float-to-double p2, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p2

    double-to-int p2, p2

    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_1

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 14
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "..."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    :cond_1
    :goto_0
    return-object p1
.end method

.method private initParams(Lccsanandroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "san_TextProgress"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedList(Ljava/lang/String;)[I

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    const-string v2, "san_common_dimens_14dp"

    invoke-static {v2}, Lccsansan/bw/shouldTryHandlingAction;->unifiedDownload(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lccsansan/j/unifiedDownload;->mTextSizeProgress:I

    .line 4
    const-string v0, "textSize"

    invoke-static {v1, v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget v2, p0, Lccsansan/j/unifiedDownload;->mTextSizeProgress:I

    invoke-virtual {p1, v0, v2}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lccsansan/j/unifiedDownload;->mTextSizeProgress:I

    .line 5
    const-string v0, "text_margin_left"

    invoke-static {v1, v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lccsansan/j/unifiedDownload;->mTextMarginLeft:I

    .line 6
    const-string v0, "text_margin_right"

    invoke-static {v1, v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, v2}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lccsansan/j/unifiedDownload;->mTextMarginRight:I

    .line 7
    const-string v0, "text_margin_top"

    invoke-static {v1, v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, v2}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lccsansan/j/unifiedDownload;->mTextMarginTop:I

    .line 8
    const-string v0, "text_margin_bottom"

    invoke-static {v1, v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, v2}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lccsansan/j/unifiedDownload;->mTextMarginBottom:I

    .line 9
    const-string v0, "text_bold"

    invoke-static {v1, v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, v2}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lccsansan/j/unifiedDownload;->mBoldTextType:Z

    .line 10
    const-string v0, "text"

    invoke-static {v1, v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsansan/j/unifiedDownload;->splitText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/j/unifiedDownload;->mText:Ljava/lang/String;

    .line 11
    const-string v0, "text_max_length"

    invoke-static {v1, v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, v2}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lccsansan/j/unifiedDownload;->mTextMaxLength:I

    if-lez v0, :cond_0

    .line 13
    iget-object v2, p0, Lccsansan/j/unifiedDownload;->mText:Ljava/lang/String;

    iget v3, p0, Lccsansan/j/unifiedDownload;->mTextSizeProgress:I

    int-to-float v3, v3

    int-to-float v0, v0

    invoke-direct {p0, v2, v3, v0}, Lccsansan/j/unifiedDownload;->adapterTextEllipsis(Ljava/lang/String;FF)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/j/unifiedDownload;->mText:Ljava/lang/String;

    :cond_0
    nop

    .line 14
    const-string v0, "text_default_color"

    invoke-static {v1, v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Lccsanandroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lccsansan/j/unifiedDownload;->mDefaultTextColor:I

    .line 15
    const-string v0, "button_default_color"

    invoke-static {v1, v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v2

    const-string v3, "color_00CA89"

    invoke-static {v3}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsanandroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lccsanandroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lccsansan/j/unifiedDownload;->mDefaultBtnColor:I

    .line 16
    const-string v0, "normal_progress"

    invoke-static {v1, v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x64

    invoke-virtual {p1, v0, v2}, Lccsanandroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lccsansan/j/unifiedDownload;->normalProgress:I

    .line 17
    const-string v0, "normal_finish_progress"

    invoke-static {v1, v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lccsansan/j/unifiedDownload;->normalProgress:I

    invoke-virtual {p1, v0, v1}, Lccsanandroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lccsansan/j/unifiedDownload;->normalFinishProgress:I

    .line 18
    invoke-virtual {p1}, Lccsanandroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method

.method private splitText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Lccsansan/cz/unifiedDownload;->IncentiveSDK$1()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsansan/cz/unifiedDownload;->IncentiveSDK$1()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method protected drawCustomText(Lccsanandroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lccsansan/j/unifiedDownload;->mPaintText:Lccsanandroid/graphics/Paint;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lccsanandroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 7
    :cond_1
    iget-object v0, p0, Lccsansan/j/unifiedDownload;->mPaintText:Lccsanandroid/graphics/Paint;

    iget v1, p0, Lccsansan/j/unifiedDownload;->mTextColor:I

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object v0, p0, Lccsansan/j/unifiedDownload;->mPaintText:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0}, Lccsanandroid/graphics/Paint;->getFontMetrics()Lccsanandroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lccsanandroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v1, v2

    iget v0, v0, Lccsanandroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    sub-float/2addr v1, v0

    .line 10
    invoke-virtual {p0}, Lccsansan/j/unifiedDownload;->getText()Ljava/lang/String;

    move-result-object v2

    .line 11
    sget-object v3, Lccsansan/j/unifiedDownload;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drawCustomText : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget-object v3, Lccsansan/j/unifiedDownload;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    iget-object v0, p0, Lccsansan/j/unifiedDownload;->mPaintText:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v0}, Lccsanandroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLccsanandroid/graphics/Paint;)V

    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/j/unifiedDownload;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 1
    iget v0, p0, Lccsansan/j/unifiedDownload;->normalProgress:I

    invoke-virtual {p0, v0}, Lccsanandroid/widget/ProgressBar;->setProgress(I)V

    .line 2
    iget v0, p0, Lccsansan/j/unifiedDownload;->mDefaultTextColor:I

    iput v0, p0, Lccsansan/j/unifiedDownload;->mTextColor:I

    .line 4
    iget-object v0, p0, Lccsansan/j/unifiedDownload;->mPaintText:Lccsanandroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lccsanandroid/graphics/Paint;

    invoke-direct {v0}, Lccsanandroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lccsansan/j/unifiedDownload;->mPaintText:Lccsanandroid/graphics/Paint;

    .line 6
    iget v1, p0, Lccsansan/j/unifiedDownload;->mTextSizeProgress:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setTextSize(F)V

    .line 7
    iget-object v0, p0, Lccsansan/j/unifiedDownload;->mPaintText:Lccsanandroid/graphics/Paint;

    sget-object v1, Lccsanandroid/graphics/Paint$Align;->CENTER:Lccsanandroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setTextAlign(Lccsanandroid/graphics/Paint$Align;)V

    .line 8
    iget-object v0, p0, Lccsansan/j/unifiedDownload;->mPaintText:Lccsanandroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    iget-boolean v0, p0, Lccsansan/j/unifiedDownload;->mBoldTextType:Z

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lccsansan/j/unifiedDownload;->mPaintText:Lccsanandroid/graphics/Paint;

    sget-object v1, Lccsanandroid/graphics/Typeface;->DEFAULT_BOLD:Lccsanandroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setTypeface(Lccsanandroid/graphics/Typeface;)Lccsanandroid/graphics/Typeface;

    :cond_0
    return-void
.end method

.method protected measureHeight(II)I
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/j/unifiedDownload;->mPaintText:Lccsanandroid/graphics/Paint;

    if-nez v0, :cond_0

    return p1

    .line 4
    :cond_0
    invoke-static {p2}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 5
    invoke-static {p2}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move p1, p2

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    .line 15
    :cond_3
    iget-object p1, p0, Lccsansan/j/unifiedDownload;->mPaintText:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1}, Lccsanandroid/graphics/Paint;->ascent()F

    move-result p1

    neg-float p1, p1

    iget-object p2, p0, Lccsansan/j/unifiedDownload;->mPaintText:Lccsanandroid/graphics/Paint;

    invoke-virtual {p2}, Lccsanandroid/graphics/Paint;->descent()F

    move-result p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Lccsansan/j/unifiedDownload;->mTextMarginTop:I

    add-int/2addr p1, p2

    iget p2, p0, Lccsansan/j/unifiedDownload;->mTextMarginBottom:I

    add-int/2addr p1, p2

    :goto_0
    return p1
.end method

.method protected measureWidth(II)I
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/j/unifiedDownload;->mPaintText:Lccsanandroid/graphics/Paint;

    if-nez v0, :cond_0

    return p1

    .line 4
    :cond_0
    invoke-static {p2}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 5
    invoke-static {p2}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move p1, p2

    goto :goto_1

    .line 15
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_1

    .line 16
    :cond_3
    iget-object p2, p0, Lccsansan/j/unifiedDownload;->mText:Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 17
    iget-object p1, p0, Lccsansan/j/unifiedDownload;->mPaintText:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, p2}, Lccsanandroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Lccsansan/j/unifiedDownload;->mTextMarginLeft:I

    add-int/2addr p1, p2

    iget p2, p0, Lccsansan/j/unifiedDownload;->mTextMarginRight:I

    add-int/2addr p1, p2

    goto :goto_1

    :cond_4
    :goto_0
    nop

    :goto_1
    return p1
.end method

.method protected declared-synchronized onDraw(Lccsanandroid/graphics/Canvas;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lccsanandroid/widget/ProgressBar;->onDraw(Lccsanandroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0, p1}, Lccsansan/j/unifiedDownload;->drawCustomText(Lccsanandroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/ProgressBar;->onMeasure(II)V

    .line 2
    iget-object v0, p0, Lccsansan/j/unifiedDownload;->mPaintText:Lccsanandroid/graphics/Paint;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getSuggestedMinimumWidth()I

    move-result v0

    .line 5
    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->getSuggestedMinimumHeight()I

    move-result v1

    .line 6
    invoke-virtual {p0, v0, p1}, Lccsansan/j/unifiedDownload;->measureWidth(II)I

    move-result p1

    .line 7
    invoke-virtual {p0, v1, p2}, Lccsansan/j/unifiedDownload;->measureHeight(II)I

    move-result p2

    .line 8
    invoke-virtual {p0, p1, p2}, Lccsanandroid/widget/ProgressBar;->setMeasuredDimension(II)V

    return-void
.end method

.method public registerClick(Lccsansan/dt/removeDownloadListener;Lccsansan/j/unifiedDownload$IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    new-instance p1, Lccsansan/j/unifiedDownload$removeDownloadListener;

    invoke-direct {p1, p0, p2}, Lccsansan/j/unifiedDownload$removeDownloadListener;-><init>(Lccsansan/j/unifiedDownload;Lccsansan/j/unifiedDownload$IncentiveDownloadUtils;)V

    invoke-virtual {p0, p1}, Lccsanandroid/widget/ProgressBar;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lccsansan/j/unifiedDownload;->splitText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/j/unifiedDownload;->mText:Ljava/lang/String;

    .line 2
    iget v0, p0, Lccsansan/j/unifiedDownload;->mTextMaxLength:I

    if-lez v0, :cond_0

    .line 3
    iget v1, p0, Lccsansan/j/unifiedDownload;->mTextSizeProgress:I

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-direct {p0, p1, v1, v0}, Lccsansan/j/unifiedDownload;->adapterTextEllipsis(Ljava/lang/String;FF)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsansan/j/unifiedDownload;->mText:Ljava/lang/String;

    .line 4
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/widget/ProgressBar;->invalidate()V

    return-void
.end method
