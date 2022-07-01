.class public abstract Lccsanandroidx/work/WorkRequest$Builder;
.super Ljava/lang/Object;
.source "WorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/work/WorkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lccsanandroidx/work/WorkRequest$Builder;",
        "W:",
        "Lccsanandroidx/work/WorkRequest;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mBackoffCriteriaSet:Z

.field mId:Ljava/util/UUID;

.field mTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lccsanandroidx/work/ListenableWorker;",
            ">;)V"
        }
    .end annotation

    .line 123
    .local p0, "this":Lccsanandroidx/work/WorkRequest$Builder;, "Lccsanandroidx/work/WorkRequest$Builder<TB;TW;>;"
    .local p1, "workerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lccsanandroidx/work/ListenableWorker;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/work/WorkRequest$Builder;->mBackoffCriteriaSet:Z

    .line 121
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lccsanandroidx/work/WorkRequest$Builder;->mTags:Ljava/util/Set;

    .line 124
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/work/WorkRequest$Builder;->mId:Ljava/util/UUID;

    .line 125
    new-instance v0, Lccsanandroidx/work/impl/model/WorkSpec;

    iget-object v1, p0, Lccsanandroidx/work/WorkRequest$Builder;->mId:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsanandroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lccsanandroidx/work/WorkRequest$Builder;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    .line 126
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/work/WorkRequest$Builder;->addTag(Ljava/lang/String;)Lccsanandroidx/work/WorkRequest$Builder;

    .line 127
    return-void
.end method


# virtual methods
.method public final addTag(Ljava/lang/String;)Lccsanandroidx/work/WorkRequest$Builder;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 203
    .local p0, "this":Lccsanandroidx/work/WorkRequest$Builder;, "Lccsanandroidx/work/WorkRequest$Builder<TB;TW;>;"
    iget-object v0, p0, Lccsanandroidx/work/WorkRequest$Builder;->mTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-virtual {p0}, Lccsanandroidx/work/WorkRequest$Builder;->getThis()Lccsanandroidx/work/WorkRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lccsanandroidx/work/WorkRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation

    .line 279
    .local p0, "this":Lccsanandroidx/work/WorkRequest$Builder;, "Lccsanandroidx/work/WorkRequest$Builder<TB;TW;>;"
    invoke-virtual {p0}, Lccsanandroidx/work/WorkRequest$Builder;->buildInternal()Lccsanandroidx/work/WorkRequest;

    move-result-object v0

    .line 281
    .local v0, "returnValue":Lccsanandroidx/work/WorkRequest;, "TW;"
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lccsanandroidx/work/WorkRequest$Builder;->mId:Ljava/util/UUID;

    .line 282
    new-instance v1, Lccsanandroidx/work/impl/model/WorkSpec;

    iget-object v2, p0, Lccsanandroidx/work/WorkRequest$Builder;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    invoke-direct {v1, v2}, Lccsanandroidx/work/impl/model/WorkSpec;-><init>(Lccsanandroidx/work/impl/model/WorkSpec;)V

    iput-object v1, p0, Lccsanandroidx/work/WorkRequest$Builder;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    .line 283
    iget-object v2, p0, Lccsanandroidx/work/WorkRequest$Builder;->mId:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lccsanandroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 284
    return-object v0
.end method

.method abstract buildInternal()Lccsanandroidx/work/WorkRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation
.end method

.method abstract getThis()Lccsanandroidx/work/WorkRequest$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public final keepResultsForAtLeast(JLjava/util/concurrent/TimeUnit;)Lccsanandroidx/work/WorkRequest$Builder;
    .locals 3
    .param p1, "duration"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TB;"
        }
    .end annotation

    .line 224
    .local p0, "this":Lccsanandroidx/work/WorkRequest$Builder;, "Lccsanandroidx/work/WorkRequest$Builder<TB;TW;>;"
    iget-object v0, p0, Lccsanandroidx/work/WorkRequest$Builder;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    iput-wide v1, v0, Lccsanandroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 225
    invoke-virtual {p0}, Lccsanandroidx/work/WorkRequest$Builder;->getThis()Lccsanandroidx/work/WorkRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final keepResultsForAtLeast(Ljava/time/Duration;)Lccsanandroidx/work/WorkRequest$Builder;
    .locals 3
    .param p1, "duration"    # Ljava/time/Duration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Duration;",
            ")TB;"
        }
    .end annotation

    .line 245
    .local p0, "this":Lccsanandroidx/work/WorkRequest$Builder;, "Lccsanandroidx/work/WorkRequest$Builder<TB;TW;>;"
    iget-object v0, p0, Lccsanandroidx/work/WorkRequest$Builder;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lccsanandroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 246
    invoke-virtual {p0}, Lccsanandroidx/work/WorkRequest$Builder;->getThis()Lccsanandroidx/work/WorkRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final setBackoffCriteria(Lccsanandroidx/work/BackoffPolicy;JLjava/util/concurrent/TimeUnit;)Lccsanandroidx/work/WorkRequest$Builder;
    .locals 3
    .param p1, "backoffPolicy"    # Lccsanandroidx/work/BackoffPolicy;
    .param p2, "backoffDelay"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/work/BackoffPolicy;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TB;"
        }
    .end annotation

    .line 145
    .local p0, "this":Lccsanandroidx/work/WorkRequest$Builder;, "Lccsanandroidx/work/WorkRequest$Builder<TB;TW;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/work/WorkRequest$Builder;->mBackoffCriteriaSet:Z

    .line 146
    iget-object v0, p0, Lccsanandroidx/work/WorkRequest$Builder;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    iput-object p1, v0, Lccsanandroidx/work/impl/model/WorkSpec;->backoffPolicy:Lccsanandroidx/work/BackoffPolicy;

    .line 147
    iget-object v0, p0, Lccsanandroidx/work/WorkRequest$Builder;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/work/impl/model/WorkSpec;->setBackoffDelayDuration(J)V

    .line 148
    invoke-virtual {p0}, Lccsanandroidx/work/WorkRequest$Builder;->getThis()Lccsanandroidx/work/WorkRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final setBackoffCriteria(Lccsanandroidx/work/BackoffPolicy;Ljava/time/Duration;)Lccsanandroidx/work/WorkRequest$Builder;
    .locals 3
    .param p1, "backoffPolicy"    # Lccsanandroidx/work/BackoffPolicy;
    .param p2, "duration"    # Ljava/time/Duration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/work/BackoffPolicy;",
            "Ljava/time/Duration;",
            ")TB;"
        }
    .end annotation

    .line 166
    .local p0, "this":Lccsanandroidx/work/WorkRequest$Builder;, "Lccsanandroidx/work/WorkRequest$Builder<TB;TW;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/work/WorkRequest$Builder;->mBackoffCriteriaSet:Z

    .line 167
    iget-object v0, p0, Lccsanandroidx/work/WorkRequest$Builder;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    iput-object p1, v0, Lccsanandroidx/work/impl/model/WorkSpec;->backoffPolicy:Lccsanandroidx/work/BackoffPolicy;

    .line 168
    iget-object v0, p0, Lccsanandroidx/work/WorkRequest$Builder;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    invoke-virtual {p2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/work/impl/model/WorkSpec;->setBackoffDelayDuration(J)V

    .line 169
    invoke-virtual {p0}, Lccsanandroidx/work/WorkRequest$Builder;->getThis()Lccsanandroidx/work/WorkRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final setConstraints(Lccsanandroidx/work/Constraints;)Lccsanandroidx/work/WorkRequest$Builder;
    .locals 1
    .param p1, "constraints"    # Lccsanandroidx/work/Constraints;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/work/Constraints;",
            ")TB;"
        }
    .end annotation

    .line 179
    .local p0, "this":Lccsanandroidx/work/WorkRequest$Builder;, "Lccsanandroidx/work/WorkRequest$Builder<TB;TW;>;"
    iget-object v0, p0, Lccsanandroidx/work/WorkRequest$Builder;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    iput-object p1, v0, Lccsanandroidx/work/impl/model/WorkSpec;->constraints:Lccsanandroidx/work/Constraints;

    .line 180
    invoke-virtual {p0}, Lccsanandroidx/work/WorkRequest$Builder;->getThis()Lccsanandroidx/work/WorkRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setInitialDelay(JLjava/util/concurrent/TimeUnit;)Lccsanandroidx/work/WorkRequest$Builder;
    .locals 3
    .param p1, "duration"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TB;"
        }
    .end annotation

    .line 257
    .local p0, "this":Lccsanandroidx/work/WorkRequest$Builder;, "Lccsanandroidx/work/WorkRequest$Builder<TB;TW;>;"
    iget-object v0, p0, Lccsanandroidx/work/WorkRequest$Builder;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    iput-wide v1, v0, Lccsanandroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 258
    invoke-virtual {p0}, Lccsanandroidx/work/WorkRequest$Builder;->getThis()Lccsanandroidx/work/WorkRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setInitialDelay(Ljava/time/Duration;)Lccsanandroidx/work/WorkRequest$Builder;
    .locals 3
    .param p1, "duration"    # Ljava/time/Duration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Duration;",
            ")TB;"
        }
    .end annotation

    .line 269
    .local p0, "this":Lccsanandroidx/work/WorkRequest$Builder;, "Lccsanandroidx/work/WorkRequest$Builder<TB;TW;>;"
    iget-object v0, p0, Lccsanandroidx/work/WorkRequest$Builder;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lccsanandroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 270
    invoke-virtual {p0}, Lccsanandroidx/work/WorkRequest$Builder;->getThis()Lccsanandroidx/work/WorkRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final setInitialRunAttemptCount(I)Lccsanandroidx/work/WorkRequest$Builder;
    .locals 1
    .param p1, "runAttemptCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 315
    .local p0, "this":Lccsanandroidx/work/WorkRequest$Builder;, "Lccsanandroidx/work/WorkRequest$Builder<TB;TW;>;"
    iget-object v0, p0, Lccsanandroidx/work/WorkRequest$Builder;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    iput p1, v0, Lccsanandroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 316
    invoke-virtual {p0}, Lccsanandroidx/work/WorkRequest$Builder;->getThis()Lccsanandroidx/work/WorkRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final setInitialState(Lccsanandroidx/work/WorkInfo$State;)Lccsanandroidx/work/WorkRequest$Builder;
    .locals 1
    .param p1, "state"    # Lccsanandroidx/work/WorkInfo$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/work/WorkInfo$State;",
            ")TB;"
        }
    .end annotation

    .line 301
    .local p0, "this":Lccsanandroidx/work/WorkRequest$Builder;, "Lccsanandroidx/work/WorkRequest$Builder<TB;TW;>;"
    iget-object v0, p0, Lccsanandroidx/work/WorkRequest$Builder;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    iput-object p1, v0, Lccsanandroidx/work/impl/model/WorkSpec;->state:Lccsanandroidx/work/WorkInfo$State;

    .line 302
    invoke-virtual {p0}, Lccsanandroidx/work/WorkRequest$Builder;->getThis()Lccsanandroidx/work/WorkRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final setInputData(Lccsanandroidx/work/Data;)Lccsanandroidx/work/WorkRequest$Builder;
    .locals 1
    .param p1, "inputData"    # Lccsanandroidx/work/Data;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/work/Data;",
            ")TB;"
        }
    .end annotation

    .line 191
    .local p0, "this":Lccsanandroidx/work/WorkRequest$Builder;, "Lccsanandroidx/work/WorkRequest$Builder<TB;TW;>;"
    iget-object v0, p0, Lccsanandroidx/work/WorkRequest$Builder;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    iput-object p1, v0, Lccsanandroidx/work/impl/model/WorkSpec;->input:Lccsanandroidx/work/Data;

    .line 192
    invoke-virtual {p0}, Lccsanandroidx/work/WorkRequest$Builder;->getThis()Lccsanandroidx/work/WorkRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final setPeriodStartTime(JLjava/util/concurrent/TimeUnit;)Lccsanandroidx/work/WorkRequest$Builder;
    .locals 3
    .param p1, "periodStartTime"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TB;"
        }
    .end annotation

    .line 332
    .local p0, "this":Lccsanandroidx/work/WorkRequest$Builder;, "Lccsanandroidx/work/WorkRequest$Builder<TB;TW;>;"
    iget-object v0, p0, Lccsanandroidx/work/WorkRequest$Builder;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    iput-wide v1, v0, Lccsanandroidx/work/impl/model/WorkSpec;->periodStartTime:J

    .line 333
    invoke-virtual {p0}, Lccsanandroidx/work/WorkRequest$Builder;->getThis()Lccsanandroidx/work/WorkRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final setScheduleRequestedAt(JLjava/util/concurrent/TimeUnit;)Lccsanandroidx/work/WorkRequest$Builder;
    .locals 3
    .param p1, "scheduleRequestedAt"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TB;"
        }
    .end annotation

    .line 349
    .local p0, "this":Lccsanandroidx/work/WorkRequest$Builder;, "Lccsanandroidx/work/WorkRequest$Builder<TB;TW;>;"
    iget-object v0, p0, Lccsanandroidx/work/WorkRequest$Builder;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    iput-wide v1, v0, Lccsanandroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 350
    invoke-virtual {p0}, Lccsanandroidx/work/WorkRequest$Builder;->getThis()Lccsanandroidx/work/WorkRequest$Builder;

    move-result-object v0

    return-object v0
.end method
