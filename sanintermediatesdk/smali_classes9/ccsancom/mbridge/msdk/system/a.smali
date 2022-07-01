.class public final Lccsancom/mbridge/msdk/system/a;
.super Ljava/lang/Object;
.source "MBridgeSDKImpl.java"

# interfaces
.implements Lccsancom/mbridge/msdk/MBridgeSDK;


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/concurrent/locks/Lock;


# instance fields
.field private volatile c:Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;

.field private d:Lccsanandroid/content/Context;

.field private e:Lccsancom/mbridge/msdk/out/SDKInitStatusListener;

.field private f:Z

.field private final g:Lccsanandroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/system/a;->b:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-object v0, Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;->INITIAL:Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;

    iput-object v0, p0, Lccsancom/mbridge/msdk/system/a;->c:Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/system/a;->f:Z

    .line 64
    new-instance v0, Lccsancom/mbridge/msdk/system/a$1;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/system/a$1;-><init>(Lccsancom/mbridge/msdk/system/a;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/system/a;->g:Lccsanandroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method private a()V
    .locals 6

    .line 156
    const-string v0, "com.mbridge.msdk"

    sget-object v1, Lccsancom/mbridge/msdk/system/a;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 157
    const/4 v1, 0x0

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/system/a;->f:Z

    .line 159
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/system/a;->d:Lccsanandroid/content/Context;

    instance-of v3, v2, Lccsanandroid/app/Application;

    if-eqz v3, :cond_0

    .line 160
    check-cast v2, Lccsanandroid/app/Application;

    .line 1109
    iget-object v3, p0, Lccsancom/mbridge/msdk/system/a;->g:Lccsanandroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v2, v3}, Lccsanandroid/app/Application;->registerActivityLifecycleCallbacks(Lccsanandroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 162
    :cond_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/system/a;->d:Lccsanandroid/content/Context;

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/same/net/n;->a(Lccsanandroid/content/Context;)V

    .line 163
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/b;->a()Lccsancom/mbridge/msdk/foundation/controller/b;

    move-result-object v2

    sget-object v3, Lccsancom/mbridge/msdk/system/a;->a:Ljava/util/Map;

    iget-object v4, p0, Lccsancom/mbridge/msdk/system/a;->d:Lccsanandroid/content/Context;

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/controller/b;->a(Ljava/util/Map;Lccsanandroid/content/Context;)V

    .line 164
    sget-object v2, Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;->COMPLETED:Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;

    iput-object v2, p0, Lccsancom/mbridge/msdk/system/a;->c:Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;

    .line 165
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->d()V

    .line 167
    nop

    .line 1196
    new-instance v2, Lccsanandroid/os/HandlerThread;

    const-string v3, "mb_db_thread"

    invoke-direct {v2, v3}, Lccsanandroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1197
    invoke-virtual {v2}, Lccsanandroid/os/HandlerThread;->start()V

    .line 1198
    new-instance v3, Lccsanandroid/os/Handler;

    invoke-virtual {v2}, Lccsanandroid/os/HandlerThread;->getLooper()Lccsanandroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, v2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    .line 1200
    new-instance v2, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;

    invoke-direct {v2}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;-><init>()V

    .line 1201
    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->setDatabaseHandler(Lccsanandroid/os/Handler;)Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;

    .line 1203
    new-instance v3, Lccsancom/mbridge/msdk/system/a$2;

    invoke-direct {v3, p0}, Lccsancom/mbridge/msdk/system/a$2;-><init>(Lccsancom/mbridge/msdk/system/a;)V

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->setDatabaseOpenHelper(Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;)Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;

    .line 1215
    new-instance v3, Lccsancom/mbridge/msdk/system/a$3;

    invoke-direct {v3, p0}, Lccsancom/mbridge/msdk/system/a$3;-><init>(Lccsancom/mbridge/msdk/system/a;)V

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->setLogger(Lccsancom/mbridge/msdk/foundation/download/utils/ILogger;)Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;

    .line 1226
    new-instance v3, Lccsancom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;

    invoke-direct {v3}, Lccsancom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;-><init>()V

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Lccsancom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;->setMaxStorageSpace(J)Lccsancom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;

    move-result-object v3

    const-wide/32 v4, 0xf731400

    invoke-virtual {v3, v4, v5}, Lccsancom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;->setMaxStorageTime(J)Lccsancom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;->build()Lccsancom/mbridge/msdk/foundation/download/resource/ResourceConfig;

    move-result-object v3

    .line 1227
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager;->getInstance()Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager;

    move-result-object v4

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->build()Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;

    move-result-object v2

    invoke-virtual {v4, v5, v2, v3}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager;->initialize(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;Lccsancom/mbridge/msdk/foundation/download/resource/ResourceConfig;)V

    .line 168
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a()Lccsancom/mbridge/msdk/foundation/same/report/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/same/report/a;->b()V

    .line 170
    iget-object v2, p0, Lccsancom/mbridge/msdk/system/a;->e:Lccsancom/mbridge/msdk/out/SDKInitStatusListener;

    if-eqz v2, :cond_1

    iget-boolean v3, p0, Lccsancom/mbridge/msdk/system/a;->f:Z

    if-nez v3, :cond_1

    .line 171
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/system/a;->f:Z

    .line 172
    invoke-interface {v2}, Lccsancom/mbridge/msdk/out/SDKInitStatusListener;->onInitSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 176
    :cond_1
    :try_start_1
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/i;->a()Lccsancom/mbridge/msdk/foundation/tools/i;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/system/a;->d:Lccsanandroid/content/Context;

    invoke-virtual {v3}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/i;->a(Lccsanandroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 179
    goto :goto_0

    .line 177
    :catch_0
    move-exception v2

    .line 178
    :try_start_2
    const-string v3, "INIT"

    invoke-static {v0, v3, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 190
    :goto_0
    goto :goto_1

    .line 180
    :catch_1
    move-exception v2

    .line 181
    sget-boolean v3, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 182
    const-string v3, "INIT FAIL"

    invoke-static {v0, v3, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 186
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/system/a;->e:Lccsancom/mbridge/msdk/out/SDKInitStatusListener;

    if-eqz v0, :cond_3

    iget-boolean v3, p0, Lccsancom/mbridge/msdk/system/a;->f:Z

    if-nez v3, :cond_3

    .line 187
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/system/a;->f:Z

    .line 188
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/out/SDKInitStatusListener;->onInitFail(Ljava/lang/String;)V

    .line 191
    :cond_3
    :goto_1
    sget-object v0, Lccsancom/mbridge/msdk/system/a;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 193
    return-void
.end method

.method private a(Lccsanandroid/content/Context;)V
    .locals 1

    .line 380
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    .line 381
    if-nez v0, :cond_0

    .line 382
    if-eqz p1, :cond_0

    .line 383
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->b(Lccsanandroid/content/Context;)V

    .line 386
    :cond_0
    return-void
.end method


# virtual methods
.method public final getConsentStatus(Lccsanandroid/content/Context;)Z
    .locals 0

    .line 280
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/system/a;->a(Lccsanandroid/content/Context;)V

    .line 281
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->d()Z

    move-result p1

    .line 282
    return p1
.end method

.method public final getMBConfigurationMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 298
    const-string v1, "mbridge_appid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string p1, "mbridge_appkey"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "mbridge_appstartupcarsh"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    return-object v0
.end method

.method public final getStatus()Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;
    .locals 1

    .line 232
    iget-object v0, p0, Lccsancom/mbridge/msdk/system/a;->c:Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;

    return-object v0
.end method

.method public final init(Ljava/util/Map;Lccsanandroid/app/Application;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lccsanandroid/app/Application;",
            ")V"
        }
    .end annotation

    .line 321
    invoke-virtual {p2}, Lccsanandroid/app/Application;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lccsancom/mbridge/msdk/system/a;->d:Lccsanandroid/content/Context;

    .line 322
    sput-object p1, Lccsancom/mbridge/msdk/system/a;->a:Ljava/util/Map;

    .line 323
    invoke-direct {p0}, Lccsancom/mbridge/msdk/system/a;->a()V

    .line 324
    return-void
.end method

.method public final init(Ljava/util/Map;Lccsanandroid/app/Application;Lccsancom/mbridge/msdk/out/SDKInitStatusListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lccsanandroid/app/Application;",
            "Lccsancom/mbridge/msdk/out/SDKInitStatusListener;",
            ")V"
        }
    .end annotation

    .line 349
    iput-object p2, p0, Lccsancom/mbridge/msdk/system/a;->d:Lccsanandroid/content/Context;

    .line 350
    iput-object p3, p0, Lccsancom/mbridge/msdk/system/a;->e:Lccsancom/mbridge/msdk/out/SDKInitStatusListener;

    .line 351
    sput-object p1, Lccsancom/mbridge/msdk/system/a;->a:Ljava/util/Map;

    .line 352
    invoke-direct {p0}, Lccsancom/mbridge/msdk/system/a;->a()V

    .line 353
    return-void
.end method

.method public final init(Ljava/util/Map;Lccsanandroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lccsanandroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 335
    invoke-virtual {p2}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lccsancom/mbridge/msdk/system/a;->d:Lccsanandroid/content/Context;

    .line 336
    sput-object p1, Lccsancom/mbridge/msdk/system/a;->a:Ljava/util/Map;

    .line 337
    invoke-direct {p0}, Lccsancom/mbridge/msdk/system/a;->a()V

    .line 338
    return-void
.end method

.method public final init(Ljava/util/Map;Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/out/SDKInitStatusListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lccsanandroid/content/Context;",
            "Lccsancom/mbridge/msdk/out/SDKInitStatusListener;",
            ")V"
        }
    .end annotation

    .line 365
    invoke-virtual {p2}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lccsancom/mbridge/msdk/system/a;->d:Lccsanandroid/content/Context;

    .line 366
    iput-object p3, p0, Lccsancom/mbridge/msdk/system/a;->e:Lccsancom/mbridge/msdk/out/SDKInitStatusListener;

    .line 367
    sput-object p1, Lccsancom/mbridge/msdk/system/a;->a:Ljava/util/Map;

    .line 368
    invoke-direct {p0}, Lccsancom/mbridge/msdk/system/a;->a()V

    .line 369
    return-void
.end method

.method public final initAsync(Ljava/util/Map;Lccsanandroid/app/Application;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lccsanandroid/app/Application;",
            ")V"
        }
    .end annotation

    .line 328
    invoke-virtual {p2}, Lccsanandroid/app/Application;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lccsancom/mbridge/msdk/system/a;->d:Lccsanandroid/content/Context;

    .line 329
    sput-object p1, Lccsancom/mbridge/msdk/system/a;->a:Ljava/util/Map;

    .line 330
    invoke-direct {p0}, Lccsancom/mbridge/msdk/system/a;->a()V

    .line 331
    return-void
.end method

.method public final initAsync(Ljava/util/Map;Lccsanandroid/app/Application;Lccsancom/mbridge/msdk/out/SDKInitStatusListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lccsanandroid/app/Application;",
            "Lccsancom/mbridge/msdk/out/SDKInitStatusListener;",
            ")V"
        }
    .end annotation

    .line 357
    iput-object p2, p0, Lccsancom/mbridge/msdk/system/a;->d:Lccsanandroid/content/Context;

    .line 358
    iput-object p3, p0, Lccsancom/mbridge/msdk/system/a;->e:Lccsancom/mbridge/msdk/out/SDKInitStatusListener;

    .line 359
    sput-object p1, Lccsancom/mbridge/msdk/system/a;->a:Ljava/util/Map;

    .line 360
    invoke-direct {p0}, Lccsancom/mbridge/msdk/system/a;->a()V

    .line 361
    return-void
.end method

.method public final initAsync(Ljava/util/Map;Lccsanandroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lccsanandroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 342
    invoke-virtual {p2}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lccsancom/mbridge/msdk/system/a;->d:Lccsanandroid/content/Context;

    .line 343
    sput-object p1, Lccsancom/mbridge/msdk/system/a;->a:Ljava/util/Map;

    .line 344
    invoke-direct {p0}, Lccsancom/mbridge/msdk/system/a;->a()V

    .line 345
    return-void
.end method

.method public final initAsync(Ljava/util/Map;Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/out/SDKInitStatusListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lccsanandroid/content/Context;",
            "Lccsancom/mbridge/msdk/out/SDKInitStatusListener;",
            ")V"
        }
    .end annotation

    .line 373
    invoke-virtual {p2}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lccsancom/mbridge/msdk/system/a;->d:Lccsanandroid/content/Context;

    .line 374
    iput-object p3, p0, Lccsancom/mbridge/msdk/system/a;->e:Lccsancom/mbridge/msdk/out/SDKInitStatusListener;

    .line 375
    sput-object p1, Lccsancom/mbridge/msdk/system/a;->a:Ljava/util/Map;

    .line 376
    invoke-direct {p0}, Lccsancom/mbridge/msdk/system/a;->a()V

    .line 377
    return-void
.end method

.method public final preload(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lccsancom/mbridge/msdk/system/a;->c:Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;

    sget-object v1, Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;->COMPLETED:Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;

    if-ne v0, v1, :cond_0

    .line 238
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/b;->a()Lccsancom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/foundation/controller/b;->a(Ljava/util/Map;I)V

    .line 240
    :cond_0
    return-void
.end method

.method public final preloadFrame(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 287
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/b;->a()Lccsancom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/foundation/controller/b;->a(Ljava/util/Map;I)V

    .line 288
    return-void
.end method

.method public final release()V
    .locals 2

    .line 306
    iget-object v0, p0, Lccsancom/mbridge/msdk/system/a;->c:Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;

    sget-object v1, Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;->COMPLETED:Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;

    if-ne v0, v1, :cond_0

    .line 307
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/b;->a()Lccsancom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/b;->b()V

    .line 309
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/system/a;->d:Lccsanandroid/content/Context;

    instance-of v1, v0, Lccsanandroid/app/Application;

    if-eqz v1, :cond_1

    .line 310
    check-cast v0, Lccsanandroid/app/Application;

    .line 2113
    iget-object v1, p0, Lccsancom/mbridge/msdk/system/a;->g:Lccsanandroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Lccsanandroid/app/Application;->unregisterActivityLifecycleCallbacks(Lccsanandroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 312
    :cond_1
    return-void
.end method

.method public final setConsentStatus(Lccsanandroid/content/Context;I)V
    .locals 0

    .line 274
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/system/a;->a(Lccsanandroid/content/Context;)V

    .line 275
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(I)V

    .line 276
    return-void
.end method

.method public final setDoNotTrackStatus(Lccsanandroid/content/Context;Z)V
    .locals 0

    .line 256
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/system/a;->a(Lccsanandroid/content/Context;)V

    .line 257
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->b(I)V

    .line 258
    return-void
.end method

.method public final setDoNotTrackStatus(Z)V
    .locals 1

    .line 251
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->b(I)V

    .line 252
    return-void
.end method

.method public final setThirdPartyFeatures(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 293
    return-void
.end method

.method public final setUserPrivateInfoType(Lccsanandroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 244
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/system/a;->a(Lccsanandroid/content/Context;)V

    .line 245
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;I)V

    .line 246
    return-void
.end method

.method public final showUserPrivateInfoTips(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/CallBackForDeveloper;)V
    .locals 0

    .line 270
    return-void
.end method

.method public final updateDialogWeakActivity(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 391
    return-void
.end method

.method public final userPrivateInfo(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/system/a;->a(Lccsanandroid/content/Context;)V

    .line 263
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->b()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    move-result-object p1

    .line 264
    return-object p1
.end method
