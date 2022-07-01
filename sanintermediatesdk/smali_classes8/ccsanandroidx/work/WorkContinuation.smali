.class public abstract Lccsanandroidx/work/WorkContinuation;
.super Ljava/lang/Object;
.source "WorkContinuation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static combine(Ljava/util/List;)Lccsanandroidx/work/WorkContinuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroidx/work/WorkContinuation;",
            ">;)",
            "Lccsanandroidx/work/WorkContinuation;"
        }
    .end annotation

    .line 143
    .local p0, "continuations":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/WorkContinuation;>;"
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/work/WorkContinuation;

    invoke-virtual {v0, p0}, Lccsanandroidx/work/WorkContinuation;->combineInternal(Ljava/util/List;)Lccsanandroidx/work/WorkContinuation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract combineInternal(Ljava/util/List;)Lccsanandroidx/work/WorkContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroidx/work/WorkContinuation;",
            ">;)",
            "Lccsanandroidx/work/WorkContinuation;"
        }
    .end annotation
.end method

.method public abstract enqueue()Lccsanandroidx/work/Operation;
.end method

.method public abstract getWorkInfos()Lccsancom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Lccsanandroidx/work/WorkInfo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getWorkInfosLiveData()Lccsanandroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsanandroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lccsanandroidx/work/WorkInfo;",
            ">;>;"
        }
    .end annotation
.end method

.method public final then(Lccsanandroidx/work/OneTimeWorkRequest;)Lccsanandroidx/work/WorkContinuation;
    .locals 1
    .param p1, "work"    # Lccsanandroidx/work/OneTimeWorkRequest;

    .line 76
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/work/WorkContinuation;->then(Ljava/util/List;)Lccsanandroidx/work/WorkContinuation;

    move-result-object v0

    return-object v0
.end method

.method public abstract then(Ljava/util/List;)Lccsanandroidx/work/WorkContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroidx/work/OneTimeWorkRequest;",
            ">;)",
            "Lccsanandroidx/work/WorkContinuation;"
        }
    .end annotation
.end method
