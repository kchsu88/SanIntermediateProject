.class public Lccsanandroidx/work/impl/utils/StartWorkRunnable;
.super Ljava/lang/Object;
.source "StartWorkRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mRuntimeExtras:Lccsanandroidx/work/WorkerParameters$RuntimeExtras;

.field private mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

.field private mWorkSpecId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Lccsanandroidx/work/WorkerParameters$RuntimeExtras;)V
    .locals 0
    .param p1, "workManagerImpl"    # Lccsanandroidx/work/impl/WorkManagerImpl;
    .param p2, "workSpecId"    # Ljava/lang/String;
    .param p3, "runtimeExtras"    # Lccsanandroidx/work/WorkerParameters$RuntimeExtras;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lccsanandroidx/work/impl/utils/StartWorkRunnable;->mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 40
    iput-object p2, p0, Lccsanandroidx/work/impl/utils/StartWorkRunnable;->mWorkSpecId:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lccsanandroidx/work/impl/utils/StartWorkRunnable;->mRuntimeExtras:Lccsanandroidx/work/WorkerParameters$RuntimeExtras;

    .line 42
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 46
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/StartWorkRunnable;->mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getProcessor()Lccsanandroidx/work/impl/Processor;

    move-result-object v0

    iget-object v1, p0, Lccsanandroidx/work/impl/utils/StartWorkRunnable;->mWorkSpecId:Ljava/lang/String;

    iget-object v2, p0, Lccsanandroidx/work/impl/utils/StartWorkRunnable;->mRuntimeExtras:Lccsanandroidx/work/WorkerParameters$RuntimeExtras;

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/work/impl/Processor;->startWork(Ljava/lang/String;Lccsanandroidx/work/WorkerParameters$RuntimeExtras;)Z

    .line 47
    return-void
.end method
