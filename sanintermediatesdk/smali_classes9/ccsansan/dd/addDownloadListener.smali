.class public Lccsansan/dd/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static removeDownloadListener:Lccsansan/dd/getDownloadingList;

.field private static volatile unifiedDownload:Lccsansan/dd/addDownloadListener;


# instance fields
.field private final addDownloadListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsansan/dd/addDownloadListener;->addDownloadListener:Ljava/util/Map;

    return-void
.end method

.method public static unifiedDownload()Lccsansan/dd/addDownloadListener;
    .locals 3

    .line 1
    sget-object v0, Lccsansan/dd/addDownloadListener;->unifiedDownload:Lccsansan/dd/addDownloadListener;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lccsansan/dd/addDownloadListener;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsansan/dd/addDownloadListener;->unifiedDownload:Lccsansan/dd/addDownloadListener;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsansan/dd/addDownloadListener;

    invoke-direct {v1}, Lccsansan/dd/addDownloadListener;-><init>()V

    sput-object v1, Lccsansan/dd/addDownloadListener;->unifiedDownload:Lccsansan/dd/addDownloadListener;

    .line 5
    new-instance v1, Lccsansan/dk/unifiedDownload;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsansan/dk/unifiedDownload;-><init>(Lccsanandroid/content/Context;)V

    sput-object v1, Lccsansan/dd/addDownloadListener;->removeDownloadListener:Lccsansan/dd/getDownloadingList;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Lccsansan/dd/addDownloadListener;->unifiedDownload:Lccsansan/dd/addDownloadListener;

    return-object v0
.end method


# virtual methods
.method public IncentiveDownloadUtils()Lccsansan/dd/getDownloadingList;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/dd/addDownloadListener;->removeDownloadListener:Lccsansan/dd/getDownloadingList;

    return-object v0
.end method

.method public declared-synchronized IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 14
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearCurrPosition  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoManager"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lccsansan/dd/addDownloadListener;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 13
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addDownloadListener(Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lccsansan/dd/addDownloadListener;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lccsansan/dd/addDownloadListener;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :cond_1
    monitor-exit p0

    return v1

    .line 1
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addDownloadListener(Ljava/lang/String;I)V
    .locals 2

    monitor-enter p0

    .line 10
    :try_start_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 12
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCurrPosition  url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  pos : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoManager"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lccsansan/dd/addDownloadListener;->addDownloadListener:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 9
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
