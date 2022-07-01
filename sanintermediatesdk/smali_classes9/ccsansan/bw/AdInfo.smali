.class public Lccsansan/bw/AdInfo;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static addDownloadListener(Lccsanandroid/content/Context;Ljava/io/File;)Lccsanandroid/net/Uri;
    .locals 2

    .line 2
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 3
    invoke-static {p0, p1}, Lccsansan/bw/AdInfo;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/io/File;)Lccsanandroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-static {p1}, Lccsanandroid/net/Uri;->fromFile(Ljava/io/File;)Lccsanandroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;Lccsansan/da/removeDownloadListener;)Lccsanandroid/net/Uri;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lccsansan/da/removeDownloadListener;->getDownloadingCount()Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1}, Lccsansan/bw/AdInfo;->addDownloadListener(Lccsanandroid/content/Context;Ljava/io/File;)Lccsanandroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;Ljava/io/File;)Lccsanandroid/net/Uri;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".fileProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p0, v0, p1}, Lccsanandroidx/core/content/FileProvider;->getUriForFile(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lccsanandroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
