.class public Lccsancom/vungle/warren/downloader/LRUCachePolicy;
.super Ljava/lang/Object;
.source "LRUCachePolicy.java"

# interfaces
.implements Lccsancom/vungle/warren/downloader/CachePolicy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/vungle/warren/downloader/CachePolicy<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field static final CACHE_POLICY_JOURNAL:Ljava/lang/String; = "cache_policy_journal"


# instance fields
.field private final cacheManager:Lccsancom/vungle/warren/persistence/CacheManager;

.field private final dirName:Ljava/lang/String;

.field private files:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/vungle/warren/persistence/CacheManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "cacheManager"    # Lccsancom/vungle/warren/persistence/CacheManager;
    .param p2, "dirName"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/downloader/LRUCachePolicy;->files:Ljava/util/LinkedHashSet;

    .line 24
    iput-object p1, p0, Lccsancom/vungle/warren/downloader/LRUCachePolicy;->cacheManager:Lccsancom/vungle/warren/persistence/CacheManager;

    .line 25
    iput-object p2, p0, Lccsancom/vungle/warren/downloader/LRUCachePolicy;->dirName:Ljava/lang/String;

    .line 26
    return-void
.end method

.method private getPolicyFile()Ljava/io/File;
    .locals 3

    .line 58
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lccsancom/vungle/warren/downloader/LRUCachePolicy;->cacheManager:Lccsancom/vungle/warren/persistence/CacheManager;

    invoke-virtual {v1}, Lccsancom/vungle/warren/persistence/CacheManager;->getCache()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lccsancom/vungle/warren/downloader/LRUCachePolicy;->dirName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    .local v0, "homeDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    invoke-static {v0}, Lccsancom/vungle/warren/utility/FileUtility;->deleteAndLogIfFailed(Ljava/io/File;)V

    .line 62
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 66
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "cache_policy_journal"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public clean()V
    .locals 1

    .line 49
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/LRUCachePolicy;->files:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 50
    return-void
.end method

.method public getOrderedCacheItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lccsancom/vungle/warren/downloader/LRUCachePolicy;->files:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public load()V
    .locals 4

    .line 72
    invoke-direct {p0}, Lccsancom/vungle/warren/downloader/LRUCachePolicy;->getPolicyFile()Ljava/io/File;

    move-result-object v0

    .line 73
    .local v0, "policyFile":Ljava/io/File;
    invoke-static {v0}, Lccsancom/vungle/warren/utility/FileUtility;->readSerializable(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    .line 75
    .local v1, "serializable":Ljava/io/Serializable;
    if-nez v1, :cond_0

    .line 76
    return-void

    .line 78
    :cond_0
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_1

    .line 79
    iget-object v2, p0, Lccsancom/vungle/warren/downloader/LRUCachePolicy;->files:Ljava/util/LinkedHashSet;

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 81
    :cond_1
    invoke-static {v0}, Lccsancom/vungle/warren/utility/FileUtility;->deleteAndLogIfFailed(Ljava/io/File;)V

    .line 83
    :goto_0
    return-void
.end method

.method public put(Ljava/io/File;J)V
    .locals 3
    .param p1, "obj"    # Ljava/io/File;
    .param p2, "score"    # J

    .line 30
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 31
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/LRUCachePolicy;->files:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/LRUCachePolicy;->files:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public bridge synthetic put(Ljava/lang/Object;J)V
    .locals 0

    .line 15
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/vungle/warren/downloader/LRUCachePolicy;->put(Ljava/io/File;J)V

    return-void
.end method

.method public remove(Ljava/io/File;)V
    .locals 1
    .param p1, "obj"    # Ljava/io/File;

    .line 44
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/LRUCachePolicy;->files:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/downloader/LRUCachePolicy;->remove(Ljava/io/File;)V

    return-void
.end method

.method public save()V
    .locals 2

    .line 54
    invoke-direct {p0}, Lccsancom/vungle/warren/downloader/LRUCachePolicy;->getPolicyFile()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lccsancom/vungle/warren/downloader/LRUCachePolicy;->files:Ljava/util/LinkedHashSet;

    invoke-static {v0, v1}, Lccsancom/vungle/warren/utility/FileUtility;->writeSerializable(Ljava/io/File;Ljava/io/Serializable;)V

    .line 55
    return-void
.end method
