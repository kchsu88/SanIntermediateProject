.class Lccsancom/vungle/warren/Vungle$1;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/Vungle;->init(Ljava/lang/String;Lccsanandroid/content/Context;Lccsancom/vungle/warren/InitCallback;Lccsancom/vungle/warren/VungleSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$context:Lccsanandroid/content/Context;

.field final synthetic val$runtimeValues:Lccsancom/vungle/warren/RuntimeValues;

.field final synthetic val$serviceLocator:Lccsancom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Ljava/lang/String;Lccsancom/vungle/warren/RuntimeValues;Lccsancom/vungle/warren/ServiceLocator;Lccsanandroid/content/Context;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lccsancom/vungle/warren/Vungle$1;->val$appId:Ljava/lang/String;

    iput-object p2, p0, Lccsancom/vungle/warren/Vungle$1;->val$runtimeValues:Lccsancom/vungle/warren/RuntimeValues;

    iput-object p3, p0, Lccsancom/vungle/warren/Vungle$1;->val$serviceLocator:Lccsancom/vungle/warren/ServiceLocator;

    iput-object p4, p0, Lccsancom/vungle/warren/Vungle$1;->val$context:Lccsanandroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 282
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    iget-object v1, p0, Lccsancom/vungle/warren/Vungle$1;->val$appId:Ljava/lang/String;

    invoke-static {v0, v1}, Lccsancom/vungle/warren/Vungle;->access$002(Lccsancom/vungle/warren/Vungle;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle$1;->val$runtimeValues:Lccsancom/vungle/warren/RuntimeValues;

    iget-object v0, v0, Lccsancom/vungle/warren/RuntimeValues;->initCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/InitCallback;

    .line 284
    .local v0, "initCallback":Lccsancom/vungle/warren/InitCallback;
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->access$100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    const/16 v3, 0x1a

    const/4 v4, 0x0

    if-nez v1, :cond_5

    .line 285
    iget-object v1, p0, Lccsancom/vungle/warren/Vungle$1;->val$serviceLocator:Lccsancom/vungle/warren/ServiceLocator;

    const-class v5, Lccsancom/vungle/warren/log/LogManager;

    invoke-virtual {v1, v5}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/log/LogManager;

    .line 286
    .local v1, "logManager":Lccsancom/vungle/warren/log/LogManager;
    sget-object v5, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;->DEBUG:Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    const/16 v6, 0x64

    invoke-static {v1, v5, v6}, Lccsancom/vungle/warren/VungleLogger;->setupLoggerWithLogLevel(Lccsancom/vungle/warren/log/LogManager;Lccsancom/vungle/warren/VungleLogger$LoggerLevel;I)V

    .line 288
    iget-object v5, p0, Lccsancom/vungle/warren/Vungle$1;->val$serviceLocator:Lccsancom/vungle/warren/ServiceLocator;

    const-class v6, Lccsancom/vungle/warren/persistence/CacheManager;

    invoke-virtual {v5, v6}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/vungle/warren/persistence/CacheManager;

    .line 289
    .local v5, "cacheManager":Lccsancom/vungle/warren/persistence/CacheManager;
    iget-object v6, p0, Lccsancom/vungle/warren/Vungle$1;->val$runtimeValues:Lccsancom/vungle/warren/RuntimeValues;

    iget-object v6, v6, Lccsancom/vungle/warren/RuntimeValues;->settings:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsancom/vungle/warren/VungleSettings;

    .line 291
    .local v6, "settings":Lccsancom/vungle/warren/VungleSettings;
    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lccsancom/vungle/warren/persistence/CacheManager;->getBytesAvailable()J

    move-result-wide v7

    invoke-virtual {v6}, Lccsancom/vungle/warren/VungleSettings;->getMinimumSpaceForInit()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-gez v11, :cond_0

    .line 292
    new-instance v2, Lccsancom/vungle/warren/error/VungleException;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v0, v2}, Lccsancom/vungle/warren/Vungle;->access$200(Lccsancom/vungle/warren/InitCallback;Lccsancom/vungle/warren/error/VungleException;)V

    .line 293
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->deInit()V

    .line 294
    return-void

    .line 297
    :cond_0
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->access$300()Lccsancom/vungle/warren/persistence/CacheManager$Listener;

    move-result-object v7

    invoke-virtual {v5, v7}, Lccsancom/vungle/warren/persistence/CacheManager;->addListener(Lccsancom/vungle/warren/persistence/CacheManager$Listener;)V

    .line 300
    sget-object v7, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    iget-object v8, p0, Lccsancom/vungle/warren/Vungle$1;->val$context:Lccsanandroid/content/Context;

    invoke-static {v7, v8}, Lccsancom/vungle/warren/Vungle;->access$402(Lccsancom/vungle/warren/Vungle;Lccsanandroid/content/Context;)Lccsanandroid/content/Context;

    .line 303
    iget-object v7, p0, Lccsancom/vungle/warren/Vungle$1;->val$serviceLocator:Lccsancom/vungle/warren/ServiceLocator;

    const-class v8, Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v7, v8}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsancom/vungle/warren/persistence/Repository;

    .line 305
    .local v7, "repository":Lccsancom/vungle/warren/persistence/Repository;
    :try_start_0
    invoke-virtual {v7}, Lccsancom/vungle/warren/persistence/Repository;->init()V
    :try_end_0
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    nop

    .line 312
    iget-object v8, p0, Lccsancom/vungle/warren/Vungle$1;->val$serviceLocator:Lccsancom/vungle/warren/ServiceLocator;

    const-class v9, Lccsancom/vungle/warren/VungleApiClient;

    invoke-virtual {v8, v9}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lccsancom/vungle/warren/VungleApiClient;

    .line 313
    .local v8, "vungleApiClient":Lccsancom/vungle/warren/VungleApiClient;
    invoke-virtual {v8}, Lccsancom/vungle/warren/VungleApiClient;->init()V

    .line 315
    if-eqz v6, :cond_1

    .line 316
    invoke-virtual {v6}, Lccsancom/vungle/warren/VungleSettings;->getAndroidIdOptOut()Z

    move-result v9

    invoke-virtual {v8, v9}, Lccsancom/vungle/warren/VungleApiClient;->setDefaultIdFallbackDisabled(Z)V

    .line 319
    :cond_1
    iget-object v9, p0, Lccsancom/vungle/warren/Vungle$1;->val$serviceLocator:Lccsancom/vungle/warren/ServiceLocator;

    const-class v10, Lccsancom/vungle/warren/tasks/JobRunner;

    invoke-virtual {v9, v10}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lccsancom/vungle/warren/tasks/JobRunner;

    .line 320
    .local v9, "jobRunner":Lccsancom/vungle/warren/tasks/JobRunner;
    iget-object v10, p0, Lccsancom/vungle/warren/Vungle$1;->val$serviceLocator:Lccsancom/vungle/warren/ServiceLocator;

    const-class v11, Lccsancom/vungle/warren/AdLoader;

    invoke-virtual {v10, v11}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lccsancom/vungle/warren/AdLoader;

    .line 321
    .local v10, "adLoader":Lccsancom/vungle/warren/AdLoader;
    invoke-virtual {v10, v9}, Lccsancom/vungle/warren/AdLoader;->init(Lccsancom/vungle/warren/tasks/JobRunner;)V

    .line 324
    sget-object v11, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    invoke-static {v11}, Lccsancom/vungle/warren/Vungle;->access$500(Lccsancom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 325
    sget-object v11, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    invoke-static {v11}, Lccsancom/vungle/warren/Vungle;->access$500(Lccsancom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lccsancom/vungle/warren/Vungle$Consent;

    sget-object v12, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    invoke-static {v12}, Lccsancom/vungle/warren/Vungle;->access$600(Lccsancom/vungle/warren/Vungle;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v11, v12}, Lccsancom/vungle/warren/Vungle;->access$700(Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :cond_2
    const-class v11, Lccsancom/vungle/warren/model/Cookie;

    const-string v12, "consentIsImportantToVungle"

    invoke-virtual {v7, v12, v11}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v11

    invoke-virtual {v11}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lccsancom/vungle/warren/model/Cookie;

    .line 329
    .local v11, "gdprConsent":Lccsancom/vungle/warren/model/Cookie;
    if-nez v11, :cond_3

    .line 330
    sget-object v12, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    invoke-static {v12}, Lccsancom/vungle/warren/Vungle;->access$500(Lccsancom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 331
    sget-object v12, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    invoke-static {v12, v4}, Lccsancom/vungle/warren/Vungle;->access$602(Lccsancom/vungle/warren/Vungle;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 333
    :cond_3
    sget-object v12, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    invoke-static {v12}, Lccsancom/vungle/warren/Vungle;->access$500(Lccsancom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v12

    invoke-static {v11}, Lccsancom/vungle/warren/Vungle;->access$800(Lccsancom/vungle/warren/model/Cookie;)Lccsancom/vungle/warren/Vungle$Consent;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 334
    sget-object v12, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    invoke-static {v11}, Lccsancom/vungle/warren/Vungle;->access$900(Lccsancom/vungle/warren/model/Cookie;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lccsancom/vungle/warren/Vungle;->access$602(Lccsancom/vungle/warren/Vungle;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    .end local v11    # "gdprConsent":Lccsancom/vungle/warren/model/Cookie;
    :goto_0
    sget-object v11, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    invoke-static {v11}, Lccsancom/vungle/warren/Vungle;->access$1000(Lccsancom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 340
    sget-object v11, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    invoke-static {v11}, Lccsancom/vungle/warren/Vungle;->access$1000(Lccsancom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lccsancom/vungle/warren/Vungle$Consent;

    invoke-static {v7, v11}, Lccsancom/vungle/warren/Vungle;->access$1100(Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/Vungle$Consent;)V

    goto :goto_1

    .line 343
    :cond_4
    const-class v11, Lccsancom/vungle/warren/model/Cookie;

    const-string v12, "ccpaIsImportantToVungle"

    invoke-virtual {v7, v12, v11}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v11

    invoke-virtual {v11}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lccsancom/vungle/warren/model/Cookie;

    .line 344
    .local v11, "ccpaConsent":Lccsancom/vungle/warren/model/Cookie;
    sget-object v12, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    invoke-static {v12}, Lccsancom/vungle/warren/Vungle;->access$1000(Lccsancom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v12

    invoke-static {v11}, Lccsancom/vungle/warren/Vungle;->access$1200(Lccsancom/vungle/warren/model/Cookie;)Lccsancom/vungle/warren/Vungle$Consent;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 306
    .end local v8    # "vungleApiClient":Lccsancom/vungle/warren/VungleApiClient;
    .end local v9    # "jobRunner":Lccsancom/vungle/warren/tasks/JobRunner;
    .end local v10    # "adLoader":Lccsancom/vungle/warren/AdLoader;
    .end local v11    # "ccpaConsent":Lccsancom/vungle/warren/model/Cookie;
    :catch_0
    move-exception v2

    .line 307
    .local v2, "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    new-instance v4, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v4, v3}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v0, v4}, Lccsancom/vungle/warren/Vungle;->access$200(Lccsancom/vungle/warren/InitCallback;Lccsancom/vungle/warren/error/VungleException;)V

    .line 308
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->deInit()V

    .line 309
    return-void

    .line 347
    .end local v1    # "logManager":Lccsancom/vungle/warren/log/LogManager;
    .end local v2    # "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    .end local v5    # "cacheManager":Lccsancom/vungle/warren/persistence/CacheManager;
    .end local v6    # "settings":Lccsancom/vungle/warren/VungleSettings;
    .end local v7    # "repository":Lccsancom/vungle/warren/persistence/Repository;
    :cond_5
    :goto_1
    iget-object v1, p0, Lccsancom/vungle/warren/Vungle$1;->val$serviceLocator:Lccsancom/vungle/warren/ServiceLocator;

    const-class v5, Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v1, v5}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/persistence/Repository;

    .line 348
    .local v1, "repository":Lccsancom/vungle/warren/persistence/Repository;
    const-class v5, Lccsancom/vungle/warren/model/Cookie;

    const-string v6, "appId"

    invoke-virtual {v1, v6, v5}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/vungle/warren/model/Cookie;

    .line 349
    .local v5, "appIdCookie":Lccsancom/vungle/warren/model/Cookie;
    if-nez v5, :cond_6

    .line 350
    new-instance v7, Lccsancom/vungle/warren/model/Cookie;

    invoke-direct {v7, v6}, Lccsancom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    move-object v5, v7

    .line 352
    :cond_6
    iget-object v7, p0, Lccsancom/vungle/warren/Vungle$1;->val$appId:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 354
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v1, v5}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_1
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_1 .. :try_end_1} :catch_1

    .line 361
    nop

    .line 363
    sget-object v3, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    invoke-static {v3, v0, v6}, Lccsancom/vungle/warren/Vungle;->access$1400(Lccsancom/vungle/warren/Vungle;Lccsancom/vungle/warren/InitCallback;Z)V

    .line 366
    iget-object v3, p0, Lccsancom/vungle/warren/Vungle$1;->val$serviceLocator:Lccsancom/vungle/warren/ServiceLocator;

    const-class v6, Lccsancom/vungle/warren/tasks/JobRunner;

    invoke-virtual {v3, v6}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/vungle/warren/tasks/JobRunner;

    .line 370
    .local v3, "jobRunner":Lccsancom/vungle/warren/tasks/JobRunner;
    const/4 v6, 0x2

    invoke-static {v6, v4, v4, v2}, Lccsancom/vungle/warren/tasks/AnalyticsJob;->makeJob(ILjava/lang/String;[Ljava/lang/String;I)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v2

    invoke-interface {v3, v2}, Lccsancom/vungle/warren/tasks/JobRunner;->execute(Lccsancom/vungle/warren/tasks/JobInfo;)V

    .line 372
    return-void

    .line 355
    .end local v3    # "jobRunner":Lccsancom/vungle/warren/tasks/JobRunner;
    :catch_1
    move-exception v2

    .line 356
    .restart local v2    # "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    if-eqz v0, :cond_7

    .line 357
    new-instance v4, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v4, v3}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v0, v4}, Lccsancom/vungle/warren/Vungle;->access$200(Lccsancom/vungle/warren/InitCallback;Lccsancom/vungle/warren/error/VungleException;)V

    .line 359
    :cond_7
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->access$1300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 360
    return-void
.end method
