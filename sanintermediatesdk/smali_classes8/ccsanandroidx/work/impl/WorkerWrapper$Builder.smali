.class public Lccsanandroidx/work/impl/WorkerWrapper$Builder;
.super Ljava/lang/Object;
.source "WorkerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/work/impl/WorkerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mAppContext:Lccsanandroid/content/Context;

.field mConfiguration:Lccsanandroidx/work/Configuration;

.field mRuntimeExtras:Lccsanandroidx/work/WorkerParameters$RuntimeExtras;

.field mSchedulers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

.field mWorkSpecId:Ljava/lang/String;

.field mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

.field mWorker:Lccsanandroidx/work/ListenableWorker;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/work/Configuration;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;Lccsanandroidx/work/impl/WorkDatabase;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "configuration"    # Lccsanandroidx/work/Configuration;
    .param p3, "workTaskExecutor"    # Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;
    .param p4, "database"    # Lccsanandroidx/work/impl/WorkDatabase;
    .param p5, "workSpecId"    # Ljava/lang/String;

    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    new-instance v0, Lccsanandroidx/work/WorkerParameters$RuntimeExtras;

    invoke-direct {v0}, Lccsanandroidx/work/WorkerParameters$RuntimeExtras;-><init>()V

    iput-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper$Builder;->mRuntimeExtras:Lccsanandroidx/work/WorkerParameters$RuntimeExtras;

    .line 610
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper$Builder;->mAppContext:Lccsanandroid/content/Context;

    .line 611
    iput-object p3, p0, Lccsanandroidx/work/impl/WorkerWrapper$Builder;->mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 612
    iput-object p2, p0, Lccsanandroidx/work/impl/WorkerWrapper$Builder;->mConfiguration:Lccsanandroidx/work/Configuration;

    .line 613
    iput-object p4, p0, Lccsanandroidx/work/impl/WorkerWrapper$Builder;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    .line 614
    iput-object p5, p0, Lccsanandroidx/work/impl/WorkerWrapper$Builder;->mWorkSpecId:Ljava/lang/String;

    .line 615
    return-void
.end method


# virtual methods
.method public build()Lccsanandroidx/work/impl/WorkerWrapper;
    .locals 1

    .line 654
    new-instance v0, Lccsanandroidx/work/impl/WorkerWrapper;

    invoke-direct {v0, p0}, Lccsanandroidx/work/impl/WorkerWrapper;-><init>(Lccsanandroidx/work/impl/WorkerWrapper$Builder;)V

    return-object v0
.end method

.method public withRuntimeExtras(Lccsanandroidx/work/WorkerParameters$RuntimeExtras;)Lccsanandroidx/work/impl/WorkerWrapper$Builder;
    .locals 0
    .param p1, "runtimeExtras"    # Lccsanandroidx/work/WorkerParameters$RuntimeExtras;

    .line 633
    if-eqz p1, :cond_0

    .line 634
    iput-object p1, p0, Lccsanandroidx/work/impl/WorkerWrapper$Builder;->mRuntimeExtras:Lccsanandroidx/work/WorkerParameters$RuntimeExtras;

    .line 636
    :cond_0
    return-object p0
.end method

.method public withSchedulers(Ljava/util/List;)Lccsanandroidx/work/impl/WorkerWrapper$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/Scheduler;",
            ">;)",
            "Lccsanandroidx/work/impl/WorkerWrapper$Builder;"
        }
    .end annotation

    .line 622
    .local p1, "schedulers":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/Scheduler;>;"
    iput-object p1, p0, Lccsanandroidx/work/impl/WorkerWrapper$Builder;->mSchedulers:Ljava/util/List;

    .line 623
    return-object p0
.end method

.method public withWorker(Lccsanandroidx/work/ListenableWorker;)Lccsanandroidx/work/impl/WorkerWrapper$Builder;
    .locals 0
    .param p1, "worker"    # Lccsanandroidx/work/ListenableWorker;

    .line 646
    iput-object p1, p0, Lccsanandroidx/work/impl/WorkerWrapper$Builder;->mWorker:Lccsanandroidx/work/ListenableWorker;

    .line 647
    return-object p0
.end method
