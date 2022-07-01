.class public Lccsansan/bw/getAdSize;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static addDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/content/pm/PackageInfo;Lccsansan/da/removeDownloadListener;)Lccsansan/p/getDownloadedList;
    .locals 10

    .line 27
    new-instance v0, Lccsansan/p/getDownloadedList;

    invoke-direct {v0}, Lccsansan/p/getDownloadedList;-><init>()V

    .line 28
    iget-object v1, p1, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Lccsanandroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;)V

    .line 29
    iget v1, p1, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Lccsansan/p/getDownloadedList;->getDownloadingList(I)V

    .line 31
    invoke-virtual {p2}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/p/getDownloadedList;->removeDownloadListener(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2}, Lccsansan/da/removeDownloadListener;->addDownloadListener()[Lccsansan/da/removeDownloadListener;

    move-result-object v1

    .line 34
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_2

    .line 38
    array-length v5, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v1, v6

    .line 39
    invoke-virtual {v7}, Lccsansan/da/removeDownloadListener;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v8

    const-string v9, "split"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 40
    invoke-virtual {v7}, Lccsansan/da/removeDownloadListener;->getDownloadedRecordByUrl()J

    move-result-wide v8

    add-long/2addr v3, v8

    .line 41
    invoke-virtual {v7}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lccsansan/bw/setLoaderClassName;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 42
    :cond_0
    invoke-virtual {v7}, Lccsansan/da/removeDownloadListener;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v8

    const-string v9, "base.apk"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 44
    invoke-virtual {v7}, Lccsansan/da/removeDownloadListener;->getDownloadedRecordByUrl()J

    move-result-wide v8

    add-long/2addr v3, v8

    move-object p2, v7

    goto :goto_1

    :cond_1
    nop

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p2}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lccsansan/bw/getDownloadedRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p0

    .line 50
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 51
    iget-object p0, p1, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 52
    :cond_3
    invoke-virtual {v0, p0}, Lccsansan/p/getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, v2}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/util/List;)V

    .line 55
    invoke-virtual {v0, v3, v4}, Lccsansan/p/getDownloadedList;->removeDownloadListener(J)V

    return-object v0
.end method

.method public static removeDownloadListener(Lccsansan/da/removeDownloadListener;)Lccsansan/p/getDownloadedList;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 1
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->removeDownloadListener()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/base.apk"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 8
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->addDownloadListener()[Lccsansan/da/removeDownloadListener;

    move-result-object v1

    .line 9
    array-length v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 10
    invoke-virtual {v4}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lccsansan/bw/getDownloadedRecordByUrl;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 18
    :cond_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lccsansan/bw/getDownloadedRecordByUrl;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/pm/PackageInfo;

    move-result-object v4

    goto :goto_1

    .line 21
    :cond_3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lccsansan/bw/getDownloadedRecordByUrl;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/pm/PackageInfo;

    move-result-object v4

    :cond_4
    :goto_1
    if-nez v4, :cond_5

    return-object v0

    .line 26
    :cond_5
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, p0}, Lccsansan/bw/getAdSize;->addDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/content/pm/PackageInfo;Lccsansan/da/removeDownloadListener;)Lccsansan/p/getDownloadedList;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_2
    return-object v0
.end method
