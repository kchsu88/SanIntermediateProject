.class public Lccsansan/be/getDownloadedRecordByUrl;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static addDownloadListener()I
    .locals 2

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    sget-object v1, Lccsansan/be/addDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {v0, v1}, Lccsansan/bw/getDownloadedCount;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static unifiedDownload()Z
    .locals 2

    .line 1
    invoke-static {}, Lccsansan/be/getDownloadedRecordByUrl;->addDownloadListener()I

    move-result v0

    const v1, 0x3df434

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
