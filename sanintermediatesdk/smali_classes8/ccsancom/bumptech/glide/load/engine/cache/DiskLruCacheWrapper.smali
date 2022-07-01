.class public Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;
.super Ljava/lang/Object;
.source "DiskLruCacheWrapper.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/engine/cache/DiskCache;


# static fields
.field private static final APP_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DiskLruCacheWrapper"

.field private static final VALUE_COUNT:I = 0x1

.field private static wrapper:Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;


# instance fields
.field private final directory:Ljava/io/File;

.field private diskLruCache:Lccsancom/bumptech/glide/disklrucache/DiskLruCache;

.field private final maxSize:I

.field private final safeKeyGenerator:Lccsancom/bumptech/glide/load/engine/cache/SafeKeyGenerator;

.field private final writeLocker:Lccsancom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->wrapper:Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;

    return-void
.end method

.method protected constructor <init>(Ljava/io/File;I)V
    .locals 1
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lccsancom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->writeLocker:Lccsancom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;

    .line 52
    iput-object p1, p0, Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->directory:Ljava/io/File;

    .line 53
    iput p2, p0, Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->maxSize:I

    .line 54
    new-instance v0, Lccsancom/bumptech/glide/load/engine/cache/SafeKeyGenerator;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/engine/cache/SafeKeyGenerator;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->safeKeyGenerator:Lccsancom/bumptech/glide/load/engine/cache/SafeKeyGenerator;

    .line 55
    return-void
.end method

.method public static declared-synchronized get(Ljava/io/File;I)Lccsancom/bumptech/glide/load/engine/cache/DiskCache;
    .locals 2
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "maxSize"    # I

    const-class v0, Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->wrapper:Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;

    invoke-direct {v1, p0, p1}, Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;-><init>(Ljava/io/File;I)V

    sput-object v1, Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->wrapper:Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;

    .line 48
    :cond_0
    sget-object v1, Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->wrapper:Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 44
    .end local p0    # "directory":Ljava/io/File;
    .end local p1    # "maxSize":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized getDiskCache()Lccsancom/bumptech/glide/disklrucache/DiskLruCache;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->diskLruCache:Lccsancom/bumptech/glide/disklrucache/DiskLruCache;

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->directory:Ljava/io/File;

    iget v1, p0, Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->maxSize:I

    int-to-long v1, v1

    const/4 v3, 0x1

    invoke-static {v0, v3, v3, v1, v2}, Lccsancom/bumptech/glide/disklrucache/DiskLruCache;->open(Ljava/io/File;IIJ)Lccsancom/bumptech/glide/disklrucache/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->diskLruCache:Lccsancom/bumptech/glide/disklrucache/DiskLruCache;

    .line 61
    .end local p0    # "this":Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->diskLruCache:Lccsancom/bumptech/glide/disklrucache/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized resetDiskCache()V
    .locals 1

    monitor-enter p0

    .line 65
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->diskLruCache:Lccsancom/bumptech/glide/disklrucache/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 64
    .end local p0    # "this":Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 3

    monitor-enter p0

    .line 129
    :try_start_0
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->getDiskCache()Lccsancom/bumptech/glide/disklrucache/DiskLruCache;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/bumptech/glide/disklrucache/DiskLruCache;->delete()V

    .line 130
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->resetDiskCache()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    goto :goto_0

    .line 128
    .end local p0    # "this":Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const-string v1, "DiskLruCacheWrapper"

    const-string v2, "Unable to clear disk cache"

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 128
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public delete(Lccsancom/bumptech/glide/load/Key;)V
    .locals 4
    .param p1, "key"    # Lccsancom/bumptech/glide/load/Key;

    .line 116
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->safeKeyGenerator:Lccsancom/bumptech/glide/load/engine/cache/SafeKeyGenerator;

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->getSafeKey(Lccsancom/bumptech/glide/load/Key;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "safeKey":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->getDiskCache()Lccsancom/bumptech/glide/disklrucache/DiskLruCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsancom/bumptech/glide/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    goto :goto_0

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x5

    const-string v3, "DiskLruCacheWrapper"

    invoke-static {v3, v2}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    const-string v2, "Unable to delete from disk cache"

    invoke-static {v3, v2, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method public get(Lccsancom/bumptech/glide/load/Key;)Ljava/io/File;
    .locals 5
    .param p1, "key"    # Lccsancom/bumptech/glide/load/Key;

    .line 70
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->safeKeyGenerator:Lccsancom/bumptech/glide/load/engine/cache/SafeKeyGenerator;

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->getSafeKey(Lccsancom/bumptech/glide/load/Key;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "safeKey":Ljava/lang/String;
    const/4 v1, 0x0

    .line 76
    .local v1, "result":Ljava/io/File;
    :try_start_0
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->getDiskCache()Lccsancom/bumptech/glide/disklrucache/DiskLruCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Lccsancom/bumptech/glide/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lccsancom/bumptech/glide/disklrucache/DiskLruCache$Value;

    move-result-object v2

    .line 77
    .local v2, "value":Lccsancom/bumptech/glide/disklrucache/DiskLruCache$Value;
    if-eqz v2, :cond_0

    .line 78
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lccsancom/bumptech/glide/disklrucache/DiskLruCache$Value;->getFile(I)Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 84
    .end local v2    # "value":Lccsancom/bumptech/glide/disklrucache/DiskLruCache$Value;
    :cond_0
    goto :goto_0

    .line 80
    :catch_0
    move-exception v2

    .line 81
    .local v2, "e":Ljava/io/IOException;
    const/4 v3, 0x5

    const-string v4, "DiskLruCacheWrapper"

    invoke-static {v4, v3}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 82
    const-string v3, "Unable to get from disk cache"

    invoke-static {v4, v3, v2}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    return-object v1
.end method

.method public put(Lccsancom/bumptech/glide/load/Key;Lccsancom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V
    .locals 5
    .param p1, "key"    # Lccsancom/bumptech/glide/load/Key;
    .param p2, "writer"    # Lccsancom/bumptech/glide/load/engine/cache/DiskCache$Writer;

    .line 90
    const-string v0, "DiskLruCacheWrapper"

    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->safeKeyGenerator:Lccsancom/bumptech/glide/load/engine/cache/SafeKeyGenerator;

    invoke-virtual {v1, p1}, Lccsancom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->getSafeKey(Lccsancom/bumptech/glide/load/Key;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "safeKey":Ljava/lang/String;
    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->writeLocker:Lccsancom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;

    invoke-virtual {v2, p1}, Lccsancom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->acquire(Lccsancom/bumptech/glide/load/Key;)V

    .line 93
    :try_start_0
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->getDiskCache()Lccsancom/bumptech/glide/disklrucache/DiskLruCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsancom/bumptech/glide/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Lccsancom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 95
    .local v2, "editor":Lccsancom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    if-eqz v2, :cond_1

    .line 97
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2, v3}, Lccsancom/bumptech/glide/disklrucache/DiskLruCache$Editor;->getFile(I)Ljava/io/File;

    move-result-object v3

    .line 98
    .local v3, "file":Ljava/io/File;
    invoke-interface {p2, v3}, Lccsancom/bumptech/glide/load/engine/cache/DiskCache$Writer;->write(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    invoke-virtual {v2}, Lccsancom/bumptech/glide/disklrucache/DiskLruCache$Editor;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .end local v3    # "file":Ljava/io/File;
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Lccsancom/bumptech/glide/disklrucache/DiskLruCache$Editor;->abortUnlessCommitted()V

    .line 103
    goto :goto_0

    .line 102
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lccsancom/bumptech/glide/disklrucache/DiskLruCache$Editor;->abortUnlessCommitted()V

    .end local v1    # "safeKey":Ljava/lang/String;
    .end local p1    # "key":Lccsancom/bumptech/glide/load/Key;
    .end local p2    # "writer":Lccsancom/bumptech/glide/load/engine/cache/DiskCache$Writer;
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    .end local v2    # "editor":Lccsancom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .restart local v1    # "safeKey":Ljava/lang/String;
    .restart local p1    # "key":Lccsancom/bumptech/glide/load/Key;
    .restart local p2    # "writer":Lccsancom/bumptech/glide/load/engine/cache/DiskCache$Writer;
    :cond_1
    :goto_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->writeLocker:Lccsancom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->release(Lccsancom/bumptech/glide/load/Key;)V

    .line 111
    goto :goto_1

    .line 110
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 105
    :catch_0
    move-exception v2

    .line 106
    .local v2, "e":Ljava/io/IOException;
    const/4 v3, 0x5

    :try_start_3
    invoke-static {v0, v3}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    const-string v3, "Unable to put to disk cache"

    invoke-static {v0, v3, v2}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 112
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 110
    :goto_2
    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->writeLocker:Lccsancom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;

    invoke-virtual {v2, p1}, Lccsancom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->release(Lccsancom/bumptech/glide/load/Key;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
