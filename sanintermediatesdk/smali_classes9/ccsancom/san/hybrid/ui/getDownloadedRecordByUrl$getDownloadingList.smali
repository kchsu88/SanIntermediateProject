.class public Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "getDownloadingList"
.end annotation


# instance fields
.field private final IncentiveDownloadUtils:I

.field private final addDownloadListener:I

.field private final getDownloadedList:F

.field private final getDownloadingList:I

.field private final removeDownloadListener:Z

.field private final unifiedDownload:Z


# direct methods
.method private constructor <init>(Lccsanandroid/app/Activity;ZZ)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lccsanandroid/app/Activity;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Lccsanandroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;->removeDownloadListener:Z

    .line 5
    invoke-direct {p0, p1}, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;->removeDownloadListener(Lccsanandroid/app/Activity;)F

    move-result p3

    iput p3, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;->getDownloadedList:F

    .line 6
    const-string p3, "status_bar_height"

    invoke-direct {p0, p2, p3}, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;->getDownloadingList(Lccsanandroid/content/res/Resources;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;->IncentiveDownloadUtils:I

    .line 7
    invoke-direct {p0, p1}, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;)I

    .line 8
    invoke-direct {p0, p1}, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;)I

    move-result p2

    iput p2, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;->getDownloadingList:I

    .line 9
    invoke-direct {p0, p1}, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;->getDownloadingList(Lccsanandroid/content/Context;)I

    move-result p1

    iput p1, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;->addDownloadListener:I

    if-lez p2, :cond_1

    const/4 v0, 0x1

    .line 10
    :cond_1
    iput-boolean v0, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;->unifiedDownload:Z

    return-void
.end method

.method synthetic constructor <init>(Lccsanandroid/app/Activity;ZZLccsancom/san/hybrid/ui/getDownloadedRecordByUrl$unifiedDownload;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;-><init>(Lccsanandroid/app/Activity;ZZ)V

    return-void
.end method

.method private addDownloadListener(Lccsanandroid/content/Context;)I
    .locals 4

    .line 1
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Lccsanandroid/util/TypedValue;

    invoke-direct {v0}, Lccsanandroid/util/TypedValue;-><init>()V

    .line 3
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v1

    const-string v2, "actionBarSize"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lccsansan/bw/shouldTryHandlingAction;->unifiedDownload(Ljava/lang/String;Z)I

    move-result v2

    invoke-virtual {v1, v2, v0, v3}, Lccsanandroid/content/res/Resources$Theme;->resolveAttribute(ILccsanandroid/util/TypedValue;Z)Z

    .line 4
    iget v0, v0, Lccsanandroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {v0, p1}, Lccsanandroid/util/TypedValue;->complexToDimensionPixelSize(ILccsanandroid/util/DisplayMetrics;)I

    move-result p1

    goto :goto_0

    .line 1
    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    return p1
.end method

.method private getDownloadingList(Lccsanandroid/content/Context;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    .line 3
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    const-string p1, "navigation_bar_width"

    invoke-direct {p0, v0, p1}, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;->getDownloadingList(Lccsanandroid/content/res/Resources;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getDownloadingList(Lccsanandroid/content/res/Resources;Ljava/lang/String;)I
    .locals 2

    .line 5
    const-string v0, "dimen"

    const-string v1, "android"

    invoke-virtual {p1, p2, v0, v1}, Lccsanandroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_0

    .line 7
    invoke-virtual {p1, p2}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    return p1
.end method

.method private removeDownloadListener(Lccsanandroid/app/Activity;)F
    .locals 3

    .line 8
    new-instance v0, Lccsanandroid/util/DisplayMetrics;

    invoke-direct {v0}, Lccsanandroid/util/DisplayMetrics;-><init>()V

    .line 9
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 10
    invoke-virtual {p1}, Lccsanandroid/app/Activity;->getWindowManager()Lccsanandroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Lccsanandroid/view/WindowManager;->getDefaultDisplay()Lccsanandroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Lccsanandroid/view/Display;->getRealMetrics(Lccsanandroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/app/Activity;->getWindowManager()Lccsanandroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Lccsanandroid/view/WindowManager;->getDefaultDisplay()Lccsanandroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Lccsanandroid/view/Display;->getMetrics(Lccsanandroid/util/DisplayMetrics;)V

    .line 15
    :goto_0
    iget p1, v0, Lccsanandroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    iget v1, v0, Lccsanandroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v1

    .line 16
    iget v0, v0, Lccsanandroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 17
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private removeDownloadListener(Lccsanandroid/content/Context;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    .line 2
    const-string v1, "config_showNavigationBar"

    const-string v2, "bool"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 6
    invoke-static {}, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->getDownloadingList()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->getDownloadingList()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, p1

    :goto_0
    return v2

    .line 13
    :cond_2
    invoke-static {p1}, Lccsanandroid/view/ViewConfiguration;->get(Lccsanandroid/content/Context;)Lccsanandroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    xor-int/2addr p1, v2

    return p1
.end method

.method private unifiedDownload(Lccsanandroid/content/Context;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    .line 3
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-boolean p1, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;->removeDownloadListener:Z

    if-eqz p1, :cond_0

    const-string p1, "navigation_bar_height"

    goto :goto_0

    :cond_0
    const-string p1, "navigation_bar_height_landscape"

    .line 11
    :goto_0
    invoke-direct {p0, v0, p1}, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;->getDownloadingList(Lccsanandroid/content/res/Resources;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public IncentiveDownloadUtils()I
    .locals 1

    .line 18
    iget v0, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;->getDownloadingList:I

    return v0
.end method

.method public addDownloadListener()I
    .locals 1

    .line 12
    iget v0, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;->addDownloadListener:I

    return v0
.end method

.method public getDownloadingList()I
    .locals 1

    .line 6
    iget v0, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;->IncentiveDownloadUtils:I

    return v0
.end method

.method public removeDownloadListener()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;->unifiedDownload:Z

    return v0
.end method

.method public unifiedDownload()Z
    .locals 2

    .line 1
    iget v0, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;->getDownloadedList:F

    const/high16 v1, 0x44160000    # 600.0f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_1

    iget-boolean v0, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;->removeDownloadListener:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
