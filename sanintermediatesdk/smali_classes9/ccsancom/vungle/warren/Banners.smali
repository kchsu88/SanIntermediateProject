.class public final Lccsancom/vungle/warren/Banners;
.super Ljava/lang/Object;
.source "Banners.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lccsancom/vungle/warren/Banners;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/Banners;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lccsancom/vungle/warren/Banners;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Lccsancom/vungle/warren/PlayAdCallback;I)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lccsancom/vungle/warren/PlayAdCallback;
    .param p2, "x2"    # I

    .line 33
    invoke-static {p0, p1, p2}, Lccsancom/vungle/warren/Banners;->onPlaybackError(Ljava/lang/String;Lccsancom/vungle/warren/PlayAdCallback;I)V

    return-void
.end method

.method public static canPlayAd(Ljava/lang/String;Lccsancom/vungle/warren/AdConfig$AdSize;)Z
    .locals 1
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "adSize"    # Lccsancom/vungle/warren/AdConfig$AdSize;

    .line 47
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lccsancom/vungle/warren/Banners;->canPlayAd(Ljava/lang/String;Ljava/lang/String;Lccsancom/vungle/warren/AdConfig$AdSize;)Z

    move-result v0

    return v0
.end method

.method public static canPlayAd(Ljava/lang/String;Ljava/lang/String;Lccsancom/vungle/warren/AdConfig$AdSize;)Z
    .locals 9
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "markup"    # Ljava/lang/String;
    .param p2, "adSize"    # Lccsancom/vungle/warren/AdConfig$AdSize;

    .line 62
    invoke-static {p2}, Lccsancom/vungle/warren/AdConfig$AdSize;->isBannerAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 63
    sget-object v0, Lccsancom/vungle/warren/Banners;->TAG:Ljava/lang/String;

    const-string v2, "Invalid Ad Size. Cannot check loaded status of non banner size placements."

    invoke-static {v0, v2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return v1

    .line 67
    :cond_0
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->appContext()Lccsanandroid/content/Context;

    move-result-object v0

    .line 69
    .local v0, "context":Lccsanandroid/content/Context;
    if-nez v0, :cond_1

    .line 70
    sget-object v2, Lccsancom/vungle/warren/Banners;->TAG:Ljava/lang/String;

    const-string v3, "Context is null"

    invoke-static {v2, v3}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return v1

    .line 74
    :cond_1
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    sget-object v2, Lccsancom/vungle/warren/Banners;->TAG:Ljava/lang/String;

    const-string v3, "PlacementId is null"

    invoke-static {v2, v3}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return v1

    .line 79
    :cond_2
    invoke-static {v0}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v1

    .line 80
    .local v1, "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    const-class v2, Lccsancom/vungle/warren/utility/Executors;

    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/utility/Executors;

    .line 81
    .local v2, "sdkExecutors":Lccsancom/vungle/warren/utility/Executors;
    const-class v3, Lccsancom/vungle/warren/utility/TimeoutProvider;

    invoke-virtual {v1, v3}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/vungle/warren/utility/TimeoutProvider;

    .line 83
    .local v3, "provider":Lccsancom/vungle/warren/utility/TimeoutProvider;
    new-instance v4, Lccsancom/vungle/warren/persistence/FutureResult;

    invoke-interface {v2}, Lccsancom/vungle/warren/utility/Executors;->getApiExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    new-instance v6, Lccsancom/vungle/warren/Banners$1;

    invoke-direct {v6, v0, p0, p1, p2}, Lccsancom/vungle/warren/Banners$1;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lccsancom/vungle/warren/AdConfig$AdSize;)V

    .line 84
    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    invoke-direct {v4, v5}, Lccsancom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    .line 134
    .local v4, "futureResult":Lccsancom/vungle/warren/persistence/FutureResult;, "Lccsancom/vungle/warren/persistence/FutureResult<Ljava/lang/Boolean;>;"
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3}, Lccsancom/vungle/warren/utility/TimeoutProvider;->getTimeout()J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v8}, Lccsancom/vungle/warren/persistence/FutureResult;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5
.end method

.method public static getBanner(Ljava/lang/String;Lccsancom/vungle/warren/AdConfig$AdSize;Lccsancom/vungle/warren/PlayAdCallback;)Lccsancom/vungle/warren/VungleBanner;
    .locals 1
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "adSize"    # Lccsancom/vungle/warren/AdConfig$AdSize;
    .param p2, "playAdCallback"    # Lccsancom/vungle/warren/PlayAdCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    new-instance v0, Lccsancom/vungle/warren/BannerAdConfig;

    invoke-direct {v0, p1}, Lccsancom/vungle/warren/BannerAdConfig;-><init>(Lccsancom/vungle/warren/AdConfig$AdSize;)V

    invoke-static {p0, v0, p2}, Lccsancom/vungle/warren/Banners;->getBanner(Ljava/lang/String;Lccsancom/vungle/warren/BannerAdConfig;Lccsancom/vungle/warren/PlayAdCallback;)Lccsancom/vungle/warren/VungleBanner;

    move-result-object v0

    return-object v0
.end method

.method public static getBanner(Ljava/lang/String;Lccsancom/vungle/warren/BannerAdConfig;Lccsancom/vungle/warren/PlayAdCallback;)Lccsancom/vungle/warren/VungleBanner;
    .locals 1
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "bannerAdConfig"    # Lccsancom/vungle/warren/BannerAdConfig;
    .param p2, "playAdCallback"    # Lccsancom/vungle/warren/PlayAdCallback;

    .line 176
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lccsancom/vungle/warren/Banners;->getBanner(Ljava/lang/String;Ljava/lang/String;Lccsancom/vungle/warren/BannerAdConfig;Lccsancom/vungle/warren/PlayAdCallback;)Lccsancom/vungle/warren/VungleBanner;

    move-result-object v0

    return-object v0
.end method

.method public static getBanner(Ljava/lang/String;Ljava/lang/String;Lccsancom/vungle/warren/BannerAdConfig;Lccsancom/vungle/warren/PlayAdCallback;)Lccsancom/vungle/warren/VungleBanner;
    .locals 21
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "markup"    # Ljava/lang/String;
    .param p2, "bannerAdConfig"    # Lccsancom/vungle/warren/BannerAdConfig;
    .param p3, "playAdCallback"    # Lccsancom/vungle/warren/PlayAdCallback;

    .line 199
    move-object/from16 v10, p0

    move-object/from16 v11, p3

    const-string v0, "VungleBanner#getBanner"

    const-string v1, "getBanner call invoked"

    invoke-static {v0, v1}, Lccsancom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->appContext()Lccsanandroid/content/Context;

    move-result-object v12

    .line 202
    .local v12, "appContext":Lccsanandroid/content/Context;
    const/4 v6, 0x0

    if-nez v12, :cond_0

    .line 203
    sget-object v0, Lccsancom/vungle/warren/Banners;->TAG:Ljava/lang/String;

    const-string v1, "Vungle is not initialized, returned VungleNativeAd = null"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/16 v0, 0x9

    invoke-static {v10, v11, v0}, Lccsancom/vungle/warren/Banners;->onPlaybackError(Ljava/lang/String;Lccsancom/vungle/warren/PlayAdCallback;I)V

    .line 205
    return-object v6

    .line 208
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lccsancom/vungle/warren/BannerAdConfig;->getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v13

    .line 209
    .local v13, "adSize":Lccsancom/vungle/warren/AdConfig$AdSize;
    invoke-static {v12}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v14

    .line 210
    .local v14, "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    const-class v0, Lccsancom/vungle/warren/utility/Executors;

    invoke-virtual {v14, v0}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lccsancom/vungle/warren/utility/Executors;

    .line 211
    .local v15, "sdkExecutors":Lccsancom/vungle/warren/utility/Executors;
    const-class v0, Lccsancom/vungle/warren/utility/TimeoutProvider;

    invoke-virtual {v14, v0}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lccsancom/vungle/warren/utility/TimeoutProvider;

    .line 213
    .local v16, "provider":Lccsancom/vungle/warren/utility/TimeoutProvider;
    invoke-static {v12}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v0

    const-class v1, Lccsancom/vungle/warren/RuntimeValues;

    .line 214
    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/RuntimeValues;

    iget-object v0, v0, Lccsancom/vungle/warren/RuntimeValues;->settings:Ljava/util/concurrent/atomic/AtomicReference;

    .line 216
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lccsancom/vungle/warren/VungleSettings;

    .line 218
    .local v17, "settings":Lccsancom/vungle/warren/VungleSettings;
    new-instance v2, Lccsancom/vungle/warren/PlayAdCallbackWrapper;

    invoke-interface {v15}, Lccsancom/vungle/warren/utility/Executors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {v2, v0, v11}, Lccsancom/vungle/warren/PlayAdCallbackWrapper;-><init>(Ljava/util/concurrent/ExecutorService;Lccsancom/vungle/warren/PlayAdCallback;)V

    .line 219
    .local v2, "listener":Lccsancom/vungle/warren/PlayAdCallback;
    new-instance v7, Lccsancom/vungle/warren/persistence/FutureResult;

    invoke-interface {v15}, Lccsancom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    new-instance v9, Lccsancom/vungle/warren/Banners$2;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v3, v14

    move-object v4, v13

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lccsancom/vungle/warren/Banners$2;-><init>(Ljava/lang/String;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/ServiceLocator;Lccsancom/vungle/warren/AdConfig$AdSize;Ljava/lang/String;)V

    .line 220
    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-direct {v7, v0}, Lccsancom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    move-object v0, v7

    .line 256
    .local v0, "futureResult":Lccsancom/vungle/warren/persistence/FutureResult;, "Lccsancom/vungle/warren/persistence/FutureResult<Lccsanandroid/util/Pair<Ljava/lang/Boolean;Lccsancom/vungle/warren/model/Placement;>;>;"
    invoke-interface/range {v16 .. v16}, Lccsancom/vungle/warren/utility/TimeoutProvider;->getTimeout()J

    move-result-wide v3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v1}, Lccsancom/vungle/warren/persistence/FutureResult;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/util/Pair;

    .line 257
    .local v1, "placementWillPlay":Lccsanandroid/util/Pair;, "Lccsanandroid/util/Pair<Ljava/lang/Boolean;Lccsancom/vungle/warren/model/Placement;>;"
    if-nez v1, :cond_1

    .line 258
    const/16 v3, 0xd

    invoke-static {v10, v11, v3}, Lccsancom/vungle/warren/Banners;->onPlaybackError(Ljava/lang/String;Lccsancom/vungle/warren/PlayAdCallback;I)V

    .line 259
    return-object v6

    .line 261
    :cond_1
    iget-object v3, v1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    .line 262
    .local v18, "canPlay":Z
    if-nez v18, :cond_2

    .line 263
    return-object v6

    .line 266
    :cond_2
    sget-object v3, Lccsancom/vungle/warren/AdConfig$AdSize;->VUNGLE_MREC:Lccsancom/vungle/warren/AdConfig$AdSize;

    if-eq v13, v3, :cond_3

    iget-object v3, v1, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v3}, Lccsancom/vungle/warren/model/Placement;->getAdRefreshDuration()I

    move-result v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 267
    .local v3, "refreshDuration":I
    :goto_0
    if-eqz v17, :cond_4

    invoke-virtual/range {v17 .. v17}, Lccsancom/vungle/warren/VungleSettings;->getBannerRefreshDisabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 268
    const/4 v3, 0x0

    move/from16 v19, v3

    goto :goto_1

    .line 271
    :cond_4
    move/from16 v19, v3

    .end local v3    # "refreshDuration":I
    .local v19, "refreshDuration":I
    :goto_1
    new-instance v20, Lccsancom/vungle/warren/VungleBanner;

    .line 274
    invoke-static/range {p1 .. p1}, Lccsancom/vungle/warren/AdMarkup;->fromString(Ljava/lang/String;)Lccsancom/vungle/warren/AdMarkup;

    move-result-object v6

    move-object/from16 v3, v20

    move-object v4, v12

    move-object/from16 v5, p0

    move/from16 v7, v19

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {v3 .. v9}, Lccsancom/vungle/warren/VungleBanner;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/vungle/warren/AdMarkup;ILccsancom/vungle/warren/BannerAdConfig;Lccsancom/vungle/warren/PlayAdCallback;)V

    .line 271
    return-object v20
.end method

.method public static loadBanner(Ljava/lang/String;Lccsancom/vungle/warren/AdConfig$AdSize;Lccsancom/vungle/warren/LoadAdCallback;)V
    .locals 1
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "adSize"    # Lccsancom/vungle/warren/AdConfig$AdSize;
    .param p2, "callback"    # Lccsancom/vungle/warren/LoadAdCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 311
    if-nez p1, :cond_0

    .line 312
    const/16 v0, 0x1c

    invoke-static {p0, p2, v0}, Lccsancom/vungle/warren/Banners;->onLoadError(Ljava/lang/String;Lccsancom/vungle/warren/LoadAdCallback;I)V

    .line 313
    return-void

    .line 315
    :cond_0
    new-instance v0, Lccsancom/vungle/warren/BannerAdConfig;

    invoke-direct {v0, p1}, Lccsancom/vungle/warren/BannerAdConfig;-><init>(Lccsancom/vungle/warren/AdConfig$AdSize;)V

    invoke-static {p0, v0, p2}, Lccsancom/vungle/warren/Banners;->loadBanner(Ljava/lang/String;Lccsancom/vungle/warren/BannerAdConfig;Lccsancom/vungle/warren/LoadAdCallback;)V

    .line 316
    return-void
.end method

.method public static loadBanner(Ljava/lang/String;Lccsancom/vungle/warren/BannerAdConfig;Lccsancom/vungle/warren/LoadAdCallback;)V
    .locals 1
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "bannerAdConfig"    # Lccsancom/vungle/warren/BannerAdConfig;
    .param p2, "callback"    # Lccsancom/vungle/warren/LoadAdCallback;

    .line 292
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lccsancom/vungle/warren/Banners;->loadBanner(Ljava/lang/String;Ljava/lang/String;Lccsancom/vungle/warren/BannerAdConfig;Lccsancom/vungle/warren/LoadAdCallback;)V

    .line 293
    return-void
.end method

.method public static loadBanner(Ljava/lang/String;Ljava/lang/String;Lccsancom/vungle/warren/BannerAdConfig;Lccsancom/vungle/warren/LoadAdCallback;)V
    .locals 3
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "markup"    # Ljava/lang/String;
    .param p2, "bannerAdConfig"    # Lccsancom/vungle/warren/BannerAdConfig;
    .param p3, "callback"    # Lccsancom/vungle/warren/LoadAdCallback;

    .line 332
    const-string v0, "Banners#loadBanner"

    const-string v1, "loadBanner API call invoked"

    invoke-static {v0, v1}, Lccsancom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->appContext()Lccsanandroid/content/Context;

    move-result-object v0

    .line 334
    .local v0, "appCtx":Lccsanandroid/content/Context;
    if-eqz v0, :cond_2

    invoke-static {}, Lccsancom/vungle/warren/Vungle;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    new-instance v1, Lccsancom/vungle/warren/AdConfig;

    invoke-direct {v1, p2}, Lccsancom/vungle/warren/AdConfig;-><init>(Lccsancom/vungle/warren/BaseAdConfig;)V

    .line 341
    .local v1, "adConfig":Lccsancom/vungle/warren/AdConfig;
    invoke-virtual {v1}, Lccsancom/vungle/warren/AdConfig;->getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v2

    invoke-static {v2}, Lccsancom/vungle/warren/AdConfig$AdSize;->isBannerAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 342
    const/16 v2, 0x1e

    invoke-static {p0, p3, v2}, Lccsancom/vungle/warren/Banners;->onLoadError(Ljava/lang/String;Lccsancom/vungle/warren/LoadAdCallback;I)V

    .line 343
    return-void

    .line 346
    :cond_1
    invoke-static {p1}, Lccsancom/vungle/warren/AdMarkup;->fromString(Ljava/lang/String;)Lccsancom/vungle/warren/AdMarkup;

    move-result-object v2

    invoke-static {p0, v2, v1, p3}, Lccsancom/vungle/warren/Vungle;->loadAdInternal(Ljava/lang/String;Lccsancom/vungle/warren/AdMarkup;Lccsancom/vungle/warren/AdConfig;Lccsancom/vungle/warren/LoadAdCallback;)V

    .line 347
    return-void

    .line 335
    .end local v1    # "adConfig":Lccsancom/vungle/warren/AdConfig;
    :cond_2
    :goto_0
    const/16 v1, 0x9

    invoke-static {p0, p3, v1}, Lccsancom/vungle/warren/Banners;->onLoadError(Ljava/lang/String;Lccsancom/vungle/warren/LoadAdCallback;I)V

    .line 336
    return-void
.end method

.method private static onLoadError(Ljava/lang/String;Lccsancom/vungle/warren/LoadAdCallback;I)V
    .locals 3
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "callback"    # Lccsancom/vungle/warren/LoadAdCallback;
    .param p2, "code"    # I

    .line 362
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v0, p2}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    .line 363
    .local v0, "ex":Lccsancom/vungle/warren/error/VungleException;
    if-eqz p1, :cond_0

    .line 364
    invoke-interface {p1, p0, v0}, Lccsancom/vungle/warren/LoadAdCallback;->onError(Ljava/lang/String;Lccsancom/vungle/warren/error/VungleException;)V

    .line 366
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Banner load error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsancom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Banners#onLoadError"

    invoke-static {v2, v1}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method private static onPlaybackError(Ljava/lang/String;Lccsancom/vungle/warren/PlayAdCallback;I)V
    .locals 3
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "playAdCallback"    # Lccsancom/vungle/warren/PlayAdCallback;
    .param p2, "code"    # I

    .line 352
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v0, p2}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    .line 353
    .local v0, "ex":Lccsancom/vungle/warren/error/VungleException;
    if-eqz p1, :cond_0

    .line 354
    invoke-interface {p1, p0, v0}, Lccsancom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Lccsancom/vungle/warren/error/VungleException;)V

    .line 356
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Banner play error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsancom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Banners#onPlaybackError"

    invoke-static {v2, v1}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    return-void
.end method
