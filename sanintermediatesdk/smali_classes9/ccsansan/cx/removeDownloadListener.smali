.class public Lccsansan/cx/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static IncentiveDownloadUtils(Lccsanandroid/content/Context;)F
    .locals 0

    .line 1
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Lccsanandroid/util/DisplayMetrics;->density:F

    return p0
.end method

.method public static IncentiveDownloadUtils(FLccsanandroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lccsansan/cx/removeDownloadListener;->removeDownloadListener(FLccsanandroid/content/Context;)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static addDownloadListener(FLccsanandroid/content/Context;)F
    .locals 1

    .line 2
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object p1

    .line 3
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lccsanandroid/util/TypedValue;->applyDimension(IFLccsanandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static getDownloadStatusByUrl(FLccsanandroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lccsansan/cx/removeDownloadListener;->addDownloadListener(FLccsanandroid/content/Context;)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static getDownloadingList(FLccsanandroid/content/Context;)F
    .locals 0

    .line 1
    invoke-static {p1}, Lccsansan/cx/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)F

    move-result p1

    mul-float p0, p0, p1

    return p0
.end method

.method public static removeDownloadListener(FLccsanandroid/content/Context;)F
    .locals 0

    .line 1
    invoke-static {p1}, Lccsansan/cx/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)F

    move-result p1

    div-float/2addr p0, p1

    return p0
.end method

.method public static unifiedDownload(FLccsanandroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lccsansan/cx/removeDownloadListener;->getDownloadingList(FLccsanandroid/content/Context;)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method
