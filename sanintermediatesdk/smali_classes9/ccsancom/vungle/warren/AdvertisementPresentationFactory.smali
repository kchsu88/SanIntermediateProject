.class public Lccsancom/vungle/warren/AdvertisementPresentationFactory;
.super Ljava/lang/Object;
.source "AdvertisementPresentationFactory.java"

# interfaces
.implements Lccsancom/vungle/warren/PresentationFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;,
        Lccsancom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;,
        Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;,
        Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;
    }
.end annotation


# static fields
.field private static final EXTRA_ADVERTISEMENT:Ljava/lang/String; = "ADV_FACTORY_ADVERTISEMENT"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final adLoader:Lccsancom/vungle/warren/AdLoader;

.field private apiClient:Lccsancom/vungle/warren/VungleApiClient;

.field private currentAdvertisement:Lccsancom/vungle/warren/model/Advertisement;

.field private final jobRunner:Lccsancom/vungle/warren/tasks/JobRunner;

.field private final omTrackerFactory:Lccsancom/vungle/warren/omsdk/OMTracker$Factory;

.field private onModelLoadListener:Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;

.field private repository:Lccsancom/vungle/warren/persistence/Repository;

.field private final sessionData:Lccsancom/vungle/warren/SessionData;

.field private task:Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;

.field private final taskExecutor:Ljava/util/concurrent/ExecutorService;

.field private vungleStaticApi:Lccsancom/vungle/warren/VungleStaticApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/VungleStaticApi;Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/VungleApiClient;Lccsancom/vungle/warren/tasks/JobRunner;Lccsancom/vungle/warren/RuntimeValues;Lccsancom/vungle/warren/omsdk/OMTracker$Factory;Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "adLoader"    # Lccsancom/vungle/warren/AdLoader;
    .param p2, "vungleStaticApi"    # Lccsancom/vungle/warren/VungleStaticApi;
    .param p3, "repository"    # Lccsancom/vungle/warren/persistence/Repository;
    .param p4, "vungleApiClient"    # Lccsancom/vungle/warren/VungleApiClient;
    .param p5, "jobRunner"    # Lccsancom/vungle/warren/tasks/JobRunner;
    .param p6, "runtimeValues"    # Lccsancom/vungle/warren/RuntimeValues;
    .param p7, "omTrackerFactory"    # Lccsancom/vungle/warren/omsdk/OMTracker$Factory;
    .param p8, "taskExecutor"    # Ljava/util/concurrent/ExecutorService;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    new-instance v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$1;

    invoke-direct {v0, p0}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$1;-><init>(Lccsancom/vungle/warren/AdvertisementPresentationFactory;)V

    iput-object v0, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->onModelLoadListener:Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;

    .line 81
    iput-object p2, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->vungleStaticApi:Lccsancom/vungle/warren/VungleStaticApi;

    .line 82
    iput-object p3, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->repository:Lccsancom/vungle/warren/persistence/Repository;

    .line 83
    iput-object p4, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->apiClient:Lccsancom/vungle/warren/VungleApiClient;

    .line 84
    iput-object p5, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->jobRunner:Lccsancom/vungle/warren/tasks/JobRunner;

    .line 85
    iput-object p1, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->adLoader:Lccsancom/vungle/warren/AdLoader;

    .line 86
    iget-object v0, p6, Lccsancom/vungle/warren/RuntimeValues;->sessionData:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/SessionData;

    iput-object v0, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->sessionData:Lccsancom/vungle/warren/SessionData;

    .line 87
    iput-object p7, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->omTrackerFactory:Lccsancom/vungle/warren/omsdk/OMTracker$Factory;

    .line 88
    iput-object p8, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->taskExecutor:Ljava/util/concurrent/ExecutorService;

    .line 89
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lccsancom/vungle/warren/AdvertisementPresentationFactory;Lccsancom/vungle/warren/model/Advertisement;)Lccsancom/vungle/warren/model/Advertisement;
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/AdvertisementPresentationFactory;
    .param p1, "x1"    # Lccsancom/vungle/warren/model/Advertisement;

    .line 56
    iput-object p1, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->currentAdvertisement:Lccsancom/vungle/warren/model/Advertisement;

    return-object p1
.end method

.method private cancelTask()V
    .locals 2

    .line 135
    iget-object v0, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->task:Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;

    if-eqz v0, :cond_0

    .line 136
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->cancel(Z)Z

    .line 137
    iget-object v0, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->task:Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;

    invoke-virtual {v0}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->clear()V

    .line 139
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 178
    invoke-direct {p0}, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->cancelTask()V

    .line 179
    return-void
.end method

.method public getFullScreenPresentation(Lccsanandroid/content/Context;Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/ui/view/FullAdWidget;Lccsancom/vungle/warren/ui/state/OptionsState;Lccsancom/vungle/warren/ui/CloseDelegate;Lccsancom/vungle/warren/ui/OrientationDelegate;Lccsanandroid/os/Bundle;Lccsancom/vungle/warren/PresentationFactory$FullScreenCallback;)V
    .locals 20
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "request"    # Lccsancom/vungle/warren/AdRequest;
    .param p3, "fullAdWidget"    # Lccsancom/vungle/warren/ui/view/FullAdWidget;
    .param p4, "optionsState"    # Lccsancom/vungle/warren/ui/state/OptionsState;
    .param p5, "closeDelegate"    # Lccsancom/vungle/warren/ui/CloseDelegate;
    .param p6, "orientationDelegate"    # Lccsancom/vungle/warren/ui/OrientationDelegate;
    .param p7, "savedState"    # Lccsanandroid/os/Bundle;
    .param p8, "fullscreenCallback"    # Lccsancom/vungle/warren/PresentationFactory$FullScreenCallback;

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v13, p5

    move-object/from16 v12, p6

    move-object/from16 v16, p7

    move-object/from16 v14, p8

    .line 111
    invoke-direct/range {p0 .. p0}, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->cancelTask()V

    .line 112
    new-instance v15, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;

    move-object v1, v15

    iget-object v3, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->adLoader:Lccsancom/vungle/warren/AdLoader;

    iget-object v5, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v6, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->vungleStaticApi:Lccsancom/vungle/warren/VungleStaticApi;

    iget-object v7, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->jobRunner:Lccsancom/vungle/warren/tasks/JobRunner;

    iget-object v8, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->apiClient:Lccsancom/vungle/warren/VungleApiClient;

    iget-object v9, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->sessionData:Lccsancom/vungle/warren/SessionData;

    move-object/from16 v17, v15

    iget-object v15, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->onModelLoadListener:Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;

    move-object/from16 v18, v17

    move-object/from16 v19, v1

    iget-object v1, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->omTrackerFactory:Lccsancom/vungle/warren/omsdk/OMTracker$Factory;

    move-object/from16 v17, v1

    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v17}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;-><init>(Lccsanandroid/content/Context;Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/VungleStaticApi;Lccsancom/vungle/warren/tasks/JobRunner;Lccsancom/vungle/warren/VungleApiClient;Lccsancom/vungle/warren/SessionData;Lccsancom/vungle/warren/ui/view/FullAdWidget;Lccsancom/vungle/warren/ui/state/OptionsState;Lccsancom/vungle/warren/ui/OrientationDelegate;Lccsancom/vungle/warren/ui/CloseDelegate;Lccsancom/vungle/warren/PresentationFactory$FullScreenCallback;Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;Lccsanandroid/os/Bundle;Lccsancom/vungle/warren/omsdk/OMTracker$Factory;)V

    move-object/from16 v1, v18

    iput-object v1, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->task:Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;

    .line 131
    iget-object v2, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->taskExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lccsanandroid/os/AsyncTask;

    .line 132
    return-void
.end method

.method public getNativeViewPresentation(Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/AdConfig;Lccsancom/vungle/warren/ui/CloseDelegate;Lccsancom/vungle/warren/PresentationFactory$ViewCallback;)V
    .locals 15
    .param p1, "request"    # Lccsancom/vungle/warren/AdRequest;
    .param p2, "adConfig"    # Lccsancom/vungle/warren/AdConfig;
    .param p3, "closeDelegate"    # Lccsancom/vungle/warren/ui/CloseDelegate;
    .param p4, "viewCallback"    # Lccsancom/vungle/warren/PresentationFactory$ViewCallback;

    .line 152
    move-object v0, p0

    invoke-direct {p0}, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->cancelTask()V

    .line 153
    new-instance v14, Lccsancom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;

    iget-object v4, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->adLoader:Lccsancom/vungle/warren/AdLoader;

    iget-object v5, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v6, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->vungleStaticApi:Lccsancom/vungle/warren/VungleStaticApi;

    iget-object v7, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->jobRunner:Lccsancom/vungle/warren/tasks/JobRunner;

    iget-object v10, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->sessionData:Lccsancom/vungle/warren/SessionData;

    iget-object v11, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->onModelLoadListener:Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;

    iget-object v12, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->apiClient:Lccsancom/vungle/warren/VungleApiClient;

    iget-object v13, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->omTrackerFactory:Lccsancom/vungle/warren/omsdk/OMTracker$Factory;

    const/4 v9, 0x0

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v13}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$NativeViewPresentationTask;-><init>(Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/AdConfig;Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/VungleStaticApi;Lccsancom/vungle/warren/tasks/JobRunner;Lccsancom/vungle/warren/PresentationFactory$ViewCallback;Lccsanandroid/os/Bundle;Lccsancom/vungle/warren/SessionData;Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;Lccsancom/vungle/warren/VungleApiClient;Lccsancom/vungle/warren/omsdk/OMTracker$Factory;)V

    iput-object v14, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->task:Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;

    .line 168
    iget-object v1, v0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->taskExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v14, v1, v2}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lccsanandroid/os/AsyncTask;

    .line 169
    return-void
.end method

.method public saveState(Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Lccsanandroid/os/Bundle;

    .line 173
    iget-object v0, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->currentAdvertisement:Lccsancom/vungle/warren/model/Advertisement;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "ADV_FACTORY_ADVERTISEMENT"

    invoke-virtual {p1, v1, v0}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method
