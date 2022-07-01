.class public abstract Lccsansan/i/addDownloadListener;
.super Lccsanandroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lccsansan/dg/addDownloadListener;


# instance fields
.field protected IncentiveDownloadUtils:Z

.field public addDownloadListener:Lccsanandroid/view/TextureView;

.field private deleteDownItem:Z

.field private deleteDownList:Z

.field private getDownloadStatusByUrl:Lccsanandroid/widget/ImageView$ScaleType;

.field private getDownloadedCount:Lccsanandroid/view/TextureView$SurfaceTextureListener;

.field public getDownloadedList:Lccsanandroid/view/View$OnClickListener;

.field private getDownloadedRecordByUrl:Z

.field public getDownloadingList:Lccsansan/dg/unifiedDownload;

.field public getDownloadingRecordByUrl:Lccsanandroid/view/View$OnClickListener;

.field private pause:Ljava/lang/String;

.field public removeDownloadListener:Lccsanandroid/widget/FrameLayout;

.field public unifiedDownload:Z


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 2
    sget-object v0, Lccsanandroid/widget/ImageView$ScaleType;->MATRIX:Lccsanandroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lccsansan/i/addDownloadListener;->getDownloadStatusByUrl:Lccsanandroid/widget/ImageView$ScaleType;

    .line 6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsansan/i/addDownloadListener;->getDownloadedRecordByUrl:Z

    .line 7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsansan/i/addDownloadListener;->deleteDownItem:Z

    .line 8
    iput-boolean v0, p0, Lccsansan/i/addDownloadListener;->deleteDownList:Z

    .line 9
    const-string v1, ""

    iput-object v1, p0, Lccsansan/i/addDownloadListener;->pause:Ljava/lang/String;

    .line 12
    iput-boolean v0, p0, Lccsansan/i/addDownloadListener;->IncentiveDownloadUtils:Z

    .line 58
    new-instance v0, Lccsansan/i/addDownloadListener$removeDownloadListener;

    invoke-direct {v0, p0}, Lccsansan/i/addDownloadListener$removeDownloadListener;-><init>(Lccsansan/i/addDownloadListener;)V

    iput-object v0, p0, Lccsansan/i/addDownloadListener;->getDownloadedCount:Lccsanandroid/view/TextureView$SurfaceTextureListener;

    .line 255
    new-instance v0, Lccsansan/i/addDownloadListener$unifiedDownload;

    invoke-direct {v0, p0}, Lccsansan/i/addDownloadListener$unifiedDownload;-><init>(Lccsansan/i/addDownloadListener;)V

    iput-object v0, p0, Lccsansan/i/addDownloadListener;->getDownloadingRecordByUrl:Lccsanandroid/view/View$OnClickListener;

    .line 265
    new-instance v0, Lccsansan/i/addDownloadListener$addDownloadListener;

    invoke-direct {v0, p0}, Lccsansan/i/addDownloadListener$addDownloadListener;-><init>(Lccsansan/i/addDownloadListener;)V

    iput-object v0, p0, Lccsansan/i/addDownloadListener;->getDownloadedList:Lccsanandroid/view/View$OnClickListener;

    .line 266
    invoke-virtual {p0, p1}, Lccsansan/i/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1

    .line 267
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 268
    sget-object p2, Lccsanandroid/widget/ImageView$ScaleType;->MATRIX:Lccsanandroid/widget/ImageView$ScaleType;

    iput-object p2, p0, Lccsansan/i/addDownloadListener;->getDownloadStatusByUrl:Lccsanandroid/widget/ImageView$ScaleType;

    .line 272
    const/4 p2, 0x0

    iput-boolean p2, p0, Lccsansan/i/addDownloadListener;->getDownloadedRecordByUrl:Z

    .line 273
    const/4 p2, 0x1

    iput-boolean p2, p0, Lccsansan/i/addDownloadListener;->deleteDownItem:Z

    .line 274
    iput-boolean p2, p0, Lccsansan/i/addDownloadListener;->deleteDownList:Z

    .line 275
    const-string v0, ""

    iput-object v0, p0, Lccsansan/i/addDownloadListener;->pause:Ljava/lang/String;

    .line 278
    iput-boolean p2, p0, Lccsansan/i/addDownloadListener;->IncentiveDownloadUtils:Z

    .line 324
    new-instance p2, Lccsansan/i/addDownloadListener$removeDownloadListener;

    invoke-direct {p2, p0}, Lccsansan/i/addDownloadListener$removeDownloadListener;-><init>(Lccsansan/i/addDownloadListener;)V

    iput-object p2, p0, Lccsansan/i/addDownloadListener;->getDownloadedCount:Lccsanandroid/view/TextureView$SurfaceTextureListener;

    .line 521
    new-instance p2, Lccsansan/i/addDownloadListener$unifiedDownload;

    invoke-direct {p2, p0}, Lccsansan/i/addDownloadListener$unifiedDownload;-><init>(Lccsansan/i/addDownloadListener;)V

    iput-object p2, p0, Lccsansan/i/addDownloadListener;->getDownloadingRecordByUrl:Lccsanandroid/view/View$OnClickListener;

    .line 531
    new-instance p2, Lccsansan/i/addDownloadListener$addDownloadListener;

    invoke-direct {p2, p0}, Lccsansan/i/addDownloadListener$addDownloadListener;-><init>(Lccsansan/i/addDownloadListener;)V

    iput-object p2, p0, Lccsansan/i/addDownloadListener;->getDownloadedList:Lccsanandroid/view/View$OnClickListener;

    .line 532
    invoke-virtual {p0, p1}, Lccsansan/i/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)V

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/i/addDownloadListener;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lccsansan/i/addDownloadListener;->getDownloadedRecordByUrl:Z

    return p1
.end method

.method static synthetic addDownloadListener(Lccsansan/i/addDownloadListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/i/addDownloadListener;->getPackageNameByRecord()V

    return-void
.end method

.method private addDownloadListener(Lccsansan/dt/removeDownloadListener;)Z
    .locals 1

    .line 5
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/getPackageNameByRecord;->deleteDownItem()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic getDownloadingList(Lccsansan/i/addDownloadListener;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lccsansan/i/addDownloadListener;->getDownloadedRecordByUrl:Z

    return p0
.end method

.method private getPackageNameByRecord()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lccsansan/i/addDownloadListener;->addDownloadListener()V

    .line 3
    iget-object v0, p0, Lccsansan/i/addDownloadListener;->getDownloadingList:Lccsansan/dg/unifiedDownload;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lccsansan/dg/unifiedDownload;->unifiedDownload()Lccsansan/dd/getDownloadingList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lccsansan/dd/addDownloadListener;->unifiedDownload()Lccsansan/dd/addDownloadListener;

    move-result-object v0

    iget-object v1, p0, Lccsansan/i/addDownloadListener;->pause:Ljava/lang/String;

    iget-object v2, p0, Lccsansan/i/addDownloadListener;->getDownloadingList:Lccsansan/dg/unifiedDownload;

    invoke-virtual {v2}, Lccsansan/dg/unifiedDownload;->unifiedDownload()Lccsansan/dd/getDownloadingList;

    move-result-object v2

    invoke-interface {v2}, Lccsansan/dd/getDownloadingList;->deleteDownItem()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lccsansan/dd/addDownloadListener;->addDownloadListener(Ljava/lang/String;I)V

    .line 9
    :cond_1
    iget-object v0, p0, Lccsansan/i/addDownloadListener;->getDownloadingList:Lccsansan/dg/unifiedDownload;

    invoke-virtual {v0}, Lccsansan/dg/unifiedDownload;->getDownloadingRecordByUrl()V

    .line 10
    iget-object v0, p0, Lccsansan/i/addDownloadListener;->getDownloadingList:Lccsansan/dg/unifiedDownload;

    invoke-virtual {v0}, Lccsansan/dg/unifiedDownload;->addDownloadListener()V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lccsansan/i/addDownloadListener;->deleteDownItem:Z

    return-void
.end method

.method static synthetic removeDownloadListener(Lccsansan/i/addDownloadListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/i/addDownloadListener;->trackReportShow()V

    return-void
.end method

.method private trackReportShow()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lccsansan/i/addDownloadListener;->addDownloadListener()V

    .line 3
    iget-boolean v0, p0, Lccsansan/i/addDownloadListener;->deleteDownItem:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lccsansan/i/addDownloadListener;->getDownloadingList:Lccsansan/dg/unifiedDownload;

    invoke-virtual {v0}, Lccsansan/dg/unifiedDownload;->addDownloadListener()V

    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lccsansan/i/addDownloadListener;->deleteDownItem:Z

    .line 8
    invoke-virtual {p0}, Lccsansan/i/addDownloadListener;->removeDownloadListener()V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doStartPlay() url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/i/addDownloadListener;->pause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " hashCode\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaView.Base"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lccsansan/i/addDownloadListener;->getDownloadingList:Lccsansan/dg/unifiedDownload;

    iget-object v1, p0, Lccsansan/i/addDownloadListener;->pause:Ljava/lang/String;

    iget-boolean v2, p0, Lccsansan/i/addDownloadListener;->deleteDownList:Z

    invoke-static {}, Lccsansan/dd/addDownloadListener;->unifiedDownload()Lccsansan/dd/addDownloadListener;

    move-result-object v3

    iget-object v4, p0, Lccsansan/i/addDownloadListener;->pause:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lccsansan/dd/addDownloadListener;->addDownloadListener(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Lccsansan/dg/unifiedDownload;->getDownloadingList(Ljava/lang/String;ZZI)V

    .line 12
    iget-object v0, p0, Lccsansan/i/addDownloadListener;->addDownloadListener:Lccsanandroid/view/TextureView;

    invoke-virtual {v0}, Lccsanandroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lccsansan/i/addDownloadListener;->getDownloadingList:Lccsansan/dg/unifiedDownload;

    iget-object v1, p0, Lccsansan/i/addDownloadListener;->addDownloadListener:Lccsanandroid/view/TextureView;

    invoke-virtual {v0, v1}, Lccsansan/dg/unifiedDownload;->unifiedDownload(Lccsanandroid/view/TextureView;)V

    :cond_1
    return-void
.end method

.method static synthetic unifiedDownload(Lccsansan/i/addDownloadListener;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lccsansan/i/addDownloadListener;->deleteDownList:Z

    return p0
.end method

.method static synthetic unifiedDownload(Lccsansan/i/addDownloadListener;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lccsansan/i/addDownloadListener;->deleteDownList:Z

    return p1
.end method


# virtual methods
.method protected abstract IncentiveDownloadUtils()V
.end method

.method protected IncentiveDownloadUtils(Lccsanandroid/content/Context;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsanandroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 4
    const-string v0, "san_base_media_view_layout"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0, p0}, Lccsanandroid/view/View;->inflate(Lccsanandroid/content/Context;ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    .line 6
    const-string p1, "san_texture"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/view/TextureView;

    iput-object p1, p0, Lccsansan/i/addDownloadListener;->addDownloadListener:Lccsanandroid/view/TextureView;

    .line 7
    iget-object v0, p0, Lccsansan/i/addDownloadListener;->getDownloadedCount:Lccsanandroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p1, v0}, Lccsanandroid/view/TextureView;->setSurfaceTextureListener(Lccsanandroid/view/TextureView$SurfaceTextureListener;)V

    .line 9
    const-string p1, "san_fl_cover"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/FrameLayout;

    iput-object p1, p0, Lccsansan/i/addDownloadListener;->removeDownloadListener:Lccsanandroid/widget/FrameLayout;

    return-void
.end method

.method protected IncentiveSDK()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/i/addDownloadListener;->getDownloadingList:Lccsansan/dg/unifiedDownload;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lccsansan/dg/unifiedDownload;->deleteDownList()V

    :cond_0
    return-void
.end method

.method protected abstract addDownloadListener()V
.end method

.method protected deleteDownList()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/i/addDownloadListener;->getDownloadingList:Lccsansan/dg/unifiedDownload;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lccsansan/dg/unifiedDownload;->getDownloadedList()V

    :cond_0
    return-void
.end method

.method public getDownloadStatusByUrl()V
    .locals 0

    return-void
.end method

.method public getDownloadedCount()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopPlay :  hashCode\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaView.Base"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsansan/i/addDownloadListener;->getDownloadedRecordByUrl:Z

    .line 3
    invoke-direct {p0}, Lccsansan/i/addDownloadListener;->getPackageNameByRecord()V

    return-void
.end method

.method protected getDownloadingCount()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/i/addDownloadListener;->getDownloadingList:Lccsansan/dg/unifiedDownload;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lccsansan/dg/unifiedDownload;->getDownloadedCount()V

    :cond_0
    return-void
.end method

.method protected abstract getDownloadingList()Lccsansan/dd/removeDownloadListener;
.end method

.method public getDownloadingList(II)V
    .locals 12

    .line 2
    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 3
    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doAdjustVideoSize() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaView.Base"

    invoke-static {v3, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float p1, p1

    div-float v2, p1, v0

    int-to-float p2, p2

    div-float v3, p2, v1

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    div-float v5, p1, v4

    float-to-double v5, v5

    .line 10
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    div-float v6, p2, v4

    float-to-double v6, v6

    .line 11
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    mul-int v7, v5, v6

    if-nez v7, :cond_0

    float-to-int v6, v1

    float-to-int v5, v0

    goto :goto_0

    :cond_0
    div-float v7, p1, p2

    const v8, 0x3ff4296f

    cmpl-float v8, v7, v8

    if-nez v8, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const v8, 0x3fe33333    # 1.775f

    cmpl-float v7, v7, v8

    if-nez v7, :cond_2

    add-int/lit8 v5, v5, 0x3

    .line 21
    :cond_2
    :goto_0
    iget-object v7, p0, Lccsansan/i/addDownloadListener;->addDownloadListener:Lccsanandroid/view/TextureView;

    if-eqz v7, :cond_7

    .line 22
    iget-object v8, p0, Lccsansan/i/addDownloadListener;->getDownloadStatusByUrl:Lccsanandroid/widget/ImageView$ScaleType;

    sget-object v9, Lccsanandroid/widget/ImageView$ScaleType;->CENTER_CROP:Lccsanandroid/widget/ImageView$ScaleType;

    const/4 v10, -0x1

    const/high16 v11, 0x40000000    # 2.0f

    if-ne v8, v9, :cond_4

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float p1, v4, p1

    .line 26
    new-instance p2, Lccsanandroid/graphics/Matrix;

    invoke-direct {p2}, Lccsanandroid/graphics/Matrix;-><init>()V

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v2, v4, v2

    if-nez v2, :cond_3

    .line 28
    invoke-virtual {p2, p1, v5}, Lccsanandroid/graphics/Matrix;->postScale(FF)Z

    mul-float p1, p1, v0

    sub-float/2addr v0, p1

    div-float/2addr v0, v11

    .line 29
    invoke-virtual {p2, v0, v3}, Lccsanandroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    :cond_3
    nop

    .line 31
    invoke-virtual {p2, v5, p1}, Lccsanandroid/graphics/Matrix;->postScale(FF)Z

    mul-float p1, p1, v1

    sub-float/2addr v1, p1

    div-float/2addr v1, v11

    .line 32
    invoke-virtual {p2, v3, v1}, Lccsanandroid/graphics/Matrix;->postTranslate(FF)Z

    .line 34
    :goto_1
    iget-object p1, p0, Lccsansan/i/addDownloadListener;->addDownloadListener:Lccsanandroid/view/TextureView;

    invoke-virtual {p1, p2}, Lccsanandroid/view/TextureView;->setTransform(Lccsanandroid/graphics/Matrix;)V

    .line 35
    iget-object p1, p0, Lccsansan/i/addDownloadListener;->addDownloadListener:Lccsanandroid/view/TextureView;

    new-instance p2, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, v10, v10}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Lccsanandroid/view/TextureView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 36
    :cond_4
    sget-object v4, Lccsanandroid/widget/ImageView$ScaleType;->FIT_CENTER:Lccsanandroid/widget/ImageView$ScaleType;

    if-ne v8, v4, :cond_6

    div-float v4, v0, p1

    div-float v5, v1, p2

    .line 40
    new-instance v6, Lccsanandroid/graphics/Matrix;

    invoke-direct {v6}, Lccsanandroid/graphics/Matrix;-><init>()V

    sub-float/2addr v0, p1

    div-float/2addr v0, v11

    sub-float/2addr v1, p2

    div-float/2addr v1, v11

    .line 41
    invoke-virtual {v6, v0, v1}, Lccsanandroid/graphics/Matrix;->preTranslate(FF)Z

    .line 42
    invoke-virtual {v6, v2, v3}, Lccsanandroid/graphics/Matrix;->preScale(FF)Z

    cmpl-float p1, v4, v5

    if-ltz p1, :cond_5

    .line 45
    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v11

    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v11

    invoke-virtual {v6, v5, v5, p1, p2}, Lccsanandroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_2

    .line 47
    :cond_5
    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v11

    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v11

    invoke-virtual {v6, v4, v4, p1, p2}, Lccsanandroid/graphics/Matrix;->postScale(FFFF)Z

    .line 50
    :goto_2
    iget-object p1, p0, Lccsansan/i/addDownloadListener;->addDownloadListener:Lccsanandroid/view/TextureView;

    invoke-virtual {p1, v6}, Lccsanandroid/view/TextureView;->setTransform(Lccsanandroid/graphics/Matrix;)V

    .line 51
    iget-object p1, p0, Lccsansan/i/addDownloadListener;->addDownloadListener:Lccsanandroid/view/TextureView;

    new-instance p2, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, v10, v10}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Lccsanandroid/view/TextureView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 54
    :cond_6
    new-instance p1, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/16 p2, 0x11

    invoke-direct {p1, v5, v6, p2}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v7, p1}, Lccsanandroid/view/TextureView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public getDownloadingList(Ljava/lang/String;)V
    .locals 2

    .line 10
    new-instance v0, Lccsansan/dg/unifiedDownload;

    invoke-direct {v0, p0}, Lccsansan/dg/unifiedDownload;-><init>(Lccsansan/dg/addDownloadListener;)V

    iput-object v0, p0, Lccsansan/i/addDownloadListener;->getDownloadingList:Lccsansan/dg/unifiedDownload;

    .line 11
    invoke-virtual {p0}, Lccsansan/i/addDownloadListener;->getDownloadingList()Lccsansan/dd/removeDownloadListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dg/unifiedDownload;->unifiedDownload(Lccsansan/dd/removeDownloadListener;)V

    .line 12
    iput-object p1, p0, Lccsansan/i/addDownloadListener;->pause:Ljava/lang/String;

    .line 13
    invoke-static {}, Lccsansan/dd/addDownloadListener;->unifiedDownload()Lccsansan/dd/addDownloadListener;

    move-result-object p1

    iget-object v0, p0, Lccsansan/i/addDownloadListener;->pause:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsansan/dd/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lccsansan/i/addDownloadListener;->getDownloadingList:Lccsansan/dg/unifiedDownload;

    invoke-virtual {p1}, Lccsansan/dg/unifiedDownload;->removeDownloadListener()V

    return-void
.end method

.method public getDownloadingList(Lccsansan/dt/removeDownloadListener;)V
    .locals 1

    .line 15
    invoke-static {p1}, Lccsansan/dt/getDownloadedList;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-direct {p0, p1}, Lccsansan/i/addDownloadListener;->addDownloadListener(Lccsansan/dt/removeDownloadListener;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 20
    invoke-virtual {p0}, Lccsansan/i/addDownloadListener;->pause()V

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lccsansan/i/addDownloadListener;->getDownloadedRecordByUrl:Z

    :cond_1
    return-void
.end method

.method public getDownloadingRecordByUrl()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumePlay :  hashCode\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaView.Base"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsansan/i/addDownloadListener;->getDownloadingList:Lccsansan/dg/unifiedDownload;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lccsansan/dg/unifiedDownload;->deleteDownItem()V

    :cond_0
    return-void
.end method

.method protected getDuration()I
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/i/addDownloadListener;->getDownloadingList:Lccsansan/dg/unifiedDownload;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lccsansan/dg/unifiedDownload;->pause()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMuteState()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/i/addDownloadListener;->deleteDownList:Z

    return v0
.end method

.method public getThumbPathByRecord()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/i/addDownloadListener;->getDownloadingList:Lccsansan/dg/unifiedDownload;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lccsansan/dg/unifiedDownload;->getDownloadingList()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(Lccsanandroid/view/View;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/FrameLayout;->onVisibilityChanged(Lccsanandroid/view/View;I)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVisibilityChanged = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaView.Base"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 4
    iget-object p1, p0, Lccsansan/i/addDownloadListener;->getDownloadingList:Lccsansan/dg/unifiedDownload;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lccsansan/dg/unifiedDownload;->getDownloadingList()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lccsansan/i/addDownloadListener;->getDownloadingList:Lccsansan/dg/unifiedDownload;

    invoke-virtual {p1}, Lccsansan/dg/unifiedDownload;->getDownloadedRecordByUrl()V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lccsansan/i/addDownloadListener;->getDownloadedRecordByUrl:Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lccsansan/i/addDownloadListener;->getDownloadedCount()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lccsanandroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  :  hashCode\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCheckWindowFocus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsansan/i/addDownloadListener;->IncentiveDownloadUtils:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaView.Base"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lccsansan/i/addDownloadListener;->IncentiveDownloadUtils:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 8
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance v0, Lccsansan/i/addDownloadListener$IncentiveDownloadUtils;

    const-wide/16 v1, 0xc8

    invoke-direct {v0, p0, v1, v2}, Lccsansan/i/addDownloadListener$IncentiveDownloadUtils;-><init>(Lccsansan/i/addDownloadListener;J)V

    invoke-virtual {p1, v0}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    goto :goto_0

    .line 22
    :cond_1
    iget-object p1, p0, Lccsansan/i/addDownloadListener;->getDownloadingList:Lccsansan/dg/unifiedDownload;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lccsansan/dg/unifiedDownload;->getDownloadingList()Z

    move-result p1

    if-nez p1, :cond_2

    .line 23
    iget-object p1, p0, Lccsansan/i/addDownloadListener;->getDownloadingList:Lccsansan/dg/unifiedDownload;

    invoke-virtual {p1}, Lccsansan/dg/unifiedDownload;->getDownloadedRecordByUrl()V

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lccsansan/i/addDownloadListener;->getDownloadedRecordByUrl:Z

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NO Focus pausePlay  hashCode\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {p0}, Lccsansan/i/addDownloadListener;->getDownloadedCount()V

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NO Focus stopPlay  hashCode\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public pause()V
    .locals 4

    .line 1
    iget-object v0, p0, Lccsansan/i/addDownloadListener;->pause:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPlay :  hashCode\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaView.Base"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :try_start_0
    invoke-direct {p0}, Lccsansan/i/addDownloadListener;->trackReportShow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPlay error :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected abstract removeDownloadListener()V
.end method

.method public removeDownloadListener(II)V
    .locals 0

    return-void
.end method

.method protected abstract removeDownloadListener(Z)V
.end method

.method public resume()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pausePlay :  hashCode\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaView.Base"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsansan/i/addDownloadListener;->getDownloadingList:Lccsansan/dg/unifiedDownload;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lccsansan/dg/unifiedDownload;->getDownloadedRecordByUrl()V

    :cond_0
    return-void
.end method

.method public setCheckWindowFocus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lccsansan/i/addDownloadListener;->IncentiveDownloadUtils:Z

    return-void
.end method

.method public setMuteState(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lccsansan/i/addDownloadListener;->deleteDownList:Z

    return-void
.end method

.method public setScaleType(Lccsanandroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/i/addDownloadListener;->getDownloadStatusByUrl:Lccsanandroid/widget/ImageView$ScaleType;

    return-void
.end method

.method protected unifiedDownload(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lccsansan/i/addDownloadListener;->getDownloadingList:Lccsansan/dg/unifiedDownload;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lccsansan/dg/unifiedDownload;->getDownloadingList(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
