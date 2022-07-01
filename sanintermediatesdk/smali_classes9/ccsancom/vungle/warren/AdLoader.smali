.class public Lccsancom/vungle/warren/AdLoader;
.super Ljava/lang/Object;
.source "AdLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/AdLoader$DownloadAdCallback;,
        Lccsancom/vungle/warren/AdLoader$Operation;,
        Lccsancom/vungle/warren/AdLoader$Priority;,
        Lccsancom/vungle/warren/AdLoader$ReschedulePolicy;,
        Lccsancom/vungle/warren/AdLoader$DownloadCallback;
    }
.end annotation


# static fields
.field public static final DEFAULT_LOAD_OPTIMIZATION_ENABLED:Z = false

.field private static final DOWNLOAD_AD_ASSETS_CONTEXT:Ljava/lang/String; = "AdLoader#downloadAdAssets; loadAd sequence"

.field private static final DOWNLOAD_AD_CALLBACK_ON_DOWNLOAD_COMPLETED_CONTEXT:Ljava/lang/String; = "AdLoader#DownloadAdCallback#onDownloadCompleted; loadAd sequence"

.field public static final EXPONENTIAL_RATE:J = 0x2L

.field private static final FETCH_AD_METADATA_CONTEXT:Ljava/lang/String; = "AdLoader#fetchAdMetadata; loadAd sequence"

.field private static final GET_ASSET_DOWNLOAD_LISTENER_CONTEXT:Ljava/lang/String; = "AdLoader#getAssetDownloadListener; loadAd sequence"

.field private static final LOAD_AD_EXECUTE_CONTEXT:Ljava/lang/String; = "AdLoader#loadAd#execute; loadAd sequence"

.field private static final NOT_A_DIR:Ljava/lang/String; = "not a dir"

.field private static final ON_ASSET_DOWNLOAD_FINISHED_CONTEXT:Ljava/lang/String; = "AdLoader#onAssetDownloadFinished; loadAd sequence"

.field private static final OP_ID_AND_ADVERTISEMENT_FORMAT:Ljava/lang/String; = "request = %1$s; advertisement = %2$s"

.field private static final PLACEMENT_ID_AND_ADVERTISEMENT_FORMAT_2_3:Ljava/lang/String; = "request = %2$s; advertisement = %3$s"

.field private static final PLACEMENT_ID_AND_ADVERTISEMENT_FORMAT_3_4:Ljava/lang/String; = "request = %3$s; advertisement = %4$s"

.field public static final RETRY_COUNT:I = 0x5

.field public static final RETRY_DELAY:J = 0x7d0L

.field private static final STRING_AND_OP_ID_FORMAT:Ljava/lang/String; = "%1$s; request = %2$s"

.field private static final TAG:Ljava/lang/String;

.field public static final TT_DOWNLOAD_CONTEXT:Ljava/lang/String; = "ttDownloadContext"


# instance fields
.field private adLoadOptimizationEnabled:Z

.field private final cacheManager:Lccsancom/vungle/warren/persistence/CacheManager;

.field private final downloader:Lccsancom/vungle/warren/downloader/Downloader;

.field private final jobRunnerRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lccsancom/vungle/warren/tasks/JobRunner;",
            ">;"
        }
    .end annotation
.end field

.field private final loadOperations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lccsancom/vungle/warren/AdRequest;",
            "Lccsancom/vungle/warren/AdLoader$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final omInjector:Lccsancom/vungle/warren/omsdk/OMInjector;

.field private final pendingOperations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lccsancom/vungle/warren/AdRequest;",
            "Lccsancom/vungle/warren/AdLoader$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final repository:Lccsancom/vungle/warren/persistence/Repository;

.field private final runtimeValues:Lccsancom/vungle/warren/RuntimeValues;

.field private final sdkExecutors:Lccsancom/vungle/warren/utility/Executors;

.field private final sequence:Lccsancom/vungle/warren/OperationSequence;

.field private sequenceLoadingRequest:Lccsancom/vungle/warren/AdRequest;

.field private final startingOperations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/vungle/warren/AdLoader$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final visionController:Lccsancom/vungle/warren/VisionController;

.field private final vungleApi:Lccsancom/vungle/warren/VungleStaticApi;

.field private final vungleApiClient:Lccsancom/vungle/warren/VungleApiClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    const-class v0, Lccsancom/vungle/warren/AdLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/AdLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsancom/vungle/warren/utility/Executors;Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/VungleApiClient;Lccsancom/vungle/warren/persistence/CacheManager;Lccsancom/vungle/warren/downloader/Downloader;Lccsancom/vungle/warren/RuntimeValues;Lccsancom/vungle/warren/VungleStaticApi;Lccsancom/vungle/warren/VisionController;Lccsancom/vungle/warren/OperationSequence;Lccsancom/vungle/warren/omsdk/OMInjector;)V
    .locals 1
    .param p1, "sdkExecutors"    # Lccsancom/vungle/warren/utility/Executors;
    .param p2, "repository"    # Lccsancom/vungle/warren/persistence/Repository;
    .param p3, "vungleApiClient"    # Lccsancom/vungle/warren/VungleApiClient;
    .param p4, "cacheManager"    # Lccsancom/vungle/warren/persistence/CacheManager;
    .param p5, "downloader"    # Lccsancom/vungle/warren/downloader/Downloader;
    .param p6, "runtimeValues"    # Lccsancom/vungle/warren/RuntimeValues;
    .param p7, "vungleApi"    # Lccsancom/vungle/warren/VungleStaticApi;
    .param p8, "visionController"    # Lccsancom/vungle/warren/VisionController;
    .param p9, "sequence"    # Lccsancom/vungle/warren/OperationSequence;
    .param p10, "omInjector"    # Lccsancom/vungle/warren/omsdk/OMInjector;

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/AdLoader;->loadOperations:Ljava/util/Map;

    .line 269
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/AdLoader;->pendingOperations:Ljava/util/Map;

    .line 270
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/AdLoader;->startingOperations:Ljava/util/List;

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/vungle/warren/AdLoader;->sequenceLoadingRequest:Lccsancom/vungle/warren/AdRequest;

    .line 289
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/AdLoader;->jobRunnerRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/vungle/warren/AdLoader;->adLoadOptimizationEnabled:Z

    .line 312
    iput-object p1, p0, Lccsancom/vungle/warren/AdLoader;->sdkExecutors:Lccsancom/vungle/warren/utility/Executors;

    .line 313
    iput-object p2, p0, Lccsancom/vungle/warren/AdLoader;->repository:Lccsancom/vungle/warren/persistence/Repository;

    .line 314
    iput-object p3, p0, Lccsancom/vungle/warren/AdLoader;->vungleApiClient:Lccsancom/vungle/warren/VungleApiClient;

    .line 315
    iput-object p4, p0, Lccsancom/vungle/warren/AdLoader;->cacheManager:Lccsancom/vungle/warren/persistence/CacheManager;

    .line 316
    iput-object p5, p0, Lccsancom/vungle/warren/AdLoader;->downloader:Lccsancom/vungle/warren/downloader/Downloader;

    .line 317
    iput-object p6, p0, Lccsancom/vungle/warren/AdLoader;->runtimeValues:Lccsancom/vungle/warren/RuntimeValues;

    .line 318
    iput-object p7, p0, Lccsancom/vungle/warren/AdLoader;->vungleApi:Lccsancom/vungle/warren/VungleStaticApi;

    .line 319
    iput-object p8, p0, Lccsancom/vungle/warren/AdLoader;->visionController:Lccsancom/vungle/warren/VisionController;

    .line 320
    iput-object p9, p0, Lccsancom/vungle/warren/AdLoader;->sequence:Lccsancom/vungle/warren/OperationSequence;

    .line 321
    iput-object p10, p0, Lccsancom/vungle/warren/AdLoader;->omInjector:Lccsancom/vungle/warren/omsdk/OMInjector;

    .line 322
    return-void
.end method

.method static synthetic access$002(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdRequest;)Lccsancom/vungle/warren/AdRequest;
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/AdLoader;
    .param p1, "x1"    # Lccsancom/vungle/warren/AdRequest;

    .line 97
    iput-object p1, p0, Lccsancom/vungle/warren/AdLoader;->sequenceLoadingRequest:Lccsancom/vungle/warren/AdRequest;

    return-object p1
.end method

.method static synthetic access$100(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/OperationSequence;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/AdLoader;

    .line 97
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader;->sequence:Lccsancom/vungle/warren/OperationSequence;

    return-object v0
.end method

.method static synthetic access$1000(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/VungleStaticApi;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/AdLoader;

    .line 97
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader;->vungleApi:Lccsancom/vungle/warren/VungleStaticApi;

    return-object v0
.end method

.method static synthetic access$1100(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/AdConfig$AdSize;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/AdLoader;
    .param p1, "x1"    # Lccsancom/vungle/warren/model/Placement;
    .param p2, "x2"    # Lccsancom/vungle/warren/AdConfig$AdSize;

    .line 97
    invoke-direct {p0, p1, p2}, Lccsancom/vungle/warren/AdLoader;->isSizeInvalid(Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/AdConfig$AdSize;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/model/Advertisement;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/AdLoader;
    .param p1, "x1"    # Lccsancom/vungle/warren/model/Advertisement;

    .line 97
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/AdLoader;->canReDownload(Lccsancom/vungle/warren/model/Advertisement;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .line 97
    sget-object v0, Lccsancom/vungle/warren/AdLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/RuntimeValues;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/AdLoader;

    .line 97
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader;->runtimeValues:Lccsancom/vungle/warren/RuntimeValues;

    return-object v0
.end method

.method static synthetic access$1500(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/CacheManager;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/AdLoader;

    .line 97
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader;->cacheManager:Lccsancom/vungle/warren/persistence/CacheManager;

    return-object v0
.end method

.method static synthetic access$1600(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdRequest;Z)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/AdLoader;
    .param p1, "x1"    # Lccsancom/vungle/warren/AdRequest;
    .param p2, "x2"    # Z

    .line 97
    invoke-direct {p0, p1, p2}, Lccsancom/vungle/warren/AdLoader;->setLoading(Lccsancom/vungle/warren/AdRequest;Z)V

    return-void
.end method

.method static synthetic access$1700(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/AdLoader$DownloadCallback;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/AdLoader;
    .param p1, "x1"    # Lccsancom/vungle/warren/AdLoader$Operation;
    .param p2, "x2"    # Lccsancom/vungle/warren/model/Advertisement;
    .param p3, "x3"    # Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lccsancom/vungle/warren/AdLoader;->downloadAdAssets(Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/AdLoader$DownloadCallback;)V

    return-void
.end method

.method static synthetic access$1800(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/persistence/Repository;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/AdLoader;
    .param p1, "x1"    # Lccsancom/vungle/warren/AdLoader$Operation;
    .param p2, "x2"    # Lccsancom/vungle/warren/persistence/Repository;

    .line 97
    invoke-direct {p0, p1, p2}, Lccsancom/vungle/warren/AdLoader;->isReadyForHBP(Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/persistence/Repository;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/AdLoader$DownloadCallback;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/AdLoader;
    .param p1, "x1"    # Lccsancom/vungle/warren/AdLoader$Operation;
    .param p2, "x2"    # Lccsancom/vungle/warren/model/Placement;
    .param p3, "x3"    # Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lccsancom/vungle/warren/AdLoader;->fetchAdMetadata(Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/AdLoader$DownloadCallback;)V

    return-void
.end method

.method static synthetic access$200(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdLoader$Operation;I)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/AdLoader;
    .param p1, "x1"    # Lccsancom/vungle/warren/AdLoader$Operation;
    .param p2, "x2"    # I

    .line 97
    invoke-direct {p0, p1, p2}, Lccsancom/vungle/warren/AdLoader;->onError(Lccsancom/vungle/warren/AdLoader$Operation;I)V

    return-void
.end method

.method static synthetic access$2000(Lccsancom/vungle/warren/AdLoader;Ljava/lang/Throwable;)Lccsancom/vungle/warren/error/VungleException;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/AdLoader;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 97
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/AdLoader;->retrofitToVungleException(Ljava/lang/Throwable;)Lccsancom/vungle/warren/error/VungleException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/VungleApiClient;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/AdLoader;

    .line 97
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader;->vungleApiClient:Lccsancom/vungle/warren/VungleApiClient;

    return-object v0
.end method

.method static synthetic access$2200(Lccsancom/vungle/warren/AdLoader;I)Lccsancom/vungle/warren/error/VungleException;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/AdLoader;
    .param p1, "x1"    # I

    .line 97
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/AdLoader;->reposeCodeToVungleException(I)Lccsancom/vungle/warren/error/VungleException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/VisionController;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/AdLoader;

    .line 97
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader;->visionController:Lccsancom/vungle/warren/VisionController;

    return-object v0
.end method

.method static synthetic access$2400(Lccsancom/vungle/warren/AdLoader;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/AdLoader;
    .param p1, "x1"    # Ljava/lang/String;

    .line 97
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/AdLoader;->isUrlValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/utility/Executors;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/AdLoader;

    .line 97
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader;->sdkExecutors:Lccsancom/vungle/warren/utility/Executors;

    return-object v0
.end method

.method static synthetic access$2600(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/AdLoader$DownloadCallback;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/AdLoader;
    .param p1, "x1"    # Lccsancom/vungle/warren/AdLoader$Operation;
    .param p2, "x2"    # Lccsancom/vungle/warren/AdLoader$DownloadCallback;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/util/List;
    .param p5, "x5"    # Z

    .line 97
    invoke-direct/range {p0 .. p5}, Lccsancom/vungle/warren/AdLoader;->onAssetDownloadFinished(Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/AdLoader$DownloadCallback;Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$2700(Lccsancom/vungle/warren/AdLoader;Ljava/io/File;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/AdLoader;
    .param p1, "x1"    # Ljava/io/File;

    .line 97
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/AdLoader;->isZip(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/AdLoader$DownloadCallback;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/AdLoader;
    .param p1, "x1"    # Lccsancom/vungle/warren/AdLoader$Operation;
    .param p2, "x2"    # Lccsancom/vungle/warren/model/Advertisement;
    .param p3, "x3"    # Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lccsancom/vungle/warren/AdLoader;->injectOMIfNeeded(Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/AdLoader$DownloadCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/AdLoader$DownloadCallback;Lccsancom/vungle/warren/model/AdAsset;Lccsancom/vungle/warren/model/Advertisement;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/AdLoader;
    .param p1, "x1"    # Lccsancom/vungle/warren/AdLoader$Operation;
    .param p2, "x2"    # Lccsancom/vungle/warren/AdLoader$DownloadCallback;
    .param p3, "x3"    # Lccsancom/vungle/warren/model/AdAsset;
    .param p4, "x4"    # Lccsancom/vungle/warren/model/Advertisement;

    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/vungle/warren/AdLoader;->processTemplate(Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/AdLoader$DownloadCallback;Lccsancom/vungle/warren/model/AdAsset;Lccsancom/vungle/warren/model/Advertisement;)V

    return-void
.end method

.method static synthetic access$300(Lccsancom/vungle/warren/AdLoader;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/AdLoader;

    .line 97
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader;->startingOperations:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3000(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/model/Advertisement;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/AdLoader;
    .param p1, "x1"    # Lccsancom/vungle/warren/model/Advertisement;

    .line 97
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/AdLoader;->isAdLoadOptimizationEnabled(Lccsancom/vungle/warren/model/Advertisement;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lccsancom/vungle/warren/AdLoader;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/AdLoader;

    .line 97
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader;->loadOperations:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdLoader$Operation;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/AdLoader;
    .param p1, "x1"    # Lccsancom/vungle/warren/AdLoader$Operation;

    .line 97
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/AdLoader;->onChangePriority(Lccsancom/vungle/warren/AdLoader$Operation;)V

    return-void
.end method

.method static synthetic access$600(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdLoader$Operation;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/AdLoader;
    .param p1, "x1"    # Lccsancom/vungle/warren/AdLoader$Operation;

    .line 97
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/AdLoader;->startLoading(Lccsancom/vungle/warren/AdLoader$Operation;)V

    return-void
.end method

.method static synthetic access$700(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdRequest;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/AdLoader;
    .param p1, "x1"    # Lccsancom/vungle/warren/AdRequest;

    .line 97
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/AdLoader;->tryLoadNextInQueue(Lccsancom/vungle/warren/AdRequest;)V

    return-void
.end method

.method static synthetic access$800(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/Repository;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/AdLoader;

    .line 97
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader;->repository:Lccsancom/vungle/warren/persistence/Repository;

    return-object v0
.end method

.method private canReDownload(Lccsancom/vungle/warren/model/Advertisement;)Z
    .locals 7
    .param p1, "advertisement"    # Lccsancom/vungle/warren/model/Advertisement;

    .line 330
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Advertisement;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Advertisement;->getState()I

    move-result v1

    if-eq v1, v2, :cond_0

    goto :goto_3

    .line 334
    :cond_0
    iget-object v1, p0, Lccsancom/vungle/warren/AdLoader;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lccsancom/vungle/warren/persistence/Repository;->loadAllAdAssets(Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 335
    .local v1, "adAssets":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/AdAsset;>;"
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 339
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/vungle/warren/model/AdAsset;

    .line 341
    .local v4, "asset":Lccsancom/vungle/warren/model/AdAsset;
    iget v5, v4, Lccsancom/vungle/warren/model/AdAsset;->fileType:I

    if-ne v5, v2, :cond_3

    .line 342
    new-instance v5, Ljava/io/File;

    iget-object v6, v4, Lccsancom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    .local v5, "file":Ljava/io/File;
    invoke-direct {p0, v5, v4}, Lccsancom/vungle/warren/AdLoader;->fileIsValid(Ljava/io/File;Lccsancom/vungle/warren/model/AdAsset;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 344
    return v0

    .line 343
    .end local v5    # "file":Ljava/io/File;
    :cond_2
    goto :goto_1

    .line 346
    :cond_3
    iget-object v5, v4, Lccsancom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 347
    return v0

    .line 346
    :cond_4
    :goto_1
    nop

    .line 349
    .end local v4    # "asset":Lccsancom/vungle/warren/model/AdAsset;
    goto :goto_0

    .line 351
    :cond_5
    return v2

    .line 336
    :cond_6
    :goto_2
    return v0

    .line 331
    .end local v1    # "adAssets":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/AdAsset;>;"
    :cond_7
    :goto_3
    return v0
.end method

.method private checkAndUpdateHBPPlacementBannerSize(Ljava/lang/String;Lccsancom/vungle/warren/AdConfig$AdSize;)V
    .locals 3
    .param p1, "placementId"    # Ljava/lang/String;
    .param p2, "newAdSize"    # Lccsancom/vungle/warren/AdConfig$AdSize;

    .line 491
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader;->repository:Lccsancom/vungle/warren/persistence/Repository;

    const-class v1, Lccsancom/vungle/warren/model/Placement;

    new-instance v2, Lccsancom/vungle/warren/AdLoader$3;

    invoke-direct {v2, p0, p2}, Lccsancom/vungle/warren/AdLoader$3;-><init>(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdConfig$AdSize;)V

    invoke-virtual {v0, p1, v1, v2}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;Lccsancom/vungle/warren/persistence/Repository$LoadCallback;)V

    .line 505
    return-void
.end method

.method private downloadAdAssets(Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/AdLoader$DownloadCallback;)V
    .locals 17
    .param p1, "op"    # Lccsancom/vungle/warren/AdLoader$Operation;
    .param p2, "advertisement"    # Lccsancom/vungle/warren/model/Advertisement;
    .param p3, "downloadCallback"    # Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    .line 1039
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    iget-object v0, v8, Lccsancom/vungle/warren/AdLoader$Operation;->requests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1043
    invoke-virtual/range {p2 .. p2}, Lccsancom/vungle/warren/model/Advertisement;->getDownloadableUrls()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "AdLoader#downloadAdAssets; loadAd sequence"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1044
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1045
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lccsanandroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 1053
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 1046
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_1
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v4, v8, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    aput-object v4, v0, v3

    aput-object v9, v0, v5

    .line 1047
    const-string v3, "One or more ad asset URLs is empty or not valid;request = %1$s; advertisement = %2$s"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1046
    invoke-static {v2, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    const/16 v2, 0xb

    invoke-direct {v0, v2}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, v8, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    const/4 v3, 0x0

    invoke-interface {v10, v0, v2, v3}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 1050
    sget-object v0, Lccsancom/vungle/warren/AdLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Aborting, Failed to download Ad assets for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    return-void

    .line 1055
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    new-instance v0, Lccsancom/vungle/warren/DownloadCallbackWrapper;

    iget-object v1, v7, Lccsancom/vungle/warren/AdLoader;->sdkExecutors:Lccsancom/vungle/warren/utility/Executors;

    invoke-interface {v1}, Lccsancom/vungle/warren/utility/Executors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Lccsancom/vungle/warren/DownloadCallbackWrapper;-><init>(Ljava/util/concurrent/ExecutorService;Lccsancom/vungle/warren/AdLoader$DownloadCallback;)V

    move-object v11, v0

    .line 1058
    .local v11, "callback":Lccsancom/vungle/warren/AdLoader$DownloadCallback;
    const/16 v1, 0x1a

    :try_start_0
    iget-object v0, v7, Lccsancom/vungle/warren/AdLoader;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v9}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1065
    nop

    .line 1071
    iget-object v0, v7, Lccsancom/vungle/warren/AdLoader;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual/range {p2 .. p2}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lccsancom/vungle/warren/persistence/Repository;->loadAllAdAssets(Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/util/List;

    .line 1072
    .local v12, "assets":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/AdAsset;>;"
    if-nez v12, :cond_3

    .line 1073
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v4, v8, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    aput-object v4, v0, v3

    aput-object v9, v0, v5

    .line 1074
    const-string v3, "Cannot load all ad assets; op.request = %1$s; advertisement = %2$s"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1073
    invoke-static {v2, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v1, v8, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual/range {p2 .. p2}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v0, v1, v2}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 1077
    return-void

    .line 1080
    :cond_3
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsancom/vungle/warren/model/AdAsset;

    .line 1081
    .local v6, "asset":Lccsancom/vungle/warren/model/AdAsset;
    iget v13, v6, Lccsancom/vungle/warren/model/AdAsset;->status:I

    const/4 v14, 0x3

    const/16 v15, 0x18

    if-ne v13, v14, :cond_5

    .line 1082
    new-instance v13, Ljava/io/File;

    iget-object v14, v6, Lccsancom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v13, v6}, Lccsancom/vungle/warren/AdLoader;->fileIsValid(Ljava/io/File;Lccsancom/vungle/warren/model/AdAsset;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1083
    goto :goto_2

    .line 1086
    :cond_4
    iget v13, v6, Lccsancom/vungle/warren/model/AdAsset;->fileType:I

    if-ne v13, v5, :cond_5

    .line 1087
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, v8, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    aput-object v1, v0, v3

    aput-object v9, v0, v5

    .line 1088
    const-string v1, "Cannot download ad assets - asset filetype is zip_asset;request = %1$s; advertisement = %2$s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1087
    invoke-static {v2, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v0, v15}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v1, v8, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual/range {p2 .. p2}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v0, v1, v2}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 1091
    return-void

    .line 1095
    :cond_5
    iget v13, v6, Lccsancom/vungle/warren/model/AdAsset;->status:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_6

    iget v13, v6, Lccsancom/vungle/warren/model/AdAsset;->fileType:I

    if-nez v13, :cond_6

    .line 1096
    goto :goto_2

    .line 1099
    :cond_6
    iget-object v13, v6, Lccsancom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    invoke-static {v13}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1100
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, v8, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    aput-object v1, v0, v3

    aput-object v9, v0, v5

    .line 1101
    const-string v1, "Cannot download ad assets - empty ;request = %1$s; advertisement = %2$s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1100
    invoke-static {v2, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v0, v15}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v1, v8, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual/range {p2 .. p2}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v0, v1, v2}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 1104
    return-void

    .line 1107
    :cond_7
    iget v13, v8, Lccsancom/vungle/warren/AdLoader$Operation;->priority:I

    invoke-direct {v7, v13, v6}, Lccsancom/vungle/warren/AdLoader;->getDownloadRequest(ILccsancom/vungle/warren/model/AdAsset;)Lccsancom/vungle/warren/downloader/DownloadRequest;

    move-result-object v13

    .line 1109
    .local v13, "downloadRequest":Lccsancom/vungle/warren/downloader/DownloadRequest;
    iget v14, v6, Lccsancom/vungle/warren/model/AdAsset;->status:I

    if-ne v14, v5, :cond_8

    .line 1110
    iget-object v14, v7, Lccsancom/vungle/warren/AdLoader;->downloader:Lccsancom/vungle/warren/downloader/Downloader;

    move-object/from16 v16, v2

    const-wide/16 v1, 0x3e8

    invoke-interface {v14, v13, v1, v2}, Lccsancom/vungle/warren/downloader/Downloader;->cancelAndAwait(Lccsancom/vungle/warren/downloader/DownloadRequest;J)Z

    .line 1111
    iget v1, v8, Lccsancom/vungle/warren/AdLoader$Operation;->priority:I

    invoke-direct {v7, v1, v6}, Lccsancom/vungle/warren/AdLoader;->getDownloadRequest(ILccsancom/vungle/warren/model/AdAsset;)Lccsancom/vungle/warren/downloader/DownloadRequest;

    move-result-object v13

    goto :goto_3

    .line 1109
    :cond_8
    move-object/from16 v16, v2

    .line 1114
    :goto_3
    sget-object v1, Lccsancom/vungle/warren/AdLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Starting download for "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    iput v5, v6, Lccsancom/vungle/warren/model/AdAsset;->status:I

    .line 1117
    :try_start_1
    iget-object v1, v7, Lccsancom/vungle/warren/AdLoader;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v1, v6}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_1
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1123
    nop

    .line 1124
    iget-object v1, v8, Lccsancom/vungle/warren/AdLoader$Operation;->requests:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1125
    .end local v6    # "asset":Lccsancom/vungle/warren/model/AdAsset;
    .end local v13    # "downloadRequest":Lccsancom/vungle/warren/downloader/DownloadRequest;
    move-object/from16 v2, v16

    const/16 v1, 0x1a

    goto/16 :goto_2

    .line 1118
    .restart local v6    # "asset":Lccsancom/vungle/warren/model/AdAsset;
    .restart local v13    # "downloadRequest":Lccsancom/vungle/warren/downloader/DownloadRequest;
    :catch_0
    move-exception v0

    .line 1119
    .local v0, "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v6, v1, v3

    aput-object v0, v1, v5

    .line 1120
    const-string v2, "Can\'t save asset %1$s; exception = %2$s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1119
    move-object/from16 v2, v16

    invoke-static {v2, v1}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    new-instance v1, Lccsancom/vungle/warren/error/VungleException;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, v8, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual/range {p2 .. p2}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v1, v2, v3}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 1122
    return-void

    .line 1128
    .end local v0    # "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    .end local v6    # "asset":Lccsancom/vungle/warren/model/AdAsset;
    .end local v13    # "downloadRequest":Lccsancom/vungle/warren/downloader/DownloadRequest;
    :cond_9
    iget-object v0, v8, Lccsancom/vungle/warren/AdLoader$Operation;->requests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 1129
    invoke-virtual/range {p2 .. p2}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v11

    invoke-direct/range {v1 .. v6}, Lccsancom/vungle/warren/AdLoader;->onAssetDownloadFinished(Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/AdLoader$DownloadCallback;Ljava/lang/String;Ljava/util/List;Z)V

    .line 1130
    return-void

    .line 1133
    :cond_a
    sget-object v0, Lccsancom/vungle/warren/AdLoader;->TAG:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, v8, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    aput-object v2, v1, v3

    .line 1134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "Start to download assets,  request = %1$s at: %2$d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1133
    const-string v2, "ttDownloadContext"

    invoke-static {v5, v0, v2, v1}, Lccsancom/vungle/warren/VungleLogger;->verbose(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    invoke-direct {v7, v9, v8, v11}, Lccsancom/vungle/warren/AdLoader;->getAssetDownloadListener(Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/AdLoader$DownloadCallback;)Lccsancom/vungle/warren/downloader/AssetDownloadListener;

    move-result-object v0

    .line 1136
    .local v0, "downloadListener":Lccsancom/vungle/warren/downloader/AssetDownloadListener;
    iget-object v1, v8, Lccsancom/vungle/warren/AdLoader$Operation;->requests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/downloader/DownloadRequest;

    .line 1137
    .local v2, "downloadRequest":Lccsancom/vungle/warren/downloader/DownloadRequest;
    iget-object v3, v7, Lccsancom/vungle/warren/AdLoader;->downloader:Lccsancom/vungle/warren/downloader/Downloader;

    invoke-interface {v3, v2, v0}, Lccsancom/vungle/warren/downloader/Downloader;->download(Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;)V

    .line 1138
    .end local v2    # "downloadRequest":Lccsancom/vungle/warren/downloader/DownloadRequest;
    goto :goto_4

    .line 1139
    :cond_b
    return-void

    .line 1059
    .end local v0    # "downloadListener":Lccsancom/vungle/warren/downloader/AssetDownloadListener;
    .end local v12    # "assets":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/AdAsset;>;"
    :catch_1
    move-exception v0

    .line 1060
    .local v0, "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v4, v8, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    aput-object v4, v1, v3

    aput-object v9, v1, v5

    .line 1061
    const-string v3, "Cannot save advertisement op.request = %1$s; advertisement = %2$s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1060
    invoke-static {v2, v1}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    new-instance v1, Lccsancom/vungle/warren/error/VungleException;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, v8, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual/range {p2 .. p2}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v1, v2, v3}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 1064
    return-void
.end method

.method private fetchAdMetadata(Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/AdLoader$DownloadCallback;)V
    .locals 12
    .param p1, "op"    # Lccsancom/vungle/warren/AdLoader$Operation;
    .param p2, "placement"    # Lccsancom/vungle/warren/model/Placement;
    .param p3, "downloadCallback"    # Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    .line 778
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader;->runtimeValues:Lccsancom/vungle/warren/RuntimeValues;

    iget-object v0, v0, Lccsancom/vungle/warren/RuntimeValues;->headerBiddingCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/HeaderBiddingCallback;

    .line 780
    .local v0, "bidTokenCallBack":Lccsancom/vungle/warren/HeaderBiddingCallback;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 782
    .local v8, "requestStartTime":J
    sget-object v1, Lccsancom/vungle/warren/AdLoader;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 783
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "Start to request ad, request = %1$s, at: %2$d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 782
    const-string v3, "ttDownloadContext"

    invoke-static {v4, v1, v3, v2}, Lccsancom/vungle/warren/VungleLogger;->verbose(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    iget-object v1, p0, Lccsancom/vungle/warren/AdLoader;->vungleApiClient:Lccsancom/vungle/warren/VungleApiClient;

    iget-object v2, p1, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    .line 785
    invoke-virtual {v2}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lccsancom/vungle/warren/AdLoader$Operation;->size:Lccsancom/vungle/warren/AdConfig$AdSize;

    invoke-static {v3}, Lccsancom/vungle/warren/AdConfig$AdSize;->isNonMrecBannerAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Lccsancom/vungle/warren/AdLoader$Operation;->size:Lccsancom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v3}, Lccsancom/vungle/warren/AdConfig$AdSize;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    .line 786
    :goto_0
    invoke-virtual {p2}, Lccsancom/vungle/warren/model/Placement;->isHeaderBidding()Z

    move-result v4

    .line 787
    iget-object v5, p0, Lccsancom/vungle/warren/AdLoader;->visionController:Lccsancom/vungle/warren/VisionController;

    invoke-virtual {v5}, Lccsancom/vungle/warren/VisionController;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lccsancom/vungle/warren/AdLoader;->visionController:Lccsancom/vungle/warren/VisionController;

    invoke-virtual {v5}, Lccsancom/vungle/warren/VisionController;->getPayload()Lccsancom/google/gson/JsonObject;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 784
    :goto_1
    invoke-virtual {v1, v2, v3, v4, v5}, Lccsancom/vungle/warren/VungleApiClient;->requestAd(Ljava/lang/String;Ljava/lang/String;ZLccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;

    move-result-object v10

    new-instance v11, Lccsancom/vungle/warren/AdLoader$5;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-wide v4, v8

    move-object v6, p3

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lccsancom/vungle/warren/AdLoader$5;-><init>(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdLoader$Operation;JLccsancom/vungle/warren/AdLoader$DownloadCallback;Lccsancom/vungle/warren/HeaderBiddingCallback;)V

    .line 788
    invoke-interface {v10, v11}, Lccsancom/vungle/warren/network/Call;->enqueue(Lccsancom/vungle/warren/network/Callback;)V

    .line 1007
    return-void
.end method

.method private fileIsValid(Ljava/io/File;Lccsancom/vungle/warren/model/AdAsset;)Z
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "adAsset"    # Lccsancom/vungle/warren/model/AdAsset;

    .line 1887
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p2, Lccsancom/vungle/warren/model/AdAsset;->fileSize:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getAssetDownloadListener(Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/AdLoader$DownloadCallback;)Lccsancom/vungle/warren/downloader/AssetDownloadListener;
    .locals 1
    .param p1, "advertisement"    # Lccsancom/vungle/warren/model/Advertisement;
    .param p2, "op"    # Lccsancom/vungle/warren/AdLoader$Operation;
    .param p3, "callback"    # Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    .line 1177
    new-instance v0, Lccsancom/vungle/warren/AdLoader$6;

    invoke-direct {v0, p0, p2, p3, p1}, Lccsancom/vungle/warren/AdLoader$6;-><init>(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/AdLoader$DownloadCallback;Lccsancom/vungle/warren/model/Advertisement;)V

    return-object v0
.end method

.method public static getAssetPriority(Ljava/lang/String;Z)I
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "enableAdLoadOpt"    # Z

    .line 1161
    if-nez p1, :cond_0

    .line 1162
    const/4 v0, 0x0

    return v0

    .line 1164
    :cond_0
    const/4 v0, 0x1

    .line 1165
    .local v0, "secondPriority":I
    const-string v1, "template"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1166
    const/4 v0, 0x0

    .line 1168
    :cond_1
    return v0
.end method

.method private getAssetPriority(ILjava/lang/String;)Lccsancom/vungle/warren/downloader/AssetPriority;
    .locals 3
    .param p1, "priority"    # I
    .param p2, "assetPath"    # Ljava/lang/String;

    .line 1152
    const v0, -0x7ffffffe

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1153
    .local v0, "firstPriority":I
    iget-boolean v1, p0, Lccsancom/vungle/warren/AdLoader;->adLoadOptimizationEnabled:Z

    invoke-static {p2, v1}, Lccsancom/vungle/warren/AdLoader;->getAssetPriority(Ljava/lang/String;Z)I

    move-result v1

    .line 1154
    .local v1, "secondPriority":I
    new-instance v2, Lccsancom/vungle/warren/downloader/AssetPriority;

    invoke-direct {v2, v0, v1}, Lccsancom/vungle/warren/downloader/AssetPriority;-><init>(II)V

    return-object v2
.end method

.method private getDownloadRequest(ILccsancom/vungle/warren/model/AdAsset;)Lccsancom/vungle/warren/downloader/DownloadRequest;
    .locals 9
    .param p1, "priority"    # I
    .param p2, "asset"    # Lccsancom/vungle/warren/model/AdAsset;

    .line 1142
    iget-object v0, p2, Lccsancom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lccsancom/vungle/warren/AdLoader;->getAssetPriority(ILjava/lang/String;)Lccsancom/vungle/warren/downloader/AssetPriority;

    move-result-object v0

    .line 1143
    .local v0, "assetPriority":Lccsancom/vungle/warren/downloader/AssetPriority;
    new-instance v8, Lccsancom/vungle/warren/downloader/DownloadRequest;

    iget-object v4, p2, Lccsancom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    iget-object v5, p2, Lccsancom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    iget-object v7, p2, Lccsancom/vungle/warren/model/AdAsset;->identifier:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v6, 0x0

    move-object v1, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lccsancom/vungle/warren/downloader/DownloadRequest;-><init>(ILccsancom/vungle/warren/downloader/AssetPriority;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v8
.end method

.method private injectOMIfNeeded(Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/AdLoader$DownloadCallback;)Z
    .locals 16
    .param p1, "op"    # Lccsancom/vungle/warren/AdLoader$Operation;
    .param p2, "advertisement"    # Lccsancom/vungle/warren/model/Advertisement;
    .param p3, "callback"    # Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    .line 1367
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {p2 .. p2}, Lccsancom/vungle/warren/model/Advertisement;->getOmEnabled()Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_4

    .line 1369
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v1, v3}, Lccsancom/vungle/warren/AdLoader;->getDestinationDir(Lccsancom/vungle/warren/model/Advertisement;)Ljava/io/File;

    move-result-object v0

    .line 1370
    .local v0, "destinationDir":Ljava/io/File;
    const/4 v8, 0x2

    const/4 v9, 0x3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_1

    .line 1378
    :cond_0
    iget-object v10, v1, Lccsancom/vungle/warren/AdLoader;->omInjector:Lccsancom/vungle/warren/omsdk/OMInjector;

    invoke-virtual {v10, v0}, Lccsancom/vungle/warren/omsdk/OMInjector;->injectJsFiles(Ljava/io/File;)Ljava/util/List;

    move-result-object v10

    .line 1379
    .local v10, "injected":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/File;

    .line 1380
    .local v12, "file":Ljava/io/File;
    new-instance v13, Lccsancom/vungle/warren/model/AdAsset;

    invoke-virtual/range {p2 .. p2}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v13, v14, v15, v6}, Lccsancom/vungle/warren/model/AdAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v13

    .line 1381
    .local v6, "asset":Lccsancom/vungle/warren/model/AdAsset;
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v13

    iput-wide v13, v6, Lccsancom/vungle/warren/model/AdAsset;->fileSize:J

    .line 1382
    iput v8, v6, Lccsancom/vungle/warren/model/AdAsset;->fileType:I

    .line 1383
    iput v9, v6, Lccsancom/vungle/warren/model/AdAsset;->status:I

    .line 1384
    iget-object v13, v1, Lccsancom/vungle/warren/AdLoader;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v13, v6}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    .line 1385
    .end local v6    # "asset":Lccsancom/vungle/warren/model/AdAsset;
    .end local v12    # "file":Ljava/io/File;
    goto :goto_0

    .line 1392
    .end local v0    # "destinationDir":Ljava/io/File;
    .end local v10    # "injected":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_1
    goto :goto_3

    .line 1371
    .restart local v0    # "destinationDir":Ljava/io/File;
    :cond_2
    :goto_1
    const-string v6, "AdLoader#onAssetDownloadFinished; loadAd sequence"

    const-string v10, "Mraid ad; bad destinationDir - %1$srequest = %2$s; advertisement = %3$s"

    new-array v9, v9, [Ljava/lang/Object;

    .line 1374
    if-nez v0, :cond_3

    const-string v11, "null"

    goto :goto_2

    :cond_3
    const-string v11, "not a dir"

    :goto_2
    aput-object v11, v9, v7

    iget-object v11, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    aput-object v11, v9, v5

    aput-object v3, v9, v8

    .line 1372
    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1371
    invoke-static {v6, v5}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    new-instance v5, Lccsancom/vungle/warren/error/VungleException;

    const/16 v6, 0x1a

    invoke-direct {v5, v6}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v6, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual/range {p2 .. p2}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v5, v6, v8}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1376
    return v7

    .line 1389
    .end local v0    # "destinationDir":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1390
    .local v0, "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    new-instance v5, Lccsancom/vungle/warren/error/VungleException;

    const/16 v6, 0x1a

    invoke-direct {v5, v6}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v6, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual/range {p2 .. p2}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v5, v6, v8}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 1391
    return v7

    .line 1386
    .end local v0    # "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    :catch_1
    move-exception v0

    .line 1387
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Lccsancom/vungle/warren/error/VungleException;

    const/16 v6, 0x18

    invoke-direct {v5, v6}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v6, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual/range {p2 .. p2}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v5, v6, v8}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 1388
    return v7

    .line 1394
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    return v5
.end method

.method private isAdLoadOptimizationEnabled(Lccsancom/vungle/warren/model/Advertisement;)Z
    .locals 2
    .param p1, "advertisement"    # Lccsancom/vungle/warren/model/Advertisement;

    .line 1883
    iget-boolean v0, p0, Lccsancom/vungle/warren/AdLoader;->adLoadOptimizationEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Advertisement;->getAdType()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isReadyForHBP(Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/persistence/Repository;)Z
    .locals 6
    .param p1, "op"    # Lccsancom/vungle/warren/AdLoader$Operation;
    .param p2, "repository"    # Lccsancom/vungle/warren/persistence/Repository;

    .line 753
    iget-object v0, p1, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v0}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lccsancom/vungle/warren/persistence/Repository;->findValidAdvertisementsForPlacement(Ljava/lang/String;Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 755
    .local v0, "advs":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Advertisement;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p1, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v3}, Lccsancom/vungle/warren/AdRequest;->getAdCount()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isSizeInvalid(Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/AdConfig$AdSize;)Z
    .locals 2
    .param p1, "placement"    # Lccsancom/vungle/warren/model/Placement;
    .param p2, "size"    # Lccsancom/vungle/warren/AdConfig$AdSize;

    .line 762
    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Placement;->getPlacementAdType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Lccsancom/vungle/warren/AdConfig$AdSize;->isNonMrecBannerAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 763
    :cond_0
    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Placement;->getPlacementAdType()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Lccsancom/vungle/warren/AdConfig$AdSize;->isDefaultAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 762
    :goto_0
    return v1
.end method

.method private isUrlValid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 1305
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lccsanandroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lccsanandroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isZip(Ljava/io/File;)Z
    .locals 2
    .param p1, "downloadedFile"    # Ljava/io/File;

    .line 1301
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "postroll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "template"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private loadAd(Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/DownloadCallbackWrapper;)V
    .locals 10
    .param p1, "op"    # Lccsancom/vungle/warren/AdLoader$Operation;
    .param p2, "listener"    # Lccsancom/vungle/warren/DownloadCallbackWrapper;

    .line 578
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 579
    .local v6, "adRequestStartTimeStamp":J
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader;->sdkExecutors:Lccsancom/vungle/warren/utility/Executors;

    invoke-interface {v0}, Lccsancom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    new-instance v9, Lccsancom/vungle/warren/AdLoader$4;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-wide v4, v6

    invoke-direct/range {v0 .. v5}, Lccsancom/vungle/warren/AdLoader$4;-><init>(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/DownloadCallbackWrapper;Lccsancom/vungle/warren/AdLoader$Operation;J)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 750
    return-void
.end method

.method private onAssetDownloadFinished(Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/AdLoader$DownloadCallback;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 16
    .param p1, "op"    # Lccsancom/vungle/warren/AdLoader$Operation;
    .param p2, "callback"    # Lccsancom/vungle/warren/AdLoader$DownloadCallback;
    .param p3, "advertisementId"    # Ljava/lang/String;
    .param p5, "triggerCallback"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/vungle/warren/AdLoader$Operation;",
            "Lccsancom/vungle/warren/AdLoader$DownloadCallback;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;",
            ">;Z)V"
        }
    .end annotation

    .line 1403
    .local p4, "errors":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    sget-object v0, Lccsancom/vungle/warren/AdLoader;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 1404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const-string v7, "Assets download completed, request  = %1$s, at: %2$d"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1403
    const-string v7, "ttDownloadContext"

    invoke-static {v9, v0, v7, v6}, Lccsancom/vungle/warren/VungleLogger;->verbose(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1408
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader;->repository:Lccsancom/vungle/warren/persistence/Repository;

    const-class v10, Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v0, v4, v10}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lccsancom/vungle/warren/model/Advertisement;

    .line 1409
    .local v10, "advertisement":Lccsancom/vungle/warren/model/Advertisement;
    if-nez v10, :cond_0

    .line 1410
    new-array v0, v5, [Ljava/lang/Object;

    iget-object v5, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    aput-object v5, v0, v8

    aput-object v4, v0, v9

    .line 1411
    const-string v5, "advertisement is null: request = %1$s; advertisementId = %2$s"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1410
    const-string v5, "AdLoader#DownloadAdCallback#onDownloadCompleted; loadAd sequence"

    invoke-static {v5, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    const/16 v5, 0xb

    invoke-direct {v0, v5}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v5, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-interface {v3, v0, v5, v4}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 1414
    return-void

    .line 1416
    :cond_0
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v4}, Lccsancom/vungle/warren/persistence/Repository;->loadAllAdAssets(Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/util/List;

    .line 1418
    .local v11, "assets":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/AdAsset;>;"
    const-string v0, "null"

    const-string v12, "AdLoader#onAssetDownloadFinished; loadAd sequence"

    const/4 v13, 0x3

    if-eqz v11, :cond_e

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_1

    goto/16 :goto_5

    .line 1428
    :cond_1
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lccsancom/vungle/warren/model/AdAsset;

    .line 1429
    .local v15, "asset":Lccsancom/vungle/warren/model/AdAsset;
    iget v6, v15, Lccsancom/vungle/warren/model/AdAsset;->status:I

    const/4 v7, 0x4

    if-ne v6, v13, :cond_4

    .line 1430
    new-instance v6, Ljava/io/File;

    iget-object v13, v15, Lccsancom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1432
    .local v6, "f":Ljava/io/File;
    invoke-direct {v1, v6, v15}, Lccsancom/vungle/warren/AdLoader;->fileIsValid(Ljava/io/File;Lccsancom/vungle/warren/model/AdAsset;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 1433
    new-array v0, v7, [Ljava/lang/Object;

    .line 1436
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v8

    invoke-virtual {v15}, Lccsancom/vungle/warren/model/AdAsset;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v9

    iget-object v7, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    aput-object v7, v0, v5

    const/4 v5, 0x3

    aput-object v10, v0, v5

    .line 1434
    const-string v5, "Assets file not valid %1$s; asset = %2$s,request = %3$s; advertisement = %4$s"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1433
    invoke-static {v12, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    if-eqz p5, :cond_2

    .line 1438
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    const/16 v5, 0x18

    invoke-direct {v0, v5}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v5, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v10}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v0, v5, v7}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 1440
    :cond_2
    return-void

    .line 1432
    .end local v6    # "f":Ljava/io/File;
    :cond_3
    goto :goto_1

    .line 1442
    :cond_4
    iget v6, v15, Lccsancom/vungle/warren/model/AdAsset;->fileType:I

    if-nez v6, :cond_5

    iget v6, v15, Lccsancom/vungle/warren/model/AdAsset;->status:I

    if-eq v6, v7, :cond_5

    .line 1443
    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/Object;

    .line 1446
    invoke-virtual {v15}, Lccsancom/vungle/warren/model/AdAsset;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v8

    iget-object v6, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    aput-object v6, v0, v9

    aput-object v10, v0, v5

    .line 1444
    const-string v5, "Zip asset left unprocessed asset = %1$s,request = %2$s; advertisement = %3$s"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1443
    invoke-static {v12, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    const/16 v5, 0x18

    invoke-direct {v0, v5}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v5, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v10}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v0, v5, v6}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 1448
    return-void

    .line 1442
    :cond_5
    :goto_1
    nop

    .line 1450
    .end local v15    # "asset":Lccsancom/vungle/warren/model/AdAsset;
    const/4 v13, 0x3

    goto/16 :goto_0

    .line 1452
    :cond_6
    invoke-virtual {v10}, Lccsancom/vungle/warren/model/Advertisement;->getAdType()I

    move-result v6

    if-ne v6, v9, :cond_c

    .line 1453
    invoke-virtual {v1, v10}, Lccsancom/vungle/warren/AdLoader;->getDestinationDir(Lccsancom/vungle/warren/model/Advertisement;)Ljava/io/File;

    move-result-object v6

    .line 1454
    .local v6, "destinationDir":Ljava/io/File;
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_2

    .line 1465
    :cond_7
    sget-object v0, Lccsancom/vungle/warren/AdLoader;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "saving MRAID for "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    invoke-virtual {v10, v6}, Lccsancom/vungle/warren/model/Advertisement;->setMraidAssetDir(Ljava/io/File;)V

    .line 1468
    :try_start_0
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v10}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1478
    goto :goto_4

    .line 1469
    :catch_0
    move-exception v0

    .line 1470
    .local v0, "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v8

    iget-object v8, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    aput-object v8, v7, v9

    aput-object v10, v7, v5

    .line 1471
    const-string v5, "Issue(s) with database: can\'t save advertisement;exception = %1$s; request = %2$s; advertisement = %3$s"

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1470
    invoke-static {v12, v5}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    if-eqz p5, :cond_8

    .line 1475
    new-instance v5, Lccsancom/vungle/warren/error/VungleException;

    const/16 v7, 0x1a

    invoke-direct {v5, v7}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v7, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v10}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v5, v7, v8}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 1477
    :cond_8
    return-void

    .line 1455
    .end local v0    # "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    :cond_9
    :goto_2
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 1458
    if-nez v6, :cond_a

    goto :goto_3

    :cond_a
    const-string v0, "not a dir"

    :goto_3
    aput-object v0, v7, v8

    iget-object v0, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    aput-object v0, v7, v9

    aput-object v10, v7, v5

    .line 1456
    const-string v0, "Mraid ad; bad destinationDir - %1$srequest = %2$s; advertisement = %3$s"

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1455
    invoke-static {v12, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    if-eqz p5, :cond_b

    .line 1460
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    const/16 v5, 0x1a

    invoke-direct {v0, v5}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v5, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v10}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v0, v5, v7}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 1462
    :cond_b
    return-void

    .line 1480
    .end local v6    # "destinationDir":Ljava/io/File;
    :cond_c
    :goto_4
    if-eqz p5, :cond_d

    .line 1481
    iget-object v0, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v10}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadCompleted(Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 1484
    .end local v10    # "advertisement":Lccsancom/vungle/warren/model/Advertisement;
    .end local v11    # "assets":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/AdAsset;>;"
    :cond_d
    goto/16 :goto_a

    .line 1419
    .restart local v10    # "advertisement":Lccsancom/vungle/warren/model/Advertisement;
    .restart local v11    # "assets":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/AdAsset;>;"
    :cond_e
    :goto_5
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 1421
    if-nez v11, :cond_f

    goto :goto_6

    :cond_f
    const-string v0, "empty"

    :goto_6
    aput-object v0, v6, v8

    iget-object v0, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    aput-object v0, v6, v9

    aput-object v4, v6, v5

    .line 1420
    const-string v0, "Assets are %1$s; request = %2$s; advertisement = %3$s"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1419
    invoke-static {v12, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    if-eqz p5, :cond_10

    .line 1423
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    const/16 v5, 0x18

    invoke-direct {v0, v5}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v5, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-interface {v3, v0, v5, v4}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 1425
    :cond_10
    return-void

    .line 1485
    .end local v10    # "advertisement":Lccsancom/vungle/warren/model/Advertisement;
    .end local v11    # "assets":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/AdAsset;>;"
    :cond_11
    const/4 v0, 0x0

    .line 1487
    .local v0, "endError":Lccsancom/vungle/warren/error/VungleException;
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    .line 1490
    .local v6, "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    iget-object v7, v6, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;->cause:Ljava/lang/Throwable;

    invoke-static {v7}, Lccsancom/vungle/warren/error/VungleException;->getExceptionCode(Ljava/lang/Throwable;)I

    move-result v7

    const/16 v8, 0x1a

    if-ne v7, v8, :cond_12

    .line 1491
    new-instance v5, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v5, v8}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    move-object v0, v5

    .line 1492
    goto :goto_9

    .line 1495
    :cond_12
    iget v7, v6, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;->serverCode:I

    invoke-direct {v1, v7}, Lccsancom/vungle/warren/AdLoader;->recoverableServerCode(I)Z

    move-result v7

    const/16 v10, 0x17

    if-eqz v7, :cond_13

    iget v7, v6, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;->reason:I

    if-ne v7, v9, :cond_13

    .line 1496
    new-instance v7, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v7, v10}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    const/16 v10, 0x18

    .local v7, "error":Lccsancom/vungle/warren/error/VungleException;
    goto :goto_8

    .line 1497
    .end local v7    # "error":Lccsancom/vungle/warren/error/VungleException;
    :cond_13
    iget v7, v6, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;->reason:I

    if-nez v7, :cond_14

    .line 1498
    new-instance v7, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v7, v10}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    const/16 v10, 0x18

    .restart local v7    # "error":Lccsancom/vungle/warren/error/VungleException;
    goto :goto_8

    .line 1500
    .end local v7    # "error":Lccsancom/vungle/warren/error/VungleException;
    :cond_14
    new-instance v7, Lccsancom/vungle/warren/error/VungleException;

    const/16 v10, 0x18

    invoke-direct {v7, v10}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    .line 1503
    .restart local v7    # "error":Lccsancom/vungle/warren/error/VungleException;
    :goto_8
    move-object v0, v7

    .line 1505
    invoke-virtual {v0}, Lccsancom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result v11

    if-ne v11, v10, :cond_15

    .line 1506
    goto :goto_9

    .line 1507
    .end local v6    # "downloadError":Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .end local v7    # "error":Lccsancom/vungle/warren/error/VungleException;
    :cond_15
    goto :goto_7

    .line 1509
    :cond_16
    :goto_9
    move-object v5, v0

    .line 1511
    .local v5, "exception":Lccsancom/vungle/warren/error/VungleException;
    if-eqz p5, :cond_17

    .line 1512
    iget-object v6, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-interface {v3, v5, v6, v4}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 1516
    .end local v0    # "endError":Lccsancom/vungle/warren/error/VungleException;
    .end local v5    # "exception":Lccsancom/vungle/warren/error/VungleException;
    :cond_17
    :goto_a
    return-void
.end method

.method private onChangePriority(Lccsancom/vungle/warren/AdLoader$Operation;)V
    .locals 4
    .param p1, "op"    # Lccsancom/vungle/warren/AdLoader$Operation;

    .line 525
    iget-object v0, p1, Lccsancom/vungle/warren/AdLoader$Operation;->requests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/downloader/DownloadRequest;

    .line 526
    .local v1, "request":Lccsancom/vungle/warren/downloader/DownloadRequest;
    iget v2, p1, Lccsancom/vungle/warren/AdLoader$Operation;->priority:I

    iget-object v3, v1, Lccsancom/vungle/warren/downloader/DownloadRequest;->path:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lccsancom/vungle/warren/AdLoader;->getAssetPriority(ILjava/lang/String;)Lccsancom/vungle/warren/downloader/AssetPriority;

    move-result-object v2

    .line 527
    .local v2, "priority":Lccsancom/vungle/warren/downloader/AssetPriority;
    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/downloader/DownloadRequest;->setPriority(Lccsancom/vungle/warren/downloader/AssetPriority;)V

    .line 528
    iget-object v3, p0, Lccsancom/vungle/warren/AdLoader;->downloader:Lccsancom/vungle/warren/downloader/Downloader;

    invoke-interface {v3, v1}, Lccsancom/vungle/warren/downloader/Downloader;->updatePriority(Lccsancom/vungle/warren/downloader/DownloadRequest;)V

    .line 529
    .end local v1    # "request":Lccsancom/vungle/warren/downloader/DownloadRequest;
    .end local v2    # "priority":Lccsancom/vungle/warren/downloader/AssetPriority;
    goto :goto_0

    .line 530
    :cond_0
    return-void
.end method

.method private onError(Lccsancom/vungle/warren/AdLoader$Operation;I)V
    .locals 4
    .param p1, "op"    # Lccsancom/vungle/warren/AdLoader$Operation;
    .param p2, "code"    # I

    .line 533
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v1, p2}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 535
    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 534
    const-string v1, "Error %1$s occured; operation is %2$s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 533
    const-string v1, "AdLoader#onError; loadAd sequence"

    invoke-static {v1, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    if-eqz p1, :cond_1

    .line 538
    iget-object v0, p1, Lccsancom/vungle/warren/AdLoader$Operation;->loadAdCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/LoadAdCallback;

    .line 539
    .local v1, "loadAdCallback":Lccsancom/vungle/warren/LoadAdCallback;
    iget-object v2, p1, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v2}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v3, p2}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {v1, v2, v3}, Lccsancom/vungle/warren/LoadAdCallback;->onError(Ljava/lang/String;Lccsancom/vungle/warren/error/VungleException;)V

    .line 540
    .end local v1    # "loadAdCallback":Lccsancom/vungle/warren/LoadAdCallback;
    goto :goto_1

    .line 542
    :cond_1
    return-void
.end method

.method private processTemplate(Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/AdLoader$DownloadCallback;Lccsancom/vungle/warren/model/AdAsset;Lccsancom/vungle/warren/model/Advertisement;)V
    .locals 17
    .param p1, "op"    # Lccsancom/vungle/warren/AdLoader$Operation;
    .param p2, "callback"    # Lccsancom/vungle/warren/AdLoader$DownloadCallback;
    .param p3, "asset"    # Lccsancom/vungle/warren/model/AdAsset;
    .param p4, "advertisement"    # Lccsancom/vungle/warren/model/Advertisement;

    .line 1313
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    iget v0, v4, Lccsancom/vungle/warren/model/AdAsset;->status:I

    const/16 v6, 0x18

    const/4 v7, 0x3

    if-eq v0, v7, :cond_0

    .line 1314
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v0, v6}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v6, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual/range {p4 .. p4}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v0, v6, v7}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 1315
    return-void

    .line 1318
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v8, v4, Lccsancom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 1319
    .local v8, "f":Ljava/io/File;
    invoke-direct {v1, v8, v4}, Lccsancom/vungle/warren/AdLoader;->fileIsValid(Ljava/io/File;Lccsancom/vungle/warren/model/AdAsset;)Z

    move-result v0

    const/4 v9, 0x4

    const-string v10, "AdLoader#onAssetDownloadFinished; loadAd sequence"

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v0, :cond_1

    .line 1320
    new-array v0, v9, [Ljava/lang/Object;

    .line 1323
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v12

    invoke-virtual/range {p3 .. p3}, Lccsancom/vungle/warren/model/AdAsset;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v13

    iget-object v9, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    aput-object v9, v0, v11

    aput-object v5, v0, v7

    .line 1321
    const-string v7, "Assets file not valid %1$s; asset = %2$s,request = %3$s; advertisement = %4$s"

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1320
    invoke-static {v10, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v0, v6}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v6, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual/range {p4 .. p4}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v0, v6, v7}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 1325
    return-void

    .line 1328
    :cond_1
    iget v0, v4, Lccsancom/vungle/warren/model/AdAsset;->fileType:I

    const-string v14, "ttDownloadContext"

    if-nez v0, :cond_2

    .line 1329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 1330
    .local v15, "unzipStartTime":J
    sget-object v0, Lccsancom/vungle/warren/AdLoader;->TAG:Ljava/lang/String;

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    aput-object v7, v6, v12

    .line 1331
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v13

    const-string v7, "Start to unzip assets, request  = %1$s, at: %2$d"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1330
    invoke-static {v13, v0, v14, v6}, Lccsancom/vungle/warren/VungleLogger;->verbose(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    :try_start_0
    iget-object v6, v1, Lccsancom/vungle/warren/AdLoader;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual/range {p4 .. p4}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lccsancom/vungle/warren/persistence/Repository;->loadAllAdAssets(Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v6

    invoke-virtual {v6}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1334
    .local v6, "assets":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/AdAsset;>;"
    invoke-direct {v1, v5, v4, v8, v6}, Lccsancom/vungle/warren/AdLoader;->unzipFile(Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/model/AdAsset;Ljava/io/File;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1351
    .end local v6    # "assets":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/AdAsset;>;"
    nop

    .line 1352
    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    aput-object v7, v6, v12

    .line 1353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v15

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v13

    const-string v7, "Unzip assets completed, request  = %1$s, elapsed time = %2$dms"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1352
    invoke-static {v13, v0, v14, v6}, Lccsancom/vungle/warren/VungleLogger;->verbose(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1344
    :catch_0
    move-exception v0

    .line 1345
    .local v0, "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    new-array v6, v9, [Ljava/lang/Object;

    aput-object v0, v6, v12

    .line 1348
    invoke-virtual/range {p3 .. p3}, Lccsancom/vungle/warren/model/AdAsset;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v13

    iget-object v7, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    aput-object v7, v6, v11

    const/4 v7, 0x3

    aput-object v5, v6, v7

    .line 1346
    const-string v7, "Issue(s) with database: exception = %1$s; asset = %2$s,request = %3$s; advertisement = %4$s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1345
    invoke-static {v10, v6}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    new-instance v6, Lccsancom/vungle/warren/error/VungleException;

    const/16 v7, 0x1a

    invoke-direct {v6, v7}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v7, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual/range {p4 .. p4}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v6, v7, v9}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 1350
    return-void

    .line 1335
    .end local v0    # "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    :catch_1
    move-exception v0

    .line 1337
    .local v0, "e":Ljava/io/IOException;
    new-array v6, v9, [Ljava/lang/Object;

    .line 1340
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-virtual/range {p3 .. p3}, Lccsancom/vungle/warren/model/AdAsset;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v13

    iget-object v7, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    aput-object v7, v6, v11

    const/4 v7, 0x3

    aput-object v5, v6, v7

    .line 1338
    const-string v7, "Unzip failed %1$s; asset = %2$s,request = %3$s; advertisement = %4$s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1337
    invoke-static {v10, v6}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    iget-object v6, v1, Lccsancom/vungle/warren/AdLoader;->downloader:Lccsancom/vungle/warren/downloader/Downloader;

    iget-object v7, v4, Lccsancom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    invoke-interface {v6, v7}, Lccsancom/vungle/warren/downloader/Downloader;->dropCache(Ljava/lang/String;)Z

    .line 1342
    new-instance v6, Lccsancom/vungle/warren/error/VungleException;

    const/16 v7, 0x18

    invoke-direct {v6, v7}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v7, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual/range {p4 .. p4}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v6, v7, v9}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 1343
    return-void

    .line 1356
    .end local v0    # "e":Ljava/io/IOException;
    .end local v15    # "unzipStartTime":J
    :cond_2
    :goto_0
    invoke-direct {v1, v5}, Lccsancom/vungle/warren/AdLoader;->isAdLoadOptimizationEnabled(Lccsancom/vungle/warren/model/Advertisement;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1357
    sget-object v0, Lccsancom/vungle/warren/AdLoader;->TAG:Ljava/lang/String;

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    aput-object v7, v6, v12

    .line 1358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, v5, Lccsancom/vungle/warren/model/Advertisement;->adRequestStartTime:J

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v13

    const-string v7, "Ad ready to play, request  = %1$s, elapsed time = %2$dms"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1357
    invoke-static {v13, v0, v14, v6}, Lccsancom/vungle/warren/VungleLogger;->verbose(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    iget-object v0, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual/range {p4 .. p4}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v0, v6}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadCompleted(Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 1361
    :cond_3
    return-void
.end method

.method private recoverableServerCode(I)Z
    .locals 1
    .param p1, "code"    # I

    .line 553
    const/16 v0, 0x198

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f4

    if-gt v0, p1, :cond_0

    const/16 v0, 0x258

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private reposeCodeToVungleException(I)Lccsancom/vungle/warren/error/VungleException;
    .locals 2
    .param p1, "code"    # I

    .line 545
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/AdLoader;->recoverableServerCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    return-object v0

    .line 548
    :cond_0
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    return-object v0
.end method

.method private retrofitToVungleException(Ljava/lang/Throwable;)Lccsancom/vungle/warren/error/VungleException;
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 557
    instance-of v0, p1, Ljava/net/UnknownHostException;

    const/16 v1, 0xb

    if-eqz v0, :cond_0

    .line 558
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    return-object v0

    .line 559
    :cond_0
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_1

    .line 560
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    return-object v0

    .line 562
    :cond_1
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    return-object v0
.end method

.method private setLoading(Lccsancom/vungle/warren/AdRequest;Z)V
    .locals 2
    .param p1, "request"    # Lccsancom/vungle/warren/AdRequest;
    .param p2, "loading"    # Z

    .line 407
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader;->loadOperations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/AdLoader$Operation;

    .line 408
    .local v0, "op":Lccsancom/vungle/warren/AdLoader$Operation;
    if-eqz v0, :cond_0

    .line 409
    iget-object v1, v0, Lccsancom/vungle/warren/AdLoader$Operation;->loading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 411
    :cond_0
    return-void
.end method

.method private startLoading(Lccsancom/vungle/warren/AdLoader$Operation;)V
    .locals 4
    .param p1, "op"    # Lccsancom/vungle/warren/AdLoader$Operation;

    .line 509
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader;->loadOperations:Ljava/util/Map;

    iget-object v1, p1, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    new-instance v0, Lccsancom/vungle/warren/DownloadCallbackWrapper;

    iget-object v1, p0, Lccsancom/vungle/warren/AdLoader;->sdkExecutors:Lccsancom/vungle/warren/utility/Executors;

    invoke-interface {v1}, Lccsancom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lccsancom/vungle/warren/AdLoader$DownloadAdCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lccsancom/vungle/warren/AdLoader$DownloadAdCallback;-><init>(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdLoader$1;)V

    invoke-direct {v0, v1, v2}, Lccsancom/vungle/warren/DownloadCallbackWrapper;-><init>(Ljava/util/concurrent/ExecutorService;Lccsancom/vungle/warren/AdLoader$DownloadCallback;)V

    invoke-direct {p0, p1, v0}, Lccsancom/vungle/warren/AdLoader;->loadAd(Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/DownloadCallbackWrapper;)V

    .line 511
    return-void
.end method

.method private tryLoadNextInQueue(Lccsancom/vungle/warren/AdRequest;)V
    .locals 2
    .param p1, "finished"    # Lccsancom/vungle/warren/AdRequest;

    .line 514
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader;->sequenceLoadingRequest:Lccsancom/vungle/warren/AdRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lccsancom/vungle/warren/AdRequest;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/vungle/warren/AdLoader;->sequenceLoadingRequest:Lccsancom/vungle/warren/AdRequest;

    .line 516
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader;->sequence:Lccsancom/vungle/warren/OperationSequence;

    invoke-virtual {v0}, Lccsancom/vungle/warren/OperationSequence;->poll()Lccsancom/vungle/warren/OperationSequence$Entry;

    move-result-object v0

    .line 517
    .local v0, "next":Lccsancom/vungle/warren/OperationSequence$Entry;
    if-eqz v0, :cond_1

    .line 518
    iget-object v1, v0, Lccsancom/vungle/warren/OperationSequence$Entry;->operation:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v1, v1, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    iput-object v1, p0, Lccsancom/vungle/warren/AdLoader;->sequenceLoadingRequest:Lccsancom/vungle/warren/AdRequest;

    .line 519
    iget-object v1, v0, Lccsancom/vungle/warren/OperationSequence$Entry;->operation:Lccsancom/vungle/warren/AdLoader$Operation;

    invoke-direct {p0, v1}, Lccsancom/vungle/warren/AdLoader;->startLoading(Lccsancom/vungle/warren/AdLoader$Operation;)V

    .line 522
    .end local v0    # "next":Lccsancom/vungle/warren/OperationSequence$Entry;
    :cond_1
    return-void
.end method

.method private unzipFile(Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/model/AdAsset;Ljava/io/File;Ljava/util/List;)V
    .locals 10
    .param p1, "advertisement"    # Lccsancom/vungle/warren/model/Advertisement;
    .param p2, "zipAsset"    # Lccsancom/vungle/warren/model/AdAsset;
    .param p3, "downloadedFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/vungle/warren/model/Advertisement;",
            "Lccsancom/vungle/warren/model/AdAsset;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lccsancom/vungle/warren/model/AdAsset;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1756
    .local p4, "allAssets":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/AdAsset;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1757
    .local v0, "existingPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/model/AdAsset;

    .line 1758
    .local v2, "asset":Lccsancom/vungle/warren/model/AdAsset;
    iget v4, v2, Lccsancom/vungle/warren/model/AdAsset;->fileType:I

    if-ne v4, v3, :cond_0

    .line 1759
    iget-object v3, v2, Lccsancom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1761
    .end local v2    # "asset":Lccsancom/vungle/warren/model/AdAsset;
    :cond_0
    goto :goto_0

    .line 1763
    :cond_1
    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/AdLoader;->getDestinationDir(Lccsancom/vungle/warren/model/Advertisement;)Ljava/io/File;

    move-result-object v1

    .line 1764
    .local v1, "destinationDir":Ljava/io/File;
    const/4 v2, 0x1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_2

    .line 1771
    :cond_2
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lccsancom/vungle/warren/AdLoader$7;

    invoke-direct {v5, p0, v0}, Lccsancom/vungle/warren/AdLoader$7;-><init>(Lccsancom/vungle/warren/AdLoader;Ljava/util/List;)V

    invoke-static {v3, v4, v5}, Lccsancom/vungle/warren/utility/UnzipUtility;->unzip(Ljava/lang/String;Ljava/lang/String;Lccsancom/vungle/warren/utility/UnzipUtility$Filter;)Ljava/util/List;

    move-result-object v3

    .line 1791
    .local v3, "extractedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "template"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1795
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "mraid.js"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1796
    .local v4, "mraidJS":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1797
    new-instance v5, Ljava/io/PrintWriter;

    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v4, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v5, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1798
    .local v5, "out":Ljava/io/PrintWriter;
    invoke-static {v5}, Lccsancom/vungle/warren/ui/HackMraid;->apply(Ljava/io/PrintWriter;)V

    .line 1799
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 1803
    .end local v4    # "mraidJS":Ljava/io/File;
    .end local v5    # "out":Ljava/io/PrintWriter;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 1804
    .local v5, "file":Ljava/io/File;
    new-instance v6, Lccsancom/vungle/warren/model/AdAsset;

    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lccsancom/vungle/warren/model/AdAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    .local v6, "extractedAsset":Lccsancom/vungle/warren/model/AdAsset;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v7

    iput-wide v7, v6, Lccsancom/vungle/warren/model/AdAsset;->fileSize:J

    .line 1806
    iput v2, v6, Lccsancom/vungle/warren/model/AdAsset;->fileType:I

    .line 1807
    iget-object v7, p2, Lccsancom/vungle/warren/model/AdAsset;->identifier:Ljava/lang/String;

    iput-object v7, v6, Lccsancom/vungle/warren/model/AdAsset;->parentId:Ljava/lang/String;

    .line 1808
    const/4 v7, 0x3

    iput v7, v6, Lccsancom/vungle/warren/model/AdAsset;->status:I

    .line 1809
    iget-object v7, p0, Lccsancom/vungle/warren/AdLoader;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v7, v6}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    .line 1810
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "extractedAsset":Lccsancom/vungle/warren/model/AdAsset;
    goto :goto_1

    .line 1812
    :cond_4
    sget-object v2, Lccsancom/vungle/warren/AdLoader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uzipped "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    invoke-static {v1}, Lccsancom/vungle/warren/utility/FileUtility;->printDirectoryTree(Ljava/io/File;)V

    .line 1815
    const/4 v2, 0x4

    iput v2, p2, Lccsancom/vungle/warren/model/AdAsset;->status:I

    .line 1816
    iget-object v2, p0, Lccsancom/vungle/warren/AdLoader;->repository:Lccsancom/vungle/warren/persistence/Repository;

    new-instance v4, Lccsancom/vungle/warren/AdLoader$8;

    invoke-direct {v4, p0, p3}, Lccsancom/vungle/warren/AdLoader$8;-><init>(Lccsancom/vungle/warren/AdLoader;Ljava/io/File;)V

    invoke-virtual {v2, p2, v4}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lccsancom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 1836
    return-void

    .line 1765
    .end local v3    # "extractedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_5
    :goto_2
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1767
    if-nez v1, :cond_6

    const-string v5, "null"

    goto :goto_3

    :cond_6
    const-string v5, "not a dir"

    :goto_3
    aput-object v5, v3, v4

    aput-object p1, v3, v2

    .line 1766
    const-string v2, "Can\'t unzip file: destination dir is %1$s; advertisement = %2$s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1765
    const-string v3, "AdLoader#unzipFile; loadAd sequence"

    invoke-static {v3, v2}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to access Destination Directory"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v2

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public canPlayAd(Lccsancom/vungle/warren/model/Advertisement;)Z
    .locals 2
    .param p1, "advertisement"    # Lccsancom/vungle/warren/model/Advertisement;

    .line 356
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Advertisement;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/AdLoader;->hasAssetsFor(Lccsancom/vungle/warren/model/Advertisement;)Z

    move-result v0

    return v0

    .line 357
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public canRenderAd(Lccsancom/vungle/warren/model/Advertisement;)Z
    .locals 3
    .param p1, "advertisement"    # Lccsancom/vungle/warren/model/Advertisement;

    .line 365
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 366
    return v0

    .line 369
    :cond_0
    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Advertisement;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Advertisement;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 370
    return v0

    .line 372
    :cond_1
    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/AdLoader;->hasAssetsFor(Lccsancom/vungle/warren/model/Advertisement;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 6

    .line 376
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 377
    .local v0, "requests":Ljava/util/Set;, "Ljava/util/Set<Lccsancom/vungle/warren/AdRequest;>;"
    iget-object v1, p0, Lccsancom/vungle/warren/AdLoader;->loadOperations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 378
    iget-object v1, p0, Lccsancom/vungle/warren/AdLoader;->pendingOperations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 379
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x19

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/AdRequest;

    .line 380
    .local v2, "request":Lccsancom/vungle/warren/AdRequest;
    iget-object v4, p0, Lccsancom/vungle/warren/AdLoader;->loadOperations:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/vungle/warren/AdLoader$Operation;

    .line 381
    .local v4, "loading":Lccsancom/vungle/warren/AdLoader$Operation;
    iget-object v5, p0, Lccsancom/vungle/warren/AdLoader;->startingOperations:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 382
    invoke-direct {p0, v4, v3}, Lccsancom/vungle/warren/AdLoader;->onError(Lccsancom/vungle/warren/AdLoader$Operation;I)V

    .line 383
    iget-object v5, p0, Lccsancom/vungle/warren/AdLoader;->pendingOperations:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/vungle/warren/AdLoader$Operation;

    invoke-direct {p0, v5, v3}, Lccsancom/vungle/warren/AdLoader;->onError(Lccsancom/vungle/warren/AdLoader$Operation;I)V

    .line 384
    .end local v2    # "request":Lccsancom/vungle/warren/AdRequest;
    .end local v4    # "loading":Lccsancom/vungle/warren/AdLoader$Operation;
    goto :goto_0

    .line 385
    :cond_0
    iget-object v1, p0, Lccsancom/vungle/warren/AdLoader;->startingOperations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/AdLoader$Operation;

    .line 386
    .local v2, "op":Lccsancom/vungle/warren/AdLoader$Operation;
    iget-object v4, p0, Lccsancom/vungle/warren/AdLoader;->startingOperations:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 387
    invoke-direct {p0, v2, v3}, Lccsancom/vungle/warren/AdLoader;->onError(Lccsancom/vungle/warren/AdLoader$Operation;I)V

    .line 388
    .end local v2    # "op":Lccsancom/vungle/warren/AdLoader$Operation;
    goto :goto_1

    .line 389
    :cond_1
    iget-object v1, p0, Lccsancom/vungle/warren/AdLoader;->sdkExecutors:Lccsancom/vungle/warren/utility/Executors;

    invoke-interface {v1}, Lccsancom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lccsancom/vungle/warren/AdLoader$1;

    invoke-direct {v2, p0}, Lccsancom/vungle/warren/AdLoader$1;-><init>(Lccsancom/vungle/warren/AdLoader;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 398
    return-void
.end method

.method public dropCache(Ljava/lang/String;)V
    .locals 6
    .param p1, "advertisementId"    # Ljava/lang/String;

    .line 1905
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, p1}, Lccsancom/vungle/warren/persistence/Repository;->loadAllAdAssets(Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1906
    .local v0, "adAssets":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/AdAsset;>;"
    if-nez v0, :cond_0

    .line 1907
    sget-object v1, Lccsancom/vungle/warren/AdLoader;->TAG:Ljava/lang/String;

    const-string v2, "No assets found in ad cache to cleanup"

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    return-void

    .line 1910
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1911
    .local v1, "urls":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/vungle/warren/model/AdAsset;

    .line 1912
    .local v3, "asset":Lccsancom/vungle/warren/model/AdAsset;
    iget-object v4, v3, Lccsancom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1913
    .end local v3    # "asset":Lccsancom/vungle/warren/model/AdAsset;
    goto :goto_0

    .line 1914
    :cond_1
    iget-object v2, p0, Lccsancom/vungle/warren/AdLoader;->repository:Lccsancom/vungle/warren/persistence/Repository;

    const-class v3, Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v2, p1, v3}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/model/Advertisement;

    .line 1915
    .local v2, "advertisement":Lccsancom/vungle/warren/model/Advertisement;
    if-eqz v2, :cond_2

    .line 1916
    invoke-virtual {v2}, Lccsancom/vungle/warren/model/Advertisement;->getDownloadableUrls()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1919
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1920
    .local v4, "url":Ljava/lang/String;
    iget-object v5, p0, Lccsancom/vungle/warren/AdLoader;->downloader:Lccsancom/vungle/warren/downloader/Downloader;

    invoke-interface {v5, v4}, Lccsancom/vungle/warren/downloader/Downloader;->dropCache(Ljava/lang/String;)Z

    .line 1921
    .end local v4    # "url":Ljava/lang/String;
    goto :goto_1

    .line 1922
    :cond_3
    return-void
.end method

.method getDestinationDir(Lccsancom/vungle/warren/model/Advertisement;)Ljava/io/File;
    .locals 2
    .param p1, "advertisement"    # Lccsancom/vungle/warren/model/Advertisement;

    .line 1011
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/persistence/Repository;->getAdvertisementAssetDirectory(Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method getPendingOperations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lccsancom/vungle/warren/AdLoader$Operation;",
            ">;"
        }
    .end annotation

    .line 1892
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader;->pendingOperations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getRunningOperations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lccsancom/vungle/warren/AdLoader$Operation;",
            ">;"
        }
    .end annotation

    .line 1897
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader;->loadOperations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method hasAssetsFor(Lccsancom/vungle/warren/model/Advertisement;)Z
    .locals 6
    .param p1, "advertisement"    # Lccsancom/vungle/warren/model/Advertisement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1839
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1840
    return v0

    .line 1842
    :cond_0
    iget-object v1, p0, Lccsancom/vungle/warren/AdLoader;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/persistence/Repository;->loadAllAdAssets(Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1844
    .local v1, "adAssets":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/AdAsset;>;"
    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 1849
    :cond_1
    const/4 v0, 0x1

    .line 1851
    .local v0, "isAllAssetAvailable":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/vungle/warren/model/AdAsset;

    .line 1853
    .local v3, "adAsset":Lccsancom/vungle/warren/model/AdAsset;
    iget v4, v3, Lccsancom/vungle/warren/model/AdAsset;->fileType:I

    if-nez v4, :cond_3

    .line 1854
    iget v4, v3, Lccsancom/vungle/warren/model/AdAsset;->status:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 1855
    goto :goto_0

    .line 1858
    :cond_2
    const/4 v0, 0x0

    .line 1859
    goto :goto_1

    .line 1862
    :cond_3
    iget-object v4, v3, Lccsancom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    invoke-direct {p0, v4}, Lccsancom/vungle/warren/AdLoader;->isUrlValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, p1}, Lccsancom/vungle/warren/AdLoader;->isAdLoadOptimizationEnabled(Lccsancom/vungle/warren/model/Advertisement;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1863
    goto :goto_0

    .line 1866
    :cond_4
    iget v4, v3, Lccsancom/vungle/warren/model/AdAsset;->status:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    .line 1867
    const/4 v0, 0x0

    .line 1868
    goto :goto_1

    .line 1871
    :cond_5
    new-instance v4, Ljava/io/File;

    iget-object v5, v3, Lccsancom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1872
    .local v4, "file":Ljava/io/File;
    invoke-direct {p0, v4, v3}, Lccsancom/vungle/warren/AdLoader;->fileIsValid(Ljava/io/File;Lccsancom/vungle/warren/model/AdAsset;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1873
    const/4 v0, 0x0

    .line 1874
    goto :goto_1

    .line 1877
    .end local v3    # "adAsset":Lccsancom/vungle/warren/model/AdAsset;
    .end local v4    # "file":Ljava/io/File;
    :cond_6
    goto :goto_0

    .line 1879
    :cond_7
    :goto_1
    return v0

    .line 1845
    .end local v0    # "isAllAssetAvailable":Z
    :cond_8
    :goto_2
    return v0
.end method

.method public init(Lccsancom/vungle/warren/tasks/JobRunner;)V
    .locals 1
    .param p1, "jobRunner"    # Lccsancom/vungle/warren/tasks/JobRunner;

    .line 325
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader;->jobRunnerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 326
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader;->downloader:Lccsancom/vungle/warren/downloader/Downloader;

    invoke-interface {v0}, Lccsancom/vungle/warren/downloader/Downloader;->init()V

    .line 327
    return-void
.end method

.method public isLoading(Lccsancom/vungle/warren/AdRequest;)Z
    .locals 2
    .param p1, "request"    # Lccsancom/vungle/warren/AdRequest;

    .line 402
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader;->loadOperations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/AdLoader$Operation;

    .line 403
    .local v0, "op":Lccsancom/vungle/warren/AdLoader$Operation;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lccsancom/vungle/warren/AdLoader$Operation;->loading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public load(Lccsancom/vungle/warren/AdLoader$Operation;)V
    .locals 8
    .param p1, "op"    # Lccsancom/vungle/warren/AdLoader$Operation;

    .line 425
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader;->jobRunnerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/tasks/JobRunner;

    .line 427
    .local v0, "jobRunner":Lccsancom/vungle/warren/tasks/JobRunner;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 428
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 429
    const-string v2, "Cannot load operation %s; job runner is null"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 428
    const-string v2, "AdLoader#load; loadAd sequence"

    invoke-static {v2, v1}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const/16 v1, 0x9

    invoke-direct {p0, p1, v1}, Lccsancom/vungle/warren/AdLoader;->onError(Lccsancom/vungle/warren/AdLoader$Operation;I)V

    .line 431
    return-void

    .line 434
    :cond_0
    iget-object v2, p1, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v2}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lccsancom/vungle/warren/AdLoader$Operation;->size:Lccsancom/vungle/warren/AdConfig$AdSize;

    invoke-direct {p0, v2, v3}, Lccsancom/vungle/warren/AdLoader;->checkAndUpdateHBPPlacementBannerSize(Ljava/lang/String;Lccsancom/vungle/warren/AdConfig$AdSize;)V

    .line 436
    iget-object v2, p0, Lccsancom/vungle/warren/AdLoader;->pendingOperations:Ljava/util/Map;

    iget-object v3, p1, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/AdLoader$Operation;

    .line 437
    .local v2, "pending":Lccsancom/vungle/warren/AdLoader$Operation;
    if-eqz v2, :cond_1

    .line 438
    invoke-virtual {p1, v2}, Lccsancom/vungle/warren/AdLoader$Operation;->merge(Lccsancom/vungle/warren/AdLoader$Operation;)V

    .line 441
    :cond_1
    iget-wide v3, p1, Lccsancom/vungle/warren/AdLoader$Operation;->delay:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_2

    .line 443
    iget-object v1, p1, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    iget-object v1, v1, Lccsancom/vungle/warren/AdRequest;->timeStamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 445
    iget-object v1, p0, Lccsancom/vungle/warren/AdLoader;->startingOperations:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v1, p0, Lccsancom/vungle/warren/AdLoader;->sdkExecutors:Lccsancom/vungle/warren/utility/Executors;

    invoke-interface {v1}, Lccsancom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v3, Lccsancom/vungle/warren/AdLoader$2;

    invoke-direct {v3, p0, p1}, Lccsancom/vungle/warren/AdLoader$2;-><init>(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdLoader$Operation;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 480
    :cond_2
    iget-object v3, p0, Lccsancom/vungle/warren/AdLoader;->pendingOperations:Ljava/util/Map;

    iget-object v4, p1, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    iget-object v3, p1, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-static {v3}, Lccsancom/vungle/warren/tasks/DownloadJob;->makeJobInfo(Lccsancom/vungle/warren/AdRequest;)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v3

    iget-wide v4, p1, Lccsancom/vungle/warren/AdLoader$Operation;->delay:J

    invoke-virtual {v3, v4, v5}, Lccsancom/vungle/warren/tasks/JobInfo;->setDelay(J)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v3

    invoke-virtual {v3, v1}, Lccsancom/vungle/warren/tasks/JobInfo;->setUpdateCurrent(Z)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/vungle/warren/tasks/JobRunner;->execute(Lccsancom/vungle/warren/tasks/JobInfo;)V

    .line 483
    :goto_0
    return-void
.end method

.method public load(Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/AdConfig;Lccsancom/vungle/warren/LoadAdCallback;)V
    .locals 14
    .param p1, "request"    # Lccsancom/vungle/warren/AdRequest;
    .param p2, "adConfig"    # Lccsancom/vungle/warren/AdConfig;
    .param p3, "listener"    # Lccsancom/vungle/warren/LoadAdCallback;

    .line 1703
    new-instance v13, Lccsancom/vungle/warren/AdLoader$Operation;

    .line 1705
    invoke-virtual/range {p2 .. p2}, Lccsancom/vungle/warren/AdConfig;->getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v2

    const/4 v0, 0x1

    new-array v12, v0, [Lccsancom/vungle/warren/LoadAdCallback;

    const/4 v0, 0x0

    aput-object p3, v12, v0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x7d0

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v0, v13

    move-object v1, p1

    invoke-direct/range {v0 .. v12}, Lccsancom/vungle/warren/AdLoader$Operation;-><init>(Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/AdConfig$AdSize;JJIIIZI[Lccsancom/vungle/warren/LoadAdCallback;)V

    .line 1703
    move-object v0, p0

    invoke-virtual {p0, v13}, Lccsancom/vungle/warren/AdLoader;->load(Lccsancom/vungle/warren/AdLoader$Operation;)V

    .line 1715
    return-void
.end method

.method public loadEndlessIfNeeded(Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/AdConfig$AdSize;J)V
    .locals 19
    .param p1, "placement"    # Lccsancom/vungle/warren/model/Placement;
    .param p2, "size"    # Lccsancom/vungle/warren/AdConfig$AdSize;
    .param p3, "delay"    # J

    .line 1718
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lccsancom/vungle/warren/model/Placement;->isMultipleHBPEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1719
    invoke-virtual/range {p1 .. p1}, Lccsancom/vungle/warren/model/Placement;->getPlacementAdType()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 1720
    invoke-static/range {p2 .. p2}, Lccsancom/vungle/warren/AdConfig$AdSize;->isBannerAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1721
    invoke-virtual/range {p1 .. p1}, Lccsancom/vungle/warren/model/Placement;->getRecommendedAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v1

    .end local p2    # "size":Lccsancom/vungle/warren/AdConfig$AdSize;
    .local v1, "size":Lccsancom/vungle/warren/AdConfig$AdSize;
    goto :goto_0

    .line 1723
    .end local v1    # "size":Lccsancom/vungle/warren/AdConfig$AdSize;
    .restart local p2    # "size":Lccsancom/vungle/warren/AdConfig$AdSize;
    :cond_0
    move-object/from16 v1, p2

    .end local p2    # "size":Lccsancom/vungle/warren/AdConfig$AdSize;
    .restart local v1    # "size":Lccsancom/vungle/warren/AdConfig$AdSize;
    :goto_0
    move-object/from16 v15, p1

    invoke-direct {v0, v15, v1}, Lccsancom/vungle/warren/AdLoader;->isSizeInvalid(Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/AdConfig$AdSize;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1724
    return-void

    .line 1726
    :cond_1
    const/4 v3, 0x0

    .line 1727
    .local v3, "request":Lccsancom/vungle/warren/AdRequest;
    invoke-virtual/range {p1 .. p1}, Lccsancom/vungle/warren/model/Placement;->isMultipleHBPEnabled()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-virtual/range {p1 .. p1}, Lccsancom/vungle/warren/model/Placement;->isSingleHBPEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1728
    new-instance v4, Lccsancom/vungle/warren/AdRequest;

    invoke-virtual/range {p1 .. p1}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lccsancom/vungle/warren/model/Placement;->getMaxHbCache()I

    move-result v7

    int-to-long v7, v7

    invoke-direct {v4, v6, v2, v7, v8}, Lccsancom/vungle/warren/AdRequest;-><init>(Ljava/lang/String;IJ)V

    move-object v3, v4

    move-object v2, v3

    goto :goto_1

    .line 1732
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lccsancom/vungle/warren/model/Placement;->isSingleHBPEnabled()Z

    move-result v2

    const-wide/16 v6, 0x1

    if-eqz v2, :cond_3

    .line 1733
    new-instance v2, Lccsancom/vungle/warren/AdRequest;

    invoke-virtual/range {p1 .. p1}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x2

    invoke-direct {v2, v4, v8, v6, v7}, Lccsancom/vungle/warren/AdRequest;-><init>(Ljava/lang/String;IJ)V

    move-object v3, v2

    goto :goto_1

    .line 1734
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lccsancom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1735
    new-instance v2, Lccsancom/vungle/warren/AdRequest;

    invoke-virtual/range {p1 .. p1}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v5, v6, v7}, Lccsancom/vungle/warren/AdRequest;-><init>(Ljava/lang/String;IJ)V

    move-object v3, v2

    goto :goto_1

    .line 1734
    :cond_4
    move-object v2, v3

    .line 1737
    .end local v3    # "request":Lccsancom/vungle/warren/AdRequest;
    .local v2, "request":Lccsancom/vungle/warren/AdRequest;
    :goto_1
    if-eqz v2, :cond_5

    .line 1738
    new-instance v14, Lccsancom/vungle/warren/AdLoader$Operation;

    const-wide/16 v8, 0x7d0

    const/4 v10, 0x5

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 1747
    invoke-virtual/range {p1 .. p1}, Lccsancom/vungle/warren/model/Placement;->getAutoCachePriority()I

    move-result v16

    new-array v6, v5, [Lccsancom/vungle/warren/LoadAdCallback;

    move-object v3, v14

    move-object v4, v2

    move-object v5, v1

    move-object/from16 v17, v6

    move-wide/from16 v6, p3

    move-object/from16 v18, v14

    move/from16 v14, v16

    move-object/from16 v15, v17

    invoke-direct/range {v3 .. v15}, Lccsancom/vungle/warren/AdLoader$Operation;-><init>(Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/AdConfig$AdSize;JJIIIZI[Lccsancom/vungle/warren/LoadAdCallback;)V

    .line 1738
    move-object/from16 v3, v18

    invoke-virtual {v0, v3}, Lccsancom/vungle/warren/AdLoader;->load(Lccsancom/vungle/warren/AdLoader$Operation;)V

    .line 1750
    :cond_5
    return-void
.end method

.method public loadPendingInternal(Lccsancom/vungle/warren/AdRequest;)V
    .locals 3
    .param p1, "request"    # Lccsancom/vungle/warren/AdRequest;

    .line 417
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader;->pendingOperations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/AdLoader$Operation;

    .line 418
    .local v0, "op":Lccsancom/vungle/warren/AdLoader$Operation;
    if-nez v0, :cond_0

    .line 419
    return-void

    .line 421
    :cond_0
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lccsancom/vungle/warren/AdLoader$Operation;->delay(J)Lccsancom/vungle/warren/AdLoader$Operation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsancom/vungle/warren/AdLoader;->load(Lccsancom/vungle/warren/AdLoader$Operation;)V

    .line 422
    return-void
.end method

.method saveAsset(Lccsancom/vungle/warren/model/Advertisement;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "advertisement"    # Lccsancom/vungle/warren/model/Advertisement;
    .param p2, "destinationDir"    # Ljava/io/File;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1017
    .local v0, "path":Ljava/lang/String;
    const-string v1, "postroll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const-string v1, "template"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1019
    :cond_0
    const/4 v1, 0x2

    goto :goto_1

    .line 1018
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 1019
    :goto_1
    nop

    .line 1021
    .local v1, "type":I
    new-instance v4, Lccsancom/vungle/warren/model/AdAsset;

    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p4, v0}, Lccsancom/vungle/warren/model/AdAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    .local v4, "adAsset":Lccsancom/vungle/warren/model/AdAsset;
    iput v3, v4, Lccsancom/vungle/warren/model/AdAsset;->status:I

    .line 1023
    iput v1, v4, Lccsancom/vungle/warren/model/AdAsset;->fileType:I

    .line 1025
    :try_start_0
    iget-object v5, p0, Lccsancom/vungle/warren/AdLoader;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v5, v4}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    nop

    .line 1031
    return-void

    .line 1026
    :catch_0
    move-exception v5

    .line 1027
    .local v5, "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v5, v2, v3

    .line 1028
    const-string v3, "Can\'t save adAsset %1$s; exception = %2$s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1027
    const-string v3, "AdLoader#saveAsset; loadAd sequence"

    invoke-static {v3, v2}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    throw v5
.end method

.method setAdLoadOptimizationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1901
    iput-boolean p1, p0, Lccsancom/vungle/warren/AdLoader;->adLoadOptimizationEnabled:Z

    .line 1902
    return-void
.end method
