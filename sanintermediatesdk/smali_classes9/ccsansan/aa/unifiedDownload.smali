.class public final Lccsansan/aa/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static getDownloadingList(Lccsanandroid/content/Context;Lccsanandroid/content/pm/PackageInfo;Ljava/lang/String;)Lccsansan/ae/unifiedDownload;
    .locals 12

    .line 1
    new-instance v0, Lccsancom/san/xz/base/getDownloadingList;

    invoke-direct {v0}, Lccsancom/san/xz/base/getDownloadingList;-><init>()V

    .line 3
    iget-object v1, p1, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Lccsanandroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget v1, p1, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ver"

    invoke-virtual {v0, v2, v1}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-static {p2}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v1

    .line 6
    const-string v2, "base.apk"

    invoke-static {v1, v2}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return-object v5

    .line 10
    :cond_0
    invoke-virtual {v3}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, p1}, Lccsansan/bw/getDownloadedRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 12
    iget-object v4, p1, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :cond_1
    nop

    .line 13
    const-string v6, "name"

    invoke-virtual {v0, v6, v4}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    const-string v4, "file_path"

    invoke-virtual {v0, v4, p2}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v1}, Lccsansan/da/removeDownloadListener;->addDownloadListener()[Lccsansan/da/removeDownloadListener;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 16
    array-length v1, p2

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    const-wide/16 v4, 0x0

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    array-length v6, p2

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_4

    aget-object v9, p2, v8

    .line 21
    invoke-virtual {v9}, Lccsansan/da/removeDownloadListener;->getDownloadedRecordByUrl()J

    move-result-wide v10

    add-long/2addr v4, v10

    .line 22
    invoke-virtual {v9}, Lccsansan/da/removeDownloadListener;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v9

    .line 23
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_1

    .line 26
    :cond_3
    invoke-static {v9}, Lccsansan/bw/setLoaderClassName;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 28
    const-string p2, "split_names"

    invoke-virtual {v0, p2, v1}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "has_thumbnail"

    invoke-virtual {v0, v1, p2}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    const-string v1, "is_exist"

    invoke-virtual {v0, v1, p2}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    iget-object p2, p1, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Lccsanandroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "package_name"

    invoke-virtual {v0, v1, p2}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    iget p2, p1, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "version_code"

    invoke-virtual {v0, v1, p2}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    iget-object p2, p1, Lccsanandroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v1, "version_name"

    invoke-virtual {v0, v1, p2}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    iget-object p2, p1, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    iget p2, p2, Lccsanandroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr p2, v1

    if-eqz p2, :cond_5

    const/4 v7, 0x1

    :cond_5
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "is_system_app"

    invoke-virtual {v0, v1, p2}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    iget-object p2, p1, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    iget-boolean p2, p2, Lccsanandroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "is_enabled"

    invoke-virtual {v0, v1, p2}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    sget-object p2, Lccsansan/ae/unifiedDownload$getDownloadingList;->SDCARD:Lccsansan/ae/unifiedDownload$getDownloadingList;

    const-string v1, "category_location"

    invoke-virtual {v0, v1, p2}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    invoke-static {p0, p1}, Lccsansan/bc/unifiedDownload;->unifiedDownload(Lccsanandroid/content/Context;Lccsanandroid/content/pm/PackageInfo;)Lccsansan/bc/unifiedDownload$unifiedDownload;

    move-result-object p0

    const-string p1, "category_type"

    invoke-virtual {v0, p1, p0}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "file_size"

    invoke-virtual {v0, p1, p0}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    invoke-virtual {v3}, Lccsansan/da/removeDownloadListener;->getDownloadStatusByUrl()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "date_modified"

    invoke-virtual {v0, p1, p0}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    new-instance p0, Lccsansan/ae/addDownloadListener;

    invoke-direct {p0, v0}, Lccsansan/ae/addDownloadListener;-><init>(Lccsancom/san/xz/base/getDownloadingList;)V

    return-object p0

    :cond_6
    :goto_2
    return-object v5
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/da/removeDownloadListener;)Lccsansan/ae/getDownloadingList;
    .locals 3

    .line 43
    const-string v0, "base.apk"

    invoke-static {p1, v0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 47
    :cond_0
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lccsansan/bw/getDownloadedRecordByUrl;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    .line 50
    :cond_1
    invoke-virtual {p1}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lccsansan/aa/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;Lccsanandroid/content/pm/PackageInfo;Ljava/lang/String;)Lccsansan/ae/unifiedDownload;

    move-result-object p0

    return-object p0
.end method
