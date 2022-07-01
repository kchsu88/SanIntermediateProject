.class Lccsancom/vungle/warren/Vungle$16;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Lccsancom/vungle/warren/persistence/CacheManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/Vungle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheChanged()V
    .locals 8

    .line 1778
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    invoke-static {v0}, Lccsancom/vungle/warren/Vungle;->access$400(Lccsancom/vungle/warren/Vungle;)Lccsanandroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1779
    return-void

    .line 1781
    :cond_0
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->access$2000()V

    .line 1782
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    invoke-static {v0}, Lccsancom/vungle/warren/Vungle;->access$400(Lccsancom/vungle/warren/Vungle;)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 1784
    .local v0, "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    const-class v1, Lccsancom/vungle/warren/persistence/CacheManager;

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/persistence/CacheManager;

    .line 1785
    .local v1, "cacheManager":Lccsancom/vungle/warren/persistence/CacheManager;
    const-class v2, Lccsancom/vungle/warren/downloader/Downloader;

    invoke-virtual {v0, v2}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/downloader/Downloader;

    .line 1786
    .local v2, "downloader":Lccsancom/vungle/warren/downloader/Downloader;
    invoke-virtual {v1}, Lccsancom/vungle/warren/persistence/CacheManager;->getCache()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1787
    invoke-interface {v2}, Lccsancom/vungle/warren/downloader/Downloader;->getAllRequests()Ljava/util/List;

    move-result-object v3

    .line 1788
    .local v3, "requests":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/downloader/DownloadRequest;>;"
    invoke-virtual {v1}, Lccsancom/vungle/warren/persistence/CacheManager;->getCache()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 1789
    .local v4, "newPath":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsancom/vungle/warren/downloader/DownloadRequest;

    .line 1790
    .local v6, "request":Lccsancom/vungle/warren/downloader/DownloadRequest;
    iget-object v7, v6, Lccsancom/vungle/warren/downloader/DownloadRequest;->path:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1791
    invoke-interface {v2, v6}, Lccsancom/vungle/warren/downloader/Downloader;->cancel(Lccsancom/vungle/warren/downloader/DownloadRequest;)V

    .line 1793
    .end local v6    # "request":Lccsancom/vungle/warren/downloader/DownloadRequest;
    :cond_1
    goto :goto_0

    .line 1795
    .end local v3    # "requests":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/downloader/DownloadRequest;>;"
    .end local v4    # "newPath":Ljava/lang/String;
    :cond_2
    invoke-interface {v2}, Lccsancom/vungle/warren/downloader/Downloader;->init()V

    .line 1796
    return-void
.end method
