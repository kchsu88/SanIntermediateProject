.class public Lccsancom/vungle/warren/Vungle;
.super Ljava/lang/Object;
.source "Vungle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/Vungle$Consent;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field static final _instance:Lccsancom/vungle/warren/Vungle;

.field private static cacheListener:Lccsancom/vungle/warren/persistence/CacheManager$Listener;

.field private static isDepInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile isInitialized:Z

.field private static isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private volatile appID:Ljava/lang/String;

.field private final ccpaStatus:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lccsancom/vungle/warren/Vungle$Consent;",
            ">;"
        }
    .end annotation
.end field

.field private final consent:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lccsancom/vungle/warren/Vungle$Consent;",
            ">;"
        }
    .end annotation
.end field

.field private volatile consentVersion:Ljava/lang/String;

.field private context:Lccsanandroid/content/Context;

.field private gson:Lccsancom/google/gson/Gson;

.field private hbpOrdinalViewCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private playOperations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 103
    new-instance v0, Lccsancom/vungle/warren/Vungle;

    invoke-direct {v0}, Lccsancom/vungle/warren/Vungle;-><init>()V

    sput-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    .line 105
    const-class v0, Lccsancom/vungle/warren/Vungle;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    .line 142
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lccsancom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 143
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lccsancom/vungle/warren/Vungle;->isDepInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1775
    new-instance v0, Lccsancom/vungle/warren/Vungle$16;

    invoke-direct {v0}, Lccsancom/vungle/warren/Vungle$16;-><init>()V

    sput-object v0, Lccsancom/vungle/warren/Vungle;->cacheListener:Lccsancom/vungle/warren/persistence/CacheManager$Listener;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/Vungle;->consent:Ljava/util/concurrent/atomic/AtomicReference;

    .line 122
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/Vungle;->ccpaStatus:Ljava/util/concurrent/atomic/AtomicReference;

    .line 127
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/Vungle;->playOperations:Ljava/util/Map;

    .line 145
    new-instance v0, Lccsancom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lccsancom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lccsancom/google/gson/GsonBuilder;->create()Lccsancom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/Vungle;->gson:Lccsancom/google/gson/Gson;

    .line 148
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lccsancom/vungle/warren/Vungle;->hbpOrdinalViewCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 154
    return-void
.end method

.method static synthetic access$002(Lccsancom/vungle/warren/Vungle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/Vungle;
    .param p1, "x1"    # Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lccsancom/vungle/warren/Vungle;->appID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 102
    sget-object v0, Lccsancom/vungle/warren/Vungle;->isDepInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1000(Lccsancom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/Vungle;

    .line 102
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle;->ccpaStatus:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$1100(Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/Vungle$Consent;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/persistence/Repository;
    .param p1, "x1"    # Lccsancom/vungle/warren/Vungle$Consent;

    .line 102
    invoke-static {p0, p1}, Lccsancom/vungle/warren/Vungle;->updateCCPAStatus(Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/Vungle$Consent;)V

    return-void
.end method

.method static synthetic access$1200(Lccsancom/vungle/warren/model/Cookie;)Lccsancom/vungle/warren/Vungle$Consent;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/model/Cookie;

    .line 102
    invoke-static {p0}, Lccsancom/vungle/warren/Vungle;->getCCPAStatus(Lccsancom/vungle/warren/model/Cookie;)Lccsancom/vungle/warren/Vungle$Consent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 102
    sget-object v0, Lccsancom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1400(Lccsancom/vungle/warren/Vungle;Lccsancom/vungle/warren/InitCallback;Z)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/Vungle;
    .param p1, "x1"    # Lccsancom/vungle/warren/InitCallback;
    .param p2, "x2"    # Z

    .line 102
    invoke-direct {p0, p1, p2}, Lccsancom/vungle/warren/Vungle;->configure(Lccsancom/vungle/warren/InitCallback;Z)V

    return-void
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    .line 102
    sget-object v0, Lccsancom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lccsancom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/Vungle;

    .line 102
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle;->hbpOrdinalViewCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1700(Lccsancom/vungle/warren/Vungle;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/Vungle;

    .line 102
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle;->playOperations:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1800(Ljava/lang/String;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/error/VungleException;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lccsancom/vungle/warren/PlayAdCallback;
    .param p2, "x2"    # Lccsancom/vungle/warren/error/VungleException;

    .line 102
    invoke-static {p0, p1, p2}, Lccsancom/vungle/warren/Vungle;->onPlayError(Ljava/lang/String;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/error/VungleException;)V

    return-void
.end method

.method static synthetic access$1900(Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/model/Advertisement;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/AdRequest;
    .param p1, "x1"    # Lccsancom/vungle/warren/PlayAdCallback;
    .param p2, "x2"    # Lccsancom/vungle/warren/model/Placement;
    .param p3, "x3"    # Lccsancom/vungle/warren/model/Advertisement;

    .line 102
    invoke-static {p0, p1, p2, p3}, Lccsancom/vungle/warren/Vungle;->renderAd(Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/model/Advertisement;)V

    return-void
.end method

.method static synthetic access$200(Lccsancom/vungle/warren/InitCallback;Lccsancom/vungle/warren/error/VungleException;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/InitCallback;
    .param p1, "x1"    # Lccsancom/vungle/warren/error/VungleException;

    .line 102
    invoke-static {p0, p1}, Lccsancom/vungle/warren/Vungle;->onInitError(Lccsancom/vungle/warren/InitCallback;Lccsancom/vungle/warren/error/VungleException;)V

    return-void
.end method

.method static synthetic access$2000()V
    .locals 0

    .line 102
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->stopPlaying()V

    return-void
.end method

.method static synthetic access$300()Lccsancom/vungle/warren/persistence/CacheManager$Listener;
    .locals 1

    .line 102
    sget-object v0, Lccsancom/vungle/warren/Vungle;->cacheListener:Lccsancom/vungle/warren/persistence/CacheManager$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lccsancom/vungle/warren/Vungle;)Lccsanandroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/Vungle;

    .line 102
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Lccsancom/vungle/warren/Vungle;Lccsanandroid/content/Context;)Lccsanandroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/Vungle;
    .param p1, "x1"    # Lccsanandroid/content/Context;

    .line 102
    iput-object p1, p0, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    return-object p1
.end method

.method static synthetic access$500(Lccsancom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/Vungle;

    .line 102
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle;->consent:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$600(Lccsancom/vungle/warren/Vungle;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/Vungle;

    .line 102
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle;->consentVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lccsancom/vungle/warren/Vungle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/Vungle;
    .param p1, "x1"    # Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lccsancom/vungle/warren/Vungle;->consentVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/persistence/Repository;
    .param p1, "x1"    # Lccsancom/vungle/warren/Vungle$Consent;
    .param p2, "x2"    # Ljava/lang/String;

    .line 102
    invoke-static {p0, p1, p2}, Lccsancom/vungle/warren/Vungle;->saveGDPRConsent(Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lccsancom/vungle/warren/model/Cookie;)Lccsancom/vungle/warren/Vungle$Consent;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/model/Cookie;

    .line 102
    invoke-static {p0}, Lccsancom/vungle/warren/Vungle;->getConsent(Lccsancom/vungle/warren/model/Cookie;)Lccsancom/vungle/warren/Vungle$Consent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lccsancom/vungle/warren/model/Cookie;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/model/Cookie;

    .line 102
    invoke-static {p0}, Lccsancom/vungle/warren/Vungle;->getConsentMessageVersion(Lccsancom/vungle/warren/model/Cookie;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static appContext()Lccsanandroid/content/Context;
    .locals 1

    .line 1810
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    if-eqz v0, :cond_0

    .line 1811
    iget-object v0, v0, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    return-object v0

    .line 1813
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static canPlayAd(Lccsancom/vungle/warren/model/Advertisement;)Z
    .locals 2
    .param p0, "advertisement"    # Lccsancom/vungle/warren/model/Advertisement;

    .line 860
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    iget-object v0, v0, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    if-nez v0, :cond_0

    .line 861
    const/4 v0, 0x0

    return v0

    .line 864
    :cond_0
    invoke-static {v0}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v0

    const-class v1, Lccsancom/vungle/warren/AdLoader;

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/AdLoader;

    .line 865
    .local v0, "adLoader":Lccsancom/vungle/warren/AdLoader;
    invoke-virtual {v0, p0}, Lccsancom/vungle/warren/AdLoader;->canPlayAd(Lccsancom/vungle/warren/model/Advertisement;)Z

    move-result v1

    return v1
.end method

.method public static canPlayAd(Ljava/lang/String;)Z
    .locals 1
    .param p0, "placementId"    # Ljava/lang/String;

    .line 781
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lccsancom/vungle/warren/Vungle;->canPlayAd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static canPlayAd(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "markup"    # Ljava/lang/String;

    .line 795
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    iget-object v0, v0, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    .line 797
    .local v0, "context":Lccsanandroid/content/Context;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 798
    sget-object v2, Lccsancom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v3, "Context is null"

    invoke-static {v2, v3}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    return v1

    .line 802
    :cond_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 803
    sget-object v2, Lccsancom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v3, "AdMarkup/PlacementId is null"

    invoke-static {v2, v3}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return v1

    .line 807
    :cond_1
    invoke-static {v0}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v1

    .line 808
    .local v1, "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    const-class v2, Lccsancom/vungle/warren/utility/Executors;

    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/utility/Executors;

    .line 809
    .local v2, "sdkExecutors":Lccsancom/vungle/warren/utility/Executors;
    const-class v3, Lccsancom/vungle/warren/utility/TimeoutProvider;

    invoke-virtual {v1, v3}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/vungle/warren/utility/TimeoutProvider;

    .line 811
    .local v3, "provider":Lccsancom/vungle/warren/utility/TimeoutProvider;
    new-instance v4, Lccsancom/vungle/warren/persistence/FutureResult;

    invoke-interface {v2}, Lccsancom/vungle/warren/utility/Executors;->getApiExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    new-instance v6, Lccsancom/vungle/warren/Vungle$8;

    invoke-direct {v6, v0, p0, p1}, Lccsancom/vungle/warren/Vungle$8;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    invoke-direct {v4, v5}, Lccsancom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    .line 855
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

.method private static clearAdvertisements()V
    .locals 3

    .line 1258
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1259
    sget-object v0, Lccsancom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v1, "Vungle is not initialized"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    return-void

    .line 1263
    :cond_0
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    iget-object v0, v0, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 1264
    .local v0, "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    const-class v1, Lccsancom/vungle/warren/utility/Executors;

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/utility/Executors;

    invoke-interface {v1}, Lccsancom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lccsancom/vungle/warren/Vungle$12;

    invoke-direct {v2, v0}, Lccsancom/vungle/warren/Vungle$12;-><init>(Lccsancom/vungle/warren/ServiceLocator;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1288
    return-void
.end method

.method private static clearCache()V
    .locals 3

    .line 1229
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1230
    sget-object v0, Lccsancom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v1, "Vungle is not initialized"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    return-void

    .line 1234
    :cond_0
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    iget-object v0, v0, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 1235
    .local v0, "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    const-class v1, Lccsancom/vungle/warren/utility/Executors;

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/utility/Executors;

    invoke-interface {v1}, Lccsancom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lccsancom/vungle/warren/Vungle$11;

    invoke-direct {v2, v0}, Lccsancom/vungle/warren/Vungle$11;-><init>(Lccsancom/vungle/warren/ServiceLocator;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1251
    return-void
.end method

.method private configure(Lccsancom/vungle/warren/InitCallback;Z)V
    .locals 36
    .param p1, "callback"    # Lccsancom/vungle/warren/InitCallback;
    .param p2, "isReconfig"    # Z

    .line 417
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "timeout"

    const-string v3, "cache_bust"

    const-string v4, "session"

    const-string v5, "crash_report"

    const-string v6, "consentIsImportantToVungle"

    const-string v7, "logging"

    const-string v8, "gdpr"

    const-string v9, "clever_cache"

    const-string v10, "button_deny"

    const-string v11, "button_accept"

    const-string v12, "consent_message_version"

    const-string v13, "consent_message"

    const-string v14, "consent_title"

    const-string v15, "is_country_data_protected"

    move-object/from16 v16, v3

    :try_start_0
    iget-object v3, v1, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    if-eqz v3, :cond_2a

    .line 420
    invoke-static {v3}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v3

    .line 421
    .local v3, "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    move-object/from16 v17, v0

    const-class v0, Lccsancom/vungle/warren/VungleApiClient;

    invoke-virtual {v3, v0}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/VungleApiClient;

    move-object/from16 v18, v0

    .line 422
    .local v18, "vungleApiClient":Lccsancom/vungle/warren/VungleApiClient;
    iget-object v0, v1, Lccsancom/vungle/warren/Vungle;->appID:Ljava/lang/String;

    move-object/from16 v19, v4

    move-object/from16 v4, v18

    .end local v18    # "vungleApiClient":Lccsancom/vungle/warren/VungleApiClient;
    .local v4, "vungleApiClient":Lccsancom/vungle/warren/VungleApiClient;
    invoke-virtual {v4, v0}, Lccsancom/vungle/warren/VungleApiClient;->setAppId(Ljava/lang/String;)V

    .line 423
    const-class v0, Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v3, v0}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/persistence/Repository;

    move-object/from16 v18, v0

    .line 424
    .local v18, "repository":Lccsancom/vungle/warren/persistence/Repository;
    const-class v0, Lccsancom/vungle/warren/tasks/JobRunner;

    invoke-virtual {v3, v0}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/tasks/JobRunner;

    move-object/from16 v20, v0

    .line 426
    .local v20, "jobRunner":Lccsancom/vungle/warren/tasks/JobRunner;
    invoke-virtual {v4}, Lccsancom/vungle/warren/VungleApiClient;->config()Lccsancom/vungle/warren/network/Response;

    move-result-object v0

    move-object/from16 v21, v0

    .line 428
    .local v21, "response":Lccsancom/vungle/warren/network/Response;, "Lccsancom/vungle/warren/network/Response<Lccsancom/google/gson/JsonObject;>;"
    move-object v0, v5

    move-object/from16 v5, v21

    .end local v21    # "response":Lccsancom/vungle/warren/network/Response;, "Lccsancom/vungle/warren/network/Response<Lccsancom/google/gson/JsonObject;>;"
    .local v5, "response":Lccsancom/vungle/warren/network/Response;, "Lccsancom/vungle/warren/network/Response<Lccsancom/google/gson/JsonObject;>;"
    if-nez v5, :cond_0

    .line 429
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    const/4 v6, 0x2

    invoke-direct {v0, v6}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v2, v0}, Lccsancom/vungle/warren/Vungle;->onInitError(Lccsancom/vungle/warren/InitCallback;Lccsancom/vungle/warren/error/VungleException;)V

    .line 430
    sget-object v0, Lccsancom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 431
    return-void

    .line 434
    :cond_0
    invoke-virtual {v5}, Lccsancom/vungle/warren/network/Response;->isSuccessful()Z

    move-result v21

    const-wide/16 v22, 0x0

    if-nez v21, :cond_2

    .line 435
    invoke-virtual {v4, v5}, Lccsancom/vungle/warren/VungleApiClient;->getRetryAfterHeaderValue(Lccsancom/vungle/warren/network/Response;)J

    move-result-wide v6

    .line 436
    .local v6, "retryAfterHeaderValue":J
    cmp-long v0, v6, v22

    if-lez v0, :cond_1

    .line 437
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    iget-object v0, v0, Lccsancom/vungle/warren/Vungle;->appID:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/vungle/warren/tasks/ReconfigJob;->makeJobInfo(Ljava/lang/String;)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lccsancom/vungle/warren/tasks/JobInfo;->setDelay(J)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v0

    move-object/from16 v8, v20

    .end local v20    # "jobRunner":Lccsancom/vungle/warren/tasks/JobRunner;
    .local v8, "jobRunner":Lccsancom/vungle/warren/tasks/JobRunner;
    invoke-interface {v8, v0}, Lccsancom/vungle/warren/tasks/JobRunner;->execute(Lccsancom/vungle/warren/tasks/JobInfo;)V

    .line 438
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    const/16 v9, 0xe

    invoke-direct {v0, v9}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v2, v0}, Lccsancom/vungle/warren/Vungle;->onInitError(Lccsancom/vungle/warren/InitCallback;Lccsancom/vungle/warren/error/VungleException;)V

    .line 439
    sget-object v0, Lccsancom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 440
    return-void

    .line 442
    .end local v8    # "jobRunner":Lccsancom/vungle/warren/tasks/JobRunner;
    .restart local v20    # "jobRunner":Lccsancom/vungle/warren/tasks/JobRunner;
    :cond_1
    move-object/from16 v8, v20

    .end local v20    # "jobRunner":Lccsancom/vungle/warren/tasks/JobRunner;
    .restart local v8    # "jobRunner":Lccsancom/vungle/warren/tasks/JobRunner;
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    const/4 v9, 0x3

    invoke-direct {v0, v9}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v2, v0}, Lccsancom/vungle/warren/Vungle;->onInitError(Lccsancom/vungle/warren/InitCallback;Lccsancom/vungle/warren/error/VungleException;)V

    .line 443
    sget-object v0, Lccsancom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 444
    return-void

    .line 447
    .end local v6    # "retryAfterHeaderValue":J
    .end local v8    # "jobRunner":Lccsancom/vungle/warren/tasks/JobRunner;
    .restart local v20    # "jobRunner":Lccsancom/vungle/warren/tasks/JobRunner;
    :cond_2
    move-object/from16 v24, v20

    .end local v20    # "jobRunner":Lccsancom/vungle/warren/tasks/JobRunner;
    .local v24, "jobRunner":Lccsancom/vungle/warren/tasks/JobRunner;
    move-object/from16 v20, v0

    const-class v0, Lccsancom/vungle/warren/persistence/FilePreferences;

    invoke-virtual {v3, v0}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/persistence/FilePreferences;

    move-object/from16 v21, v0

    .line 450
    .local v21, "preferences":Lccsancom/vungle/warren/persistence/FilePreferences;
    const-string v0, "reported"

    move-object/from16 v25, v7

    move-object/from16 v7, v21

    move-object/from16 v21, v10

    const/4 v10, 0x0

    .end local v21    # "preferences":Lccsancom/vungle/warren/persistence/FilePreferences;
    .local v7, "preferences":Lccsancom/vungle/warren/persistence/FilePreferences;
    invoke-virtual {v7, v0, v10}, Lccsancom/vungle/warren/persistence/FilePreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 451
    invoke-virtual {v4}, Lccsancom/vungle/warren/VungleApiClient;->reportNew()Lccsancom/vungle/warren/network/Call;

    move-result-object v0

    new-instance v10, Lccsancom/vungle/warren/Vungle$3;

    invoke-direct {v10, v1, v7}, Lccsancom/vungle/warren/Vungle$3;-><init>(Lccsancom/vungle/warren/Vungle;Lccsancom/vungle/warren/persistence/FilePreferences;)V

    invoke-interface {v0, v10}, Lccsancom/vungle/warren/network/Call;->enqueue(Lccsancom/vungle/warren/network/Callback;)V

    .line 470
    :cond_3
    invoke-virtual {v5}, Lccsancom/vungle/warren/network/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/gson/JsonObject;

    move-object v10, v0

    .line 472
    .local v10, "jsonObject":Lccsancom/google/gson/JsonObject;
    const-string v0, "placements"

    invoke-virtual {v10, v0}, Lccsancom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lccsancom/google/gson/JsonArray;

    move-result-object v0

    move-object/from16 v26, v0

    .line 474
    .local v26, "placementsData":Lccsancom/google/gson/JsonArray;
    if-nez v26, :cond_4

    .line 475
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    const/4 v6, 0x3

    invoke-direct {v0, v6}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v2, v0}, Lccsancom/vungle/warren/Vungle;->onInitError(Lccsancom/vungle/warren/InitCallback;Lccsancom/vungle/warren/error/VungleException;)V

    .line 476
    sget-object v0, Lccsancom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 477
    return-void

    .line 480
    :cond_4
    invoke-static {v10}, Lccsancom/vungle/warren/CleverCacheSettings;->fromJson(Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/CleverCacheSettings;

    move-result-object v0

    move-object/from16 v27, v0

    .line 481
    .local v27, "settings":Lccsancom/vungle/warren/CleverCacheSettings;
    const-class v0, Lccsancom/vungle/warren/downloader/Downloader;

    invoke-virtual {v3, v0}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/downloader/Downloader;

    move-object/from16 v28, v0

    .line 483
    .local v28, "downloader":Lccsancom/vungle/warren/downloader/Downloader;
    move-object/from16 v29, v4

    .end local v4    # "vungleApiClient":Lccsancom/vungle/warren/VungleApiClient;
    .local v29, "vungleApiClient":Lccsancom/vungle/warren/VungleApiClient;
    if-eqz v27, :cond_9

    .line 484
    const/4 v0, 0x0

    .line 485
    invoke-virtual {v7, v9, v0}, Lccsancom/vungle/warren/persistence/FilePreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    invoke-static {v0}, Lccsancom/vungle/warren/CleverCacheSettings;->deserializeFromString(Ljava/lang/String;)Lccsancom/vungle/warren/CleverCacheSettings;

    move-result-object v0

    .line 487
    .local v0, "currentCacheSettings":Lccsancom/vungle/warren/CleverCacheSettings;
    if-eqz v0, :cond_6

    .line 488
    invoke-virtual {v0}, Lccsancom/vungle/warren/CleverCacheSettings;->getTimestamp()J

    move-result-wide v30

    invoke-virtual/range {v27 .. v27}, Lccsancom/vungle/warren/CleverCacheSettings;->getTimestamp()J

    move-result-wide v32

    cmp-long v34, v30, v32

    if-eqz v34, :cond_5

    goto :goto_0

    :cond_5
    const/16 v30, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/16 v30, 0x1

    .line 490
    .local v30, "timestampChanged":Z
    :goto_1
    invoke-virtual/range {v27 .. v27}, Lccsancom/vungle/warren/CleverCacheSettings;->isEnabled()Z

    move-result v31

    if-eqz v31, :cond_7

    if-eqz v30, :cond_8

    .line 491
    :cond_7
    invoke-interface/range {v28 .. v28}, Lccsancom/vungle/warren/downloader/Downloader;->clearCache()V

    .line 494
    :cond_8
    invoke-virtual/range {v27 .. v27}, Lccsancom/vungle/warren/CleverCacheSettings;->isEnabled()Z

    move-result v4

    move-object/from16 v32, v5

    move-object/from16 v5, v28

    .end local v28    # "downloader":Lccsancom/vungle/warren/downloader/Downloader;
    .local v5, "downloader":Lccsancom/vungle/warren/downloader/Downloader;
    .local v32, "response":Lccsancom/vungle/warren/network/Response;, "Lccsancom/vungle/warren/network/Response<Lccsancom/google/gson/JsonObject;>;"
    invoke-interface {v5, v4}, Lccsancom/vungle/warren/downloader/Downloader;->setCacheEnabled(Z)V

    .line 496
    invoke-virtual/range {v27 .. v27}, Lccsancom/vungle/warren/CleverCacheSettings;->serializeToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v9, v4}, Lccsancom/vungle/warren/persistence/FilePreferences;->put(Ljava/lang/String;Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FilePreferences;

    move-result-object v4

    .line 497
    invoke-virtual {v4}, Lccsancom/vungle/warren/persistence/FilePreferences;->apply()V

    .line 498
    .end local v0    # "currentCacheSettings":Lccsancom/vungle/warren/CleverCacheSettings;
    .end local v30    # "timestampChanged":Z
    goto :goto_2

    .line 499
    .end local v32    # "response":Lccsancom/vungle/warren/network/Response;, "Lccsancom/vungle/warren/network/Response<Lccsancom/google/gson/JsonObject;>;"
    .local v5, "response":Lccsancom/vungle/warren/network/Response;, "Lccsancom/vungle/warren/network/Response<Lccsancom/google/gson/JsonObject;>;"
    .restart local v28    # "downloader":Lccsancom/vungle/warren/downloader/Downloader;
    :cond_9
    move-object/from16 v32, v5

    move-object/from16 v5, v28

    .end local v28    # "downloader":Lccsancom/vungle/warren/downloader/Downloader;
    .local v5, "downloader":Lccsancom/vungle/warren/downloader/Downloader;
    .restart local v32    # "response":Lccsancom/vungle/warren/network/Response;, "Lccsancom/vungle/warren/network/Response<Lccsancom/google/gson/JsonObject;>;"
    const/4 v4, 0x1

    invoke-interface {v5, v4}, Lccsancom/vungle/warren/downloader/Downloader;->setCacheEnabled(Z)V

    .line 502
    :goto_2
    const-class v0, Lccsancom/vungle/warren/AdLoader;

    invoke-virtual {v3, v0}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/AdLoader;

    move-object v4, v0

    .line 506
    .local v4, "adLoader":Lccsancom/vungle/warren/AdLoader;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 507
    .local v9, "newPlacements":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Placement;>;"
    invoke-virtual/range {v26 .. v26}, Lccsancom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lccsancom/google/gson/JsonElement;

    .line 508
    .local v28, "jsonElement":Lccsancom/google/gson/JsonElement;
    move-object/from16 v30, v0

    new-instance v0, Lccsancom/vungle/warren/model/Placement;

    move-object/from16 v33, v5

    .end local v5    # "downloader":Lccsancom/vungle/warren/downloader/Downloader;
    .local v33, "downloader":Lccsancom/vungle/warren/downloader/Downloader;
    invoke-virtual/range {v28 .. v28}, Lccsancom/google/gson/JsonElement;->getAsJsonObject()Lccsancom/google/gson/JsonObject;

    move-result-object v5

    invoke-direct {v0, v5}, Lccsancom/vungle/warren/model/Placement;-><init>(Lccsancom/google/gson/JsonObject;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    move-object/from16 v0, v30

    move-object/from16 v5, v33

    .end local v28    # "jsonElement":Lccsancom/google/gson/JsonElement;
    goto :goto_3

    .line 511
    .end local v33    # "downloader":Lccsancom/vungle/warren/downloader/Downloader;
    .restart local v5    # "downloader":Lccsancom/vungle/warren/downloader/Downloader;
    :cond_a
    move-object/from16 v33, v5

    .end local v5    # "downloader":Lccsancom/vungle/warren/downloader/Downloader;
    .restart local v33    # "downloader":Lccsancom/vungle/warren/downloader/Downloader;
    move-object/from16 v5, v18

    .end local v18    # "repository":Lccsancom/vungle/warren/persistence/Repository;
    .local v5, "repository":Lccsancom/vungle/warren/persistence/Repository;
    invoke-virtual {v5, v9}, Lccsancom/vungle/warren/persistence/Repository;->setValidPlacements(Ljava/util/List;)V

    .line 513
    invoke-virtual {v10, v8}, Lccsancom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 515
    const-class v0, Lccsancom/vungle/warren/model/Cookie;

    invoke-virtual {v5, v6, v0}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/model/Cookie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    .local v0, "gdprConsent":Lccsancom/vungle/warren/model/Cookie;
    move-object/from16 v18, v7

    .end local v7    # "preferences":Lccsancom/vungle/warren/persistence/FilePreferences;
    .local v18, "preferences":Lccsancom/vungle/warren/persistence/FilePreferences;
    const-string v7, "consent_source"

    if-nez v0, :cond_b

    .line 518
    move-object/from16 v28, v0

    .end local v0    # "gdprConsent":Lccsancom/vungle/warren/model/Cookie;
    .local v28, "gdprConsent":Lccsancom/vungle/warren/model/Cookie;
    :try_start_1
    new-instance v0, Lccsancom/vungle/warren/model/Cookie;

    invoke-direct {v0, v6}, Lccsancom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    .line 519
    .end local v28    # "gdprConsent":Lccsancom/vungle/warren/model/Cookie;
    .restart local v0    # "gdprConsent":Lccsancom/vungle/warren/model/Cookie;
    const-string v6, "consent_status"

    move-object/from16 v30, v9

    .end local v9    # "newPlacements":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Placement;>;"
    .local v30, "newPlacements":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Placement;>;"
    const-string v9, "unknown"

    invoke-virtual {v0, v6, v9}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 520
    const-string v6, "no_interaction"

    invoke-virtual {v0, v7, v6}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 521
    const-string v6, "timestamp"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 516
    .end local v30    # "newPlacements":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Placement;>;"
    .restart local v9    # "newPlacements":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Placement;>;"
    :cond_b
    move-object/from16 v28, v0

    move-object/from16 v30, v9

    .line 524
    .end local v9    # "newPlacements":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Placement;>;"
    .restart local v30    # "newPlacements":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Placement;>;"
    :goto_4
    invoke-virtual {v10, v8}, Lccsancom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lccsancom/google/gson/JsonObject;

    move-result-object v6

    .line 526
    .local v6, "gdprJsonObject":Lccsancom/google/gson/JsonObject;
    invoke-static {v6, v15}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v6, v15}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lccsancom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v8, 0x1

    goto :goto_5

    :cond_c
    const/4 v8, 0x0

    .line 527
    .local v8, "isCountryDataProtected":Z
    :goto_5
    invoke-static {v6, v14}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v22, ""

    if-eqz v9, :cond_d

    :try_start_2
    invoke-virtual {v6, v14}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_d
    move-object/from16 v9, v22

    .line 528
    .local v9, "consentTitle":Ljava/lang/String;
    :goto_6
    invoke-static {v6, v13}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_e

    invoke-virtual {v6, v13}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v23

    goto :goto_7

    :cond_e
    move-object/from16 v23, v22

    .line 529
    .local v23, "consentMessage":Ljava/lang/String;
    :goto_7
    invoke-static {v6, v12}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_f

    invoke-virtual {v6, v12}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v28

    goto :goto_8

    :cond_f
    move-object/from16 v28, v22

    .line 530
    .local v28, "consentMessageVersion":Ljava/lang/String;
    :goto_8
    invoke-static {v6, v11}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_10

    invoke-virtual {v6, v11}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v34

    goto :goto_9

    :cond_10
    move-object/from16 v34, v22

    .line 531
    .local v34, "acceptText":Ljava/lang/String;
    :goto_9
    move-object/from16 v2, v21

    invoke-static {v6, v2}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_11

    invoke-virtual {v6, v2}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v21

    goto :goto_a

    :cond_11
    move-object/from16 v21, v22

    .line 533
    .local v21, "denyText":Ljava/lang/String;
    :goto_a
    move-object/from16 v35, v6

    .end local v6    # "gdprJsonObject":Lccsancom/google/gson/JsonObject;
    .local v35, "gdprJsonObject":Lccsancom/google/gson/JsonObject;
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v15, v6}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 535
    invoke-static {v9}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_12

    const-string v6, "Targeted Ads"

    goto :goto_b

    :cond_12
    move-object v6, v9

    :goto_b
    invoke-virtual {v0, v14, v6}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 537
    invoke-static/range {v23 .. v23}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 538
    const-string v6, "To receive more relevant ad content based on your interactions with our ads, click \"I Consent\" below. Either way, you will see the same amount of ads."

    goto :goto_c

    :cond_13
    move-object/from16 v6, v23

    .line 537
    :goto_c
    invoke-virtual {v0, v13, v6}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 541
    invoke-virtual {v0, v7}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 542
    .local v6, "strGDPRCurrentSource":Ljava/lang/String;
    const-string v7, "publisher"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_15

    .line 543
    invoke-static/range {v28 .. v28}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_14

    move-object/from16 v7, v22

    goto :goto_d

    :cond_14
    move-object/from16 v7, v28

    :goto_d
    invoke-virtual {v0, v12, v7}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 546
    :cond_15
    invoke-static/range {v34 .. v34}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_16

    const-string v7, "I Consent"

    goto :goto_e

    :cond_16
    move-object/from16 v7, v34

    :goto_e
    invoke-virtual {v0, v11, v7}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 548
    invoke-static/range {v21 .. v21}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_17

    const-string v7, "I Do Not Consent"

    goto :goto_f

    :cond_17
    move-object/from16 v7, v21

    :goto_f
    invoke-virtual {v0, v2, v7}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 550
    invoke-virtual {v5, v0}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    goto :goto_10

    .line 513
    .end local v0    # "gdprConsent":Lccsancom/vungle/warren/model/Cookie;
    .end local v6    # "strGDPRCurrentSource":Ljava/lang/String;
    .end local v8    # "isCountryDataProtected":Z
    .end local v18    # "preferences":Lccsancom/vungle/warren/persistence/FilePreferences;
    .end local v21    # "denyText":Ljava/lang/String;
    .end local v23    # "consentMessage":Ljava/lang/String;
    .end local v28    # "consentMessageVersion":Ljava/lang/String;
    .end local v30    # "newPlacements":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Placement;>;"
    .end local v34    # "acceptText":Ljava/lang/String;
    .end local v35    # "gdprJsonObject":Lccsancom/google/gson/JsonObject;
    .restart local v7    # "preferences":Lccsancom/vungle/warren/persistence/FilePreferences;
    .local v9, "newPlacements":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Placement;>;"
    :cond_18
    move-object/from16 v18, v7

    move-object/from16 v30, v9

    .line 553
    .end local v7    # "preferences":Lccsancom/vungle/warren/persistence/FilePreferences;
    .end local v9    # "newPlacements":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Placement;>;"
    .restart local v18    # "preferences":Lccsancom/vungle/warren/persistence/FilePreferences;
    .restart local v30    # "newPlacements":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Placement;>;"
    :goto_10
    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Lccsancom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v6, "enabled"

    if-eqz v2, :cond_1a

    .line 554
    :try_start_3
    const-class v2, Lccsancom/vungle/warren/log/LogManager;

    invoke-virtual {v3, v2}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/log/LogManager;

    .line 555
    .local v2, "logManager":Lccsancom/vungle/warren/log/LogManager;
    invoke-virtual {v10, v0}, Lccsancom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lccsancom/google/gson/JsonObject;

    move-result-object v0

    .line 556
    .local v0, "attributionLogging":Lccsancom/google/gson/JsonObject;
    invoke-static {v0, v6}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-virtual {v0, v6}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lccsancom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v7

    goto :goto_11

    :cond_19
    const/4 v7, 0x0

    .line 557
    .local v7, "enabled":Z
    :goto_11
    invoke-virtual {v2, v7}, Lccsancom/vungle/warren/log/LogManager;->setLoggingEnabled(Z)V

    .line 561
    .end local v0    # "attributionLogging":Lccsancom/google/gson/JsonObject;
    .end local v2    # "logManager":Lccsancom/vungle/warren/log/LogManager;
    .end local v7    # "enabled":Z
    :cond_1a
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lccsancom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 562
    const-class v2, Lccsancom/vungle/warren/log/LogManager;

    invoke-virtual {v3, v2}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/log/LogManager;

    .line 563
    .restart local v2    # "logManager":Lccsancom/vungle/warren/log/LogManager;
    invoke-virtual {v10, v0}, Lccsancom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lccsancom/google/gson/JsonObject;

    move-result-object v0

    .line 564
    .local v0, "crashConfig":Lccsancom/google/gson/JsonObject;
    invoke-static {v0, v6}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-virtual {v0, v6}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lccsancom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v7

    goto :goto_12

    :cond_1b
    const/4 v7, 0x0

    .line 565
    .restart local v7    # "enabled":Z
    :goto_12
    const-string v8, "collect_filter"

    invoke-static {v0, v8}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1c

    const-string v8, "collect_filter"

    invoke-virtual {v0, v8}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    goto :goto_13

    :cond_1c
    sget-object v8, Lccsancom/vungle/warren/log/LogManager;->sDefaultCollectFilter:Ljava/lang/String;

    .line 566
    .local v8, "filter":Ljava/lang/String;
    :goto_13
    const-string v9, "max_send_amount"

    invoke-static {v0, v9}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1d

    const-string v9, "max_send_amount"

    invoke-virtual {v0, v9}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lccsancom/google/gson/JsonElement;->getAsInt()I

    move-result v9

    goto :goto_14

    :cond_1d
    const/4 v9, 0x5

    .line 567
    .local v9, "batchMax":I
    :goto_14
    invoke-virtual {v2, v7, v8, v9}, Lccsancom/vungle/warren/log/LogManager;->updateCrashReportConfig(ZLjava/lang/String;I)V

    .line 571
    .end local v0    # "crashConfig":Lccsancom/google/gson/JsonObject;
    .end local v2    # "logManager":Lccsancom/vungle/warren/log/LogManager;
    .end local v7    # "enabled":Z
    .end local v8    # "filter":Ljava/lang/String;
    .end local v9    # "batchMax":I
    :cond_1e
    const/16 v0, 0x384

    .line 572
    .local v0, "sessionTimeoutInSec":I
    move-object/from16 v2, v19

    invoke-virtual {v10, v2}, Lccsancom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 573
    invoke-virtual {v10, v2}, Lccsancom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lccsancom/google/gson/JsonObject;

    move-result-object v2

    .line 574
    .local v2, "sessionConfig":Lccsancom/google/gson/JsonObject;
    move-object/from16 v7, v17

    invoke-virtual {v2, v7}, Lccsancom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 575
    invoke-virtual {v2, v7}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lccsancom/google/gson/JsonElement;->getAsInt()I

    move-result v7

    move v0, v7

    move v2, v0

    goto :goto_15

    .line 579
    .end local v2    # "sessionConfig":Lccsancom/google/gson/JsonObject;
    :cond_1f
    move v2, v0

    .end local v0    # "sessionTimeoutInSec":I
    .local v2, "sessionTimeoutInSec":I
    :goto_15
    const/4 v0, 0x0

    .line 580
    .local v0, "cacheBustEnabled":Z
    const/4 v7, 0x0

    .line 581
    .local v7, "cacheBustInterval":I
    move-object/from16 v8, v16

    invoke-virtual {v10, v8}, Lccsancom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 582
    invoke-virtual {v10, v8}, Lccsancom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lccsancom/google/gson/JsonObject;

    move-result-object v8

    .line 583
    .local v8, "cacheBustConfig":Lccsancom/google/gson/JsonObject;
    invoke-virtual {v8, v6}, Lccsancom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 584
    invoke-virtual {v8, v6}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lccsancom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v9

    move v0, v9

    .line 586
    :cond_20
    const-string v9, "interval"

    invoke-virtual {v8, v9}, Lccsancom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 588
    const-string v9, "interval"

    invoke-virtual {v8, v9}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lccsancom/google/gson/JsonElement;->getAsInt()I

    move-result v9

    mul-int/lit16 v7, v9, 0x3e8

    move v8, v7

    move v7, v0

    goto :goto_16

    .line 586
    :cond_21
    move v8, v7

    move v7, v0

    goto :goto_16

    .line 581
    .end local v8    # "cacheBustConfig":Lccsancom/google/gson/JsonObject;
    :cond_22
    move v8, v7

    move v7, v0

    .line 592
    .end local v0    # "cacheBustEnabled":Z
    .local v7, "cacheBustEnabled":Z
    .local v8, "cacheBustInterval":I
    :goto_16
    const-string v0, "ad_load_optimization"

    invoke-virtual {v10, v0}, Lccsancom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lccsancom/google/gson/JsonObject;

    move-result-object v0

    move-object v9, v0

    .line 593
    .local v9, "adLoadOptObject":Lccsancom/google/gson/JsonObject;
    const/4 v11, 0x0

    invoke-static {v9, v6, v11}, Lccsancom/vungle/warren/model/JsonUtil;->getAsBoolean(Lccsancom/google/gson/JsonElement;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v4, v0}, Lccsancom/vungle/warren/AdLoader;->setAdLoadOptimizationEnabled(Z)V

    .line 595
    const-string v0, "configSettings"

    const-class v11, Lccsancom/vungle/warren/model/Cookie;

    invoke-virtual {v5, v0, v11}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/model/Cookie;

    .line 596
    .local v0, "configCookie":Lccsancom/vungle/warren/model/Cookie;
    if-nez v0, :cond_23

    .line 597
    new-instance v11, Lccsancom/vungle/warren/model/Cookie;

    const-string v12, "configSettings"

    invoke-direct {v11, v12}, Lccsancom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    move-object v0, v11

    goto :goto_17

    .line 596
    :cond_23
    move-object v11, v0

    .line 599
    .end local v0    # "configCookie":Lccsancom/vungle/warren/model/Cookie;
    .local v11, "configCookie":Lccsancom/vungle/warren/model/Cookie;
    :goto_17
    const-string v0, "ri"

    invoke-virtual {v10, v0}, Lccsancom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 600
    const-string v0, "ri"

    invoke-virtual {v10, v0}, Lccsancom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lccsancom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v6}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    .line 601
    .local v0, "isReportIncentivizedEnabled":Z
    const-string v6, "isReportIncentivizedEnabled"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v6, v12}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 603
    .end local v0    # "isReportIncentivizedEnabled":Z
    :cond_24
    invoke-virtual {v5, v11}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    .line 606
    const-string v0, "config"

    invoke-virtual {v10, v0}, Lccsancom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 607
    const-string v0, "config"

    invoke-virtual {v10, v0}, Lccsancom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lccsancom/google/gson/JsonObject;

    move-result-object v0

    const-string v6, "refresh_time"

    invoke-virtual {v0, v6}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v12

    .line 608
    .local v12, "sleep":J
    iget-object v0, v1, Lccsancom/vungle/warren/Vungle;->appID:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/vungle/warren/tasks/ReconfigJob;->makeJobInfo(Ljava/lang/String;)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Lccsancom/vungle/warren/tasks/JobInfo;->setDelay(J)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v0

    move-object/from16 v6, v24

    .end local v24    # "jobRunner":Lccsancom/vungle/warren/tasks/JobRunner;
    .local v6, "jobRunner":Lccsancom/vungle/warren/tasks/JobRunner;
    invoke-interface {v6, v0}, Lccsancom/vungle/warren/tasks/JobRunner;->execute(Lccsancom/vungle/warren/tasks/JobInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_18

    .line 606
    .end local v6    # "jobRunner":Lccsancom/vungle/warren/tasks/JobRunner;
    .end local v12    # "sleep":J
    .restart local v24    # "jobRunner":Lccsancom/vungle/warren/tasks/JobRunner;
    :cond_25
    move-object/from16 v6, v24

    .line 612
    .end local v24    # "jobRunner":Lccsancom/vungle/warren/tasks/JobRunner;
    .restart local v6    # "jobRunner":Lccsancom/vungle/warren/tasks/JobRunner;
    :goto_18
    :try_start_4
    const-class v0, Lccsancom/vungle/warren/VisionController;

    invoke-virtual {v3, v0}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/VisionController;

    const-string v12, "vision"

    invoke-static {v10, v12}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_26

    .line 613
    iget-object v12, v1, Lccsancom/vungle/warren/Vungle;->gson:Lccsancom/google/gson/Gson;

    const-string v13, "vision"

    invoke-virtual {v10, v13}, Lccsancom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lccsancom/google/gson/JsonObject;

    move-result-object v13

    const-class v14, Lccsancom/vungle/warren/vision/VisionConfig;

    invoke-virtual {v12, v13, v14}, Lccsancom/google/gson/Gson;->fromJson(Lccsancom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lccsancom/vungle/warren/vision/VisionConfig;

    goto :goto_19

    :cond_26
    new-instance v12, Lccsancom/vungle/warren/vision/VisionConfig;

    invoke-direct {v12}, Lccsancom/vungle/warren/vision/VisionConfig;-><init>()V

    .line 612
    :goto_19
    invoke-virtual {v0, v12}, Lccsancom/vungle/warren/VisionController;->setConfig(Lccsancom/vungle/warren/vision/VisionConfig;)V
    :try_end_4
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 616
    goto :goto_1a

    .line 614
    :catch_0
    move-exception v0

    .line 615
    .local v0, "dbException":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    :try_start_5
    sget-object v12, Lccsancom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v13, "not able to apply vision data config"

    invoke-static {v12, v13}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    .end local v0    # "dbException":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    :goto_1a
    const/4 v12, 0x1

    sput-boolean v12, Lccsancom/vungle/warren/Vungle;->isInitialized:Z

    .line 622
    invoke-interface/range {p1 .. p1}, Lccsancom/vungle/warren/InitCallback;->onSuccess()V

    .line 623
    const-string v0, "Vungle#init"

    const-string v13, "onSuccess"

    invoke-static {v0, v13}, Lccsancom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    sget-object v0, Lccsancom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 626
    new-instance v0, Lccsancom/vungle/warren/SessionData;

    invoke-direct {v0}, Lccsancom/vungle/warren/SessionData;-><init>()V

    .line 627
    .local v0, "sessionData":Lccsancom/vungle/warren/SessionData;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v0, v13, v14}, Lccsancom/vungle/warren/SessionData;->setInitTimeStamp(J)V

    .line 628
    int-to-long v13, v2

    invoke-virtual {v0, v13, v14}, Lccsancom/vungle/warren/SessionData;->setTimeout(J)V

    .line 630
    iget-object v13, v1, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    invoke-static {v13}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v13

    const-class v14, Lccsancom/vungle/warren/RuntimeValues;

    invoke-virtual {v13, v14}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lccsancom/vungle/warren/RuntimeValues;

    iget-object v13, v13, Lccsancom/vungle/warren/RuntimeValues;->sessionData:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v13, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 632
    iget-object v13, v1, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    invoke-static {v13}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v13

    const-class v14, Lccsancom/vungle/warren/utility/AppSession;

    invoke-virtual {v13, v14}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lccsancom/vungle/warren/utility/AppSession;

    invoke-virtual {v13, v0}, Lccsancom/vungle/warren/utility/AppSession;->setSessionData(Lccsancom/vungle/warren/SessionData;)Lccsancom/vungle/warren/utility/AppSession;

    move-result-object v13

    new-instance v14, Lccsancom/vungle/warren/Vungle$4;

    invoke-direct {v14, v1}, Lccsancom/vungle/warren/Vungle$4;-><init>(Lccsancom/vungle/warren/Vungle;)V

    .line 633
    invoke-virtual {v13, v14}, Lccsancom/vungle/warren/utility/AppSession;->setSessionCallback(Lccsancom/vungle/warren/utility/AppSession$SessionCallback;)Lccsancom/vungle/warren/utility/AppSession;

    move-result-object v13

    .line 638
    invoke-virtual {v13}, Lccsancom/vungle/warren/utility/AppSession;->observe()V

    .line 640
    invoke-virtual {v5}, Lccsancom/vungle/warren/persistence/Repository;->loadValidPlacements()Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v13

    invoke-virtual {v13}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Collection;

    .line 643
    .local v13, "placements":Ljava/util/Collection;, "Ljava/util/Collection<Lccsancom/vungle/warren/model/Placement;>;"
    invoke-static {}, Lccsancom/vungle/warren/tasks/CleanupJob;->makeJobInfo()Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v14

    invoke-interface {v6, v14}, Lccsancom/vungle/warren/tasks/JobRunner;->execute(Lccsancom/vungle/warren/tasks/JobInfo;)V

    .line 652
    if-eqz v13, :cond_27

    .line 653
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 654
    .local v14, "placementList":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Placement;>;"
    new-instance v15, Lccsancom/vungle/warren/Vungle$5;

    invoke-direct {v15, v1}, Lccsancom/vungle/warren/Vungle$5;-><init>(Lccsancom/vungle/warren/Vungle;)V

    invoke-static {v14, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 660
    sget-object v15, Lccsancom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v12, "starting jobs for autocached advs"

    invoke-static {v15, v12}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const-class v12, Lccsancom/vungle/warren/utility/Executors;

    invoke-virtual {v3, v12}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lccsancom/vungle/warren/utility/Executors;

    invoke-interface {v12}, Lccsancom/vungle/warren/utility/Executors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v12

    .line 663
    .local v12, "uiExecutor":Ljava/util/concurrent/ExecutorService;
    new-instance v15, Lccsancom/vungle/warren/Vungle$6;

    invoke-direct {v15, v1, v14, v4}, Lccsancom/vungle/warren/Vungle$6;-><init>(Lccsancom/vungle/warren/Vungle;Ljava/util/List;Lccsancom/vungle/warren/AdLoader;)V

    invoke-interface {v12, v15}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 673
    .end local v12    # "uiExecutor":Ljava/util/concurrent/ExecutorService;
    .end local v14    # "placementList":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Placement;>;"
    :cond_27
    if-eqz v7, :cond_28

    .line 674
    const-class v12, Lccsancom/vungle/warren/CacheBustManager;

    invoke-virtual {v3, v12}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lccsancom/vungle/warren/CacheBustManager;

    .line 675
    .local v12, "cacheBustManager":Lccsancom/vungle/warren/CacheBustManager;
    int-to-long v14, v8

    invoke-virtual {v12, v14, v15}, Lccsancom/vungle/warren/CacheBustManager;->setRefreshRate(J)V

    .line 676
    invoke-virtual {v12}, Lccsancom/vungle/warren/CacheBustManager;->startBust()V

    .line 680
    .end local v12    # "cacheBustManager":Lccsancom/vungle/warren/CacheBustManager;
    :cond_28
    if-nez p2, :cond_29

    const/16 v31, 0x1

    goto :goto_1b

    :cond_29
    const/16 v31, 0x0

    :goto_1b
    invoke-static/range {v31 .. v31}, Lccsancom/vungle/warren/tasks/SendReportsJob;->makeJobInfo(Z)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v12

    invoke-interface {v6, v12}, Lccsancom/vungle/warren/tasks/JobRunner;->execute(Lccsancom/vungle/warren/tasks/JobInfo;)V

    .line 683
    invoke-static {}, Lccsancom/vungle/warren/tasks/SendLogsJob;->makeJobInfo()Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v12

    invoke-interface {v6, v12}, Lccsancom/vungle/warren/tasks/JobRunner;->execute(Lccsancom/vungle/warren/tasks/JobInfo;)V

    .line 699
    .end local v0    # "sessionData":Lccsancom/vungle/warren/SessionData;
    .end local v2    # "sessionTimeoutInSec":I
    .end local v3    # "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    .end local v4    # "adLoader":Lccsancom/vungle/warren/AdLoader;
    .end local v5    # "repository":Lccsancom/vungle/warren/persistence/Repository;
    .end local v6    # "jobRunner":Lccsancom/vungle/warren/tasks/JobRunner;
    .end local v7    # "cacheBustEnabled":Z
    .end local v8    # "cacheBustInterval":I
    .end local v9    # "adLoadOptObject":Lccsancom/google/gson/JsonObject;
    .end local v10    # "jsonObject":Lccsancom/google/gson/JsonObject;
    .end local v11    # "configCookie":Lccsancom/vungle/warren/model/Cookie;
    .end local v13    # "placements":Ljava/util/Collection;, "Ljava/util/Collection<Lccsancom/vungle/warren/model/Placement;>;"
    .end local v18    # "preferences":Lccsancom/vungle/warren/persistence/FilePreferences;
    .end local v26    # "placementsData":Lccsancom/google/gson/JsonArray;
    .end local v27    # "settings":Lccsancom/vungle/warren/CleverCacheSettings;
    .end local v29    # "vungleApiClient":Lccsancom/vungle/warren/VungleApiClient;
    .end local v30    # "newPlacements":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Placement;>;"
    .end local v32    # "response":Lccsancom/vungle/warren/network/Response;, "Lccsancom/vungle/warren/network/Response<Lccsancom/google/gson/JsonObject;>;"
    .end local v33    # "downloader":Lccsancom/vungle/warren/downloader/Downloader;
    move-object/from16 v3, p1

    goto :goto_1d

    .line 418
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "callback":Lccsancom/vungle/warren/InitCallback;
    .end local p2    # "isReconfig":Z
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 685
    .restart local p1    # "callback":Lccsancom/vungle/warren/InitCallback;
    .restart local p2    # "isReconfig":Z
    :catchall_0
    move-exception v0

    .line 686
    .local v0, "throwable":Ljava/lang/Throwable;
    const/4 v2, 0x0

    sput-boolean v2, Lccsancom/vungle/warren/Vungle;->isInitialized:Z

    .line 687
    sget-object v3, Lccsancom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 688
    sget-object v2, Lccsancom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    instance-of v2, v0, Lccsancom/vungle/warren/network/HttpException;

    if-eqz v2, :cond_2b

    .line 690
    new-instance v2, Lccsancom/vungle/warren/error/VungleException;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lccsancom/vungle/warren/Vungle;->onInitError(Lccsancom/vungle/warren/InitCallback;Lccsancom/vungle/warren/error/VungleException;)V

    goto :goto_1d

    .line 691
    :cond_2b
    move-object/from16 v3, p1

    instance-of v2, v0, Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;

    if-eqz v2, :cond_2c

    .line 692
    new-instance v2, Lccsancom/vungle/warren/error/VungleException;

    const/16 v4, 0x1a

    invoke-direct {v2, v4}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v3, v2}, Lccsancom/vungle/warren/Vungle;->onInitError(Lccsancom/vungle/warren/InitCallback;Lccsancom/vungle/warren/error/VungleException;)V

    goto :goto_1d

    .line 693
    :cond_2c
    instance-of v2, v0, Ljava/net/UnknownHostException;

    if-nez v2, :cond_2e

    instance-of v2, v0, Ljava/lang/SecurityException;

    if-eqz v2, :cond_2d

    goto :goto_1c

    .line 697
    :cond_2d
    new-instance v2, Lccsancom/vungle/warren/error/VungleException;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v3, v2}, Lccsancom/vungle/warren/Vungle;->onInitError(Lccsancom/vungle/warren/InitCallback;Lccsancom/vungle/warren/error/VungleException;)V

    goto :goto_1d

    .line 695
    :cond_2e
    :goto_1c
    new-instance v2, Lccsancom/vungle/warren/error/VungleException;

    const/16 v4, 0x21

    invoke-direct {v2, v4}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v3, v2}, Lccsancom/vungle/warren/Vungle;->onInitError(Lccsancom/vungle/warren/InitCallback;Lccsancom/vungle/warren/error/VungleException;)V

    .line 700
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_1d
    return-void
.end method

.method protected static deInit()V
    .locals 4

    .line 1754
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    iget-object v1, v0, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    if-eqz v1, :cond_3

    .line 1755
    invoke-static {v1}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v1

    .line 1756
    .local v1, "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    const-class v2, Lccsancom/vungle/warren/persistence/CacheManager;

    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/ServiceLocator;->isCreated(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1757
    const-class v2, Lccsancom/vungle/warren/persistence/CacheManager;

    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/persistence/CacheManager;

    sget-object v3, Lccsancom/vungle/warren/Vungle;->cacheListener:Lccsancom/vungle/warren/persistence/CacheManager$Listener;

    invoke-virtual {v2, v3}, Lccsancom/vungle/warren/persistence/CacheManager;->removeListener(Lccsancom/vungle/warren/persistence/CacheManager$Listener;)V

    .line 1759
    :cond_0
    const-class v2, Lccsancom/vungle/warren/downloader/Downloader;

    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/ServiceLocator;->isCreated(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1760
    const-class v2, Lccsancom/vungle/warren/downloader/Downloader;

    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/downloader/Downloader;

    invoke-interface {v2}, Lccsancom/vungle/warren/downloader/Downloader;->cancelAll()V

    .line 1762
    :cond_1
    const-class v2, Lccsancom/vungle/warren/AdLoader;

    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/ServiceLocator;->isCreated(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1763
    const-class v2, Lccsancom/vungle/warren/AdLoader;

    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/AdLoader;

    invoke-virtual {v2}, Lccsancom/vungle/warren/AdLoader;->clear()V

    .line 1765
    :cond_2
    iget-object v0, v0, Lccsancom/vungle/warren/Vungle;->playOperations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1768
    .end local v1    # "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    :cond_3
    invoke-static {}, Lccsancom/vungle/warren/ServiceLocator;->deInit()V

    .line 1770
    const/4 v0, 0x0

    sput-boolean v0, Lccsancom/vungle/warren/Vungle;->isInitialized:Z

    .line 1771
    sget-object v1, Lccsancom/vungle/warren/Vungle;->isDepInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1772
    sget-object v1, Lccsancom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1773
    return-void
.end method

.method static getAppContext()Lccsanandroid/content/Context;
    .locals 1

    .line 157
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    iget-object v0, v0, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    return-object v0
.end method

.method public static getAvailableBidTokens(Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 1676
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lccsancom/vungle/warren/Vungle;->getAvailableBidTokensBySize(Lccsanandroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableBidTokensBySize(Lccsanandroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "maxBidTokenSizeBytes"    # I

    .line 1689
    if-nez p0, :cond_0

    .line 1690
    sget-object v0, Lccsancom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v1, "Context is null"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    const/4 v0, 0x0

    return-object v0

    .line 1695
    :cond_0
    if-gtz p1, :cond_1

    const v0, 0x7ffffffe

    goto :goto_0

    :cond_1
    move v0, p1

    .line 1697
    .local v0, "bidTokenMaxBytesSanitized":I
    :goto_0
    invoke-static {p0}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v1

    .line 1698
    .local v1, "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    const-class v2, Lccsancom/vungle/warren/utility/Executors;

    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/utility/Executors;

    .line 1699
    .local v2, "sdkExecutors":Lccsancom/vungle/warren/utility/Executors;
    const-class v3, Lccsancom/vungle/warren/utility/TimeoutProvider;

    invoke-virtual {v1, v3}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/vungle/warren/utility/TimeoutProvider;

    .line 1701
    .local v3, "provider":Lccsancom/vungle/warren/utility/TimeoutProvider;
    new-instance v4, Lccsancom/vungle/warren/persistence/FutureResult;

    invoke-interface {v2}, Lccsancom/vungle/warren/utility/Executors;->getApiExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    new-instance v6, Lccsancom/vungle/warren/Vungle$15;

    invoke-direct {v6, p0, v0}, Lccsancom/vungle/warren/Vungle$15;-><init>(Lccsanandroid/content/Context;I)V

    .line 1702
    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    invoke-direct {v4, v5}, Lccsancom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    .line 1726
    .local v4, "futureResult":Lccsancom/vungle/warren/persistence/FutureResult;, "Lccsancom/vungle/warren/persistence/FutureResult<Ljava/lang/String;>;"
    invoke-interface {v3}, Lccsancom/vungle/warren/utility/TimeoutProvider;->getTimeout()J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Lccsancom/vungle/warren/persistence/FutureResult;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    return-object v5
.end method

.method static getAvailableSizeForHBT(ILjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "bytesAvailable"    # I
    .param p1, "encodeVersion"    # Ljava/lang/String;
    .param p2, "headerBiddingOrdinalCount"    # Ljava/lang/String;

    .line 1742
    nop

    .line 1743
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    sub-int v0, p0, v0

    const-string v1, ":"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x4

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double v2, v2, v4

    .line 1744
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v0

    double-to-int v0, v2

    .line 1747
    .local v0, "maxBytesAvailableForToken":I
    int-to-double v1, v0

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    const-wide/16 v3, 0x4

    mul-long v1, v1, v3

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    return v2
.end method

.method public static getCCPAStatus()Lccsancom/vungle/warren/Vungle$Consent;
    .locals 1

    .line 1640
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    iget-object v0, v0, Lccsancom/vungle/warren/Vungle;->ccpaStatus:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/Vungle$Consent;

    return-object v0
.end method

.method private static getCCPAStatus(Lccsancom/vungle/warren/model/Cookie;)Lccsancom/vungle/warren/Vungle$Consent;
    .locals 2
    .param p0, "ccpaConsent"    # Lccsancom/vungle/warren/model/Cookie;

    .line 1644
    if-nez p0, :cond_0

    .line 1645
    const/4 v0, 0x0

    return-object v0

    .line 1647
    :cond_0
    const-string v0, "ccpa_status"

    invoke-virtual {p0, v0}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "opted_out"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lccsancom/vungle/warren/Vungle$Consent;->OPTED_OUT:Lccsancom/vungle/warren/Vungle$Consent;

    goto :goto_0

    :cond_1
    sget-object v0, Lccsancom/vungle/warren/Vungle$Consent;->OPTED_IN:Lccsancom/vungle/warren/Vungle$Consent;

    :goto_0
    return-object v0
.end method

.method private static getConsent(Lccsancom/vungle/warren/model/Cookie;)Lccsancom/vungle/warren/Vungle$Consent;
    .locals 2
    .param p0, "gdprConsent"    # Lccsancom/vungle/warren/model/Cookie;

    .line 1572
    if-nez p0, :cond_0

    .line 1573
    const/4 v0, 0x0

    return-object v0

    .line 1575
    :cond_0
    const-string v0, "consent_status"

    invoke-virtual {p0, v0}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "opted_in"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lccsancom/vungle/warren/Vungle$Consent;->OPTED_IN:Lccsancom/vungle/warren/Vungle$Consent;

    goto :goto_0

    :cond_1
    sget-object v0, Lccsancom/vungle/warren/Vungle$Consent;->OPTED_OUT:Lccsancom/vungle/warren/Vungle$Consent;

    :goto_0
    return-object v0
.end method

.method public static getConsentMessageVersion()Ljava/lang/String;
    .locals 1

    .line 1568
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    iget-object v0, v0, Lccsancom/vungle/warren/Vungle;->consentVersion:Ljava/lang/String;

    return-object v0
.end method

.method private static getConsentMessageVersion(Lccsancom/vungle/warren/model/Cookie;)Ljava/lang/String;
    .locals 1
    .param p0, "gdprConsent"    # Lccsancom/vungle/warren/model/Cookie;

    .line 1580
    if-nez p0, :cond_0

    .line 1581
    const/4 v0, 0x0

    return-object v0

    .line 1583
    :cond_0
    const-string v0, "consent_message_version"

    invoke-virtual {p0, v0}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConsentStatus()Lccsancom/vungle/warren/Vungle$Consent;
    .locals 8

    .line 1538
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lccsancom/vungle/warren/Vungle;->isDepInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1539
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    iget-object v1, v0, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    invoke-static {v1}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v1

    .line 1540
    .local v1, "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    const-class v2, Lccsancom/vungle/warren/utility/TimeoutProvider;

    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/utility/TimeoutProvider;

    .line 1541
    .local v2, "provider":Lccsancom/vungle/warren/utility/TimeoutProvider;
    const-class v3, Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v1, v3}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/vungle/warren/persistence/Repository;

    const-class v4, Lccsancom/vungle/warren/model/Cookie;

    .line 1542
    const-string v5, "consentIsImportantToVungle"

    invoke-virtual {v3, v5, v4}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v3

    invoke-interface {v2}, Lccsancom/vungle/warren/utility/TimeoutProvider;->getTimeout()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lccsancom/vungle/warren/persistence/FutureResult;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/vungle/warren/model/Cookie;

    .line 1544
    .local v3, "consentCookie":Lccsancom/vungle/warren/model/Cookie;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 1545
    return-object v4

    .line 1547
    :cond_0
    const-string v5, "consent_status"

    invoke-virtual {v3, v5}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1548
    .local v5, "consentString":Ljava/lang/String;
    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v7, "opted_out"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :sswitch_1
    const-string v7, "opted_out_by_timeout"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x0

    goto :goto_0

    :sswitch_2
    const-string v7, "opted_in"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x2

    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 1557
    return-object v4

    .line 1554
    :pswitch_0
    iget-object v0, v0, Lccsancom/vungle/warren/Vungle;->consent:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v4, Lccsancom/vungle/warren/Vungle$Consent;->OPTED_IN:Lccsancom/vungle/warren/Vungle$Consent;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1555
    sget-object v0, Lccsancom/vungle/warren/Vungle$Consent;->OPTED_IN:Lccsancom/vungle/warren/Vungle$Consent;

    return-object v0

    .line 1551
    :pswitch_1
    iget-object v0, v0, Lccsancom/vungle/warren/Vungle;->consent:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v4, Lccsancom/vungle/warren/Vungle$Consent;->OPTED_OUT:Lccsancom/vungle/warren/Vungle$Consent;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1552
    sget-object v0, Lccsancom/vungle/warren/Vungle$Consent;->OPTED_OUT:Lccsancom/vungle/warren/Vungle$Consent;

    return-object v0

    .line 1561
    .end local v1    # "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    .end local v2    # "provider":Lccsancom/vungle/warren/utility/TimeoutProvider;
    .end local v3    # "consentCookie":Lccsancom/vungle/warren/model/Cookie;
    .end local v5    # "consentString":Ljava/lang/String;
    :cond_2
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    iget-object v0, v0, Lccsancom/vungle/warren/Vungle;->consent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/Vungle$Consent;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f34a0e -> :sswitch_2
        0x495b4057 -> :sswitch_1
        0x668a2021 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getNativeAd(Ljava/lang/String;Lccsancom/vungle/warren/AdConfig;Lccsancom/vungle/warren/PlayAdCallback;)Lccsancom/vungle/warren/VungleNativeAd;
    .locals 1
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "adConfig"    # Lccsancom/vungle/warren/AdConfig;
    .param p2, "playAdCallback"    # Lccsancom/vungle/warren/PlayAdCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1304
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lccsancom/vungle/warren/Vungle;->getNativeAd(Ljava/lang/String;Ljava/lang/String;Lccsancom/vungle/warren/AdConfig;Lccsancom/vungle/warren/PlayAdCallback;)Lccsancom/vungle/warren/VungleNativeAd;

    move-result-object v0

    return-object v0
.end method

.method public static getNativeAd(Ljava/lang/String;Ljava/lang/String;Lccsancom/vungle/warren/AdConfig;Lccsancom/vungle/warren/PlayAdCallback;)Lccsancom/vungle/warren/VungleNativeAd;
    .locals 2
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "markup"    # Ljava/lang/String;
    .param p2, "adConfig"    # Lccsancom/vungle/warren/AdConfig;
    .param p3, "playAdCallback"    # Lccsancom/vungle/warren/PlayAdCallback;

    .line 1321
    if-nez p2, :cond_0

    .line 1322
    new-instance v0, Lccsancom/vungle/warren/AdConfig;

    invoke-direct {v0}, Lccsancom/vungle/warren/AdConfig;-><init>()V

    move-object p2, v0

    .line 1325
    :cond_0
    invoke-virtual {p2}, Lccsancom/vungle/warren/AdConfig;->getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v0

    invoke-static {v0}, Lccsancom/vungle/warren/AdConfig$AdSize;->isDefaultAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1326
    invoke-static {p1}, Lccsancom/vungle/warren/AdMarkup;->fromString(Ljava/lang/String;)Lccsancom/vungle/warren/AdMarkup;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lccsancom/vungle/warren/Vungle;->getNativeAdInternal(Ljava/lang/String;Lccsancom/vungle/warren/AdMarkup;Lccsancom/vungle/warren/AdConfig;Lccsancom/vungle/warren/PlayAdCallback;)Lccsancom/vungle/warren/ui/view/VungleNativeView;

    move-result-object v0

    return-object v0

    .line 1328
    :cond_1
    if-eqz p3, :cond_2

    .line 1329
    sget-object v0, Lccsancom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v1, "Please use Banners.getBanner(... ) to retrieve Banner Ad"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {p3, p0, v0}, Lccsancom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Lccsancom/vungle/warren/error/VungleException;)V

    .line 1332
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method static getNativeAdInternal(Ljava/lang/String;Lccsancom/vungle/warren/AdMarkup;Lccsancom/vungle/warren/AdConfig;Lccsancom/vungle/warren/PlayAdCallback;)Lccsancom/vungle/warren/ui/view/VungleNativeView;
    .locals 24
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "markup"    # Lccsancom/vungle/warren/AdMarkup;
    .param p2, "adConfig"    # Lccsancom/vungle/warren/AdConfig;
    .param p3, "playAdCallback"    # Lccsancom/vungle/warren/PlayAdCallback;

    .line 1340
    move-object/from16 v1, p0

    move-object/from16 v12, p3

    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    iget-object v2, v0, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    const/4 v13, 0x0

    if-nez v2, :cond_0

    .line 1341
    sget-object v0, Lccsancom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v2, "Vungle is not initialized, returned VungleNativeAd = null"

    invoke-static {v0, v2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    const/16 v2, 0x9

    invoke-direct {v0, v2}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v1, v12, v0}, Lccsancom/vungle/warren/Vungle;->onPlayError(Ljava/lang/String;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/error/VungleException;)V

    .line 1343
    return-object v13

    .line 1346
    :cond_0
    invoke-static/range {p0 .. p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1347
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    const/16 v2, 0xd

    invoke-direct {v0, v2}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v1, v12, v0}, Lccsancom/vungle/warren/Vungle;->onPlayError(Ljava/lang/String;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/error/VungleException;)V

    .line 1348
    return-object v13

    .line 1351
    :cond_1
    iget-object v2, v0, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    invoke-static {v2}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v14

    .line 1352
    .local v14, "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    const-class v2, Lccsancom/vungle/warren/AdLoader;

    invoke-virtual {v14, v2}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lccsancom/vungle/warren/AdLoader;

    .line 1353
    .local v15, "adLoader":Lccsancom/vungle/warren/AdLoader;
    new-instance v2, Lccsancom/vungle/warren/AdRequest;

    move-object/from16 v11, p1

    invoke-direct {v2, v1, v11}, Lccsancom/vungle/warren/AdRequest;-><init>(Ljava/lang/String;Lccsancom/vungle/warren/AdMarkup;)V

    move-object v10, v2

    .line 1356
    .local v10, "request":Lccsancom/vungle/warren/AdRequest;
    invoke-virtual {v15, v10}, Lccsancom/vungle/warren/AdLoader;->isLoading(Lccsancom/vungle/warren/AdRequest;)Z

    move-result v9

    .line 1357
    .local v9, "isLoading":Z
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, v0, Lccsancom/vungle/warren/Vungle;->playOperations:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v9, :cond_2

    move/from16 v22, v9

    move-object/from16 v23, v10

    goto/16 :goto_1

    .line 1364
    :cond_2
    :try_start_0
    new-instance v16, Lccsancom/vungle/warren/ui/view/VungleNativeView;

    iget-object v2, v0, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    .line 1365
    invoke-virtual {v2}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v17

    const-class v2, Lccsancom/vungle/warren/PresentationFactory;

    .line 1368
    invoke-virtual {v14, v2}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lccsancom/vungle/warren/PresentationFactory;

    new-instance v19, Lccsancom/vungle/warren/AdEventListener;

    iget-object v4, v0, Lccsancom/vungle/warren/Vungle;->playOperations:Ljava/util/Map;

    const-class v0, Lccsancom/vungle/warren/persistence/Repository;

    .line 1373
    invoke-virtual {v14, v0}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lccsancom/vungle/warren/persistence/Repository;

    const-class v0, Lccsancom/vungle/warren/tasks/JobRunner;

    .line 1375
    invoke-virtual {v14, v0}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lccsancom/vungle/warren/tasks/JobRunner;

    const-class v0, Lccsancom/vungle/warren/VisionController;

    .line 1376
    invoke-virtual {v14, v0}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/VisionController;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v2, v19

    move-object v3, v10

    move-object/from16 v5, p3

    move-object v7, v15

    move/from16 v22, v9

    .end local v9    # "isLoading":Z
    .local v22, "isLoading":Z
    move-object v9, v0

    move-object/from16 v23, v10

    .end local v10    # "request":Lccsancom/vungle/warren/AdRequest;
    .local v23, "request":Lccsancom/vungle/warren/AdRequest;
    move-object/from16 v10, v20

    move-object/from16 v11, v21

    :try_start_1
    invoke-direct/range {v2 .. v11}, Lccsancom/vungle/warren/AdEventListener;-><init>(Lccsancom/vungle/warren/AdRequest;Ljava/util/Map;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/tasks/JobRunner;Lccsancom/vungle/warren/VisionController;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/model/Advertisement;)V

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v23

    move-object/from16 v6, p2

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    invoke-direct/range {v3 .. v8}, Lccsancom/vungle/warren/ui/view/VungleNativeView;-><init>(Lccsanandroid/content/Context;Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/AdConfig;Lccsancom/vungle/warren/PresentationFactory;Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1364
    return-object v16

    .line 1381
    :catch_0
    move-exception v0

    goto :goto_0

    .end local v22    # "isLoading":Z
    .end local v23    # "request":Lccsancom/vungle/warren/AdRequest;
    .restart local v9    # "isLoading":Z
    .restart local v10    # "request":Lccsancom/vungle/warren/AdRequest;
    :catch_1
    move-exception v0

    move/from16 v22, v9

    move-object/from16 v23, v10

    .line 1382
    .end local v9    # "isLoading":Z
    .end local v10    # "request":Lccsancom/vungle/warren/AdRequest;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v22    # "isLoading":Z
    .restart local v23    # "request":Lccsancom/vungle/warren/AdRequest;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Native ad fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Vungle#playAd"

    invoke-static {v3, v2}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    if-eqz v12, :cond_3

    .line 1384
    new-instance v2, Lccsancom/vungle/warren/error/VungleException;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {v12, v1, v2}, Lccsancom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Lccsancom/vungle/warren/error/VungleException;)V

    .line 1391
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    return-object v13

    .line 1357
    .end local v22    # "isLoading":Z
    .end local v23    # "request":Lccsancom/vungle/warren/AdRequest;
    .restart local v9    # "isLoading":Z
    .restart local v10    # "request":Lccsancom/vungle/warren/AdRequest;
    :cond_4
    move/from16 v22, v9

    move-object/from16 v23, v10

    .line 1358
    .end local v9    # "isLoading":Z
    .end local v10    # "request":Lccsancom/vungle/warren/AdRequest;
    .restart local v22    # "isLoading":Z
    .restart local v23    # "request":Lccsancom/vungle/warren/AdRequest;
    :goto_1
    sget-object v2, Lccsancom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Playing or Loading operation ongoing. Playing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lccsancom/vungle/warren/Vungle;->playOperations:Ljava/util/Map;

    .line 1359
    invoke-virtual/range {v23 .. v23}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " Loading: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v22

    .end local v22    # "isLoading":Z
    .local v4, "isLoading":Z
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1358
    invoke-static {v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v1, v12, v0}, Lccsancom/vungle/warren/Vungle;->onPlayError(Ljava/lang/String;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/error/VungleException;)V

    .line 1361
    return-object v13
.end method

.method static getValidAdvertisementModels(Ljava/lang/String;)Ljava/util/Collection;
    .locals 7
    .param p0, "placementId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lccsancom/vungle/warren/model/Advertisement;",
            ">;"
        }
    .end annotation

    .line 1452
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1453
    sget-object v0, Lccsancom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v1, "Vungle is not initialized return empty placements list"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1457
    :cond_0
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    iget-object v0, v0, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 1458
    .local v0, "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    const-class v1, Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/persistence/Repository;

    .line 1459
    .local v1, "repository":Lccsancom/vungle/warren/persistence/Repository;
    const-class v2, Lccsancom/vungle/warren/utility/TimeoutProvider;

    invoke-virtual {v0, v2}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/utility/TimeoutProvider;

    .line 1461
    .local v2, "provider":Lccsancom/vungle/warren/utility/TimeoutProvider;
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Lccsancom/vungle/warren/persistence/Repository;->findValidAdvertisementsForPlacement(Ljava/lang/String;Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v3

    invoke-interface {v2}, Lccsancom/vungle/warren/utility/TimeoutProvider;->getTimeout()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lccsancom/vungle/warren/persistence/FutureResult;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 1462
    .local v3, "advertisements":Ljava/util/Collection;, "Ljava/util/Collection<Lccsancom/vungle/warren/model/Advertisement;>;"
    if-nez v3, :cond_1

    .line 1463
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 1465
    :cond_1
    return-object v3
.end method

.method static getValidPlacementModels()Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lccsancom/vungle/warren/model/Placement;",
            ">;"
        }
    .end annotation

    .line 1427
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1428
    sget-object v0, Lccsancom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v1, "Vungle is not initialized return empty placements list"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1432
    :cond_0
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    iget-object v0, v0, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 1433
    .local v0, "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    const-class v1, Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/persistence/Repository;

    .line 1434
    .local v1, "repository":Lccsancom/vungle/warren/persistence/Repository;
    const-class v2, Lccsancom/vungle/warren/utility/TimeoutProvider;

    invoke-virtual {v0, v2}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/utility/TimeoutProvider;

    .line 1436
    .local v2, "provider":Lccsancom/vungle/warren/utility/TimeoutProvider;
    invoke-virtual {v1}, Lccsancom/vungle/warren/persistence/Repository;->loadValidPlacements()Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v3

    invoke-interface {v2}, Lccsancom/vungle/warren/utility/TimeoutProvider;->getTimeout()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lccsancom/vungle/warren/persistence/FutureResult;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 1437
    .local v3, "placements":Ljava/util/Collection;, "Ljava/util/Collection<Lccsancom/vungle/warren/model/Placement;>;"
    if-nez v3, :cond_1

    .line 1438
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 1440
    :cond_1
    return-object v3
.end method

.method public static getValidPlacements()Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1401
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1402
    sget-object v0, Lccsancom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v1, "Vungle is not initialized return empty placements list"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1406
    :cond_0
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    iget-object v0, v0, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 1407
    .local v0, "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    const-class v1, Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/persistence/Repository;

    .line 1408
    .local v1, "repository":Lccsancom/vungle/warren/persistence/Repository;
    const-class v2, Lccsancom/vungle/warren/utility/TimeoutProvider;

    invoke-virtual {v0, v2}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/utility/TimeoutProvider;

    .line 1410
    .local v2, "provider":Lccsancom/vungle/warren/utility/TimeoutProvider;
    invoke-virtual {v1}, Lccsancom/vungle/warren/persistence/Repository;->getValidPlacementIds()Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v3

    invoke-interface {v2}, Lccsancom/vungle/warren/utility/TimeoutProvider;->getTimeout()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lccsancom/vungle/warren/persistence/FutureResult;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 1411
    .local v3, "placements":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez v3, :cond_1

    .line 1412
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 1414
    :cond_1
    return-object v3
.end method

.method public static init(Ljava/lang/String;Lccsanandroid/content/Context;Lccsancom/vungle/warren/InitCallback;)V
    .locals 1
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "callback"    # Lccsancom/vungle/warren/InitCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 194
    new-instance v0, Lccsancom/vungle/warren/VungleSettings$Builder;

    invoke-direct {v0}, Lccsancom/vungle/warren/VungleSettings$Builder;-><init>()V

    invoke-virtual {v0}, Lccsancom/vungle/warren/VungleSettings$Builder;->build()Lccsancom/vungle/warren/VungleSettings;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lccsancom/vungle/warren/Vungle;->init(Ljava/lang/String;Lccsanandroid/content/Context;Lccsancom/vungle/warren/InitCallback;Lccsancom/vungle/warren/VungleSettings;)V

    .line 195
    return-void
.end method

.method public static init(Ljava/lang/String;Lccsanandroid/content/Context;Lccsancom/vungle/warren/InitCallback;Lccsancom/vungle/warren/VungleSettings;)V
    .locals 9
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "callback"    # Lccsancom/vungle/warren/InitCallback;
    .param p3, "settings"    # Lccsancom/vungle/warren/VungleSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 214
    const-string v0, "!SDK-VERSION-STRING!:com.vungle:publisher-sdk-android:6.10.2"

    .line 215
    .local v0, "VUNGLE_VERSION_STRING":Ljava/lang/String;
    const-string v1, "Vungle#init"

    const-string v2, "init request"

    invoke-static {v1, v2}, Lccsancom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    if-eqz p2, :cond_a

    .line 221
    const/4 v2, 0x6

    if-nez p1, :cond_0

    .line 222
    new-instance v1, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v1, v2}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {p2, v1}, Lccsancom/vungle/warren/InitCallback;->onError(Lccsancom/vungle/warren/error/VungleException;)V

    .line 223
    return-void

    .line 226
    :cond_0
    invoke-static {p1}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v3

    .line 227
    .local v3, "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    const-class v4, Lccsancom/vungle/warren/utility/platform/Platform;

    invoke-virtual {v3, v4}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/vungle/warren/utility/platform/Platform;

    .line 229
    .local v4, "platform":Lccsancom/vungle/warren/utility/platform/Platform;
    invoke-interface {v4}, Lccsancom/vungle/warren/utility/platform/Platform;->isAtLeastMinimumSDK()Z

    move-result v5

    if-nez v5, :cond_1

    .line 230
    sget-object v1, Lccsancom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v2, "SDK is supported only for API versions 21 and above"

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v1, Lccsancom/vungle/warren/error/VungleException;

    const/16 v2, 0x23

    invoke-direct {v1, v2}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {p2, v1}, Lccsancom/vungle/warren/InitCallback;->onError(Lccsancom/vungle/warren/error/VungleException;)V

    .line 232
    return-void

    .line 235
    :cond_1
    invoke-static {p1}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v5

    const-class v6, Lccsancom/vungle/warren/RuntimeValues;

    invoke-virtual {v5, v6}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/vungle/warren/RuntimeValues;

    .line 236
    .local v5, "runtimeValues":Lccsancom/vungle/warren/RuntimeValues;
    iget-object v6, v5, Lccsancom/vungle/warren/RuntimeValues;->settings:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 238
    const-class v6, Lccsancom/vungle/warren/utility/Executors;

    invoke-virtual {v3, v6}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsancom/vungle/warren/utility/Executors;

    .line 240
    .local v6, "sdkExecutors":Lccsancom/vungle/warren/utility/Executors;
    instance-of v7, p2, Lccsancom/vungle/warren/InitCallbackWrapper;

    if-eqz v7, :cond_2

    .line 241
    move-object v7, p2

    goto :goto_0

    .line 242
    :cond_2
    new-instance v7, Lccsancom/vungle/warren/InitCallbackWrapper;

    invoke-interface {v6}, Lccsancom/vungle/warren/utility/Executors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    invoke-direct {v7, v8, p2}, Lccsancom/vungle/warren/InitCallbackWrapper;-><init>(Ljava/util/concurrent/ExecutorService;Lccsancom/vungle/warren/InitCallback;)V

    :goto_0
    nop

    .line 244
    .local v7, "initCallback":Lccsancom/vungle/warren/InitCallback;
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    goto/16 :goto_2

    .line 249
    :cond_3
    instance-of v2, p1, Lccsanandroid/app/Application;

    if-nez v2, :cond_4

    .line 250
    new-instance v1, Lccsancom/vungle/warren/error/VungleException;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {v7, v1}, Lccsancom/vungle/warren/InitCallback;->onError(Lccsancom/vungle/warren/error/VungleException;)V

    .line 251
    return-void

    .line 254
    :cond_4
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 255
    sget-object v2, Lccsancom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v8, "init already complete"

    invoke-static {v2, v8}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-interface {v7}, Lccsancom/vungle/warren/InitCallback;->onSuccess()V

    .line 257
    invoke-static {v1, v8}, Lccsancom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void

    .line 261
    :cond_5
    sget-object v1, Lccsancom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 262
    sget-object v1, Lccsancom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v2, "init ongoing"

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    new-instance v1, Lccsancom/vungle/warren/error/VungleException;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v7, v1}, Lccsancom/vungle/warren/Vungle;->onInitError(Lccsancom/vungle/warren/InitCallback;Lccsancom/vungle/warren/error/VungleException;)V

    .line 264
    return-void

    .line 267
    :cond_6
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v1}, Lccsanandroidx/core/content/PermissionChecker;->checkCallingOrSelfPermission(Lccsanandroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    .line 269
    const-string v1, "android.permission.INTERNET"

    invoke-static {p1, v1}, Lccsanandroidx/core/content/PermissionChecker;->checkCallingOrSelfPermission(Lccsanandroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    .line 277
    :cond_7
    iget-object v1, v5, Lccsancom/vungle/warren/RuntimeValues;->initCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 279
    invoke-interface {v6}, Lccsancom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lccsancom/vungle/warren/Vungle$1;

    invoke-direct {v2, p0, v5, v3, p1}, Lccsancom/vungle/warren/Vungle$1;-><init>(Ljava/lang/String;Lccsancom/vungle/warren/RuntimeValues;Lccsancom/vungle/warren/ServiceLocator;Lccsanandroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 374
    return-void

    .line 271
    :cond_8
    :goto_1
    sget-object v1, Lccsancom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v2, "Network permissions not granted"

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance v1, Lccsancom/vungle/warren/error/VungleException;

    const/16 v2, 0x22

    invoke-direct {v1, v2}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v7, v1}, Lccsancom/vungle/warren/Vungle;->onInitError(Lccsancom/vungle/warren/InitCallback;Lccsancom/vungle/warren/error/VungleException;)V

    .line 273
    sget-object v1, Lccsancom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 274
    return-void

    .line 245
    :cond_9
    :goto_2
    new-instance v1, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v1, v2}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {v7, v1}, Lccsancom/vungle/warren/InitCallback;->onError(Lccsancom/vungle/warren/error/VungleException;)V

    .line 246
    return-void

    .line 218
    .end local v3    # "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    .end local v4    # "platform":Lccsancom/vungle/warren/utility/platform/Platform;
    .end local v5    # "runtimeValues":Lccsancom/vungle/warren/RuntimeValues;
    .end local v6    # "sdkExecutors":Lccsancom/vungle/warren/utility/Executors;
    .end local v7    # "initCallback":Lccsancom/vungle/warren/InitCallback;
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A valid InitCallback required to ensure API calls are being made after initialize is successful"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static init(Ljava/util/Collection;Ljava/lang/String;Lccsanandroid/content/Context;Lccsancom/vungle/warren/InitCallback;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "context"    # Lccsanandroid/content/Context;
    .param p3, "callback"    # Lccsancom/vungle/warren/InitCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lccsanandroid/content/Context;",
            "Lccsancom/vungle/warren/InitCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    .local p0, "placements":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Lccsancom/vungle/warren/VungleSettings$Builder;

    invoke-direct {v0}, Lccsancom/vungle/warren/VungleSettings$Builder;-><init>()V

    invoke-virtual {v0}, Lccsancom/vungle/warren/VungleSettings$Builder;->build()Lccsancom/vungle/warren/VungleSettings;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lccsancom/vungle/warren/Vungle;->init(Ljava/lang/String;Lccsanandroid/content/Context;Lccsancom/vungle/warren/InitCallback;Lccsancom/vungle/warren/VungleSettings;)V

    .line 180
    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    .line 709
    sget-boolean v0, Lccsancom/vungle/warren/Vungle;->isInitialized:Z

    if-eqz v0, :cond_0

    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    iget-object v0, v0, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static loadAd(Ljava/lang/String;Lccsancom/vungle/warren/AdConfig;Lccsancom/vungle/warren/LoadAdCallback;)V
    .locals 1
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "adConfig"    # Lccsancom/vungle/warren/AdConfig;
    .param p2, "callback"    # Lccsancom/vungle/warren/LoadAdCallback;

    .line 1164
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lccsancom/vungle/warren/Vungle;->loadAd(Ljava/lang/String;Ljava/lang/String;Lccsancom/vungle/warren/AdConfig;Lccsancom/vungle/warren/LoadAdCallback;)V

    .line 1165
    return-void
.end method

.method public static loadAd(Ljava/lang/String;Lccsancom/vungle/warren/LoadAdCallback;)V
    .locals 1
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "callback"    # Lccsancom/vungle/warren/LoadAdCallback;

    .line 1146
    new-instance v0, Lccsancom/vungle/warren/AdConfig;

    invoke-direct {v0}, Lccsancom/vungle/warren/AdConfig;-><init>()V

    invoke-static {p0, v0, p1}, Lccsancom/vungle/warren/Vungle;->loadAd(Ljava/lang/String;Lccsancom/vungle/warren/AdConfig;Lccsancom/vungle/warren/LoadAdCallback;)V

    .line 1147
    return-void
.end method

.method public static loadAd(Ljava/lang/String;Ljava/lang/String;Lccsancom/vungle/warren/AdConfig;Lccsancom/vungle/warren/LoadAdCallback;)V
    .locals 2
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "markup"    # Ljava/lang/String;
    .param p2, "adConfig"    # Lccsancom/vungle/warren/AdConfig;
    .param p3, "callback"    # Lccsancom/vungle/warren/LoadAdCallback;

    .line 1185
    const-string v0, "Vungle#loadAd"

    const-string v1, "loadAd API call invoked"

    invoke-static {v0, v1}, Lccsancom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1188
    sget-object v0, Lccsancom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v1, "Vungle is not initialized"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {p0, p3, v0}, Lccsancom/vungle/warren/Vungle;->onLoadError(Ljava/lang/String;Lccsancom/vungle/warren/LoadAdCallback;Lccsancom/vungle/warren/error/VungleException;)V

    .line 1190
    return-void

    .line 1193
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lccsancom/vungle/warren/AdConfig;->getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v0

    invoke-static {v0}, Lccsancom/vungle/warren/AdConfig$AdSize;->isDefaultAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1194
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {p0, p3, v0}, Lccsancom/vungle/warren/Vungle;->onLoadError(Ljava/lang/String;Lccsancom/vungle/warren/LoadAdCallback;Lccsancom/vungle/warren/error/VungleException;)V

    .line 1195
    return-void

    .line 1198
    :cond_1
    invoke-static {p1}, Lccsancom/vungle/warren/AdMarkup;->fromString(Ljava/lang/String;)Lccsancom/vungle/warren/AdMarkup;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lccsancom/vungle/warren/Vungle;->loadAdInternal(Ljava/lang/String;Lccsancom/vungle/warren/AdMarkup;Lccsancom/vungle/warren/AdConfig;Lccsancom/vungle/warren/LoadAdCallback;)V

    .line 1199
    return-void
.end method

.method static loadAdInternal(Ljava/lang/String;Lccsancom/vungle/warren/AdMarkup;Lccsancom/vungle/warren/AdConfig;Lccsancom/vungle/warren/LoadAdCallback;)V
    .locals 5
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "markup"    # Lccsancom/vungle/warren/AdMarkup;
    .param p2, "adConfig"    # Lccsancom/vungle/warren/AdConfig;
    .param p3, "callback"    # Lccsancom/vungle/warren/LoadAdCallback;

    .line 1206
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1207
    sget-object v0, Lccsancom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v1, "Vungle is not initialized"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {p0, p3, v0}, Lccsancom/vungle/warren/Vungle;->onLoadError(Ljava/lang/String;Lccsancom/vungle/warren/LoadAdCallback;Lccsancom/vungle/warren/error/VungleException;)V

    .line 1209
    return-void

    .line 1212
    :cond_0
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    iget-object v0, v0, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 1214
    .local v0, "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    new-instance v1, Lccsancom/vungle/warren/LoadAdCallbackWrapper;

    const-class v2, Lccsancom/vungle/warren/utility/Executors;

    .line 1215
    invoke-virtual {v0, v2}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/utility/Executors;

    .line 1216
    invoke-interface {v2}, Lccsancom/vungle/warren/utility/Executors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Lccsancom/vungle/warren/LoadAdCallbackWrapper;-><init>(Ljava/util/concurrent/ExecutorService;Lccsancom/vungle/warren/LoadAdCallback;)V

    .line 1221
    .local v1, "listener":Lccsancom/vungle/warren/LoadAdCallback;
    const-class v2, Lccsancom/vungle/warren/AdLoader;

    invoke-virtual {v0, v2}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/AdLoader;

    new-instance v3, Lccsancom/vungle/warren/AdRequest;

    invoke-direct {v3, p0, p1}, Lccsancom/vungle/warren/AdRequest;-><init>(Ljava/lang/String;Lccsancom/vungle/warren/AdMarkup;)V

    if-nez p2, :cond_1

    new-instance v4, Lccsancom/vungle/warren/AdConfig;

    invoke-direct {v4}, Lccsancom/vungle/warren/AdConfig;-><init>()V

    goto :goto_0

    :cond_1
    move-object v4, p2

    :goto_0
    invoke-virtual {v2, v3, v4, v1}, Lccsancom/vungle/warren/AdLoader;->load(Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/AdConfig;Lccsancom/vungle/warren/LoadAdCallback;)V

    .line 1222
    return-void
.end method

.method private static onInitError(Lccsancom/vungle/warren/InitCallback;Lccsancom/vungle/warren/error/VungleException;)V
    .locals 2
    .param p0, "initCallback"    # Lccsancom/vungle/warren/InitCallback;
    .param p1, "e"    # Lccsancom/vungle/warren/error/VungleException;

    .line 377
    if-eqz p0, :cond_0

    .line 378
    invoke-interface {p0, p1}, Lccsancom/vungle/warren/InitCallback;->onError(Lccsancom/vungle/warren/error/VungleException;)V

    .line 380
    :cond_0
    if-eqz p1, :cond_2

    .line 381
    invoke-virtual {p1}, Lccsancom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lccsancom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    invoke-virtual {p1}, Lccsancom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lccsancom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "exMsg":Ljava/lang/String;
    :goto_0
    const-string v1, "Vungle#init"

    invoke-static {v1, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .end local v0    # "exMsg":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static onLoadError(Ljava/lang/String;Lccsancom/vungle/warren/LoadAdCallback;Lccsancom/vungle/warren/error/VungleException;)V
    .locals 2
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "loadAdCallback"    # Lccsancom/vungle/warren/LoadAdCallback;
    .param p2, "e"    # Lccsancom/vungle/warren/error/VungleException;

    .line 1124
    if-eqz p1, :cond_0

    .line 1125
    invoke-interface {p1, p0, p2}, Lccsancom/vungle/warren/LoadAdCallback;->onError(Ljava/lang/String;Lccsancom/vungle/warren/error/VungleException;)V

    .line 1127
    :cond_0
    if-eqz p2, :cond_2

    .line 1128
    invoke-virtual {p2}, Lccsancom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lccsancom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1129
    invoke-virtual {p2}, Lccsancom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lccsancom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1130
    .local v0, "exMsg":Ljava/lang/String;
    :goto_0
    const-string v1, "Vungle#loadAd"

    invoke-static {v1, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    .end local v0    # "exMsg":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static onPlayError(Ljava/lang/String;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/error/VungleException;)V
    .locals 2
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "playAdCallback"    # Lccsancom/vungle/warren/PlayAdCallback;
    .param p2, "e"    # Lccsancom/vungle/warren/error/VungleException;

    .line 869
    if-eqz p1, :cond_0

    .line 870
    invoke-interface {p1, p0, p2}, Lccsancom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Lccsancom/vungle/warren/error/VungleException;)V

    .line 872
    :cond_0
    if-eqz p2, :cond_2

    .line 873
    invoke-virtual {p2}, Lccsancom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lccsancom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 874
    invoke-virtual {p2}, Lccsancom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lccsancom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 875
    .local v0, "exMsg":Ljava/lang/String;
    :goto_0
    const-string v1, "Vungle#playAd"

    invoke-static {v1, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    .end local v0    # "exMsg":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static playAd(Ljava/lang/String;Lccsancom/vungle/warren/AdConfig;Lccsancom/vungle/warren/PlayAdCallback;)V
    .locals 1
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "settings"    # Lccsancom/vungle/warren/AdConfig;
    .param p2, "callback"    # Lccsancom/vungle/warren/PlayAdCallback;

    .line 892
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lccsancom/vungle/warren/Vungle;->playAd(Ljava/lang/String;Ljava/lang/String;Lccsancom/vungle/warren/AdConfig;Lccsancom/vungle/warren/PlayAdCallback;)V

    .line 893
    return-void
.end method

.method public static playAd(Ljava/lang/String;Ljava/lang/String;Lccsancom/vungle/warren/AdConfig;Lccsancom/vungle/warren/PlayAdCallback;)V
    .locals 16
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "markup"    # Ljava/lang/String;
    .param p2, "settings"    # Lccsancom/vungle/warren/AdConfig;
    .param p3, "callback"    # Lccsancom/vungle/warren/PlayAdCallback;

    .line 909
    move-object/from16 v9, p0

    move-object/from16 v10, p3

    const-string v0, "Vungle#playAd"

    const-string v1, "playAd call invoked"

    invoke-static {v0, v1}, Lccsancom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 912
    sget-object v0, Lccsancom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v1, "Locator is not initialized"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    if-eqz v10, :cond_0

    .line 914
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v9, v10, v0}, Lccsancom/vungle/warren/Vungle;->onPlayError(Ljava/lang/String;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/error/VungleException;)V

    .line 916
    :cond_0
    return-void

    .line 919
    :cond_1
    invoke-static/range {p0 .. p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 920
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v9, v10, v0}, Lccsancom/vungle/warren/Vungle;->onPlayError(Ljava/lang/String;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/error/VungleException;)V

    .line 921
    return-void

    .line 924
    :cond_2
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    iget-object v0, v0, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v11

    .line 926
    .local v11, "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    const-class v0, Lccsancom/vungle/warren/utility/Executors;

    invoke-virtual {v11, v0}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lccsancom/vungle/warren/utility/Executors;

    .line 927
    .local v12, "sdkExecutors":Lccsancom/vungle/warren/utility/Executors;
    const-class v0, Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v11, v0}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lccsancom/vungle/warren/persistence/Repository;

    .line 928
    .local v13, "repository":Lccsancom/vungle/warren/persistence/Repository;
    const-class v0, Lccsancom/vungle/warren/AdLoader;

    invoke-virtual {v11, v0}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lccsancom/vungle/warren/AdLoader;

    .line 929
    .local v14, "adLoader":Lccsancom/vungle/warren/AdLoader;
    const-class v0, Lccsancom/vungle/warren/VungleApiClient;

    invoke-virtual {v11, v0}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lccsancom/vungle/warren/VungleApiClient;

    .line 931
    .local v15, "vungleApiClient":Lccsancom/vungle/warren/VungleApiClient;
    new-instance v4, Lccsancom/vungle/warren/PlayAdCallbackWrapper;

    invoke-interface {v12}, Lccsancom/vungle/warren/utility/Executors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {v4, v0, v10}, Lccsancom/vungle/warren/PlayAdCallbackWrapper;-><init>(Ljava/util/concurrent/ExecutorService;Lccsancom/vungle/warren/PlayAdCallback;)V

    .line 933
    .local v4, "listener":Lccsancom/vungle/warren/PlayAdCallback;
    invoke-interface {v12}, Lccsancom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    new-instance v7, Lccsancom/vungle/warren/Vungle$9;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-object v5, v13

    move-object/from16 v6, p2

    move-object v9, v7

    move-object v7, v15

    move-object v10, v8

    move-object v8, v12

    invoke-direct/range {v0 .. v8}, Lccsancom/vungle/warren/Vungle$9;-><init>(Ljava/lang/String;Ljava/lang/String;Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/AdConfig;Lccsancom/vungle/warren/VungleApiClient;Lccsancom/vungle/warren/utility/Executors;)V

    invoke-interface {v10, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1075
    return-void
.end method

.method static reConfigure()V
    .locals 6

    .line 388
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    iget-object v1, v0, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    if-nez v1, :cond_0

    .line 389
    return-void

    .line 391
    :cond_0
    invoke-static {v1}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v1

    .line 392
    .local v1, "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    const-class v2, Lccsancom/vungle/warren/utility/Executors;

    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/utility/Executors;

    .line 393
    .local v2, "sdkExecutors":Lccsancom/vungle/warren/utility/Executors;
    const-class v3, Lccsancom/vungle/warren/RuntimeValues;

    invoke-virtual {v1, v3}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/vungle/warren/RuntimeValues;

    .line 395
    .local v3, "runtimeValues":Lccsancom/vungle/warren/RuntimeValues;
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 396
    invoke-interface {v2}, Lccsancom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v4, Lccsancom/vungle/warren/Vungle$2;

    invoke-direct {v4, v3}, Lccsancom/vungle/warren/Vungle$2;-><init>(Lccsancom/vungle/warren/RuntimeValues;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 403
    :cond_1
    iget-object v4, v0, Lccsancom/vungle/warren/Vungle;->appID:Ljava/lang/String;

    iget-object v0, v0, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    iget-object v5, v3, Lccsancom/vungle/warren/RuntimeValues;->initCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/vungle/warren/InitCallback;

    invoke-static {v4, v0, v5}, Lccsancom/vungle/warren/Vungle;->init(Ljava/lang/String;Lccsanandroid/content/Context;Lccsancom/vungle/warren/InitCallback;)V

    .line 405
    :goto_0
    return-void
.end method

.method private static declared-synchronized renderAd(Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/model/Advertisement;)V
    .locals 14
    .param p0, "request"    # Lccsancom/vungle/warren/AdRequest;
    .param p1, "listener"    # Lccsancom/vungle/warren/PlayAdCallback;
    .param p2, "placement"    # Lccsancom/vungle/warren/model/Placement;
    .param p3, "advertisement"    # Lccsancom/vungle/warren/model/Advertisement;

    const-class v1, Lccsancom/vungle/warren/Vungle;

    monitor-enter v1

    .line 1093
    :try_start_0
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1094
    sget-object v0, Lccsancom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v2, "Sdk is not initialized"

    invoke-static {v0, v2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1095
    monitor-exit v1

    return-void

    .line 1097
    :cond_0
    :try_start_1
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    iget-object v2, v0, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    invoke-static {v2}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v2

    .line 1099
    .local v2, "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    new-instance v13, Lccsancom/vungle/warren/Vungle$10;

    iget-object v5, v0, Lccsancom/vungle/warren/Vungle;->playOperations:Ljava/util/Map;

    const-class v3, Lccsancom/vungle/warren/persistence/Repository;

    .line 1103
    invoke-virtual {v2, v3}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lccsancom/vungle/warren/persistence/Repository;

    const-class v3, Lccsancom/vungle/warren/AdLoader;

    .line 1104
    invoke-virtual {v2, v3}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lccsancom/vungle/warren/AdLoader;

    const-class v3, Lccsancom/vungle/warren/tasks/JobRunner;

    .line 1105
    invoke-virtual {v2, v3}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lccsancom/vungle/warren/tasks/JobRunner;

    const-class v3, Lccsancom/vungle/warren/VisionController;

    .line 1106
    invoke-virtual {v2, v3}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lccsancom/vungle/warren/VisionController;

    move-object v3, v13

    move-object v4, p0

    move-object v6, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-direct/range {v3 .. v12}, Lccsancom/vungle/warren/Vungle$10;-><init>(Lccsancom/vungle/warren/AdRequest;Ljava/util/Map;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/tasks/JobRunner;Lccsancom/vungle/warren/VisionController;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/model/Advertisement;)V

    .line 1099
    invoke-static {v13}, Lccsancom/vungle/warren/ui/VungleActivity;->setEventListener(Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V

    .line 1118
    iget-object v3, v0, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    move-object v4, p0

    invoke-static {v3, p0}, Lccsancom/vungle/warren/AdActivity;->createIntent(Lccsanandroid/content/Context;Lccsancom/vungle/warren/AdRequest;)Lccsanandroid/content/Intent;

    move-result-object v3

    .line 1120
    .local v3, "intent":Lccsanandroid/content/Intent;
    iget-object v0, v0, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v0, v3, v5}, Lccsancom/vungle/warren/utility/ActivityManager;->startWhenForeground(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1121
    monitor-exit v1

    return-void

    .line 1092
    .end local v2    # "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    .end local v3    # "intent":Lccsanandroid/content/Intent;
    .end local p0    # "request":Lccsancom/vungle/warren/AdRequest;
    .end local p1    # "listener":Lccsancom/vungle/warren/PlayAdCallback;
    .end local p2    # "placement":Lccsancom/vungle/warren/model/Placement;
    .end local p3    # "advertisement":Lccsancom/vungle/warren/model/Advertisement;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static saveGDPRConsent(Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V
    .locals 3
    .param p0, "repository"    # Lccsancom/vungle/warren/persistence/Repository;
    .param p1, "status"    # Lccsancom/vungle/warren/Vungle$Consent;
    .param p2, "consentMessageVersion"    # Ljava/lang/String;

    .line 1517
    const-class v0, Lccsancom/vungle/warren/model/Cookie;

    new-instance v1, Lccsancom/vungle/warren/Vungle$13;

    invoke-direct {v1, p1, p2, p0}, Lccsancom/vungle/warren/Vungle$13;-><init>(Lccsancom/vungle/warren/Vungle$Consent;Ljava/lang/String;Lccsancom/vungle/warren/persistence/Repository;)V

    const-string v2, "consentIsImportantToVungle"

    invoke-virtual {p0, v2, v0, v1}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;Lccsancom/vungle/warren/persistence/Repository$LoadCallback;)V

    .line 1531
    return-void
.end method

.method public static setHeaderBiddingCallback(Lccsancom/vungle/warren/HeaderBiddingCallback;)V
    .locals 5
    .param p0, "headerBiddingCallback"    # Lccsancom/vungle/warren/HeaderBiddingCallback;

    .line 1657
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    iget-object v0, v0, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    if-nez v0, :cond_0

    .line 1658
    return-void

    .line 1660
    :cond_0
    invoke-static {v0}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 1661
    .local v0, "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    const-class v1, Lccsancom/vungle/warren/RuntimeValues;

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/RuntimeValues;

    .line 1663
    .local v1, "runtimeValues":Lccsancom/vungle/warren/RuntimeValues;
    iget-object v2, v1, Lccsancom/vungle/warren/RuntimeValues;->headerBiddingCallback:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lccsancom/vungle/warren/HeaderBiddingCallbackWrapper;

    const-class v4, Lccsancom/vungle/warren/utility/Executors;

    .line 1664
    invoke-virtual {v0, v4}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/vungle/warren/utility/Executors;

    invoke-interface {v4}, Lccsancom/vungle/warren/utility/Executors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lccsancom/vungle/warren/HeaderBiddingCallbackWrapper;-><init>(Ljava/util/concurrent/ExecutorService;Lccsancom/vungle/warren/HeaderBiddingCallback;)V

    .line 1663
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1666
    return-void
.end method

.method public static setIncentivizedFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "userID"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "keepWatching"    # Ljava/lang/String;
    .param p4, "close"    # Ljava/lang/String;

    .line 729
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    iget-object v0, v0, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    if-nez v0, :cond_0

    .line 730
    sget-object v0, Lccsancom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v1, "Vungle is not initialized, context is null"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    return-void

    .line 734
    :cond_0
    invoke-static {v0}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 736
    .local v0, "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    const-class v1, Lccsancom/vungle/warren/utility/Executors;

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/utility/Executors;

    invoke-interface {v1}, Lccsancom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v9, Lccsancom/vungle/warren/Vungle$7;

    move-object v2, v9

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, Lccsancom/vungle/warren/Vungle$7;-><init>(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 770
    return-void
.end method

.method private static stopPlaying()V
    .locals 4

    .line 1800
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    iget-object v1, v0, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    if-nez v1, :cond_0

    .line 1801
    return-void

    .line 1803
    :cond_0
    new-instance v1, Lccsanandroid/content/Intent;

    const-string v2, "AdvertisementBus"

    invoke-direct {v1, v2}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1804
    .local v1, "broadcast":Lccsanandroid/content/Intent;
    const-string v2, "command"

    const-string v3, "stopAll"

    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 1805
    iget-object v0, v0, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsanandroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Lccsanandroid/content/Context;)Lccsanandroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsanandroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Lccsanandroid/content/Intent;)Z

    .line 1806
    return-void
.end method

.method public static updateCCPAStatus(Lccsancom/vungle/warren/Vungle$Consent;)V
    .locals 2
    .param p0, "status"    # Lccsancom/vungle/warren/Vungle$Consent;

    .line 1600
    if-nez p0, :cond_0

    .line 1601
    sget-object v0, Lccsancom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v1, "Unable to update CCPA status, Invalid input parameter."

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    return-void

    .line 1606
    :cond_0
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    iget-object v1, v0, Lccsancom/vungle/warren/Vungle;->ccpaStatus:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1608
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lccsancom/vungle/warren/Vungle;->isDepInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1613
    :cond_1
    iget-object v0, v0, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 1614
    .local v0, "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    const-class v1, Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/persistence/Repository;

    .line 1616
    .local v1, "repository":Lccsancom/vungle/warren/persistence/Repository;
    invoke-static {v1, p0}, Lccsancom/vungle/warren/Vungle;->updateCCPAStatus(Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/Vungle$Consent;)V

    .line 1617
    return-void

    .line 1609
    .end local v0    # "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    .end local v1    # "repository":Lccsancom/vungle/warren/persistence/Repository;
    :cond_2
    :goto_0
    sget-object v0, Lccsancom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v1, "Vungle is not initialized"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    return-void
.end method

.method private static updateCCPAStatus(Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/Vungle$Consent;)V
    .locals 3
    .param p0, "repository"    # Lccsancom/vungle/warren/persistence/Repository;
    .param p1, "status"    # Lccsancom/vungle/warren/Vungle$Consent;

    .line 1621
    const-class v0, Lccsancom/vungle/warren/model/Cookie;

    new-instance v1, Lccsancom/vungle/warren/Vungle$14;

    invoke-direct {v1, p1, p0}, Lccsancom/vungle/warren/Vungle$14;-><init>(Lccsancom/vungle/warren/Vungle$Consent;Lccsancom/vungle/warren/persistence/Repository;)V

    const-string v2, "ccpaIsImportantToVungle"

    invoke-virtual {p0, v2, v0, v1}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;Lccsancom/vungle/warren/persistence/Repository$LoadCallback;)V

    .line 1632
    return-void
.end method

.method public static updateConsentStatus(Lccsancom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V
    .locals 4
    .param p0, "status"    # Lccsancom/vungle/warren/Vungle$Consent;
    .param p1, "consentMessageVersion"    # Ljava/lang/String;

    .line 1495
    if-nez p0, :cond_0

    .line 1496
    sget-object v0, Lccsancom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v1, "Cannot set consent with a null consent, please check your code"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    return-void

    .line 1500
    :cond_0
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    iget-object v1, v0, Lccsancom/vungle/warren/Vungle;->consent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1501
    iput-object p1, v0, Lccsancom/vungle/warren/Vungle;->consentVersion:Ljava/lang/String;

    .line 1503
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lccsancom/vungle/warren/Vungle;->isDepInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1504
    iget-object v1, v0, Lccsancom/vungle/warren/Vungle;->context:Lccsanandroid/content/Context;

    invoke-static {v1}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v1

    .line 1505
    .local v1, "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    const-class v2, Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/persistence/Repository;

    .line 1506
    .local v2, "repository":Lccsancom/vungle/warren/persistence/Repository;
    iget-object v3, v0, Lccsancom/vungle/warren/Vungle;->consent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/vungle/warren/Vungle$Consent;

    iget-object v0, v0, Lccsancom/vungle/warren/Vungle;->consentVersion:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lccsancom/vungle/warren/Vungle;->saveGDPRConsent(Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V

    .line 1507
    .end local v1    # "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    .end local v2    # "repository":Lccsancom/vungle/warren/persistence/Repository;
    goto :goto_0

    .line 1508
    :cond_1
    sget-object v0, Lccsancom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v1, "Vungle is not initialized"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    :goto_0
    return-void
.end method
