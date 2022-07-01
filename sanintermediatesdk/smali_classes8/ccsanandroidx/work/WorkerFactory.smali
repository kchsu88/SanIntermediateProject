.class public abstract Lccsanandroidx/work/WorkerFactory;
.super Ljava/lang/Object;
.source "WorkerFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-string v0, "WorkerFactory"

    invoke-static {v0}, Lccsanandroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/WorkerFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultWorkerFactory()Lccsanandroidx/work/WorkerFactory;
    .locals 1

    .line 113
    new-instance v0, Lccsanandroidx/work/WorkerFactory$1;

    invoke-direct {v0}, Lccsanandroidx/work/WorkerFactory$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract createWorker(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroidx/work/WorkerParameters;)Lccsanandroidx/work/ListenableWorker;
.end method

.method public final createWorkerWithDefaultFallback(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroidx/work/WorkerParameters;)Lccsanandroidx/work/ListenableWorker;
    .locals 10
    .param p1, "appContext"    # Lccsanandroid/content/Context;
    .param p2, "workerClassName"    # Ljava/lang/String;
    .param p3, "workerParameters"    # Lccsanandroidx/work/WorkerParameters;

    .line 81
    invoke-virtual {p0, p1, p2, p3}, Lccsanandroidx/work/WorkerFactory;->createWorker(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroidx/work/WorkerParameters;)Lccsanandroidx/work/ListenableWorker;

    move-result-object v0

    .line 82
    .local v0, "worker":Lccsanandroidx/work/ListenableWorker;
    if-eqz v0, :cond_0

    .line 83
    return-object v0

    .line 88
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lccsanandroidx/work/ListenableWorker;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lccsanandroidx/work/ListenableWorker;>;"
    nop

    .line 95
    const/4 v4, 0x2

    const/4 v5, 0x1

    :try_start_1
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Lccsanandroid/content/Context;

    aput-object v7, v6, v2

    const-class v7, Lccsanandroidx/work/WorkerParameters;

    aput-object v7, v6, v5

    .line 96
    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 97
    .local v6, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lccsanandroidx/work/ListenableWorker;>;"
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p3, v4, v5

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroidx/work/ListenableWorker;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v4

    .line 100
    return-object v0

    .line 101
    .end local v6    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lccsanandroidx/work/ListenableWorker;>;"
    :catch_0
    move-exception v4

    .line 102
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v6

    sget-object v7, Lccsanandroidx/work/WorkerFactory;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not instantiate "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v5, v5, [Ljava/lang/Throwable;

    aput-object v4, v5, v2

    invoke-virtual {v6, v7, v8, v5}, Lccsanandroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 104
    .end local v4    # "e":Ljava/lang/Exception;
    return-object v1

    .line 89
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lccsanandroidx/work/ListenableWorker;>;"
    :catch_1
    move-exception v3

    .line 90
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v4

    sget-object v5, Lccsanandroidx/work/WorkerFactory;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Class not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6, v2}, Lccsanandroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 91
    return-object v1
.end method
