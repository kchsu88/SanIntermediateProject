.class public Lccsansan/y/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static addDownloadListener:Lccsansan/y/getDownloadingList;


# instance fields
.field private getDownloadingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/y/unifiedDownload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/y/unifiedDownload;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lccsansan/y/getDownloadingList;->getDownloadingList:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lccsansan/y/getDownloadingList;->getDownloadingList:Ljava/util/List;

    return-void
.end method

.method static synthetic addDownloadListener()Lccsansan/y/getDownloadingList;
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/y/getDownloadingList;->unifiedDownload()Lccsansan/y/getDownloadingList;

    move-result-object v0

    return-object v0
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/y/getDownloadingList$unifiedDownload;

    const-string v2, "stats"

    invoke-direct {v1, v2, p0, p1, p2}, Lccsansan/y/getDownloadingList$unifiedDownload;-><init>(Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    const/16 p0, 0x8

    invoke-virtual {v0, v1, p0}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;I)V

    return-void
.end method

.method static synthetic getDownloadingList(Lccsansan/y/getDownloadingList;)Ljava/util/List;
    .locals 0

    .line 2
    iget-object p0, p0, Lccsansan/y/getDownloadingList;->getDownloadingList:Ljava/util/List;

    return-object p0
.end method

.method public static getDownloadingList()V
    .locals 3

    .line 1
    invoke-static {}, Lccsansan/y/getDownloadingList;->unifiedDownload()Lccsansan/y/getDownloadingList;

    move-result-object v0

    iget-object v0, v0, Lccsansan/y/getDownloadingList;->getDownloadingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/y/unifiedDownload;

    .line 2
    invoke-virtual {v1}, Lccsansan/y/unifiedDownload;->getDownloadingList()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1}, Lccsansan/y/unifiedDownload;->unifiedDownload()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 9
    invoke-static {p3, p4}, Lccsansan/y/getDownloadingList;->unifiedDownload(II)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 10
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p3

    new-instance p4, Lccsansan/y/getDownloadingList$getDownloadingList;

    const-string v0, "stats"

    invoke-direct {p4, v0, p0, p1, p2}, Lccsansan/y/getDownloadingList$getDownloadingList;-><init>(Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    const/16 p0, 0x8

    invoke-virtual {p3, p4, p0}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;I)V

    :cond_0
    return-void
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    const/16 v0, 0xa

    invoke-static {p0, p1, p2, v0}, Lccsansan/y/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;I)V

    return-void
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 11
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v7, Lccsansan/y/getDownloadingList$IncentiveDownloadUtils;

    const-string v2, "stats"

    move-object v1, v7

    move-object v3, p3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lccsansan/y/getDownloadingList$IncentiveDownloadUtils;-><init>(Ljava/lang/String;Ljava/lang/Class;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    const/16 p0, 0x8

    invoke-virtual {v0, v7, p0}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;I)V

    return-void
.end method

.method private static unifiedDownload()Lccsansan/y/getDownloadingList;
    .locals 6

    .line 1
    const-class v0, Lccsansan/y/getDownloadingList;

    sget-object v1, Lccsansan/y/getDownloadingList;->addDownloadListener:Lccsansan/y/getDownloadingList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsansan/y/getDownloadingList;->addDownloadListener:Lccsansan/y/getDownloadingList;

    if-nez v1, :cond_0

    const-string v1, "SanStats"

    const-string v4, "SanStats initialized"

    .line 4
    invoke-static {v1, v4}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v4, Lccsansan/y/removeDownloadListener;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v2, v3, v3}, Lccsansan/y/removeDownloadListener;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;ZZ)V

    .line 7
    invoke-static {v4}, Lccsansan/y/removeDownloadListener;->removeDownloadListener(Lccsansan/y/unifiedDownload;)V

    .line 8
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v4, Lccsansan/y/getDownloadingList;

    invoke-direct {v4, v1}, Lccsansan/y/getDownloadingList;-><init>(Ljava/util/List;)V

    sput-object v4, Lccsansan/y/getDownloadingList;->addDownloadListener:Lccsansan/y/getDownloadingList;

    .line 12
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 15
    :cond_1
    :goto_0
    sget-object v1, Lccsansan/y/getDownloadingList;->addDownloadListener:Lccsansan/y/getDownloadingList;

    iget-object v1, v1, Lccsansan/y/getDownloadingList;->getDownloadingList:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 16
    :cond_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    new-instance v4, Lccsansan/y/removeDownloadListener;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v2, v3, v3}, Lccsansan/y/removeDownloadListener;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;ZZ)V

    .line 19
    invoke-static {v4}, Lccsansan/y/removeDownloadListener;->removeDownloadListener(Lccsansan/y/unifiedDownload;)V

    .line 20
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    monitor-enter v0

    .line 22
    :try_start_1
    sget-object v2, Lccsansan/y/getDownloadingList;->addDownloadListener:Lccsansan/y/getDownloadingList;

    iput-object v1, v2, Lccsansan/y/getDownloadingList;->getDownloadingList:Ljava/util/List;

    .line 23
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 27
    :cond_3
    :goto_1
    sget-object v0, Lccsansan/y/getDownloadingList;->addDownloadListener:Lccsansan/y/getDownloadingList;

    return-object v0
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-static {}, Lccsansan/y/getDownloadingList;->unifiedDownload()Lccsansan/y/getDownloadingList;

    move-result-object v0

    iget-object v0, v0, Lccsansan/y/getDownloadingList;->getDownloadingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/y/unifiedDownload;

    .line 4
    invoke-virtual {v1, p0, p1}, Lccsansan/y/unifiedDownload;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v7, Lccsansan/y/getDownloadingList$removeDownloadListener;

    const-string v2, "stats"

    move-object v1, v7

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lccsansan/y/getDownloadingList$removeDownloadListener;-><init>(Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/16 p0, 0x8

    invoke-virtual {v0, v7, p0}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;I)V

    return-void
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    const/16 v0, 0x64

    invoke-static {p0, p1, p2, v0}, Lccsansan/y/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;I)V

    return-void
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 8
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lccsansan/y/getDownloadingList;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;II)V

    return-void
.end method

.method private static unifiedDownload(II)Z
    .locals 0

    .line 7
    invoke-static {p0, p1}, Lccsansan/dl/getDownloadingList;->IncentiveDownloadUtils(II)Z

    move-result p0

    return p0
.end method
