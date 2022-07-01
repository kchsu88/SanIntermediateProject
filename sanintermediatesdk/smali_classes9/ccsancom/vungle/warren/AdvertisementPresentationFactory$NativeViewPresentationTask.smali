.class Lccsancom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;
.super Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;
.source "AdvertisementPresentationFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/AdvertisementPresentationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeViewPresentationTask"
.end annotation


# instance fields
.field private final adConfig:Lccsancom/vungle/warren/AdConfig;

.field private final adLoader:Lccsancom/vungle/warren/AdLoader;

.field private final apiClient:Lccsancom/vungle/warren/VungleApiClient;

.field private final jobRunner:Lccsancom/vungle/warren/tasks/JobRunner;

.field private final omTrackerFactory:Lccsancom/vungle/warren/omsdk/OMTracker$Factory;

.field private final request:Lccsancom/vungle/warren/AdRequest;

.field private final savedState:Lccsanandroid/os/Bundle;

.field private final sessionData:Lccsancom/vungle/warren/SessionData;

.field private final viewCallback:Lccsancom/vungle/warren/PresentationFactory$ViewCallback;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/AdConfig;Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/VungleStaticApi;Lccsancom/vungle/warren/tasks/JobRunner;Lccsancom/vungle/warren/PresentationFactory$ViewCallback;Lccsanandroid/os/Bundle;Lccsancom/vungle/warren/SessionData;Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;Lccsancom/vungle/warren/VungleApiClient;Lccsancom/vungle/warren/omsdk/OMTracker$Factory;)V
    .locals 0
    .param p1, "request"    # Lccsancom/vungle/warren/AdRequest;
    .param p2, "adConfig"    # Lccsancom/vungle/warren/AdConfig;
    .param p3, "adLoader"    # Lccsancom/vungle/warren/AdLoader;
    .param p4, "repository"    # Lccsancom/vungle/warren/persistence/Repository;
    .param p5, "vungleStaticApi"    # Lccsancom/vungle/warren/VungleStaticApi;
    .param p6, "jobRunner"    # Lccsancom/vungle/warren/tasks/JobRunner;
    .param p7, "viewCallback"    # Lccsancom/vungle/warren/PresentationFactory$ViewCallback;
    .param p8, "savedState"    # Lccsanandroid/os/Bundle;
    .param p9, "sessionData"    # Lccsancom/vungle/warren/SessionData;
    .param p10, "onModelLoadListener"    # Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;
    .param p11, "apiClient"    # Lccsancom/vungle/warren/VungleApiClient;
    .param p12, "omTrackerFactory"    # Lccsancom/vungle/warren/omsdk/OMTracker$Factory;

    .line 382
    invoke-direct {p0, p4, p5, p10}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;-><init>(Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/VungleStaticApi;Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;)V

    .line 383
    iput-object p1, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->request:Lccsancom/vungle/warren/AdRequest;

    .line 384
    iput-object p2, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->adConfig:Lccsancom/vungle/warren/AdConfig;

    .line 385
    iput-object p7, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->viewCallback:Lccsancom/vungle/warren/PresentationFactory$ViewCallback;

    .line 386
    iput-object p8, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->savedState:Lccsanandroid/os/Bundle;

    .line 387
    iput-object p6, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->jobRunner:Lccsancom/vungle/warren/tasks/JobRunner;

    .line 388
    iput-object p3, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->adLoader:Lccsancom/vungle/warren/AdLoader;

    .line 389
    iput-object p9, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->sessionData:Lccsancom/vungle/warren/SessionData;

    .line 390
    iput-object p11, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->apiClient:Lccsancom/vungle/warren/VungleApiClient;

    .line 391
    iput-object p12, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->omTrackerFactory:Lccsancom/vungle/warren/omsdk/OMTracker$Factory;

    .line 392
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;
    .locals 21
    .param p1, "voids"    # [Ljava/lang/Void;

    move-object/from16 v1, p0

    .line 398
    :try_start_0
    iget-object v0, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->request:Lccsancom/vungle/warren/AdRequest;

    iget-object v2, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->savedState:Lccsanandroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->loadPresentationData(Lccsancom/vungle/warren/AdRequest;Lccsanandroid/os/Bundle;)Lccsanandroid/util/Pair;

    move-result-object v0
    :try_end_0
    .catch Lccsancom/vungle/warren/error/VungleException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v0

    .line 401
    .local v2, "data":Lccsanandroid/util/Pair;, "Lccsanandroid/util/Pair<Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/model/Placement;>;"
    nop

    .line 403
    iget-object v0, v2, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Lccsancom/vungle/warren/model/Advertisement;

    .line 405
    .local v15, "advertisement":Lccsancom/vungle/warren/model/Advertisement;
    invoke-virtual {v15}, Lccsancom/vungle/warren/model/Advertisement;->getAdType()I

    move-result v0

    const/4 v3, 0x1

    const/16 v4, 0xa

    if-eq v0, v3, :cond_0

    .line 406
    invoke-static {}, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Invalid Ad Type for Native Ad."

    invoke-static {v0, v3}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    new-instance v3, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v3, v4}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-direct {v0, v3}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lccsancom/vungle/warren/error/VungleException;)V

    return-object v0

    .line 410
    :cond_0
    iget-object v0, v2, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lccsancom/vungle/warren/model/Placement;

    .line 412
    .local v14, "placement":Lccsancom/vungle/warren/model/Placement;
    iget-object v0, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->adLoader:Lccsancom/vungle/warren/AdLoader;

    invoke-virtual {v0, v15}, Lccsancom/vungle/warren/AdLoader;->canPlayAd(Lccsancom/vungle/warren/model/Advertisement;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 413
    invoke-static {}, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Advertisement is null or assets are missing"

    invoke-static {v0, v3}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    new-instance v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    new-instance v3, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v3, v4}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-direct {v0, v3}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lccsancom/vungle/warren/error/VungleException;)V

    return-object v0

    .line 417
    :cond_1
    new-instance v8, Lccsancom/vungle/warren/analytics/JobDelegateAnalytics;

    iget-object v0, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->jobRunner:Lccsancom/vungle/warren/tasks/JobRunner;

    invoke-direct {v8, v0}, Lccsancom/vungle/warren/analytics/JobDelegateAnalytics;-><init>(Lccsancom/vungle/warren/tasks/JobRunner;)V

    .line 419
    .local v8, "adAnalytics":Lccsancom/vungle/warren/analytics/AdAnalytics;
    new-instance v0, Lccsancom/vungle/warren/ui/view/VungleWebClient;

    invoke-direct {v0, v15, v14}, Lccsancom/vungle/warren/ui/view/VungleWebClient;-><init>(Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/model/Placement;)V

    move-object v13, v0

    .line 420
    .local v13, "webClient":Lccsancom/vungle/warren/ui/view/VungleWebClient;
    iget-object v0, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v15}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lccsancom/vungle/warren/persistence/Repository;->getAdvertisementAssetDirectory(Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Ljava/io/File;

    .line 421
    .local v16, "assetDir":Ljava/io/File;
    const/16 v5, 0x1a

    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v6, v13

    move-object/from16 v20, v14

    goto/16 :goto_1

    .line 426
    :cond_2
    invoke-virtual {v15}, Lccsancom/vungle/warren/model/Advertisement;->getTemplateType()Ljava/lang/String;

    move-result-object v0

    const-string v6, "mrec"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->adConfig:Lccsancom/vungle/warren/AdConfig;

    .line 427
    invoke-virtual {v0}, Lccsancom/vungle/warren/AdConfig;->getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v0

    sget-object v6, Lccsancom/vungle/warren/AdConfig$AdSize;->VUNGLE_MREC:Lccsancom/vungle/warren/AdConfig$AdSize;

    if-eq v0, v6, :cond_3

    .line 428
    invoke-static {}, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Corresponding AdConfig#setAdSize must be passed for the type/size of native ad"

    invoke-static {v0, v3}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    new-instance v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    new-instance v3, Lccsancom/vungle/warren/error/VungleException;

    const/16 v4, 0x1c

    invoke-direct {v3, v4}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-direct {v0, v3}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lccsancom/vungle/warren/error/VungleException;)V

    return-object v0

    .line 432
    :cond_3
    invoke-virtual {v14}, Lccsancom/vungle/warren/model/Placement;->getPlacementAdType()I

    move-result v0

    if-nez v0, :cond_4

    .line 433
    new-instance v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    new-instance v3, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v3, v4}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-direct {v0, v3}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lccsancom/vungle/warren/error/VungleException;)V

    return-object v0

    .line 436
    :cond_4
    iget-object v0, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->adConfig:Lccsancom/vungle/warren/AdConfig;

    invoke-virtual {v15, v0}, Lccsancom/vungle/warren/model/Advertisement;->configure(Lccsancom/vungle/warren/AdConfig;)V

    .line 438
    :try_start_1
    iget-object v0, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v15}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_1
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_1 .. :try_end_1} :catch_0

    .line 441
    nop

    .line 443
    iget-object v0, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->omTrackerFactory:Lccsancom/vungle/warren/omsdk/OMTracker$Factory;

    iget-object v4, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->apiClient:Lccsancom/vungle/warren/VungleApiClient;

    invoke-virtual {v4}, Lccsancom/vungle/warren/VungleApiClient;->getOmEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v15}, Lccsancom/vungle/warren/model/Advertisement;->getOmEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Lccsancom/vungle/warren/omsdk/OMTracker$Factory;->make(Z)Lccsancom/vungle/warren/omsdk/OMTracker;

    move-result-object v0

    .line 444
    .local v0, "omTracker":Lccsancom/vungle/warren/omsdk/OMTracker;
    invoke-virtual {v13, v0}, Lccsancom/vungle/warren/ui/view/VungleWebClient;->setWebViewObserver(Lccsancom/vungle/warren/omsdk/WebViewObserver;)V

    .line 446
    new-instance v17, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    iget-object v6, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->repository:Lccsancom/vungle/warren/persistence/Repository;

    new-instance v7, Lccsancom/vungle/warren/utility/HandlerScheduler;

    invoke-direct {v7}, Lccsancom/vungle/warren/utility/HandlerScheduler;-><init>()V

    const/4 v10, 0x0

    iget-object v12, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->sessionData:Lccsancom/vungle/warren/SessionData;

    iget-object v3, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->request:Lccsancom/vungle/warren/AdRequest;

    .line 457
    invoke-virtual {v3}, Lccsancom/vungle/warren/AdRequest;->getImpression()[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v3, v17

    move-object v4, v15

    move-object v5, v14

    move-object v9, v13

    move-object/from16 v11, v16

    move-object/from16 v19, v13

    .end local v13    # "webClient":Lccsancom/vungle/warren/ui/view/VungleWebClient;
    .local v19, "webClient":Lccsancom/vungle/warren/ui/view/VungleWebClient;
    move-object v13, v0

    move-object/from16 v20, v14

    .end local v14    # "placement":Lccsancom/vungle/warren/model/Placement;
    .local v20, "placement":Lccsancom/vungle/warren/model/Placement;
    move-object/from16 v14, v18

    invoke-direct/range {v3 .. v14}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;-><init>(Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/utility/Scheduler;Lccsancom/vungle/warren/analytics/AdAnalytics;Lccsancom/vungle/warren/ui/view/WebViewAPI;Lccsancom/vungle/warren/ui/state/OptionsState;Ljava/io/File;Lccsancom/vungle/warren/SessionData;Lccsancom/vungle/warren/omsdk/OMTracker;[Ljava/lang/String;)V

    .line 459
    .local v3, "presenter":Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;
    new-instance v4, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    const/4 v5, 0x0

    move-object/from16 v6, v19

    .end local v19    # "webClient":Lccsancom/vungle/warren/ui/view/VungleWebClient;
    .local v6, "webClient":Lccsancom/vungle/warren/ui/view/VungleWebClient;
    invoke-direct {v4, v5, v3, v6}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lccsancom/vungle/warren/ui/contract/AdContract$AdView;Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;Lccsancom/vungle/warren/ui/view/VungleWebClient;)V

    return-object v4

    .line 439
    .end local v0    # "omTracker":Lccsancom/vungle/warren/omsdk/OMTracker;
    .end local v3    # "presenter":Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;
    .end local v6    # "webClient":Lccsancom/vungle/warren/ui/view/VungleWebClient;
    .end local v20    # "placement":Lccsancom/vungle/warren/model/Placement;
    .restart local v13    # "webClient":Lccsancom/vungle/warren/ui/view/VungleWebClient;
    .restart local v14    # "placement":Lccsancom/vungle/warren/model/Placement;
    :catch_0
    move-exception v0

    move-object v6, v13

    move-object/from16 v20, v14

    .line 440
    .end local v13    # "webClient":Lccsancom/vungle/warren/ui/view/VungleWebClient;
    .end local v14    # "placement":Lccsancom/vungle/warren/model/Placement;
    .local v0, "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    .restart local v6    # "webClient":Lccsancom/vungle/warren/ui/view/VungleWebClient;
    .restart local v20    # "placement":Lccsancom/vungle/warren/model/Placement;
    new-instance v3, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    new-instance v4, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v4, v5}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-direct {v3, v4}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lccsancom/vungle/warren/error/VungleException;)V

    return-object v3

    .line 421
    .end local v0    # "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    .end local v6    # "webClient":Lccsancom/vungle/warren/ui/view/VungleWebClient;
    .end local v20    # "placement":Lccsancom/vungle/warren/model/Placement;
    .restart local v13    # "webClient":Lccsancom/vungle/warren/ui/view/VungleWebClient;
    .restart local v14    # "placement":Lccsancom/vungle/warren/model/Placement;
    :cond_6
    move-object v6, v13

    move-object/from16 v20, v14

    .line 422
    .end local v13    # "webClient":Lccsancom/vungle/warren/ui/view/VungleWebClient;
    .end local v14    # "placement":Lccsancom/vungle/warren/model/Placement;
    .restart local v6    # "webClient":Lccsancom/vungle/warren/ui/view/VungleWebClient;
    .restart local v20    # "placement":Lccsancom/vungle/warren/model/Placement;
    :goto_1
    invoke-static {}, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Advertisement assets dir is missing"

    invoke-static {v0, v3}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    new-instance v3, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v3, v5}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-direct {v0, v3}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lccsancom/vungle/warren/error/VungleException;)V

    return-object v0

    .line 399
    .end local v2    # "data":Lccsanandroid/util/Pair;, "Lccsanandroid/util/Pair<Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/model/Placement;>;"
    .end local v6    # "webClient":Lccsancom/vungle/warren/ui/view/VungleWebClient;
    .end local v8    # "adAnalytics":Lccsancom/vungle/warren/analytics/AdAnalytics;
    .end local v15    # "advertisement":Lccsancom/vungle/warren/model/Advertisement;
    .end local v16    # "assetDir":Ljava/io/File;
    .end local v20    # "placement":Lccsancom/vungle/warren/model/Placement;
    :catch_1
    move-exception v0

    .line 400
    .local v0, "e":Lccsancom/vungle/warren/error/VungleException;
    new-instance v2, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    invoke-direct {v2, v0}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lccsancom/vungle/warren/error/VungleException;)V

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 358
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->doInBackground([Ljava/lang/Void;)Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)V
    .locals 4
    .param p1, "result"    # Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    .line 464
    invoke-super {p0, p1}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->onPostExecute(Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)V

    .line 465
    invoke-virtual {p0}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->viewCallback:Lccsancom/vungle/warren/PresentationFactory$ViewCallback;

    if-eqz v0, :cond_0

    .line 466
    new-instance v1, Lccsanandroid/util/Pair;

    invoke-static {p1}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$300(Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    invoke-static {p1}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$200(Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lccsancom/vungle/warren/ui/view/VungleWebClient;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$100(Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lccsancom/vungle/warren/error/VungleException;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lccsancom/vungle/warren/PresentationFactory$ViewCallback;->onResult(Lccsanandroid/util/Pair;Lccsancom/vungle/warren/error/VungleException;)V

    .line 468
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 358
    check-cast p1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;->onPostExecute(Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)V

    return-void
.end method
