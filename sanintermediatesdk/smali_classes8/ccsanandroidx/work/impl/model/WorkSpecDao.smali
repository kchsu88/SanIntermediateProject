.class public interface abstract Lccsanandroidx/work/impl/model/WorkSpecDao;
.super Ljava/lang/Object;
.source "WorkSpecDao.java"


# virtual methods
.method public abstract delete(Ljava/lang/String;)V
.end method

.method public abstract getAllUnfinishedWork()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllWorkSpecIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEligibleWorkForScheduling(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInputsFromPrerequisites(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsanandroidx/work/Data;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRunningWork()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScheduledWork()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getState(Ljava/lang/String;)Lccsanandroidx/work/WorkInfo$State;
.end method

.method public abstract getUnfinishedWorkWithName(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUnfinishedWorkWithTag(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWorkSpec(Ljava/lang/String;)Lccsanandroidx/work/impl/model/WorkSpec;
.end method

.method public abstract getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWorkSpecs(Ljava/util/List;)[Lccsanandroidx/work/impl/model/WorkSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Lccsanandroidx/work/impl/model/WorkSpec;"
        }
    .end annotation
.end method

.method public abstract getWorkStatusPojoForId(Ljava/lang/String;)Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;
.end method

.method public abstract getWorkStatusPojoForIds(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWorkStatusPojoForName(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWorkStatusPojoForTag(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWorkStatusPojoLiveDataForIds(Ljava/util/List;)Lccsanandroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lccsanandroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getWorkStatusPojoLiveDataForName(Ljava/lang/String;)Lccsanandroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lccsanandroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getWorkStatusPojoLiveDataForTag(Ljava/lang/String;)Lccsanandroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lccsanandroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract incrementWorkSpecRunAttemptCount(Ljava/lang/String;)I
.end method

.method public abstract insertWorkSpec(Lccsanandroidx/work/impl/model/WorkSpec;)V
.end method

.method public abstract markWorkSpecScheduled(Ljava/lang/String;J)I
.end method

.method public abstract pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast()V
.end method

.method public abstract resetScheduledState()I
.end method

.method public abstract resetWorkSpecRunAttemptCount(Ljava/lang/String;)I
.end method

.method public abstract setOutput(Ljava/lang/String;Lccsanandroidx/work/Data;)V
.end method

.method public abstract setPeriodStartTime(Ljava/lang/String;J)V
.end method

.method public varargs abstract setState(Lccsanandroidx/work/WorkInfo$State;[Ljava/lang/String;)I
.end method
