.class public final Lccsansan/d/deleteDownItem;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static IncentiveDownloadUtils(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/Resources;
    .locals 2

    .line 33
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 35
    invoke-static {p0}, Lccsansan/d/addDownloadListener;->getDownloadingList(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/Resources;

    move-result-object p0

    return-object p0

    .line 37
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 39
    invoke-static {p0}, Lccsansan/d/unifiedDownload;->getDownloadingList(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/Resources;

    move-result-object p0

    return-object p0

    .line 43
    :cond_1
    invoke-static {p0}, Lccsansan/d/getDownloadedList;->addDownloadListener(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method
