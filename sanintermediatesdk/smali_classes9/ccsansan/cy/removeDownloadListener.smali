.class public Lccsansan/cy/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/cy/removeDownloadListener$getDownloadingRecordByUrl;,
        Lccsansan/cy/removeDownloadListener$deleteDownItem;
    }
.end annotation


# static fields
.field private static IncentiveDownloadUtils:J = 0x7d0L

.field private static addDownloadListener:J = 0xbb8L

.field private static volatile getDownloadingList:Lccsansan/cy/removeDownloadListener;

.field private static removeDownloadListener:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private getDownloadedList:Ljava/lang/String;

.field private volatile getDownloadedRecordByUrl:Z

.field private getDownloadingRecordByUrl:Z

.field private volatile unifiedDownload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lccsansan/cy/removeDownloadListener;->removeDownloadListener:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsansan/cy/removeDownloadListener;->unifiedDownload:Z

    .line 3
    iput-boolean v0, p0, Lccsansan/cy/removeDownloadListener;->getDownloadedRecordByUrl:Z

    return-void
.end method

.method static synthetic IncentiveDownloadUtils()J
    .locals 2

    .line 3
    sget-wide v0, Lccsansan/cy/removeDownloadListener;->IncentiveDownloadUtils:J

    return-wide v0
.end method

.method public static addDownloadListener()Lccsansan/cy/removeDownloadListener;
    .locals 2

    .line 1
    sget-object v0, Lccsansan/cy/removeDownloadListener;->getDownloadingList:Lccsansan/cy/removeDownloadListener;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lccsansan/cy/removeDownloadListener;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsansan/cy/removeDownloadListener;->getDownloadingList:Lccsansan/cy/removeDownloadListener;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsansan/cy/removeDownloadListener;

    invoke-direct {v1}, Lccsansan/cy/removeDownloadListener;-><init>()V

    sput-object v1, Lccsansan/cy/removeDownloadListener;->getDownloadingList:Lccsansan/cy/removeDownloadListener;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lccsansan/cy/removeDownloadListener;->getDownloadingList:Lccsansan/cy/removeDownloadListener;

    return-object v0
.end method

.method static synthetic addDownloadListener(Lccsansan/cy/removeDownloadListener;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lccsansan/cy/removeDownloadListener;->getDownloadingRecordByUrl:Z

    return p0
.end method

.method static synthetic addDownloadListener(Lccsansan/cy/removeDownloadListener;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lccsansan/cy/removeDownloadListener;->getDownloadingRecordByUrl:Z

    return p1
.end method

.method static synthetic getDownloadingList(Lccsansan/cy/removeDownloadListener;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/cy/removeDownloadListener;->getDownloadedList:Ljava/lang/String;

    return-object p1
.end method

.method private getDownloadingList(Ljava/lang/String;Ljava/lang/String;Lccsansan/cy/removeDownloadListener$getDownloadingRecordByUrl;)V
    .locals 11

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 94
    invoke-static {}, Lccsansan/p/getDownloadedRecordByUrl;->IncentiveDownloadUtils()Lccsansan/p/getDownloadedRecordByUrl;

    move-result-object v7

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lccsansan/cy/removeDownloadListener;->getDownloadedList:Ljava/lang/String;

    new-instance v10, Lccsansan/cy/removeDownloadListener$IncentiveDownloadUtils;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lccsansan/cy/removeDownloadListener$IncentiveDownloadUtils;-><init>(Lccsansan/cy/removeDownloadListener;Lccsansan/cy/removeDownloadListener$getDownloadingRecordByUrl;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8, p1, v9, v10}, Lccsansan/p/getDownloadedRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;)V

    return-void
.end method

.method static synthetic removeDownloadListener()J
    .locals 2

    .line 4
    sget-wide v0, Lccsansan/cy/removeDownloadListener;->addDownloadListener:J

    return-wide v0
.end method

.method static synthetic removeDownloadListener(Lccsansan/cy/removeDownloadListener;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/cy/removeDownloadListener;->getDownloadedList:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic removeDownloadListener(Lccsansan/cy/removeDownloadListener;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lccsansan/cy/removeDownloadListener;->getDownloadedRecordByUrl:Z

    return p1
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/util/List;Lccsansan/dt/removeDownloadListener;Lccsansan/cy/removeDownloadListener$getDownloadingRecordByUrl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lccsansan/dt/removeDownloadListener;",
            "Lccsansan/cy/removeDownloadListener$getDownloadingRecordByUrl;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lccsansan/cy/removeDownloadListener;->getDownloadedList()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lccsansan/cy/removeDownloadListener$unifiedDownload;

    invoke-direct {v1, p0, p1, p2, p3}, Lccsansan/cy/removeDownloadListener$unifiedDownload;-><init>(Lccsansan/cy/removeDownloadListener;Ljava/util/List;Lccsansan/dt/removeDownloadListener;Lccsansan/cy/removeDownloadListener$getDownloadingRecordByUrl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addDownloadListener(Lccsanandroid/content/Context;)V
    .locals 3

    .line 5
    invoke-virtual {p0}, Lccsansan/cy/removeDownloadListener;->unifiedDownload()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lccsansan/cy/removeDownloadListener;->getDownloadedRecordByUrl:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsansan/cy/removeDownloadListener;->getDownloadedRecordByUrl:Z

    .line 8
    iput-boolean p1, p0, Lccsansan/cy/removeDownloadListener;->unifiedDownload:Z

    .line 10
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance v0, Lccsansan/cy/removeDownloadListener$removeDownloadListener;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, p0, v1, v2}, Lccsansan/cy/removeDownloadListener$removeDownloadListener;-><init>(Lccsansan/cy/removeDownloadListener;J)V

    invoke-virtual {p1, v0}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addDownloadListener(Lccsanandroid/webkit/WebView;Ljava/lang/String;Lccsansan/cy/removeDownloadListener$deleteDownItem;)V
    .locals 1

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsansan/cy/removeDownloadListener;->getDownloadingRecordByUrl:Z

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    .line 14
    invoke-interface {p3, v0, p2}, Lccsansan/cy/removeDownloadListener$deleteDownItem;->onResultClick(ZLjava/lang/String;)V

    :cond_0
    return-void

    .line 18
    :cond_1
    invoke-static {p2}, Lccsansan/ab/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 19
    const/4 v0, 0x1

    invoke-interface {p3, v0, p2}, Lccsansan/cy/removeDownloadListener$deleteDownItem;->onResultClick(ZLjava/lang/String;)V

    .line 20
    iput-boolean v0, p0, Lccsansan/cy/removeDownloadListener;->getDownloadingRecordByUrl:Z

    .line 23
    :cond_2
    new-instance v0, Lccsansan/cy/removeDownloadListener$getDownloadingList;

    invoke-direct {v0, p0, p3}, Lccsansan/cy/removeDownloadListener$getDownloadingList;-><init>(Lccsansan/cy/removeDownloadListener;Lccsansan/cy/removeDownloadListener$deleteDownItem;)V

    invoke-virtual {p1, v0}, Lccsanandroid/webkit/WebView;->setWebViewClient(Lccsanandroid/webkit/WebViewClient;)V

    .line 92
    invoke-virtual {p1, p2}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public addDownloadListener(Ljava/lang/String;Lccsansan/cy/removeDownloadListener$deleteDownItem;Ljava/lang/String;)V
    .locals 5

    .line 135
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 137
    :try_start_1
    invoke-static {}, Lccsansan/cy/unifiedDownload;->getDownloadingCount()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 138
    invoke-static {}, Lccsansan/cy/unifiedDownload;->getDownloadingCount()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 139
    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v1, "User-Agent"

    .line 140
    invoke-virtual {v2, v1, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    .line 143
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v3, 0x12e

    const-string v4, "Location"

    if-ne v1, v3, :cond_0

    .line 144
    :try_start_2
    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {p0, v1, p2, p3}, Lccsansan/cy/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Lccsansan/cy/removeDownloadListener$deleteDownItem;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p3

    const/16 v1, 0xc8

    if-ne p3, v1, :cond_2

    .line 147
    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 148
    invoke-static {p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 149
    invoke-interface {p2, v3, p1}, Lccsansan/cy/removeDownloadListener$deleteDownItem;->onResultClick(ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    nop

    .line 151
    invoke-interface {p2, v3, p3}, Lccsansan/cy/removeDownloadListener$deleteDownItem;->onResultClick(ZLjava/lang/String;)V

    goto :goto_0

    :cond_2
    nop

    .line 154
    invoke-interface {p2, v0, p1}, Lccsansan/cy/removeDownloadListener$deleteDownItem;->onResultClick(ZLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v2, :cond_3

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception p3

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p3

    .line 158
    :goto_1
    :try_start_3
    invoke-interface {p2, v0, p1}, Lccsansan/cy/removeDownloadListener$deleteDownItem;->onResultClick(ZLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_3

    move-object v2, v1

    .line 161
    :goto_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    return-void

    :goto_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 162
    :cond_4
    throw p1
.end method

.method protected getDownloadedList()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/cy/removeDownloadListener;->removeDownloadListener:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getDownloadingList()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/cy/removeDownloadListener;->getDownloadedList:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadingList(Ljava/util/List;Lccsansan/dt/removeDownloadListener;Lccsansan/cy/removeDownloadListener$getDownloadingRecordByUrl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lccsansan/dt/removeDownloadListener;",
            "Lccsansan/cy/removeDownloadListener$getDownloadingRecordByUrl;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 95
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 97
    :cond_0
    iget-object v0, p0, Lccsansan/cy/removeDownloadListener;->getDownloadedList:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-static {}, Lccsansan/bw/toString;->unifiedDownload()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cy/removeDownloadListener;->getDownloadedList:Ljava/lang/String;

    .line 100
    :cond_1
    invoke-static {}, Lccsansan/bq/addDownloadListener;->getDownloadingList()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 102
    invoke-virtual {p0}, Lccsansan/cy/removeDownloadListener;->getDownloadedList()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lccsansan/cy/removeDownloadListener$addDownloadListener;

    invoke-direct {v1, p0, p1, p2, p3}, Lccsansan/cy/removeDownloadListener$addDownloadListener;-><init>(Lccsansan/cy/removeDownloadListener;Ljava/util/List;Lccsansan/dt/removeDownloadListener;Lccsansan/cy/removeDownloadListener$getDownloadingRecordByUrl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 131
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 132
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    invoke-static {v1}, Lccsansan/ab/getDownloadingList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, p3}, Lccsansan/cy/removeDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Lccsansan/cy/removeDownloadListener$getDownloadingRecordByUrl;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public unifiedDownload()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/cy/removeDownloadListener;->unifiedDownload:Z

    return v0
.end method
