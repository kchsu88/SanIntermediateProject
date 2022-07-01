.class public Lccsansan/dn/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static removeDownloadListener:Lccsanokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IncentiveDownloadUtils(II)Lccsanokhttp3/OkHttpClient;
    .locals 5

    .line 1
    sget-object v0, Lccsansan/dn/removeDownloadListener;->removeDownloadListener:Lccsanokhttp3/OkHttpClient;

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    const-class v0, Lccsansan/dn/removeDownloadListener;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lccsansan/dn/removeDownloadListener;->removeDownloadListener:Lccsanokhttp3/OkHttpClient;

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Lccsanokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lccsanokhttp3/OkHttpClient$Builder;-><init>()V

    int-to-long v2, p0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    invoke-virtual {v1, v2, v3, p0}, Lccsanokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object v1

    int-to-long v2, p1

    .line 8
    invoke-virtual {v1, v2, v3, p0}, Lccsanokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v2, v3, p0}, Lccsanokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 10
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lccsanokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Lccsanokhttp3/Protocol;

    sget-object v2, Lccsanokhttp3/Protocol;->HTTP_1_1:Lccsanokhttp3/Protocol;

    aput-object v2, v1, p1

    .line 11
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsanokhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object p0

    new-instance p1, Lccsanokhttp3/ConnectionPool;

    .line 12
    invoke-static {}, Lccsansan/cl/unifiedDownload;->deleteDownItem()I

    move-result v1

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p1, v1, v2, v3, v4}, Lccsanokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {p0, p1}, Lccsanokhttp3/OkHttpClient$Builder;->connectionPool(Lccsanokhttp3/ConnectionPool;)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lccsanokhttp3/OkHttpClient$Builder;->build()Lccsanokhttp3/OkHttpClient;

    move-result-object p0

    sput-object p0, Lccsansan/dn/removeDownloadListener;->removeDownloadListener:Lccsanokhttp3/OkHttpClient;

    .line 15
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    sget-object p0, Lccsansan/dn/removeDownloadListener;->removeDownloadListener:Lccsanokhttp3/OkHttpClient;

    return-object p0

    :catchall_0
    move-exception p0

    .line 17
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
