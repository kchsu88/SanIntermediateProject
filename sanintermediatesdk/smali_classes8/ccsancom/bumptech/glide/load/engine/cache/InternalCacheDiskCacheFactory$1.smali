.class Lccsancom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory$1;
.super Ljava/lang/Object;
.source "InternalCacheDiskCacheFactory.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Lccsanandroid/content/Context;

.field final synthetic val$diskCacheName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lccsancom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory$1;->val$context:Lccsanandroid/content/Context;

    iput-object p2, p0, Lccsancom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory$1;->val$diskCacheName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCacheDirectory()Ljava/io/File;
    .locals 3

    .line 25
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory$1;->val$context:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 26
    .local v0, "cacheDirectory":Ljava/io/File;
    if-nez v0, :cond_0

    .line 27
    const/4 v1, 0x0

    return-object v1

    .line 29
    :cond_0
    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory$1;->val$diskCacheName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 30
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory$1;->val$diskCacheName:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 32
    :cond_1
    return-object v0
.end method
