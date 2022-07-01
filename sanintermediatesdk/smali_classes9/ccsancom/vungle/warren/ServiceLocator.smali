.class Lccsancom/vungle/warren/ServiceLocator;
.super Ljava/lang/Object;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/ServiceLocator$Creator;
    }
.end annotation


# static fields
.field private static INSTANCE:Lccsancom/vungle/warren/ServiceLocator;

.field private static final RECONFIG_CALL:Lccsancom/vungle/warren/tasks/ReconfigJob$ReconfigCall;

.field static final VUNGLE_STATIC_API:Lccsancom/vungle/warren/VungleStaticApi;


# instance fields
.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private creators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lccsancom/vungle/warren/ServiceLocator$Creator;",
            ">;"
        }
    .end annotation
.end field

.field private final ctx:Lccsanandroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    new-instance v0, Lccsancom/vungle/warren/ServiceLocator$1;

    invoke-direct {v0}, Lccsancom/vungle/warren/ServiceLocator$1;-><init>()V

    sput-object v0, Lccsancom/vungle/warren/ServiceLocator;->VUNGLE_STATIC_API:Lccsancom/vungle/warren/VungleStaticApi;

    .line 331
    new-instance v0, Lccsancom/vungle/warren/ServiceLocator$25;

    invoke-direct {v0}, Lccsancom/vungle/warren/ServiceLocator$25;-><init>()V

    sput-object v0, Lccsancom/vungle/warren/ServiceLocator;->RECONFIG_CALL:Lccsancom/vungle/warren/tasks/ReconfigJob$ReconfigCall;

    return-void
.end method

.method private constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/ServiceLocator;->creators:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/ServiceLocator;->cache:Ljava/util/Map;

    .line 52
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/ServiceLocator;->ctx:Lccsanandroid/content/Context;

    .line 53
    invoke-direct {p0}, Lccsancom/vungle/warren/ServiceLocator;->buildCreators()V

    .line 54
    return-void
.end method

.method static synthetic access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/ServiceLocator;
    .param p1, "x1"    # Ljava/lang/Class;

    .line 42
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/ServiceLocator;->getOrBuild(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Lccsancom/vungle/warren/tasks/ReconfigJob$ReconfigCall;
    .locals 1

    .line 42
    sget-object v0, Lccsancom/vungle/warren/ServiceLocator;->RECONFIG_CALL:Lccsancom/vungle/warren/tasks/ReconfigJob$ReconfigCall;

    return-object v0
.end method

.method static synthetic access$300(Lccsancom/vungle/warren/ServiceLocator;)Lccsanandroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/ServiceLocator;

    .line 42
    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator;->ctx:Lccsanandroid/content/Context;

    return-object v0
.end method

.method private buildCreators()V
    .locals 3

    .line 127
    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator;->creators:Ljava/util/Map;

    const-class v1, Lccsancom/vungle/warren/tasks/JobCreator;

    new-instance v2, Lccsancom/vungle/warren/ServiceLocator$2;

    invoke-direct {v2, p0}, Lccsancom/vungle/warren/ServiceLocator$2;-><init>(Lccsancom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator;->creators:Ljava/util/Map;

    const-class v1, Lccsancom/vungle/warren/tasks/JobRunner;

    new-instance v2, Lccsancom/vungle/warren/ServiceLocator$3;

    invoke-direct {v2, p0}, Lccsancom/vungle/warren/ServiceLocator$3;-><init>(Lccsancom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator;->creators:Ljava/util/Map;

    const-class v1, Lccsancom/vungle/warren/AdLoader;

    new-instance v2, Lccsancom/vungle/warren/ServiceLocator$4;

    invoke-direct {v2, p0}, Lccsancom/vungle/warren/ServiceLocator$4;-><init>(Lccsancom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator;->creators:Ljava/util/Map;

    const-class v1, Lccsancom/vungle/warren/downloader/Downloader;

    new-instance v2, Lccsancom/vungle/warren/ServiceLocator$5;

    invoke-direct {v2, p0}, Lccsancom/vungle/warren/ServiceLocator$5;-><init>(Lccsancom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator;->creators:Ljava/util/Map;

    const-class v1, Lccsancom/vungle/warren/VungleApiClient;

    new-instance v2, Lccsancom/vungle/warren/ServiceLocator$6;

    invoke-direct {v2, p0}, Lccsancom/vungle/warren/ServiceLocator$6;-><init>(Lccsancom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator;->creators:Ljava/util/Map;

    const-class v1, Lccsancom/vungle/warren/persistence/Repository;

    new-instance v2, Lccsancom/vungle/warren/ServiceLocator$7;

    invoke-direct {v2, p0}, Lccsancom/vungle/warren/ServiceLocator$7;-><init>(Lccsancom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator;->creators:Ljava/util/Map;

    const-class v1, Lccsancom/vungle/warren/log/LogManager;

    new-instance v2, Lccsancom/vungle/warren/ServiceLocator$8;

    invoke-direct {v2, p0}, Lccsancom/vungle/warren/ServiceLocator$8;-><init>(Lccsancom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator;->creators:Ljava/util/Map;

    const-class v1, Lccsancom/vungle/warren/persistence/Designer;

    new-instance v2, Lccsancom/vungle/warren/ServiceLocator$9;

    invoke-direct {v2, p0}, Lccsancom/vungle/warren/ServiceLocator$9;-><init>(Lccsancom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator;->creators:Ljava/util/Map;

    const-class v1, Lccsancom/vungle/warren/persistence/CacheManager;

    new-instance v2, Lccsancom/vungle/warren/ServiceLocator$10;

    invoke-direct {v2, p0}, Lccsancom/vungle/warren/ServiceLocator$10;-><init>(Lccsancom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator;->creators:Ljava/util/Map;

    const-class v1, Lccsancom/vungle/warren/utility/platform/Platform;

    new-instance v2, Lccsancom/vungle/warren/ServiceLocator$11;

    invoke-direct {v2, p0}, Lccsancom/vungle/warren/ServiceLocator$11;-><init>(Lccsancom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator;->creators:Ljava/util/Map;

    const-class v1, Lccsancom/vungle/warren/utility/Executors;

    new-instance v2, Lccsancom/vungle/warren/ServiceLocator$12;

    invoke-direct {v2, p0}, Lccsancom/vungle/warren/ServiceLocator$12;-><init>(Lccsancom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator;->creators:Ljava/util/Map;

    const-class v1, Lccsancom/vungle/warren/RuntimeValues;

    new-instance v2, Lccsancom/vungle/warren/ServiceLocator$13;

    invoke-direct {v2, p0}, Lccsancom/vungle/warren/ServiceLocator$13;-><init>(Lccsancom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator;->creators:Ljava/util/Map;

    const-class v1, Lccsancom/vungle/warren/VungleStaticApi;

    new-instance v2, Lccsancom/vungle/warren/ServiceLocator$14;

    invoke-direct {v2, p0}, Lccsancom/vungle/warren/ServiceLocator$14;-><init>(Lccsancom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator;->creators:Ljava/util/Map;

    const-class v1, Lccsancom/vungle/warren/PresentationFactory;

    new-instance v2, Lccsancom/vungle/warren/ServiceLocator$15;

    invoke-direct {v2, p0}, Lccsancom/vungle/warren/ServiceLocator$15;-><init>(Lccsancom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator;->creators:Ljava/util/Map;

    const-class v1, Lccsancom/vungle/warren/downloader/DownloaderCache;

    new-instance v2, Lccsancom/vungle/warren/ServiceLocator$16;

    invoke-direct {v2, p0}, Lccsancom/vungle/warren/ServiceLocator$16;-><init>(Lccsancom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator;->creators:Ljava/util/Map;

    const-class v1, Lccsancom/vungle/warren/VisionController;

    new-instance v2, Lccsancom/vungle/warren/ServiceLocator$17;

    invoke-direct {v2, p0}, Lccsancom/vungle/warren/ServiceLocator$17;-><init>(Lccsancom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator;->creators:Ljava/util/Map;

    const-class v1, Lccsancom/vungle/warren/utility/TimeoutProvider;

    new-instance v2, Lccsancom/vungle/warren/ServiceLocator$18;

    invoke-direct {v2, p0}, Lccsancom/vungle/warren/ServiceLocator$18;-><init>(Lccsancom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator;->creators:Ljava/util/Map;

    const-class v1, Lccsancom/vungle/warren/OperationSequence;

    new-instance v2, Lccsancom/vungle/warren/ServiceLocator$19;

    invoke-direct {v2, p0}, Lccsancom/vungle/warren/ServiceLocator$19;-><init>(Lccsancom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator;->creators:Ljava/util/Map;

    const-class v1, Lccsancom/vungle/warren/utility/AppSession;

    new-instance v2, Lccsancom/vungle/warren/ServiceLocator$20;

    invoke-direct {v2, p0}, Lccsancom/vungle/warren/ServiceLocator$20;-><init>(Lccsancom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator;->creators:Ljava/util/Map;

    const-class v1, Lccsancom/vungle/warren/omsdk/OMInjector;

    new-instance v2, Lccsancom/vungle/warren/ServiceLocator$21;

    invoke-direct {v2, p0}, Lccsancom/vungle/warren/ServiceLocator$21;-><init>(Lccsancom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator;->creators:Ljava/util/Map;

    const-class v1, Lccsancom/vungle/warren/omsdk/OMTracker$Factory;

    new-instance v2, Lccsancom/vungle/warren/ServiceLocator$22;

    invoke-direct {v2, p0}, Lccsancom/vungle/warren/ServiceLocator$22;-><init>(Lccsancom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator;->creators:Ljava/util/Map;

    const-class v1, Lccsancom/vungle/warren/CacheBustManager;

    new-instance v2, Lccsancom/vungle/warren/ServiceLocator$23;

    invoke-direct {v2, p0}, Lccsancom/vungle/warren/ServiceLocator$23;-><init>(Lccsancom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator;->creators:Ljava/util/Map;

    const-class v1, Lccsancom/vungle/warren/persistence/FilePreferences;

    new-instance v2, Lccsancom/vungle/warren/ServiceLocator$24;

    invoke-direct {v2, p0}, Lccsancom/vungle/warren/ServiceLocator$24;-><init>(Lccsancom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    return-void
.end method

.method static declared-synchronized deInit()V
    .locals 2

    const-class v0, Lccsancom/vungle/warren/ServiceLocator;

    monitor-enter v0

    .line 65
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lccsancom/vungle/warren/ServiceLocator;->INSTANCE:Lccsancom/vungle/warren/ServiceLocator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit v0

    return-void

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;

    const-class v0, Lccsancom/vungle/warren/ServiceLocator;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lccsancom/vungle/warren/ServiceLocator;->INSTANCE:Lccsancom/vungle/warren/ServiceLocator;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lccsancom/vungle/warren/ServiceLocator;

    invoke-direct {v1, p0}, Lccsancom/vungle/warren/ServiceLocator;-><init>(Lccsanandroid/content/Context;)V

    sput-object v1, Lccsancom/vungle/warren/ServiceLocator;->INSTANCE:Lccsancom/vungle/warren/ServiceLocator;

    .line 61
    :cond_0
    sget-object v1, Lccsancom/vungle/warren/ServiceLocator;->INSTANCE:Lccsancom/vungle/warren/ServiceLocator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 56
    .end local p0    # "context":Lccsanandroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getOrBuild(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 78
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/ServiceLocator;->getServiceClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 79
    .local v0, "target":Ljava/lang/Class;
    iget-object v1, p0, Lccsancom/vungle/warren/ServiceLocator;->cache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 81
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 82
    iget-object v2, p0, Lccsancom/vungle/warren/ServiceLocator;->creators:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/ServiceLocator$Creator;

    .line 83
    .local v2, "creator":Lccsancom/vungle/warren/ServiceLocator$Creator;, "Lccsancom/vungle/warren/ServiceLocator$Creator<TT;>;"
    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {v2}, Lccsancom/vungle/warren/ServiceLocator$Creator;->create()Ljava/lang/Object;

    move-result-object v1

    .line 87
    invoke-virtual {v2}, Lccsancom/vungle/warren/ServiceLocator$Creator;->isSingleton()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    iget-object v3, p0, Lccsancom/vungle/warren/ServiceLocator;->cache:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 84
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unknown class"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 91
    .end local v2    # "creator":Lccsancom/vungle/warren/ServiceLocator$Creator;, "Lccsancom/vungle/warren/ServiceLocator$Creator<TT;>;"
    :cond_1
    :goto_0
    return-object v1
.end method

.method private getServiceClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .param p1, "serviceClass"    # Ljava/lang/Class;

    .line 98
    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator;->creators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 99
    .local v1, "clazz":Ljava/lang/Class;
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    return-object v1

    .line 101
    .end local v1    # "clazz":Ljava/lang/Class;
    :cond_0
    goto :goto_0

    .line 103
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown dependency for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method declared-synchronized bindService(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .local p1, "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "service":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 109
    :try_start_0
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/ServiceLocator;->getServiceClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 110
    .local v0, "target":Ljava/lang/Class;
    iget-object v1, p0, Lccsancom/vungle/warren/ServiceLocator;->cache:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 108
    .end local v0    # "target":Ljava/lang/Class;
    .end local p0    # "this":Lccsancom/vungle/warren/ServiceLocator;
    .end local p1    # "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p2    # "service":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    .line 69
    :try_start_0
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/ServiceLocator;->getOrBuild(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 69
    .end local p0    # "this":Lccsancom/vungle/warren/ServiceLocator;
    .end local p1    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized isCreated(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/ServiceLocator;->cache:Ljava/util/Map;

    invoke-direct {p0, p1}, Lccsancom/vungle/warren/ServiceLocator;->getServiceClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 73
    .end local p0    # "this":Lccsancom/vungle/warren/ServiceLocator;
    .end local p1    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
