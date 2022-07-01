.class public Lccsancom/vungle/warren/persistence/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/persistence/CacheManager$Listener;
    }
.end annotation


# static fields
.field private static final PATH_ID:Ljava/lang/String; = "cache_path"

.field private static final PATH_IDS:Ljava/lang/String; = "cache_paths"

.field private static final TAG:Ljava/lang/String;

.field static final UNKNOWN_SIZE:J = -0x1L

.field private static final VUNGLE_DIR:Ljava/lang/String; = "vungle_cache"


# instance fields
.field private changed:Z

.field private final context:Lccsanandroid/content/Context;

.field private current:Ljava/io/File;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lccsancom/vungle/warren/persistence/CacheManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanandroid/os/FileObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final old:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final prefs:Lccsancom/vungle/warren/persistence/FilePreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lccsancom/vungle/warren/persistence/CacheManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/persistence/CacheManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/vungle/warren/persistence/FilePreferences;)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "prefs"    # Lccsancom/vungle/warren/persistence/FilePreferences;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/persistence/CacheManager;->listeners:Ljava/util/Set;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/persistence/CacheManager;->old:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/persistence/CacheManager;->observers:Ljava/util/List;

    .line 50
    iput-object p1, p0, Lccsancom/vungle/warren/persistence/CacheManager;->context:Lccsanandroid/content/Context;

    .line 51
    iput-object p2, p0, Lccsancom/vungle/warren/persistence/CacheManager;->prefs:Lccsancom/vungle/warren/persistence/FilePreferences;

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cache_path"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cache_paths"

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Lccsancom/vungle/warren/persistence/FilePreferences;->addSharedPrefsKey([Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FilePreferences;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FilePreferences;->apply()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lccsancom/vungle/warren/persistence/CacheManager;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/persistence/CacheManager;

    .line 29
    invoke-direct {p0}, Lccsancom/vungle/warren/persistence/CacheManager;->selectFileDest()V

    return-void
.end method

.method private check()V
    .locals 1

    .line 146
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/CacheManager;->current:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/vungle/warren/persistence/CacheManager;->current:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/vungle/warren/persistence/CacheManager;->current:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    :cond_0
    invoke-direct {p0}, Lccsancom/vungle/warren/persistence/CacheManager;->selectFileDest()V

    .line 149
    :cond_1
    return-void
.end method

.method private static deleteIfFile(Ljava/io/File;)V
    .locals 1
    .param p0, "dir"    # Ljava/io/File;

    .line 238
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-static {p0}, Lccsancom/vungle/warren/utility/FileUtility;->deleteAndLogIfFailed(Ljava/io/File;)V

    .line 241
    :cond_0
    return-void
.end method

.method private getBytesAvailable(I)J
    .locals 8
    .param p1, "retry"    # I

    .line 215
    invoke-virtual {p0}, Lccsancom/vungle/warren/persistence/CacheManager;->getCache()Ljava/io/File;

    move-result-object v0

    .line 216
    .local v0, "dir":Ljava/io/File;
    const-wide/16 v1, -0x1

    .line 217
    .local v1, "bytesAvailable":J
    if-nez v0, :cond_0

    .line 218
    return-wide v1

    .line 221
    :cond_0
    const/4 v3, 0x0

    .line 223
    .local v3, "stats":Lccsanandroid/os/StatFs;
    :try_start_0
    new-instance v4, Lccsanandroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lccsanandroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 229
    goto :goto_0

    .line 224
    :catch_0
    move-exception v4

    .line 225
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    sget-object v5, Lccsancom/vungle/warren/persistence/CacheManager;->TAG:Ljava/lang/String;

    const-string v6, "Failed to get available bytes"

    invoke-static {v5, v6, v4}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    if-lez p1, :cond_1

    .line 227
    add-int/lit8 v5, p1, -0x1

    invoke-direct {p0, v5}, Lccsancom/vungle/warren/persistence/CacheManager;->getBytesAvailable(I)J

    move-result-wide v5

    return-wide v5

    .line 231
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 232
    invoke-virtual {v3}, Lccsanandroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    invoke-virtual {v3}, Lccsanandroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v6

    mul-long v1, v4, v6

    .line 234
    :cond_2
    return-wide v1
.end method

.method private declared-synchronized observeDirectory(Ljava/io/File;)V
    .locals 7
    .param p1, "root"    # Ljava/io/File;

    monitor-enter p0

    .line 152
    if-nez p1, :cond_0

    .line 153
    monitor-exit p0

    return-void

    .line 154
    :cond_0
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/CacheManager;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 155
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/CacheManager;->observers:Ljava/util/List;

    new-instance v1, Lccsancom/vungle/warren/persistence/CacheManager$1;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x400

    invoke-direct {v1, p0, v2, v3}, Lccsancom/vungle/warren/persistence/CacheManager$1;-><init>(Lccsancom/vungle/warren/persistence/CacheManager;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "dirName":Ljava/lang/String;
    iget-object v1, p0, Lccsancom/vungle/warren/persistence/CacheManager;->observers:Ljava/util/List;

    new-instance v2, Lccsancom/vungle/warren/persistence/CacheManager$2;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x100

    invoke-direct {v2, p0, v3, v4, v0}, Lccsancom/vungle/warren/persistence/CacheManager$2;-><init>(Lccsancom/vungle/warren/persistence/CacheManager;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    move-object p1, v1

    .line 175
    .end local v0    # "dirName":Ljava/lang/String;
    goto :goto_0

    .line 176
    .end local p0    # "this":Lccsancom/vungle/warren/persistence/CacheManager;
    :cond_1
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/CacheManager;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/os/FileObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .local v1, "observer":Lccsanandroid/os/FileObserver;
    :try_start_1
    invoke-virtual {v1}, Lccsanandroid/os/FileObserver;->startWatching()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    goto :goto_2

    .line 179
    :catch_0
    move-exception v2

    .line 180
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    :try_start_2
    sget-object v4, Lccsancom/vungle/warren/persistence/CacheManager;->TAG:Ljava/lang/String;

    const-string v5, "ExceptionContext"

    invoke-static {v2}, Lccsanandroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lccsancom/vungle/warren/VungleLogger;->warn(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    .end local v1    # "observer":Lccsanandroid/os/FileObserver;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_1

    .line 183
    :cond_2
    monitor-exit p0

    return-void

    .line 151
    .end local p1    # "root":Ljava/io/File;
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private declared-synchronized selectFileDest()V
    .locals 16

    move-object/from16 v1, p0

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, v1, Lccsancom/vungle/warren/persistence/CacheManager;->current:Ljava/io/File;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 58
    iget-object v0, v1, Lccsancom/vungle/warren/persistence/CacheManager;->prefs:Lccsancom/vungle/warren/persistence/FilePreferences;

    const-string v3, "cache_path"

    invoke-virtual {v0, v3, v2}, Lccsancom/vungle/warren/persistence/FilePreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .end local p0    # "this":Lccsancom/vungle/warren/persistence/CacheManager;
    :cond_0
    move-object v3, v2

    :goto_0
    iput-object v3, v1, Lccsancom/vungle/warren/persistence/CacheManager;->current:Ljava/io/File;

    .line 62
    .end local v0    # "path":Ljava/lang/String;
    :cond_1
    iget-object v0, v1, Lccsancom/vungle/warren/persistence/CacheManager;->context:Lccsanandroid/content/Context;

    invoke-virtual {v0, v2}, Lccsanandroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    move-object v2, v0

    .line 63
    .local v2, "external":Ljava/io/File;
    iget-object v0, v1, Lccsancom/vungle/warren/persistence/CacheManager;->context:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    move-object v3, v0

    .line 65
    .local v3, "internal":Ljava/io/File;
    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v4, "mounted"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move v6, v0

    .line 67
    .local v6, "canUseExternal":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 69
    .local v7, "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    if-eqz v6, :cond_3

    .line 70
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 71
    .local v0, "parent":Ljava/io/File;
    if-eqz v0, :cond_3

    .line 72
    new-instance v8, Ljava/io/File;

    const-string v9, "no_backup"

    invoke-direct {v8, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .end local v0    # "parent":Ljava/io/File;
    :cond_3
    iget-object v0, v1, Lccsancom/vungle/warren/persistence/CacheManager;->context:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    if-eqz v6, :cond_4

    .line 79
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_4
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "result":Ljava/io/File;
    const/4 v8, 0x0

    .line 85
    .local v8, "created":Z
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/File;

    .line 86
    .local v10, "parent":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    const-string v12, "vungle_cache"

    invoke-direct {v11, v10, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    .local v11, "dir":Ljava/io/File;
    invoke-static {v11}, Lccsancom/vungle/warren/persistence/CacheManager;->deleteIfFile(Ljava/io/File;)V

    .line 91
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 92
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v11}, Ljava/io/File;->canWrite()Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    .local v12, "success":Z
    :goto_3
    goto :goto_4

    .line 94
    .end local v12    # "success":Z
    :cond_6
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    move-result v12

    move v13, v12

    .local v13, "success":Z
    move v8, v12

    .line 97
    .end local v13    # "success":Z
    .restart local v12    # "success":Z
    :goto_4
    if-eqz v12, :cond_7

    .line 98
    move-object v0, v11

    .line 99
    move-object v4, v0

    goto :goto_5

    .line 101
    .end local v10    # "parent":Ljava/io/File;
    .end local v11    # "dir":Ljava/io/File;
    :cond_7
    goto :goto_2

    .line 85
    .end local v12    # "success":Z
    :cond_8
    move-object v4, v0

    .line 103
    .end local v0    # "result":Ljava/io/File;
    .local v4, "result":Ljava/io/File;
    :goto_5
    iget-object v0, v1, Lccsancom/vungle/warren/persistence/CacheManager;->context:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    move-object v9, v0

    .line 104
    .local v9, "obsoleted":Ljava/io/File;
    iget-object v0, v1, Lccsancom/vungle/warren/persistence/CacheManager;->prefs:Lccsancom/vungle/warren/persistence/FilePreferences;

    const-string v10, "cache_paths"

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v10, v11}, Lccsancom/vungle/warren/persistence/FilePreferences;->getStringSet(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v0

    move-object v10, v0

    .line 106
    .local v10, "known":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v4, :cond_9

    .line 107
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lccsancom/vungle/warren/utility/CollectionsConcurrencyUtil;->addToSet(Ljava/util/HashSet;Ljava/lang/String;)V

    .line 109
    :cond_9
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lccsancom/vungle/warren/utility/CollectionsConcurrencyUtil;->addToSet(Ljava/util/HashSet;Ljava/lang/String;)V

    .line 110
    iget-object v0, v1, Lccsancom/vungle/warren/persistence/CacheManager;->prefs:Lccsancom/vungle/warren/persistence/FilePreferences;

    const-string v11, "cache_paths"

    invoke-virtual {v0, v11, v10}, Lccsancom/vungle/warren/persistence/FilePreferences;->put(Ljava/lang/String;Ljava/util/HashSet;)Lccsancom/vungle/warren/persistence/FilePreferences;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FilePreferences;->apply()V

    .line 112
    iget-object v0, v1, Lccsancom/vungle/warren/persistence/CacheManager;->old:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 114
    .local v11, "path":Ljava/lang/String;
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 115
    :cond_a
    iget-object v12, v1, Lccsancom/vungle/warren/persistence/CacheManager;->old:Ljava/util/List;

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v11    # "path":Ljava/lang/String;
    :cond_b
    goto :goto_6

    .line 119
    :cond_c
    if-nez v8, :cond_e

    if-eqz v4, :cond_d

    iget-object v0, v1, Lccsancom/vungle/warren/persistence/CacheManager;->current:Ljava/io/File;

    invoke-virtual {v4, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    iget-object v0, v1, Lccsancom/vungle/warren/persistence/CacheManager;->current:Ljava/io/File;

    if-eqz v0, :cond_12

    invoke-virtual {v0, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 120
    :cond_e
    iput-object v4, v1, Lccsancom/vungle/warren/persistence/CacheManager;->current:Ljava/io/File;

    .line 121
    if-eqz v4, :cond_f

    .line 122
    iget-object v0, v1, Lccsancom/vungle/warren/persistence/CacheManager;->prefs:Lccsancom/vungle/warren/persistence/FilePreferences;

    const-string v11, "cache_path"

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lccsancom/vungle/warren/persistence/FilePreferences;->put(Ljava/lang/String;Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FilePreferences;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FilePreferences;->apply()V

    .line 125
    :cond_f
    iget-object v0, v1, Lccsancom/vungle/warren/persistence/CacheManager;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lccsancom/vungle/warren/persistence/CacheManager$Listener;

    .line 126
    .local v11, "l":Lccsancom/vungle/warren/persistence/CacheManager$Listener;
    invoke-interface {v11}, Lccsancom/vungle/warren/persistence/CacheManager$Listener;->onCacheChanged()V

    .line 127
    .end local v11    # "l":Lccsancom/vungle/warren/persistence/CacheManager$Listener;
    goto :goto_7

    .line 128
    :cond_10
    iput-boolean v5, v1, Lccsancom/vungle/warren/persistence/CacheManager;->changed:Z

    .line 131
    iget-object v0, v1, Lccsancom/vungle/warren/persistence/CacheManager;->old:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    move-object v12, v0

    .line 132
    .local v12, "dir":Ljava/io/File;
    invoke-virtual {v12, v9}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_11

    .line 134
    :try_start_1
    invoke-static {v12}, Lccsancom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    const/4 v15, 0x1

    goto :goto_9

    .line 135
    :catch_0
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 136
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v13, Lccsancom/vungle/warren/persistence/CacheManager;->TAG:Ljava/lang/String;

    const-string v14, "CacheManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t remove old cache:"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v15, 0x1

    invoke-static {v15, v13, v14, v5}, Lccsancom/vungle/warren/VungleLogger;->error(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 132
    .end local v0    # "e":Ljava/io/IOException;
    :cond_11
    const/4 v15, 0x1

    .line 139
    .end local v12    # "dir":Ljava/io/File;
    :goto_9
    const/4 v5, 0x1

    goto :goto_8

    .line 142
    :cond_12
    invoke-direct {v1, v2}, Lccsancom/vungle/warren/persistence/CacheManager;->observeDirectory(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    .line 56
    .end local v2    # "external":Ljava/io/File;
    .end local v3    # "internal":Ljava/io/File;
    .end local v4    # "result":Ljava/io/File;
    .end local v6    # "canUseExternal":Z
    .end local v7    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v8    # "created":Z
    .end local v9    # "obsoleted":Ljava/io/File;
    .end local v10    # "known":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method


# virtual methods
.method public declared-synchronized addListener(Lccsancom/vungle/warren/persistence/CacheManager$Listener;)V
    .locals 1
    .param p1, "listener"    # Lccsancom/vungle/warren/persistence/CacheManager$Listener;

    monitor-enter p0

    .line 197
    :try_start_0
    invoke-direct {p0}, Lccsancom/vungle/warren/persistence/CacheManager;->check()V

    .line 198
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/CacheManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    iget-boolean v0, p0, Lccsancom/vungle/warren/persistence/CacheManager;->changed:Z

    if-eqz v0, :cond_0

    .line 200
    invoke-interface {p1}, Lccsancom/vungle/warren/persistence/CacheManager$Listener;->onCacheChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    .end local p0    # "this":Lccsancom/vungle/warren/persistence/CacheManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 196
    .end local p1    # "listener":Lccsancom/vungle/warren/persistence/CacheManager$Listener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getBytesAvailable()J
    .locals 2

    .line 210
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccsancom/vungle/warren/persistence/CacheManager;->getBytesAvailable(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getCache()Ljava/io/File;
    .locals 1

    monitor-enter p0

    .line 187
    :try_start_0
    invoke-direct {p0}, Lccsancom/vungle/warren/persistence/CacheManager;->check()V

    .line 188
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/CacheManager;->current:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 186
    .end local p0    # "this":Lccsancom/vungle/warren/persistence/CacheManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOldCaches()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 192
    :try_start_0
    invoke-direct {p0}, Lccsancom/vungle/warren/persistence/CacheManager;->check()V

    .line 193
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/CacheManager;->old:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 191
    .end local p0    # "this":Lccsancom/vungle/warren/persistence/CacheManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListener(Lccsancom/vungle/warren/persistence/CacheManager$Listener;)V
    .locals 1
    .param p1, "listener"    # Lccsancom/vungle/warren/persistence/CacheManager$Listener;

    monitor-enter p0

    .line 205
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/CacheManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    monitor-exit p0

    return-void

    .line 204
    .end local p0    # "this":Lccsancom/vungle/warren/persistence/CacheManager;
    .end local p1    # "listener":Lccsancom/vungle/warren/persistence/CacheManager$Listener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
