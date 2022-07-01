.class public Lccsancom/vungle/warren/persistence/GraphicDesigner;
.super Ljava/lang/Object;
.source "GraphicDesigner.java"

# interfaces
.implements Lccsancom/vungle/warren/persistence/Designer;
.implements Lccsancom/vungle/warren/persistence/CacheManager$Listener;


# static fields
.field private static final FOLDER_NAME:Ljava/lang/String; = "vungle"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cacheManager:Lccsancom/vungle/warren/persistence/CacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lccsancom/vungle/warren/persistence/GraphicDesigner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/persistence/GraphicDesigner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsancom/vungle/warren/persistence/CacheManager;)V
    .locals 1
    .param p1, "cacheManager"    # Lccsancom/vungle/warren/persistence/CacheManager;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lccsancom/vungle/warren/persistence/GraphicDesigner;->cacheManager:Lccsancom/vungle/warren/persistence/CacheManager;

    .line 29
    invoke-virtual {p1, p0}, Lccsancom/vungle/warren/persistence/CacheManager;->addListener(Lccsancom/vungle/warren/persistence/CacheManager$Listener;)V

    .line 30
    invoke-virtual {p0}, Lccsancom/vungle/warren/persistence/GraphicDesigner;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lccsancom/vungle/warren/utility/FileUtility;->printDirectoryTree(Ljava/io/File;)V

    .line 31
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 5

    .line 74
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/GraphicDesigner;->cacheManager:Lccsancom/vungle/warren/persistence/CacheManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/CacheManager;->getCache()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 77
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/vungle/warren/persistence/GraphicDesigner;->cacheManager:Lccsancom/vungle/warren/persistence/CacheManager;

    invoke-virtual {v2}, Lccsancom/vungle/warren/persistence/CacheManager;->getCache()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "vungle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    :try_start_0
    invoke-static {v0}, Lccsancom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lccsancom/vungle/warren/persistence/GraphicDesigner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete cached files. Reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 89
    :cond_2
    return-void

    .line 75
    .end local v0    # "dir":Ljava/io/File;
    :cond_3
    :goto_1
    return-void
.end method

.method public deleteAssets(Ljava/lang/String;)V
    .locals 5
    .param p1, "identifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lccsancom/vungle/warren/persistence/GraphicDesigner;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 46
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_0

    .line 47
    return-void

    .line 50
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 51
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 53
    invoke-static {v3}, Lccsancom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V

    .line 50
    .end local v3    # "f":Ljava/io/File;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :cond_2
    return-void
.end method

.method public getAssetDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "identifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lccsancom/vungle/warren/persistence/GraphicDesigner;->getCacheDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, "assetDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 39
    :cond_0
    return-object v0
.end method

.method public getCacheDirectory()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/GraphicDesigner;->cacheManager:Lccsancom/vungle/warren/persistence/CacheManager;

    if-eqz v0, :cond_1

    .line 64
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/vungle/warren/persistence/GraphicDesigner;->cacheManager:Lccsancom/vungle/warren/persistence/CacheManager;

    invoke-virtual {v2}, Lccsancom/vungle/warren/persistence/CacheManager;->getCache()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "vungle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 69
    :cond_0
    return-object v0

    .line 61
    .end local v0    # "dir":Ljava/io/File;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context has expired, cannot continue."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCacheChanged()V
    .locals 6

    .line 94
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/GraphicDesigner;->cacheManager:Lccsancom/vungle/warren/persistence/CacheManager;

    if-nez v0, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/CacheManager;->getOldCaches()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 99
    .local v1, "root":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "vungle"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lccsancom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_1

    .line 100
    :catch_0
    move-exception v2

    .line 101
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lccsancom/vungle/warren/persistence/GraphicDesigner;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to delete cached files. Reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v1    # "root":Ljava/io/File;
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    goto :goto_0

    .line 104
    :cond_1
    return-void
.end method
