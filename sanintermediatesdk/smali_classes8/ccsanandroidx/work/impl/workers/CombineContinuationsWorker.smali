.class public Lccsanandroidx/work/impl/workers/CombineContinuationsWorker;
.super Lccsanandroidx/work/Worker;
.source "CombineContinuationsWorker.java"


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/work/WorkerParameters;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "workerParams"    # Lccsanandroidx/work/WorkerParameters;

    .line 36
    invoke-direct {p0, p1, p2}, Lccsanandroidx/work/Worker;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/work/WorkerParameters;)V

    .line 37
    return-void
.end method


# virtual methods
.method public doWork()Lccsanandroidx/work/ListenableWorker$Result;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lccsanandroidx/work/impl/workers/CombineContinuationsWorker;->getInputData()Lccsanandroidx/work/Data;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/work/ListenableWorker$Result;->success(Lccsanandroidx/work/Data;)Lccsanandroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method
