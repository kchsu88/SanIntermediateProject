.class public Lccsansan/cv/getDownloadStatusByUrl;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final IncentiveDownloadUtils:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsansan/cv/getDownloadStatusByUrl;->IncentiveDownloadUtils:Ljava/lang/String;

    return-void
.end method

.method public static IncentiveDownloadUtils()V
    .locals 4

    .line 1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/cv/getDownloadStatusByUrl$getDownloadingList;

    const-wide/16 v2, 0x1388

    invoke-direct {v1, v2, v3}, Lccsansan/cv/getDownloadStatusByUrl$getDownloadingList;-><init>(J)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method

.method public static addDownloadListener()Z
    .locals 1

    .line 12
    invoke-static {}, Lccsansan/cv/deleteDownItem;->unifiedDownload()Z

    move-result v0

    return v0
.end method

.method public static addDownloadListener(Ljava/lang/String;)Z
    .locals 0

    .line 19
    invoke-static {p0}, Lccsansan/cv/deleteDownItem;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getDownloadingList(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 11
    :try_start_0
    invoke-static {p0}, Lccsansan/cv/deleteDownItem;->addDownloadListener(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lccsansan/cv/deleteDownItem;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p0}, Lccsansan/cv/deleteDownItem;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    return-object p0
.end method

.method public static getDownloadingList(Ljava/lang/String;JILjava/lang/String;Lccsansan/cv/resume;J)V
    .locals 8

    .line 9
    new-instance v7, Lccsansan/cs/addDownloadListener;

    sget-object v0, Lccsansan/cs/unifiedDownload;->VIDEO:Lccsansan/cs/unifiedDownload;

    invoke-virtual {v0}, Lccsansan/cs/unifiedDownload;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lccsansan/cs/addDownloadListener;-><init>(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lccsansan/cv/getDownloadingCount;->unifiedDownload()Lccsansan/cv/getDownloadingCount;

    move-result-object p0

    invoke-virtual {p0, v7, p5, p6, p7}, Lccsansan/cv/getDownloadingCount;->IncentiveDownloadUtils(Lccsansan/cs/addDownloadListener;Lccsansan/cv/resume;J)V

    return-void
.end method

.method public static getDownloadingList(Ljava/util/List;JILjava/lang/String;Lccsansan/cv/resume;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            "Lccsansan/cv/resume;",
            ")V"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 4
    new-instance v1, Lccsansan/cs/addDownloadListener;

    sget-object v2, Lccsansan/cs/unifiedDownload;->PIC:Lccsansan/cs/unifiedDownload;

    invoke-virtual {v2}, Lccsansan/cs/unifiedDownload;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    move-wide v4, p1

    move v6, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lccsansan/cs/addDownloadListener;-><init>(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lccsansan/cv/getDownloadingCount;->unifiedDownload()Lccsansan/cv/getDownloadingCount;

    move-result-object p0

    invoke-virtual {p0, v0, p5}, Lccsansan/cv/getDownloadingCount;->getDownloadingList(Ljava/util/List;Lccsansan/cv/resume;)V

    return-void
.end method

.method private static getDownloadingList()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/DCIM/.thumbnails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-static {v2}, Lccsansan/bw/setLoaderClassName;->getDownloadingList(Ljava/io/File;)V

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method public static removeDownloadListener()V
    .locals 5

    .line 1
    const-string v0, "SourceManager"

    :try_start_0
    invoke-static {}, Lccsansan/cp/addDownloadListener;->removeDownloadListener()Lccsansan/cp/IncentiveDownloadUtils;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/cp/IncentiveDownloadUtils;->addDownloadListener()Ljava/util/List;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#clearData has expire record = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "#clearData start delete"

    .line 4
    invoke-static {v0, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/cs/IncentiveDownloadUtils;

    .line 6
    invoke-virtual {v2}, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v2}, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v2

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#clearData record path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 16
    :cond_3
    invoke-static {}, Lccsansan/cp/addDownloadListener;->removeDownloadListener()Lccsansan/cp/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/cp/IncentiveDownloadUtils;->unifiedDownload()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 18
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static unifiedDownload(Ljava/lang/String;JILjava/lang/String;Lccsansan/cv/resume;)V
    .locals 8

    .line 8
    const-wide/16 v6, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Lccsansan/cv/getDownloadStatusByUrl;->getDownloadingList(Ljava/lang/String;JILjava/lang/String;Lccsansan/cv/resume;J)V

    return-void
.end method

.method public static unifiedDownload(Ljava/util/List;JILjava/lang/String;Lccsansan/cv/resume;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            "Lccsansan/cv/resume;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 3
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lccsansan/cs/addDownloadListener;

    sget-object v2, Lccsansan/cs/unifiedDownload;->VIDEO:Lccsansan/cs/unifiedDownload;

    invoke-virtual {v2}, Lccsansan/cs/unifiedDownload;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    move-wide v4, p1

    move v6, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lccsansan/cs/addDownloadListener;-><init>(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lccsansan/cv/getDownloadingCount;->unifiedDownload()Lccsansan/cv/getDownloadingCount;

    move-result-object p0

    invoke-virtual {p0, v0, p5}, Lccsansan/cv/getDownloadingCount;->getDownloadingList(Ljava/util/List;Lccsansan/cv/resume;)V

    return-void
.end method

.method static synthetic unifiedDownload()Z
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/cv/getDownloadStatusByUrl;->getDownloadingList()Z

    move-result v0

    return v0
.end method

.method public static unifiedDownload(Ljava/lang/String;)Z
    .locals 2

    .line 9
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lccsansan/cv/deleteDownItem;->addDownloadListener(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lccsansan/cv/getDownloadStatusByUrl;->addDownloadListener(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    .line 11
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method
