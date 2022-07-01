.class Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;
.super Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;
.source "AdvertisementPresentationFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/AdvertisementPresentationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FullScreenPresentationTask"
.end annotation


# instance fields
.field private final adLoader:Lccsancom/vungle/warren/AdLoader;

.field private advertisement:Lccsancom/vungle/warren/model/Advertisement;

.field private final apiClient:Lccsancom/vungle/warren/VungleApiClient;

.field private final closeDelegate:Lccsancom/vungle/warren/ui/CloseDelegate;

.field private context:Lccsanandroid/content/Context;

.field private fullAdWidget:Lccsancom/vungle/warren/ui/view/FullAdWidget;

.field private final fullscreenCallback:Lccsancom/vungle/warren/PresentationFactory$FullScreenCallback;

.field private final jobRunner:Lccsancom/vungle/warren/tasks/JobRunner;

.field private final omTrackerFactory:Lccsancom/vungle/warren/omsdk/OMTracker$Factory;

.field private final optionsState:Lccsancom/vungle/warren/ui/state/OptionsState;

.field private final orientationDelegate:Lccsancom/vungle/warren/ui/OrientationDelegate;

.field private final request:Lccsancom/vungle/warren/AdRequest;

.field private final savedState:Lccsanandroid/os/Bundle;

.field private final sessionData:Lccsancom/vungle/warren/SessionData;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/VungleStaticApi;Lccsancom/vungle/warren/tasks/JobRunner;Lccsancom/vungle/warren/VungleApiClient;Lccsancom/vungle/warren/SessionData;Lccsancom/vungle/warren/ui/view/FullAdWidget;Lccsancom/vungle/warren/ui/state/OptionsState;Lccsancom/vungle/warren/ui/OrientationDelegate;Lccsancom/vungle/warren/ui/CloseDelegate;Lccsancom/vungle/warren/PresentationFactory$FullScreenCallback;Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;Lccsanandroid/os/Bundle;Lccsancom/vungle/warren/omsdk/OMTracker$Factory;)V
    .locals 16
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "adLoader"    # Lccsancom/vungle/warren/AdLoader;
    .param p3, "request"    # Lccsancom/vungle/warren/AdRequest;
    .param p4, "repository"    # Lccsancom/vungle/warren/persistence/Repository;
    .param p5, "vungleStaticApi"    # Lccsancom/vungle/warren/VungleStaticApi;
    .param p6, "jobRunner"    # Lccsancom/vungle/warren/tasks/JobRunner;
    .param p7, "apiClient"    # Lccsancom/vungle/warren/VungleApiClient;
    .param p8, "sessionData"    # Lccsancom/vungle/warren/SessionData;
    .param p9, "fullAdWidget"    # Lccsancom/vungle/warren/ui/view/FullAdWidget;
    .param p10, "optionsState"    # Lccsancom/vungle/warren/ui/state/OptionsState;
    .param p11, "orientationDelegate"    # Lccsancom/vungle/warren/ui/OrientationDelegate;
    .param p12, "closeDelegate"    # Lccsancom/vungle/warren/ui/CloseDelegate;
    .param p13, "fullscreenCallback"    # Lccsancom/vungle/warren/PresentationFactory$FullScreenCallback;
    .param p14, "onModelLoadListener"    # Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;
    .param p15, "savedState"    # Lccsanandroid/os/Bundle;
    .param p16, "omTrackerFactory"    # Lccsancom/vungle/warren/omsdk/OMTracker$Factory;

    .line 237
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p14

    invoke-direct {v0, v1, v2, v3}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;-><init>(Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/VungleStaticApi;Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;)V

    .line 238
    move-object/from16 v4, p3

    iput-object v4, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->request:Lccsancom/vungle/warren/AdRequest;

    .line 239
    move-object/from16 v5, p9

    iput-object v5, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->fullAdWidget:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    .line 240
    move-object/from16 v6, p10

    iput-object v6, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->optionsState:Lccsancom/vungle/warren/ui/state/OptionsState;

    .line 241
    move-object/from16 v7, p1

    iput-object v7, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->context:Lccsanandroid/content/Context;

    .line 242
    move-object/from16 v8, p13

    iput-object v8, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->fullscreenCallback:Lccsancom/vungle/warren/PresentationFactory$FullScreenCallback;

    .line 243
    move-object/from16 v9, p15

    iput-object v9, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->savedState:Lccsanandroid/os/Bundle;

    .line 244
    move-object/from16 v10, p6

    iput-object v10, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->jobRunner:Lccsancom/vungle/warren/tasks/JobRunner;

    .line 245
    move-object/from16 v11, p7

    iput-object v11, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->apiClient:Lccsancom/vungle/warren/VungleApiClient;

    .line 246
    move-object/from16 v12, p11

    iput-object v12, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->orientationDelegate:Lccsancom/vungle/warren/ui/OrientationDelegate;

    .line 247
    move-object/from16 v13, p12

    iput-object v13, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->closeDelegate:Lccsancom/vungle/warren/ui/CloseDelegate;

    .line 248
    move-object/from16 v14, p2

    iput-object v14, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->adLoader:Lccsancom/vungle/warren/AdLoader;

    .line 249
    move-object/from16 v15, p8

    iput-object v15, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->sessionData:Lccsancom/vungle/warren/SessionData;

    .line 250
    move-object/from16 v1, p16

    iput-object v1, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->omTrackerFactory:Lccsancom/vungle/warren/omsdk/OMTracker$Factory;

    .line 251
    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 255
    invoke-super {p0}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->clear()V

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->context:Lccsanandroid/content/Context;

    .line 257
    iput-object v0, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->fullAdWidget:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    .line 258
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;
    .locals 23
    .param p1, "voids"    # [Ljava/lang/Void;

    move-object/from16 v1, p0

    .line 264
    :try_start_0
    iget-object v0, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->request:Lccsancom/vungle/warren/AdRequest;

    iget-object v2, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->savedState:Lccsanandroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->loadPresentationData(Lccsancom/vungle/warren/AdRequest;Lccsanandroid/os/Bundle;)Lccsanandroid/util/Pair;

    move-result-object v0
    :try_end_0
    .catch Lccsancom/vungle/warren/error/VungleException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .local v0, "data":Lccsanandroid/util/Pair;, "Lccsanandroid/util/Pair<Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/model/Placement;>;"
    nop

    .line 269
    iget-object v2, v0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lccsancom/vungle/warren/model/Advertisement;

    iput-object v2, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    .line 270
    iget-object v2, v0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lccsancom/vungle/warren/model/Placement;

    .line 272
    .local v2, "placement":Lccsancom/vungle/warren/model/Placement;
    iget-object v3, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->adLoader:Lccsancom/vungle/warren/AdLoader;

    iget-object v4, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v3, v4}, Lccsancom/vungle/warren/AdLoader;->canRenderAd(Lccsancom/vungle/warren/model/Advertisement;)Z

    move-result v3

    const/16 v4, 0xa

    if-nez v3, :cond_0

    .line 273
    invoke-static {}, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Advertisement is null or assets are missing"

    invoke-static {v3, v5}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance v3, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    new-instance v5, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v5, v4}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-direct {v3, v5}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lccsancom/vungle/warren/error/VungleException;)V

    return-object v3

    .line 277
    :cond_0
    invoke-virtual {v2}, Lccsancom/vungle/warren/model/Placement;->getPlacementAdType()I

    move-result v3

    if-eqz v3, :cond_1

    .line 278
    new-instance v3, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    new-instance v4, Lccsancom/vungle/warren/error/VungleException;

    const/16 v5, 0x1d

    invoke-direct {v4, v5}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-direct {v3, v4}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lccsancom/vungle/warren/error/VungleException;)V

    return-object v3

    .line 282
    :cond_1
    new-instance v8, Lccsancom/vungle/warren/analytics/JobDelegateAnalytics;

    iget-object v3, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->jobRunner:Lccsancom/vungle/warren/tasks/JobRunner;

    invoke-direct {v8, v3}, Lccsancom/vungle/warren/analytics/JobDelegateAnalytics;-><init>(Lccsancom/vungle/warren/tasks/JobRunner;)V

    .line 284
    .local v8, "adAnalytics":Lccsancom/vungle/warren/analytics/AdAnalytics;
    const/4 v3, 0x0

    .line 285
    .local v3, "appId":Ljava/lang/String;
    iget-object v5, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->repository:Lccsancom/vungle/warren/persistence/Repository;

    const-class v6, Lccsancom/vungle/warren/model/Cookie;

    const-string v7, "appId"

    invoke-virtual {v5, v7, v6}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Lccsancom/vungle/warren/model/Cookie;

    .line 286
    .local v15, "appIdCookie":Lccsancom/vungle/warren/model/Cookie;
    if-eqz v15, :cond_2

    invoke-virtual {v15, v7}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 287
    invoke-virtual {v15, v7}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v3

    goto :goto_0

    .line 290
    :cond_2
    move-object/from16 v20, v3

    .end local v3    # "appId":Ljava/lang/String;
    .local v20, "appId":Ljava/lang/String;
    :goto_0
    new-instance v3, Lccsancom/vungle/warren/ui/view/VungleWebClient;

    iget-object v5, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-direct {v3, v5, v2}, Lccsancom/vungle/warren/ui/view/VungleWebClient;-><init>(Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/model/Placement;)V

    move-object v14, v3

    .line 291
    .local v14, "webClient":Lccsancom/vungle/warren/ui/view/VungleWebClient;
    iget-object v3, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v5, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v5}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lccsancom/vungle/warren/persistence/Repository;->getAdvertisementAssetDirectory(Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Ljava/io/File;

    .line 292
    .local v21, "assetDir":Ljava/io/File;
    if-eqz v21, :cond_5

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v22, v0

    move-object v0, v14

    move-object v6, v15

    goto/16 :goto_2

    .line 297
    :cond_3
    iget-object v3, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v3}, Lccsancom/vungle/warren/model/Advertisement;->getAdType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 337
    new-instance v3, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    new-instance v5, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v5, v4}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-direct {v3, v5}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lccsancom/vungle/warren/error/VungleException;)V

    return-object v3

    .line 316
    :pswitch_0
    iget-object v3, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->omTrackerFactory:Lccsancom/vungle/warren/omsdk/OMTracker$Factory;

    iget-object v4, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->apiClient:Lccsancom/vungle/warren/VungleApiClient;

    invoke-virtual {v4}, Lccsancom/vungle/warren/VungleApiClient;->getOmEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Advertisement;->getOmEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Lccsancom/vungle/warren/omsdk/OMTracker$Factory;->make(Z)Lccsancom/vungle/warren/omsdk/OMTracker;

    move-result-object v13

    .line 317
    .local v13, "omTracker":Lccsancom/vungle/warren/omsdk/OMTracker;
    invoke-virtual {v14, v13}, Lccsancom/vungle/warren/ui/view/VungleWebClient;->setWebViewObserver(Lccsancom/vungle/warren/omsdk/WebViewObserver;)V

    .line 319
    new-instance v16, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    iget-object v4, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    iget-object v6, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->repository:Lccsancom/vungle/warren/persistence/Repository;

    new-instance v7, Lccsancom/vungle/warren/utility/HandlerScheduler;

    invoke-direct {v7}, Lccsancom/vungle/warren/utility/HandlerScheduler;-><init>()V

    iget-object v10, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->optionsState:Lccsancom/vungle/warren/ui/state/OptionsState;

    iget-object v12, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->sessionData:Lccsancom/vungle/warren/SessionData;

    iget-object v3, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->request:Lccsancom/vungle/warren/AdRequest;

    .line 330
    invoke-virtual {v3}, Lccsancom/vungle/warren/AdRequest;->getImpression()[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v3, v16

    move-object v5, v2

    move-object v9, v14

    move-object/from16 v11, v21

    move-object/from16 v18, v13

    .end local v13    # "omTracker":Lccsancom/vungle/warren/omsdk/OMTracker;
    .local v18, "omTracker":Lccsancom/vungle/warren/omsdk/OMTracker;
    move-object/from16 v22, v0

    move-object v0, v14

    .end local v14    # "webClient":Lccsancom/vungle/warren/ui/view/VungleWebClient;
    .local v0, "webClient":Lccsancom/vungle/warren/ui/view/VungleWebClient;
    .local v22, "data":Lccsanandroid/util/Pair;, "Lccsanandroid/util/Pair<Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/model/Placement;>;"
    move-object/from16 v14, v17

    invoke-direct/range {v3 .. v14}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;-><init>(Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/utility/Scheduler;Lccsancom/vungle/warren/analytics/AdAnalytics;Lccsancom/vungle/warren/ui/view/WebViewAPI;Lccsancom/vungle/warren/ui/state/OptionsState;Ljava/io/File;Lccsancom/vungle/warren/SessionData;Lccsancom/vungle/warren/omsdk/OMTracker;[Ljava/lang/String;)V

    .line 332
    .local v3, "mraidPresenter":Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;
    new-instance v4, Lccsancom/vungle/warren/ui/view/MRAIDAdView;

    iget-object v5, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->context:Lccsanandroid/content/Context;

    iget-object v6, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->fullAdWidget:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    iget-object v7, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->orientationDelegate:Lccsancom/vungle/warren/ui/OrientationDelegate;

    iget-object v9, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->closeDelegate:Lccsancom/vungle/warren/ui/CloseDelegate;

    invoke-direct {v4, v5, v6, v7, v9}, Lccsancom/vungle/warren/ui/view/MRAIDAdView;-><init>(Lccsanandroid/content/Context;Lccsancom/vungle/warren/ui/view/FullAdWidget;Lccsancom/vungle/warren/ui/OrientationDelegate;Lccsancom/vungle/warren/ui/CloseDelegate;)V

    .line 334
    .local v4, "mraidView":Lccsancom/vungle/warren/ui/view/MRAIDAdView;
    new-instance v5, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    invoke-direct {v5, v4, v3, v0}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lccsancom/vungle/warren/ui/contract/AdContract$AdView;Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;Lccsancom/vungle/warren/ui/view/VungleWebClient;)V

    return-object v5

    .line 299
    .end local v3    # "mraidPresenter":Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;
    .end local v4    # "mraidView":Lccsancom/vungle/warren/ui/view/MRAIDAdView;
    .end local v18    # "omTracker":Lccsancom/vungle/warren/omsdk/OMTracker;
    .end local v22    # "data":Lccsanandroid/util/Pair;, "Lccsanandroid/util/Pair<Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/model/Placement;>;"
    .local v0, "data":Lccsanandroid/util/Pair;, "Lccsanandroid/util/Pair<Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/model/Placement;>;"
    .restart local v14    # "webClient":Lccsancom/vungle/warren/ui/view/VungleWebClient;
    :pswitch_1
    move-object/from16 v22, v0

    move-object v0, v14

    .end local v14    # "webClient":Lccsancom/vungle/warren/ui/view/VungleWebClient;
    .local v0, "webClient":Lccsancom/vungle/warren/ui/view/VungleWebClient;
    .restart local v22    # "data":Lccsanandroid/util/Pair;, "Lccsanandroid/util/Pair<Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/model/Placement;>;"
    new-instance v3, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    iget-object v10, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    iget-object v12, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->repository:Lccsancom/vungle/warren/persistence/Repository;

    new-instance v13, Lccsancom/vungle/warren/utility/HandlerScheduler;

    invoke-direct {v13}, Lccsancom/vungle/warren/utility/HandlerScheduler;-><init>()V

    iget-object v4, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->optionsState:Lccsancom/vungle/warren/ui/state/OptionsState;

    iget-object v5, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->sessionData:Lccsancom/vungle/warren/SessionData;

    iget-object v6, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->request:Lccsancom/vungle/warren/AdRequest;

    .line 309
    invoke-virtual {v6}, Lccsancom/vungle/warren/AdRequest;->getImpression()[Ljava/lang/String;

    move-result-object v19

    move-object v9, v3

    move-object v11, v2

    move-object v14, v8

    move-object v6, v15

    .end local v15    # "appIdCookie":Lccsancom/vungle/warren/model/Cookie;
    .local v6, "appIdCookie":Lccsancom/vungle/warren/model/Cookie;
    move-object v15, v0

    move-object/from16 v16, v4

    move-object/from16 v17, v21

    move-object/from16 v18, v5

    invoke-direct/range {v9 .. v19}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;-><init>(Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/utility/Scheduler;Lccsancom/vungle/warren/analytics/AdAnalytics;Lccsancom/vungle/warren/ui/view/WebViewAPI;Lccsancom/vungle/warren/ui/state/OptionsState;Ljava/io/File;Lccsancom/vungle/warren/SessionData;[Ljava/lang/String;)V

    .line 311
    .local v3, "localPresenter":Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;
    new-instance v4, Lccsancom/vungle/warren/ui/view/LocalAdView;

    iget-object v5, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->context:Lccsanandroid/content/Context;

    iget-object v7, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->fullAdWidget:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    iget-object v9, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->orientationDelegate:Lccsancom/vungle/warren/ui/OrientationDelegate;

    iget-object v10, v1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->closeDelegate:Lccsancom/vungle/warren/ui/CloseDelegate;

    invoke-direct {v4, v5, v7, v9, v10}, Lccsancom/vungle/warren/ui/view/LocalAdView;-><init>(Lccsanandroid/content/Context;Lccsancom/vungle/warren/ui/view/FullAdWidget;Lccsancom/vungle/warren/ui/OrientationDelegate;Lccsancom/vungle/warren/ui/CloseDelegate;)V

    .line 313
    .local v4, "localView":Lccsancom/vungle/warren/ui/view/LocalAdView;
    new-instance v5, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    invoke-direct {v5, v4, v3, v0}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lccsancom/vungle/warren/ui/contract/AdContract$AdView;Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;Lccsancom/vungle/warren/ui/view/VungleWebClient;)V

    return-object v5

    .line 292
    .end local v3    # "localPresenter":Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;
    .end local v4    # "localView":Lccsancom/vungle/warren/ui/view/LocalAdView;
    .end local v6    # "appIdCookie":Lccsancom/vungle/warren/model/Cookie;
    .end local v22    # "data":Lccsanandroid/util/Pair;, "Lccsanandroid/util/Pair<Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/model/Placement;>;"
    .local v0, "data":Lccsanandroid/util/Pair;, "Lccsanandroid/util/Pair<Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/model/Placement;>;"
    .restart local v14    # "webClient":Lccsancom/vungle/warren/ui/view/VungleWebClient;
    .restart local v15    # "appIdCookie":Lccsancom/vungle/warren/model/Cookie;
    :cond_5
    move-object/from16 v22, v0

    move-object v0, v14

    move-object v6, v15

    .line 293
    .end local v14    # "webClient":Lccsancom/vungle/warren/ui/view/VungleWebClient;
    .end local v15    # "appIdCookie":Lccsancom/vungle/warren/model/Cookie;
    .local v0, "webClient":Lccsancom/vungle/warren/ui/view/VungleWebClient;
    .restart local v6    # "appIdCookie":Lccsancom/vungle/warren/model/Cookie;
    .restart local v22    # "data":Lccsanandroid/util/Pair;, "Lccsanandroid/util/Pair<Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/model/Placement;>;"
    :goto_2
    invoke-static {}, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Advertisement assets dir is missing"

    invoke-static {v3, v4}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v3, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    new-instance v4, Lccsancom/vungle/warren/error/VungleException;

    const/16 v5, 0x1a

    invoke-direct {v4, v5}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-direct {v3, v4}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lccsancom/vungle/warren/error/VungleException;)V

    return-object v3

    .line 265
    .end local v0    # "webClient":Lccsancom/vungle/warren/ui/view/VungleWebClient;
    .end local v2    # "placement":Lccsancom/vungle/warren/model/Placement;
    .end local v6    # "appIdCookie":Lccsancom/vungle/warren/model/Cookie;
    .end local v8    # "adAnalytics":Lccsancom/vungle/warren/analytics/AdAnalytics;
    .end local v20    # "appId":Ljava/lang/String;
    .end local v21    # "assetDir":Ljava/io/File;
    .end local v22    # "data":Lccsanandroid/util/Pair;, "Lccsanandroid/util/Pair<Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/model/Placement;>;"
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Lccsancom/vungle/warren/error/VungleException;
    new-instance v2, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    invoke-direct {v2, v0}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lccsancom/vungle/warren/error/VungleException;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 200
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->doInBackground([Ljava/lang/Void;)Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)V
    .locals 4
    .param p1, "result"    # Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    .line 343
    invoke-super {p0, p1}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->onPostExecute(Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)V

    .line 345
    invoke-virtual {p0}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->fullscreenCallback:Lccsancom/vungle/warren/PresentationFactory$FullScreenCallback;

    if-eqz v0, :cond_1

    .line 346
    invoke-static {p1}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$100(Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lccsancom/vungle/warren/error/VungleException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    invoke-static {}, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$100(Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lccsancom/vungle/warren/error/VungleException;

    move-result-object v1

    const-string v2, "Exception on creating presenter"

    invoke-static {v0, v2, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    iget-object v0, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->fullscreenCallback:Lccsancom/vungle/warren/PresentationFactory$FullScreenCallback;

    new-instance v1, Lccsanandroid/util/Pair;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$100(Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lccsancom/vungle/warren/error/VungleException;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lccsancom/vungle/warren/PresentationFactory$FullScreenCallback;->onResult(Lccsanandroid/util/Pair;Lccsancom/vungle/warren/error/VungleException;)V

    .line 349
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->fullAdWidget:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {p1}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$200(Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lccsancom/vungle/warren/ui/view/VungleWebClient;

    move-result-object v1

    new-instance v2, Lccsancom/vungle/warren/ui/JavascriptBridge;

    invoke-static {p1}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$300(Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    move-result-object v3

    invoke-direct {v2, v3}, Lccsancom/vungle/warren/ui/JavascriptBridge;-><init>(Lccsancom/vungle/warren/ui/JavascriptBridge$MraidHandler;)V

    invoke-virtual {v0, v1, v2}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->linkWebView(Lccsanandroid/webkit/WebViewClient;Lccsancom/vungle/warren/ui/JavascriptBridge;)V

    .line 353
    iget-object v0, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->fullscreenCallback:Lccsancom/vungle/warren/PresentationFactory$FullScreenCallback;

    new-instance v1, Lccsanandroid/util/Pair;

    invoke-static {p1}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$400(Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lccsancom/vungle/warren/ui/contract/AdContract$AdView;

    move-result-object v2

    invoke-static {p1}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$300(Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$100(Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lccsancom/vungle/warren/error/VungleException;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lccsancom/vungle/warren/PresentationFactory$FullScreenCallback;->onResult(Lccsanandroid/util/Pair;Lccsancom/vungle/warren/error/VungleException;)V

    .line 355
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 200
    check-cast p1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->onPostExecute(Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)V

    return-void
.end method
