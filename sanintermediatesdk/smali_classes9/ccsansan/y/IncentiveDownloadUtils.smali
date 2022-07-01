.class public Lccsansan/y/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static getDownloadingList:Lccsansan/y/IncentiveDownloadUtils;


# instance fields
.field private unifiedDownload:Lccsansan/ar/removeDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lccsansan/bw/AdFormat;->removeDownloadListener()V

    return-void
.end method

.method private IncentiveDownloadUtils(Ljava/util/List;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "network"

    if-eqz p2, :cond_0

    .line 22
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 23
    :cond_0
    new-instance v1, Lccsanandroid/util/Pair;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsansan/ab/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsansan/ab/removeDownloadListener;

    move-result-object v2

    invoke-virtual {v2}, Lccsansan/ab/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v0, "app_portal"

    if-eqz p2, :cond_2

    .line 24
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    sget-object v1, Lccsansan/ai/getDownloadingList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 25
    new-instance v1, Lccsanandroid/util/Pair;

    sget-object v2, Lccsansan/ai/getDownloadingList;->getDownloadStatusByUrl:Ljava/lang/String;

    const-string v3, "[\\n\u0001]"

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v0, "app_times"

    if-eqz p2, :cond_4

    .line 26
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    sget v1, Lccsansan/ai/getDownloadingList;->deleteDownItem:I

    if-lez v1, :cond_5

    .line 27
    new-instance v1, Lccsanandroid/util/Pair;

    sget v2, Lccsansan/ai/getDownloadingList;->deleteDownItem:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v0, "sdk_mode"

    if-eqz p2, :cond_6

    .line 28
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 29
    :cond_6
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lccsansan/bw/deleteDownList;->getDownloadingList(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 30
    new-instance v1, Lccsanandroid/util/Pair;

    const-string v2, "ex"

    invoke-static {v2, p2}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "channel"

    goto :goto_0

    :cond_7
    const-string p2, "gp"

    :goto_0
    invoke-direct {v1, v0, p2}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method

.method public static declared-synchronized addDownloadListener()Lccsansan/y/IncentiveDownloadUtils;
    .locals 2

    const-class v0, Lccsansan/y/IncentiveDownloadUtils;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lccsansan/y/IncentiveDownloadUtils;->getDownloadingList:Lccsansan/y/IncentiveDownloadUtils;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lccsansan/y/IncentiveDownloadUtils;

    invoke-direct {v1}, Lccsansan/y/IncentiveDownloadUtils;-><init>()V

    sput-object v1, Lccsansan/y/IncentiveDownloadUtils;->getDownloadingList:Lccsansan/y/IncentiveDownloadUtils;

    .line 3
    :cond_0
    sget-object v1, Lccsansan/y/IncentiveDownloadUtils;->getDownloadingList:Lccsansan/y/IncentiveDownloadUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 0
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getDownloadingList(Lccsanandroid/content/Context;)V
    .locals 2

    .line 4
    new-instance v0, Lccsansan/ar/removeDownloadListener;

    invoke-direct {v0, p1}, Lccsansan/ar/removeDownloadListener;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsansan/y/IncentiveDownloadUtils;->unifiedDownload:Lccsansan/ar/removeDownloadListener;

    .line 5
    sget-object p1, Lccsansan/ar/getDownloadingList$addDownloadListener;->ENTER_APP:Lccsansan/ar/getDownloadingList$addDownloadListener;

    const-string v1, "enter_app"

    invoke-virtual {v0, p1, v1}, Lccsansan/ar/removeDownloadListener;->addDownloadListener(Lccsansan/ar/getDownloadingList$addDownloadListener;Ljava/lang/String;)V

    return-void
.end method

.method private removeDownloadListener()V
    .locals 1

    .line 32
    iget-object v0, p0, Lccsansan/y/IncentiveDownloadUtils;->unifiedDownload:Lccsansan/ar/removeDownloadListener;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0}, Lccsansan/ar/removeDownloadListener;->removeDownloadListener()V

    :cond_0
    return-void
.end method

.method public static unifiedDownload(Lccsansan/y/unifiedDownload;)V
    .locals 0

    .line 6
    invoke-static {p0}, Lccsansan/l/removeDownloadListener;->unifiedDownload(Lccsansan/y/unifiedDownload;)V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lccsansan/y/IncentiveDownloadUtils;->unifiedDownload:Lccsansan/ar/removeDownloadListener;

    sget-object v1, Lccsansan/ar/getDownloadingList$addDownloadListener;->DEFAULT:Lccsansan/ar/getDownloadingList$addDownloadListener;

    invoke-virtual {v0, v1, p1}, Lccsansan/ar/removeDownloadListener;->addDownloadListener(Lccsansan/ar/getDownloadingList$addDownloadListener;Ljava/lang/String;)V

    return-void
.end method

.method public addDownloadListener(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 12
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, " "

    const-string v2, "[\\n\u0001]"

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 13
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p5, :cond_2

    .line 15
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/util/Pair;

    .line 16
    new-instance v4, Lccsanandroid/util/Pair;

    iget-object v5, v3, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v6, v3, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    iget-object v3, v3, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-direct {v4, v5, v3}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 p5, 0x0

    .line 18
    invoke-direct {p0, v0, p5}, Lccsansan/y/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/util/List;Ljava/util/Map;)V

    .line 21
    :cond_3
    iget-object p5, p0, Lccsansan/y/IncentiveDownloadUtils;->unifiedDownload:Lccsansan/ar/removeDownloadListener;

    invoke-static {p1, p2, p3, p4, v0}, Lccsansan/ai/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)Lccsansan/ai/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p5, p1}, Lccsansan/ar/removeDownloadListener;->getDownloadingList(Lccsansan/ai/removeDownloadListener;)V

    return-void
.end method

.method public declared-synchronized finalize()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lccsansan/y/IncentiveDownloadUtils;->removeDownloadListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_0
    monitor-exit p0

    return-void

    .line 0
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDownloadingList()V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/y/IncentiveDownloadUtils;->unifiedDownload:Lccsansan/ar/removeDownloadListener;

    sget-object v1, Lccsansan/ar/getDownloadingList$addDownloadListener;->QUIT_APP:Lccsansan/ar/getDownloadingList$addDownloadListener;

    const-string v2, "quit_app"

    invoke-virtual {v0, v1, v2}, Lccsansan/ar/removeDownloadListener;->addDownloadListener(Lccsansan/ar/getDownloadingList$addDownloadListener;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Lccsansan/ai/getDownloadingList;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lccsansan/y/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeDownloadListener(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 9
    new-instance v2, Lccsanandroid/util/Pair;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0, v5, p5}, Lccsansan/y/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/util/List;Ljava/util/Map;)V

    .line 11
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lccsansan/y/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-void
.end method
