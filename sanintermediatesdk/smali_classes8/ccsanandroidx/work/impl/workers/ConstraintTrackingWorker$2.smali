.class Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker$2;
.super Ljava/lang/Object;
.source "ConstraintTrackingWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->setupAndRunConstraintTrackingWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;

.field final synthetic val$innerFuture:Lccsancom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;Lccsancom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;

    .line 133
    iput-object p1, p0, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker$2;->this$0:Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;

    iput-object p2, p0, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker$2;->val$innerFuture:Lccsancom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 136
    iget-object v0, p0, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker$2;->this$0:Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;

    iget-object v0, v0, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_0
    iget-object v1, p0, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker$2;->this$0:Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;

    iget-boolean v1, v1, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->mAreConstraintsUnmet:Z

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker$2;->this$0:Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;

    invoke-virtual {v1}, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->setFutureRetry()V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v1, p0, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker$2;->this$0:Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;

    iget-object v1, v1, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->mFuture:Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    iget-object v2, p0, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker$2;->val$innerFuture:Lccsancom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v1, v2}, Lccsanandroidx/work/impl/utils/futures/SettableFuture;->setFuture(Lccsancom/google/common/util/concurrent/ListenableFuture;)Z

    .line 142
    :goto_0
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
