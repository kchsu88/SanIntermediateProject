.class public Lccsancom/vungle/warren/DownloaderSizeProvider;
.super Ljava/lang/Object;
.source "DownloaderSizeProvider.java"

# interfaces
.implements Lccsancom/vungle/warren/SizeProvider;


# instance fields
.field private cacheManager:Lccsancom/vungle/warren/persistence/CacheManager;

.field private final cap:F

.field private runtimeValues:Lccsancom/vungle/warren/RuntimeValues;


# direct methods
.method public constructor <init>(Lccsancom/vungle/warren/persistence/CacheManager;Lccsancom/vungle/warren/RuntimeValues;F)V
    .locals 0
    .param p1, "cacheManager"    # Lccsancom/vungle/warren/persistence/CacheManager;
    .param p2, "runtimeValues"    # Lccsancom/vungle/warren/RuntimeValues;
    .param p3, "cap"    # F

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lccsancom/vungle/warren/DownloaderSizeProvider;->cacheManager:Lccsancom/vungle/warren/persistence/CacheManager;

    .line 15
    iput-object p2, p0, Lccsancom/vungle/warren/DownloaderSizeProvider;->runtimeValues:Lccsancom/vungle/warren/RuntimeValues;

    .line 16
    iput p3, p0, Lccsancom/vungle/warren/DownloaderSizeProvider;->cap:F

    .line 17
    return-void
.end method


# virtual methods
.method public getTargetSize()J
    .locals 14

    .line 21
    iget-object v0, p0, Lccsancom/vungle/warren/DownloaderSizeProvider;->runtimeValues:Lccsancom/vungle/warren/RuntimeValues;

    iget-object v0, v0, Lccsancom/vungle/warren/RuntimeValues;->settings:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/VungleSettings;

    .line 22
    .local v0, "settings":Lccsancom/vungle/warren/VungleSettings;
    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 23
    return-wide v1

    .line 25
    :cond_0
    iget-object v3, p0, Lccsancom/vungle/warren/DownloaderSizeProvider;->cacheManager:Lccsancom/vungle/warren/persistence/CacheManager;

    invoke-virtual {v3}, Lccsancom/vungle/warren/persistence/CacheManager;->getBytesAvailable()J

    move-result-wide v3

    const-wide/16 v5, 0x2

    div-long/2addr v3, v5

    .line 26
    .local v3, "available":J
    invoke-virtual {v0}, Lccsancom/vungle/warren/VungleSettings;->getMaximumStorageForCleverCache()J

    move-result-wide v5

    .line 27
    .local v5, "max":J
    invoke-virtual {v0}, Lccsancom/vungle/warren/VungleSettings;->getMinimumSpaceForAd()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 28
    .local v7, "toFree":J
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 29
    .local v9, "size":J
    long-to-float v11, v9

    long-to-float v12, v9

    iget v13, p0, Lccsancom/vungle/warren/DownloaderSizeProvider;->cap:F

    mul-float v12, v12, v13

    sub-float/2addr v11, v12

    float-to-long v9, v11

    .line 30
    sub-long/2addr v9, v7

    .line 31
    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    return-wide v1
.end method
