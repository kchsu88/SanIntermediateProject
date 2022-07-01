.class public final Lccsanandroidx/work/OneTimeWorkRequest;
.super Lccsanandroidx/work/WorkRequest;
.source "OneTimeWorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/work/OneTimeWorkRequest$Builder;
    }
.end annotation


# direct methods
.method constructor <init>(Lccsanandroidx/work/OneTimeWorkRequest$Builder;)V
    .locals 3
    .param p1, "builder"    # Lccsanandroidx/work/OneTimeWorkRequest$Builder;

    .line 65
    iget-object v0, p1, Lccsanandroidx/work/OneTimeWorkRequest$Builder;->mId:Ljava/util/UUID;

    iget-object v1, p1, Lccsanandroidx/work/OneTimeWorkRequest$Builder;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    iget-object v2, p1, Lccsanandroidx/work/OneTimeWorkRequest$Builder;->mTags:Ljava/util/Set;

    invoke-direct {p0, v0, v1, v2}, Lccsanandroidx/work/WorkRequest;-><init>(Ljava/util/UUID;Lccsanandroidx/work/impl/model/WorkSpec;Ljava/util/Set;)V

    .line 66
    return-void
.end method

.method public static from(Ljava/lang/Class;)Lccsanandroidx/work/OneTimeWorkRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lccsanandroidx/work/ListenableWorker;",
            ">;)",
            "Lccsanandroidx/work/OneTimeWorkRequest;"
        }
    .end annotation

    .line 44
    .local p0, "workerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lccsanandroidx/work/ListenableWorker;>;"
    new-instance v0, Lccsanandroidx/work/OneTimeWorkRequest$Builder;

    invoke-direct {v0, p0}, Lccsanandroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0}, Lccsanandroidx/work/OneTimeWorkRequest$Builder;->build()Lccsanandroidx/work/WorkRequest;

    move-result-object v0

    check-cast v0, Lccsanandroidx/work/OneTimeWorkRequest;

    return-object v0
.end method

.method public static from(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lccsanandroidx/work/ListenableWorker;",
            ">;>;)",
            "Ljava/util/List<",
            "Lccsanandroidx/work/OneTimeWorkRequest;",
            ">;"
        }
    .end annotation

    .line 57
    .local p0, "workerClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Lccsanandroidx/work/ListenableWorker;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    .local v0, "workList":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/OneTimeWorkRequest;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 59
    .local v2, "workerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lccsanandroidx/work/ListenableWorker;>;"
    new-instance v3, Lccsanandroidx/work/OneTimeWorkRequest$Builder;

    invoke-direct {v3, v2}, Lccsanandroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v3}, Lccsanandroidx/work/OneTimeWorkRequest$Builder;->build()Lccsanandroidx/work/WorkRequest;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .end local v2    # "workerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lccsanandroidx/work/ListenableWorker;>;"
    goto :goto_0

    .line 61
    :cond_0
    return-object v0
.end method
