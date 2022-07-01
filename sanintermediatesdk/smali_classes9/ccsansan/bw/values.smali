.class public Lccsansan/bw/values;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static addDownloadListener(F)I
    .locals 1

    .line 1
    invoke-static {}, Lccsanandroid/content/res/Resources;->getSystem()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Lccsanandroid/util/DisplayMetrics;->density:F

    mul-float p0, p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method
