.class public Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;
.super Lccsanandroid/view/View;
.source ""


# instance fields
.field private IncentiveDownloadUtils:I

.field private addDownloadListener:I

.field private deleteDownItem:I

.field private deleteDownList:Lccsanandroid/graphics/RectF;

.field private getDownloadStatusByUrl:Lccsanandroid/graphics/Paint;

.field private getDownloadedCount:I

.field private getDownloadedList:Lccsanandroid/graphics/Paint;

.field private getDownloadedRecordByUrl:I

.field private getDownloadingCount:I

.field private getDownloadingList:I

.field private getDownloadingRecordByUrl:Lccsanandroid/graphics/Paint;

.field private pause:I

.field private removeDownloadListener:I

.field private resume:I

.field private unifiedDownload:I


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;)V

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadingList:I

    .line 3
    iput v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->addDownloadListener:I

    .line 4
    iput v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->removeDownloadListener:I

    .line 5
    iput v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    .line 6
    iput v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->unifiedDownload:I

    .line 7
    iput v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->deleteDownItem:I

    .line 8
    iput v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    .line 12
    new-instance v1, Lccsanandroid/graphics/RectF;

    invoke-direct {v1}, Lccsanandroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->deleteDownList:Lccsanandroid/graphics/RectF;

    .line 13
    iput v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->pause:I

    .line 14
    const/16 v1, 0x64

    iput v1, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadingCount:I

    .line 15
    const/16 v1, 0xf

    iput v1, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadedCount:I

    .line 16
    iput v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->resume:I

    .line 20
    invoke-direct {p0, p1}, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1, p2}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 22
    const/4 p2, 0x0

    iput p2, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadingList:I

    .line 23
    iput p2, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->addDownloadListener:I

    .line 24
    iput p2, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->removeDownloadListener:I

    .line 25
    iput p2, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    .line 26
    iput p2, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->unifiedDownload:I

    .line 27
    iput p2, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->deleteDownItem:I

    .line 28
    iput p2, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    .line 32
    new-instance v0, Lccsanandroid/graphics/RectF;

    invoke-direct {v0}, Lccsanandroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->deleteDownList:Lccsanandroid/graphics/RectF;

    .line 33
    iput p2, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->pause:I

    .line 34
    const/16 v0, 0x64

    iput v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadingCount:I

    .line 35
    const/16 v0, 0xf

    iput v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadedCount:I

    .line 36
    iput p2, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->resume:I

    .line 45
    invoke-direct {p0, p1}, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 47
    const/4 p2, 0x0

    iput p2, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadingList:I

    .line 48
    iput p2, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->addDownloadListener:I

    .line 49
    iput p2, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->removeDownloadListener:I

    .line 50
    iput p2, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    .line 51
    iput p2, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->unifiedDownload:I

    .line 52
    iput p2, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->deleteDownItem:I

    .line 53
    iput p2, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    .line 57
    new-instance p3, Lccsanandroid/graphics/RectF;

    invoke-direct {p3}, Lccsanandroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->deleteDownList:Lccsanandroid/graphics/RectF;

    .line 58
    iput p2, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->pause:I

    .line 59
    const/16 p3, 0x64

    iput p3, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadingCount:I

    .line 60
    const/16 p3, 0xf

    iput p3, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadedCount:I

    .line 61
    iput p2, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->resume:I

    .line 75
    invoke-direct {p0, p1}, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/content/Context;)V

    return-void
.end method

.method private IncentiveDownloadUtils(Lccsanandroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lccsanandroid/view/View;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lccsanandroid/view/View;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_0
    nop

    .line 9
    :goto_0
    iget-object v2, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->deleteDownList:Lccsanandroid/graphics/RectF;

    iget v3, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->unifiedDownload:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, v2, Lccsanandroid/graphics/RectF;->left:F

    .line 10
    iput v3, v2, Lccsanandroid/graphics/RectF;->top:F

    int-to-float v0, v0

    sub-float/2addr v0, v3

    .line 11
    iput v0, v2, Lccsanandroid/graphics/RectF;->right:F

    int-to-float v0, v1

    sub-float/2addr v0, v3

    .line 12
    iput v0, v2, Lccsanandroid/graphics/RectF;->bottom:F

    .line 13
    iget-object v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadedList:Lccsanandroid/graphics/Paint;

    iget v1, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadingList:I

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 14
    iget-object v3, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->deleteDownList:Lccsanandroid/graphics/RectF;

    iget v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadedCount:I

    add-int/lit8 v1, v0, -0x5a

    iget v2, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->resume:I

    add-int/2addr v1, v2

    int-to-float v4, v1

    rsub-int v0, v0, 0x168

    int-to-float v5, v0

    iget-object v7, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadedList:Lccsanandroid/graphics/Paint;

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lccsanandroid/graphics/Canvas;->drawArc(Lccsanandroid/graphics/RectF;FFZLccsanandroid/graphics/Paint;)V

    .line 15
    iget-object v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadedList:Lccsanandroid/graphics/Paint;

    iget v1, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->addDownloadListener:I

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 16
    iget-object v3, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->deleteDownList:Lccsanandroid/graphics/RectF;

    iget v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->resume:I

    add-int/lit8 v0, v0, -0x5a

    int-to-float v4, v0

    iget v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadedCount:I

    int-to-float v5, v0

    iget-object v7, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadedList:Lccsanandroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Lccsanandroid/graphics/Canvas;->drawArc(Lccsanandroid/graphics/RectF;FFZLccsanandroid/graphics/Paint;)V

    return-void
.end method

.method private addDownloadListener(Lccsanandroid/graphics/Canvas;)V
    .locals 3

    .line 20
    invoke-virtual {p0}, Lccsanandroid/view/View;->getWidth()I

    move-result v0

    .line 21
    invoke-virtual {p0}, Lccsanandroid/view/View;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_0
    nop

    :goto_0
    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 28
    iget-object v2, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v0, v2}, Lccsanandroid/graphics/Canvas;->drawCircle(FFFLccsanandroid/graphics/Paint;)V

    return-void
.end method

.method private getDownloadingList(Lccsanandroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->pause:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->pause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/graphics/Paint;

    iget v2, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->deleteDownItem:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lccsanandroid/graphics/Paint;->setTextSize(F)V

    .line 5
    iget-object v1, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/graphics/Paint;

    invoke-virtual {v1, v0}, Lccsanandroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 6
    iget-object v2, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/graphics/Paint;

    invoke-virtual {v2}, Lccsanandroid/graphics/Paint;->getFontMetrics()Lccsanandroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FontMetrics"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CircleProgressView"

    invoke-static {v4, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lccsanandroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v5, v2, Lccsanandroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v3, v5

    iget v2, v2, Lccsanandroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v3, v2

    .line 9
    iget-object v5, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/graphics/Paint;

    iget v6, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lccsanandroid/graphics/Paint;->setTextSize(F)V

    .line 10
    iget-object v5, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/graphics/Paint;

    const-string v6, "%"

    invoke-virtual {v5, v6}, Lccsanandroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 11
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "drawText "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsanandroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v4, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/graphics/Paint;

    iget v7, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->deleteDownItem:I

    int-to-float v7, v7

    invoke-virtual {v4, v7}, Lccsanandroid/graphics/Paint;->setTextSize(F)V

    .line 13
    iget-object v4, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/graphics/Paint;

    sget-object v7, Lccsanandroid/graphics/Paint$Align;->CENTER:Lccsanandroid/graphics/Paint$Align;

    invoke-virtual {v4, v7}, Lccsanandroid/graphics/Paint;->setTextAlign(Lccsanandroid/graphics/Paint$Align;)V

    .line 14
    invoke-virtual {p0}, Lccsanandroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v5

    div-float/2addr v4, v2

    iget-object v5, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v3, v5}, Lccsanandroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLccsanandroid/graphics/Paint;)V

    .line 15
    iget-object v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/graphics/Paint;

    iget v4, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Lccsanandroid/graphics/Paint;->setTextSize(F)V

    .line 16
    iget-object v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/graphics/Paint;

    sget-object v4, Lccsanandroid/graphics/Paint$Align;->CENTER:Lccsanandroid/graphics/Paint$Align;

    invoke-virtual {v0, v4}, Lccsanandroid/graphics/Paint;->setTextAlign(Lccsanandroid/graphics/Paint$Align;)V

    .line 17
    invoke-virtual {p0}, Lccsanandroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    iget-object v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v6, v1, v3, v0}, Lccsanandroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLccsanandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private unifiedDownload(Lccsanandroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    const-string v1, "san_common_white_transparent_30"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadingList:I

    .line 2
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    const-string v1, "san_common_content_view_normal_blue_color"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->addDownloadListener:I

    .line 3
    const/high16 v0, -0x1000000

    iput v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->removeDownloadListener:I

    .line 4
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    .line 5
    new-instance v0, Lccsanandroid/graphics/Paint;

    invoke-direct {v0}, Lccsanandroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadedList:Lccsanandroid/graphics/Paint;

    .line 6
    new-instance v0, Lccsanandroid/graphics/Paint;

    invoke-direct {v0}, Lccsanandroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/graphics/Paint;

    .line 7
    new-instance v0, Lccsanandroid/graphics/Paint;

    invoke-direct {v0}, Lccsanandroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Lccsanandroid/graphics/Paint;

    .line 8
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    const-string v1, "san_common_dimens_3dp"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->unifiedDownload(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->unifiedDownload:I

    .line 9
    iget-object v1, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadedList:Lccsanandroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lccsanandroid/graphics/Paint;->setStrokeWidth(F)V

    .line 10
    iget-object v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadedList:Lccsanandroid/graphics/Paint;

    sget-object v1, Lccsanandroid/graphics/Paint$Style;->STROKE:Lccsanandroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setStyle(Lccsanandroid/graphics/Paint$Style;)V

    .line 11
    iget-object v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadedList:Lccsanandroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    const-string v2, "san_common_dimens_13dp"

    invoke-static {v2}, Lccsansan/bw/shouldTryHandlingAction;->unifiedDownload(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    .line 13
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    const-string v0, "san_common_dimens_22dp"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->unifiedDownload(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->deleteDownItem:I

    .line 14
    iget-object p1, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/graphics/Paint;

    iget v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->removeDownloadListener:I

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 15
    iget-object p1, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/graphics/Paint;

    sget-object v0, Lccsanandroid/graphics/Paint$Style;->FILL:Lccsanandroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/Paint;->setStyle(Lccsanandroid/graphics/Paint$Style;)V

    .line 16
    iget-object p1, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v1}, Lccsanandroid/graphics/Paint;->setAntiAlias(Z)V

    .line 17
    iget-object p1, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Lccsanandroid/graphics/Paint;

    iget v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 18
    iget-object p1, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Lccsanandroid/graphics/Paint;

    sget-object v0, Lccsanandroid/graphics/Paint$Style;->FILL:Lccsanandroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/Paint;->setStyle(Lccsanandroid/graphics/Paint$Style;)V

    .line 19
    iget-object p1, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v1}, Lccsanandroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Lccsanandroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lccsanandroid/view/View;->onDraw(Lccsanandroid/graphics/Canvas;)V

    .line 2
    invoke-direct {p0, p1}, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->addDownloadListener(Lccsanandroid/graphics/Canvas;)V

    .line 3
    invoke-direct {p0, p1}, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanandroid/graphics/Canvas;)V

    .line 4
    invoke-direct {p0, p1}, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/graphics/Canvas;)V

    .line 5
    iget p1, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->resume:I

    add-int/lit8 p1, p1, 0x5

    iput p1, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->resume:I

    .line 6
    invoke-virtual {p0}, Lccsanandroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 1
    iput p1, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->pause:I

    mul-int/lit16 p1, p1, 0x168

    int-to-float p1, p1

    .line 2
    iget v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadingCount:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadedCount:I

    const/16 v0, 0xf

    if-ge p1, v0, :cond_0

    .line 4
    iput v0, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->getDownloadedCount:I

    .line 7
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/view/View;->invalidate()V

    return-void
.end method

.method public setmColorProgressCircle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->addDownloadListener:I

    return-void
.end method
