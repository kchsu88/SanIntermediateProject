.class public Lccsansan/bw/setErrorMessage;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile getDownloadingList:Lccsanandroid/content/Context;

.field private static final removeDownloadListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccsansan/bw/setErrorMessage;->removeDownloadListener:Ljava/util/Map;

    .line 3
    const/4 v0, 0x0

    sput-object v0, Lccsansan/bw/setErrorMessage;->getDownloadingList:Lccsanandroid/content/Context;

    return-void
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-static {p0}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 8
    sget-object v0, Lccsansan/bw/setErrorMessage;->removeDownloadListener:Ljava/util/Map;

    monitor-enter v0

    .line 9
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 10
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static addDownloadListener()Lccsanandroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/bw/setErrorMessage;->getDownloadingList:Lccsanandroid/content/Context;

    return-object v0
.end method

.method public static unifiedDownload(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p0}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lccsansan/bw/setErrorMessage;->removeDownloadListener:Ljava/util/Map;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 5
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;)V
    .locals 1

    .line 2
    sget-object v0, Lccsansan/bw/setErrorMessage;->getDownloadingList:Lccsanandroid/content/Context;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p0

    sput-object p0, Lccsansan/bw/setErrorMessage;->getDownloadingList:Lccsanandroid/content/Context;

    :cond_1
    :goto_0
    return-void
.end method

.method public static unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 11
    sget-object v0, Lccsansan/bw/setErrorMessage;->removeDownloadListener:Ljava/util/Map;

    monitor-enter v0

    .line 12
    :try_start_0
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
