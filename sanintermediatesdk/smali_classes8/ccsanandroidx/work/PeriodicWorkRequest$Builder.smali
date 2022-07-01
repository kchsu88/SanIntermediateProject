.class public final Lccsanandroidx/work/PeriodicWorkRequest$Builder;
.super Lccsanandroidx/work/WorkRequest$Builder;
.source "PeriodicWorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/work/PeriodicWorkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/work/WorkRequest$Builder<",
        "Lccsanandroidx/work/PeriodicWorkRequest$Builder;",
        "Lccsanandroidx/work/PeriodicWorkRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V
    .locals 3
    .param p2, "repeatInterval"    # J
    .param p4, "repeatIntervalTimeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lccsanandroidx/work/ListenableWorker;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 93
    .local p1, "workerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lccsanandroidx/work/ListenableWorker;>;"
    invoke-direct {p0, p1}, Lccsanandroidx/work/WorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 94
    iget-object v0, p0, Lccsanandroidx/work/PeriodicWorkRequest$Builder;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/work/impl/model/WorkSpec;->setPeriodic(J)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V
    .locals 5
    .param p2, "repeatInterval"    # J
    .param p4, "repeatIntervalTimeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "flexInterval"    # J
    .param p7, "flexIntervalTimeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lccsanandroidx/work/ListenableWorker;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 147
    .local p1, "workerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lccsanandroidx/work/ListenableWorker;>;"
    invoke-direct {p0, p1}, Lccsanandroidx/work/WorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 148
    iget-object v0, p0, Lccsanandroidx/work/PeriodicWorkRequest$Builder;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    .line 149
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 150
    invoke-virtual {p7, p5, p6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    .line 148
    invoke-virtual {v0, v1, v2, v3, v4}, Lccsanandroidx/work/impl/model/WorkSpec;->setPeriodic(JJ)V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/time/Duration;)V
    .locals 3
    .param p2, "repeatInterval"    # Ljava/time/Duration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lccsanandroidx/work/ListenableWorker;",
            ">;",
            "Ljava/time/Duration;",
            ")V"
        }
    .end annotation

    .line 114
    .local p1, "workerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lccsanandroidx/work/ListenableWorker;>;"
    invoke-direct {p0, p1}, Lccsanandroidx/work/WorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 115
    iget-object v0, p0, Lccsanandroidx/work/PeriodicWorkRequest$Builder;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    invoke-virtual {p2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/work/impl/model/WorkSpec;->setPeriodic(J)V

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/time/Duration;Ljava/time/Duration;)V
    .locals 5
    .param p2, "repeatInterval"    # Ljava/time/Duration;
    .param p3, "flexInterval"    # Ljava/time/Duration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lccsanandroidx/work/ListenableWorker;",
            ">;",
            "Ljava/time/Duration;",
            "Ljava/time/Duration;",
            ")V"
        }
    .end annotation

    .line 179
    .local p1, "workerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lccsanandroidx/work/ListenableWorker;>;"
    invoke-direct {p0, p1}, Lccsanandroidx/work/WorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 180
    iget-object v0, p0, Lccsanandroidx/work/PeriodicWorkRequest$Builder;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    invoke-virtual {p2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    invoke-virtual {p3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lccsanandroidx/work/impl/model/WorkSpec;->setPeriodic(JJ)V

    .line 181
    return-void
.end method


# virtual methods
.method buildInternal()Lccsanandroidx/work/PeriodicWorkRequest;
    .locals 2

    .line 185
    iget-boolean v0, p0, Lccsanandroidx/work/PeriodicWorkRequest$Builder;->mBackoffCriteriaSet:Z

    if-eqz v0, :cond_1

    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lccsanandroidx/work/PeriodicWorkRequest$Builder;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    iget-object v0, v0, Lccsanandroidx/work/impl/model/WorkSpec;->constraints:Lccsanandroidx/work/Constraints;

    .line 187
    invoke-virtual {v0}, Lccsanandroidx/work/Constraints;->requiresDeviceIdle()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set backoff criteria on an idle mode job"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_1
    :goto_0
    new-instance v0, Lccsanandroidx/work/PeriodicWorkRequest;

    invoke-direct {v0, p0}, Lccsanandroidx/work/PeriodicWorkRequest;-><init>(Lccsanandroidx/work/PeriodicWorkRequest$Builder;)V

    return-object v0
.end method

.method bridge synthetic buildInternal()Lccsanandroidx/work/WorkRequest;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lccsanandroidx/work/PeriodicWorkRequest$Builder;->buildInternal()Lccsanandroidx/work/PeriodicWorkRequest;

    move-result-object v0

    return-object v0
.end method

.method getThis()Lccsanandroidx/work/PeriodicWorkRequest$Builder;
    .locals 0

    .line 196
    return-object p0
.end method

.method bridge synthetic getThis()Lccsanandroidx/work/WorkRequest$Builder;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lccsanandroidx/work/PeriodicWorkRequest$Builder;->getThis()Lccsanandroidx/work/PeriodicWorkRequest$Builder;

    move-result-object v0

    return-object v0
.end method
