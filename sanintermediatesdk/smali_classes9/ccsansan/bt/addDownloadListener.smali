.class public Lccsansan/bt/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object p0

    .line 3
    iget p0, p0, Lccsanandroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static addDownloadListener(I)I
    .locals 1

    .line 1
    invoke-static {}, Lccsanandroid/content/res/Resources;->getSystem()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Lccsanandroid/util/DisplayMetrics;->density:F

    int-to-float p0, p0

    mul-float v0, v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object p0

    .line 2
    iget p0, p0, Lccsanandroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method
