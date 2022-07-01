.class final Lccsanandroidx/work/WorkerFactory$1;
.super Lccsanandroidx/work/WorkerFactory;
.source "WorkerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/work/WorkerFactory;->getDefaultWorkerFactory()Lccsanandroidx/work/WorkerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Lccsanandroidx/work/WorkerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createWorker(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroidx/work/WorkerParameters;)Lccsanandroidx/work/ListenableWorker;
    .locals 1
    .param p1, "appContext"    # Lccsanandroid/content/Context;
    .param p2, "workerClassName"    # Ljava/lang/String;
    .param p3, "workerParameters"    # Lccsanandroidx/work/WorkerParameters;

    .line 120
    const/4 v0, 0x0

    return-object v0
.end method
