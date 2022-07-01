.class Lccsancom/vungle/warren/ServiceLocator$16;
.super Lccsancom/vungle/warren/ServiceLocator$Creator;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/ServiceLocator;->buildCreators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/ServiceLocator;)V
    .locals 1
    .param p1, "this$0"    # Lccsancom/vungle/warren/ServiceLocator;

    .line 267
    iput-object p1, p0, Lccsancom/vungle/warren/ServiceLocator$16;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/vungle/warren/ServiceLocator$Creator;-><init>(Lccsancom/vungle/warren/ServiceLocator;Lccsancom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method create()Ljava/lang/Object;
    .locals 8

    .line 270
    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator$16;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v1, Lccsancom/vungle/warren/persistence/CacheManager;

    invoke-static {v0, v1}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/persistence/CacheManager;

    .line 271
    .local v0, "cacheManager":Lccsancom/vungle/warren/persistence/CacheManager;
    new-instance v7, Lccsancom/vungle/warren/downloader/CleverCache;

    new-instance v3, Lccsancom/vungle/warren/downloader/LRUCachePolicy;

    const-string v1, "clever_cache"

    invoke-direct {v3, v0, v1}, Lccsancom/vungle/warren/downloader/LRUCachePolicy;-><init>(Lccsancom/vungle/warren/persistence/CacheManager;Ljava/lang/String;)V

    new-instance v4, Lccsancom/vungle/warren/DownloaderSizeProvider;

    iget-object v1, p0, Lccsancom/vungle/warren/ServiceLocator$16;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v2, Lccsancom/vungle/warren/RuntimeValues;

    .line 275
    invoke-static {v1, v2}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/RuntimeValues;

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v4, v0, v1, v2}, Lccsancom/vungle/warren/DownloaderSizeProvider;-><init>(Lccsancom/vungle/warren/persistence/CacheManager;Lccsancom/vungle/warren/RuntimeValues;F)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 277
    const-wide/16 v5, 0x5a

    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    move-object v1, v7

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lccsancom/vungle/warren/downloader/CleverCache;-><init>(Lccsancom/vungle/warren/persistence/CacheManager;Lccsancom/vungle/warren/downloader/CachePolicy;Lccsancom/vungle/warren/SizeProvider;J)V

    .line 271
    return-object v7
.end method
