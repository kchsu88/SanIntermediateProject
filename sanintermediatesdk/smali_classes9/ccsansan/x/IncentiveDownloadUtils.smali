.class public Lccsansan/x/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final addDownloadListener:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lccsanokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lccsansan/x/IncentiveDownloadUtils;->addDownloadListener:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static addDownloadListener(Ljava/lang/String;ZII)Lccsanokhttp3/OkHttpClient;
    .locals 4

    .line 1
    sget-object v0, Lccsansan/x/IncentiveDownloadUtils;->addDownloadListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanokhttp3/OkHttpClient;

    return-object p0

    .line 3
    :cond_0
    new-instance v1, Lccsanokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lccsanokhttp3/OkHttpClient$Builder;-><init>()V

    int-to-long v2, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-virtual {v1, v2, v3, p2}, Lccsanokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object v1

    int-to-long v2, p3

    .line 5
    invoke-virtual {v1, v2, v3, p2}, Lccsanokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object p3

    .line 6
    invoke-virtual {p3, v2, v3, p2}, Lccsanokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object p2

    .line 7
    invoke-virtual {p2, p1}, Lccsanokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object p1

    new-instance p2, Lccsansan/x/unifiedDownload;

    invoke-direct {p2}, Lccsansan/x/unifiedDownload;-><init>()V

    .line 8
    invoke-virtual {p1, p2}, Lccsanokhttp3/OkHttpClient$Builder;->dns(Lccsanokhttp3/Dns;)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object p1

    new-instance p2, Lccsansan/x/removeDownloadListener;

    invoke-direct {p2}, Lccsansan/x/removeDownloadListener;-><init>()V

    .line 9
    invoke-virtual {p1, p2}, Lccsanokhttp3/OkHttpClient$Builder;->eventListener(Lccsanokhttp3/EventListener;)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 10
    const-string p2, "TrackHelper"

    invoke-static {p0, p2}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 11
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lccsanokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lccsanokhttp3/OkHttpClient$Builder;

    .line 12
    invoke-virtual {p1, p2}, Lccsanokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lccsanokhttp3/OkHttpClient$Builder;

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p2

    const/4 p3, 0x5

    const-string v1, "ad_conn_pool_size"

    invoke-static {p2, v1, p3}, Lccsansan/bw/performActionWhenOffline;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;I)I

    move-result p2

    if-lez p2, :cond_2

    .line 16
    new-instance p3, Lccsanokhttp3/ConnectionPool;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-direct {p3, p2, v2, v3, v1}, Lccsanokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {p1, p3}, Lccsanokhttp3/OkHttpClient$Builder;->connectionPool(Lccsanokhttp3/ConnectionPool;)Lccsanokhttp3/OkHttpClient$Builder;

    .line 19
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lccsanokhttp3/OkHttpClient$Builder;->build()Lccsanokhttp3/OkHttpClient;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanokhttp3/OkHttpClient;

    return-object p0
.end method
