.class Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker$1;
.super Ljava/lang/Object;
.source "ConstraintTrackingWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->startWork()Lccsancom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;


# direct methods
.method constructor <init>(Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;

    .line 82
    iput-object p1, p0, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker$1;->this$0:Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 85
    iget-object v0, p0, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker$1;->this$0:Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->setupAndRunConstraintTrackingWork()V

    .line 86
    return-void
.end method
