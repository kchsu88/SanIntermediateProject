.class public Lccsanandroidx/work/impl/model/WorkSpec;
.super Ljava/lang/Object;
.source "WorkSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;,
        Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;
    }
.end annotation


# static fields
.field public static final SCHEDULE_NOT_REQUESTED_YET:J = -0x1L

.field private static final TAG:Ljava/lang/String;

.field public static final WORK_INFO_MAPPER:Lccsanandroidx/arch/core/util/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/arch/core/util/Function<",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;",
            "Ljava/util/List<",
            "Lccsanandroidx/work/WorkInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public backoffDelayDuration:J

.field public backoffPolicy:Lccsanandroidx/work/BackoffPolicy;

.field public constraints:Lccsanandroidx/work/Constraints;

.field public flexDuration:J

.field public id:Ljava/lang/String;

.field public initialDelay:J

.field public input:Lccsanandroidx/work/Data;

.field public inputMergerClassName:Ljava/lang/String;

.field public intervalDuration:J

.field public minimumRetentionDuration:J

.field public output:Lccsanandroidx/work/Data;

.field public periodStartTime:J

.field public runAttemptCount:I

.field public scheduleRequestedAt:J

.field public state:Lccsanandroidx/work/WorkInfo$State;

.field public workerClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-string v0, "WorkSpec"

    invoke-static {v0}, Lccsanandroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    .line 435
    new-instance v0, Lccsanandroidx/work/impl/model/WorkSpec$1;

    invoke-direct {v0}, Lccsanandroidx/work/impl/model/WorkSpec$1;-><init>()V

    sput-object v0, Lccsanandroidx/work/impl/model/WorkSpec;->WORK_INFO_MAPPER:Lccsanandroidx/arch/core/util/Function;

    return-void
.end method

.method public constructor <init>(Lccsanandroidx/work/impl/model/WorkSpec;)V
    .locals 2
    .param p1, "other"    # Lccsanandroidx/work/impl/model/WorkSpec;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lccsanandroidx/work/WorkInfo$State;->ENQUEUED:Lccsanandroidx/work/WorkInfo$State;

    iput-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->state:Lccsanandroidx/work/WorkInfo$State;

    .line 75
    sget-object v0, Lccsanandroidx/work/Data;->EMPTY:Lccsanandroidx/work/Data;

    iput-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->input:Lccsanandroidx/work/Data;

    .line 79
    sget-object v0, Lccsanandroidx/work/Data;->EMPTY:Lccsanandroidx/work/Data;

    iput-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->output:Lccsanandroidx/work/Data;

    .line 92
    sget-object v0, Lccsanandroidx/work/Constraints;->NONE:Lccsanandroidx/work/Constraints;

    iput-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->constraints:Lccsanandroidx/work/Constraints;

    .line 100
    sget-object v0, Lccsanandroidx/work/BackoffPolicy;->EXPONENTIAL:Lccsanandroidx/work/BackoffPolicy;

    iput-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->backoffPolicy:Lccsanandroidx/work/BackoffPolicy;

    .line 104
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 125
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 134
    iget-object v0, p1, Lccsanandroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    iput-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 135
    iget-object v0, p1, Lccsanandroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    iput-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 136
    iget-object v0, p1, Lccsanandroidx/work/impl/model/WorkSpec;->state:Lccsanandroidx/work/WorkInfo$State;

    iput-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->state:Lccsanandroidx/work/WorkInfo$State;

    .line 137
    iget-object v0, p1, Lccsanandroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    iput-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 138
    new-instance v0, Lccsanandroidx/work/Data;

    iget-object v1, p1, Lccsanandroidx/work/impl/model/WorkSpec;->input:Lccsanandroidx/work/Data;

    invoke-direct {v0, v1}, Lccsanandroidx/work/Data;-><init>(Lccsanandroidx/work/Data;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->input:Lccsanandroidx/work/Data;

    .line 139
    new-instance v0, Lccsanandroidx/work/Data;

    iget-object v1, p1, Lccsanandroidx/work/impl/model/WorkSpec;->output:Lccsanandroidx/work/Data;

    invoke-direct {v0, v1}, Lccsanandroidx/work/Data;-><init>(Lccsanandroidx/work/Data;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->output:Lccsanandroidx/work/Data;

    .line 140
    iget-wide v0, p1, Lccsanandroidx/work/impl/model/WorkSpec;->initialDelay:J

    iput-wide v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 141
    iget-wide v0, p1, Lccsanandroidx/work/impl/model/WorkSpec;->intervalDuration:J

    iput-wide v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 142
    iget-wide v0, p1, Lccsanandroidx/work/impl/model/WorkSpec;->flexDuration:J

    iput-wide v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 143
    new-instance v0, Lccsanandroidx/work/Constraints;

    iget-object v1, p1, Lccsanandroidx/work/impl/model/WorkSpec;->constraints:Lccsanandroidx/work/Constraints;

    invoke-direct {v0, v1}, Lccsanandroidx/work/Constraints;-><init>(Lccsanandroidx/work/Constraints;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->constraints:Lccsanandroidx/work/Constraints;

    .line 144
    iget v0, p1, Lccsanandroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    iput v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 145
    iget-object v0, p1, Lccsanandroidx/work/impl/model/WorkSpec;->backoffPolicy:Lccsanandroidx/work/BackoffPolicy;

    iput-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->backoffPolicy:Lccsanandroidx/work/BackoffPolicy;

    .line 146
    iget-wide v0, p1, Lccsanandroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    iput-wide v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 147
    iget-wide v0, p1, Lccsanandroidx/work/impl/model/WorkSpec;->periodStartTime:J

    iput-wide v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->periodStartTime:J

    .line 148
    iget-wide v0, p1, Lccsanandroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    iput-wide v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 149
    iget-wide v0, p1, Lccsanandroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    iput-wide v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "workerClassName"    # Ljava/lang/String;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lccsanandroidx/work/WorkInfo$State;->ENQUEUED:Lccsanandroidx/work/WorkInfo$State;

    iput-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->state:Lccsanandroidx/work/WorkInfo$State;

    .line 75
    sget-object v0, Lccsanandroidx/work/Data;->EMPTY:Lccsanandroidx/work/Data;

    iput-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->input:Lccsanandroidx/work/Data;

    .line 79
    sget-object v0, Lccsanandroidx/work/Data;->EMPTY:Lccsanandroidx/work/Data;

    iput-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->output:Lccsanandroidx/work/Data;

    .line 92
    sget-object v0, Lccsanandroidx/work/Constraints;->NONE:Lccsanandroidx/work/Constraints;

    iput-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->constraints:Lccsanandroidx/work/Constraints;

    .line 100
    sget-object v0, Lccsanandroidx/work/BackoffPolicy;->EXPONENTIAL:Lccsanandroidx/work/BackoffPolicy;

    iput-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->backoffPolicy:Lccsanandroidx/work/BackoffPolicy;

    .line 104
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 125
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 129
    iput-object p1, p0, Lccsanandroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 130
    iput-object p2, p0, Lccsanandroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 131
    return-void
.end method


# virtual methods
.method public calculateNextRunTime()J
    .locals 15

    .line 246
    invoke-virtual {p0}, Lccsanandroidx/work/impl/model/WorkSpec;->isBackedOff()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->backoffPolicy:Lccsanandroidx/work/BackoffPolicy;

    sget-object v3, Lccsanandroidx/work/BackoffPolicy;->LINEAR:Lccsanandroidx/work/BackoffPolicy;

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v1

    .line 248
    .local v0, "isLinearBackoff":Z
    if-eqz v0, :cond_1

    iget-wide v1, p0, Lccsanandroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    iget v3, p0, Lccsanandroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    int-to-long v3, v3

    mul-long v1, v1, v3

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lccsanandroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    long-to-float v1, v3

    iget v3, p0, Lccsanandroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    sub-int/2addr v3, v2

    .line 249
    invoke-static {v1, v3}, Ljava/lang/Math;->scalb(FI)F

    move-result v1

    float-to-long v1, v1

    :goto_0
    nop

    .line 250
    .local v1, "delay":J
    iget-wide v3, p0, Lccsanandroidx/work/impl/model/WorkSpec;->periodStartTime:J

    const-wide/32 v5, 0x112a880

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    add-long/2addr v3, v5

    return-wide v3

    .line 251
    .end local v0    # "isLinearBackoff":Z
    .end local v1    # "delay":J
    :cond_2
    invoke-virtual {p0}, Lccsanandroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_8

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 253
    .local v5, "now":J
    iget-wide v7, p0, Lccsanandroidx/work/impl/model/WorkSpec;->periodStartTime:J

    cmp-long v0, v7, v3

    if-nez v0, :cond_3

    iget-wide v9, p0, Lccsanandroidx/work/impl/model/WorkSpec;->initialDelay:J

    add-long/2addr v9, v5

    goto :goto_1

    :cond_3
    move-wide v9, v7

    .line 254
    .local v9, "start":J
    :goto_1
    iget-wide v11, p0, Lccsanandroidx/work/impl/model/WorkSpec;->flexDuration:J

    iget-wide v13, p0, Lccsanandroidx/work/impl/model/WorkSpec;->intervalDuration:J

    cmp-long v0, v11, v13

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    move v0, v1

    .line 255
    .local v0, "isFlexApplicable":Z
    if-eqz v0, :cond_6

    .line 265
    cmp-long v1, v7, v3

    if-nez v1, :cond_5

    const-wide/16 v1, -0x1

    mul-long v3, v11, v1

    :cond_5
    move-wide v1, v3

    .line 266
    .local v1, "offset":J
    add-long/2addr v13, v9

    add-long/2addr v13, v1

    return-wide v13

    .line 273
    .end local v1    # "offset":J
    :cond_6
    cmp-long v1, v7, v3

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    move-wide v3, v13

    :goto_2
    move-wide v1, v3

    .line 274
    .restart local v1    # "offset":J
    add-long v3, v9, v1

    return-wide v3

    .line 279
    .end local v0    # "isFlexApplicable":Z
    .end local v1    # "offset":J
    .end local v5    # "now":J
    .end local v9    # "start":J
    :cond_8
    iget-wide v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->periodStartTime:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 280
    .local v0, "start":J
    :cond_9
    iget-wide v2, p0, Lccsanandroidx/work/impl/model/WorkSpec;->initialDelay:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 293
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 294
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 296
    :cond_1
    move-object v2, p1

    check-cast v2, Lccsanandroidx/work/impl/model/WorkSpec;

    .line 298
    .local v2, "workSpec":Lccsanandroidx/work/impl/model/WorkSpec;
    iget-wide v3, p0, Lccsanandroidx/work/impl/model/WorkSpec;->initialDelay:J

    iget-wide v5, v2, Lccsanandroidx/work/impl/model/WorkSpec;->initialDelay:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    return v1

    .line 299
    :cond_2
    iget-wide v3, p0, Lccsanandroidx/work/impl/model/WorkSpec;->intervalDuration:J

    iget-wide v5, v2, Lccsanandroidx/work/impl/model/WorkSpec;->intervalDuration:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    return v1

    .line 300
    :cond_3
    iget-wide v3, p0, Lccsanandroidx/work/impl/model/WorkSpec;->flexDuration:J

    iget-wide v5, v2, Lccsanandroidx/work/impl/model/WorkSpec;->flexDuration:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_4

    return v1

    .line 301
    :cond_4
    iget v3, p0, Lccsanandroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    iget v4, v2, Lccsanandroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    if-eq v3, v4, :cond_5

    return v1

    .line 302
    :cond_5
    iget-wide v3, p0, Lccsanandroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    iget-wide v5, v2, Lccsanandroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_6

    return v1

    .line 303
    :cond_6
    iget-wide v3, p0, Lccsanandroidx/work/impl/model/WorkSpec;->periodStartTime:J

    iget-wide v5, v2, Lccsanandroidx/work/impl/model/WorkSpec;->periodStartTime:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_7

    return v1

    .line 304
    :cond_7
    iget-wide v3, p0, Lccsanandroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    iget-wide v5, v2, Lccsanandroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_8

    return v1

    .line 305
    :cond_8
    iget-wide v3, p0, Lccsanandroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    iget-wide v5, v2, Lccsanandroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_9

    return v1

    .line 306
    :cond_9
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    iget-object v4, v2, Lccsanandroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    return v1

    .line 307
    :cond_a
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpec;->state:Lccsanandroidx/work/WorkInfo$State;

    iget-object v4, v2, Lccsanandroidx/work/impl/model/WorkSpec;->state:Lccsanandroidx/work/WorkInfo$State;

    if-eq v3, v4, :cond_b

    return v1

    .line 308
    :cond_b
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    iget-object v4, v2, Lccsanandroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    return v1

    .line 309
    :cond_c
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v4, v2, Lccsanandroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_0

    :cond_d
    iget-object v3, v2, Lccsanandroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    if-eqz v3, :cond_e

    .line 312
    :goto_0
    return v1

    .line 314
    :cond_e
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpec;->input:Lccsanandroidx/work/Data;

    iget-object v4, v2, Lccsanandroidx/work/impl/model/WorkSpec;->input:Lccsanandroidx/work/Data;

    invoke-virtual {v3, v4}, Lccsanandroidx/work/Data;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    return v1

    .line 315
    :cond_f
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpec;->output:Lccsanandroidx/work/Data;

    iget-object v4, v2, Lccsanandroidx/work/impl/model/WorkSpec;->output:Lccsanandroidx/work/Data;

    invoke-virtual {v3, v4}, Lccsanandroidx/work/Data;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    return v1

    .line 316
    :cond_10
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpec;->constraints:Lccsanandroidx/work/Constraints;

    iget-object v4, v2, Lccsanandroidx/work/impl/model/WorkSpec;->constraints:Lccsanandroidx/work/Constraints;

    invoke-virtual {v3, v4}, Lccsanandroidx/work/Constraints;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    return v1

    .line 317
    :cond_11
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpec;->backoffPolicy:Lccsanandroidx/work/BackoffPolicy;

    iget-object v4, v2, Lccsanandroidx/work/impl/model/WorkSpec;->backoffPolicy:Lccsanandroidx/work/BackoffPolicy;

    if-ne v3, v4, :cond_12

    goto :goto_1

    :cond_12
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 294
    .end local v2    # "workSpec":Lccsanandroidx/work/impl/model/WorkSpec;
    :cond_13
    :goto_2
    return v1
.end method

.method public hasConstraints()Z
    .locals 2

    .line 288
    sget-object v0, Lccsanandroidx/work/Constraints;->NONE:Lccsanandroidx/work/Constraints;

    iget-object v1, p0, Lccsanandroidx/work/impl/model/WorkSpec;->constraints:Lccsanandroidx/work/Constraints;

    invoke-virtual {v0, v1}, Lccsanandroidx/work/Constraints;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 322
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 323
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsanandroidx/work/impl/model/WorkSpec;->state:Lccsanandroidx/work/WorkInfo$State;

    invoke-virtual {v2}, Lccsanandroidx/work/WorkInfo$State;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 324
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lccsanandroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 325
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsanandroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 326
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lccsanandroidx/work/impl/model/WorkSpec;->input:Lccsanandroidx/work/Data;

    invoke-virtual {v2}, Lccsanandroidx/work/Data;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 327
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsanandroidx/work/impl/model/WorkSpec;->output:Lccsanandroidx/work/Data;

    invoke-virtual {v2}, Lccsanandroidx/work/Data;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 328
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lccsanandroidx/work/impl/model/WorkSpec;->initialDelay:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 329
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lccsanandroidx/work/impl/model/WorkSpec;->intervalDuration:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 330
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lccsanandroidx/work/impl/model/WorkSpec;->flexDuration:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 331
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsanandroidx/work/impl/model/WorkSpec;->constraints:Lccsanandroidx/work/Constraints;

    invoke-virtual {v2}, Lccsanandroidx/work/Constraints;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 332
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lccsanandroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    add-int/2addr v0, v2

    .line 333
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsanandroidx/work/impl/model/WorkSpec;->backoffPolicy:Lccsanandroidx/work/BackoffPolicy;

    invoke-virtual {v2}, Lccsanandroidx/work/BackoffPolicy;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 334
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lccsanandroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 335
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lccsanandroidx/work/impl/model/WorkSpec;->periodStartTime:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 336
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lccsanandroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 337
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lccsanandroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 338
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isBackedOff()Z
    .locals 2

    .line 173
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->state:Lccsanandroidx/work/WorkInfo$State;

    sget-object v1, Lccsanandroidx/work/WorkInfo$State;->ENQUEUED:Lccsanandroidx/work/WorkInfo$State;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPeriodic()Z
    .locals 5

    .line 169
    iget-wide v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->intervalDuration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBackoffDelayDuration(J)V
    .locals 5
    .param p1, "backoffDelayDuration"    # J

    .line 156
    const/4 v0, 0x0

    const-wide/32 v1, 0x112a880

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    .line 157
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v1

    sget-object v2, Lccsanandroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Throwable;

    const-string v4, "Backoff delay duration exceeds maximum value"

    invoke-virtual {v1, v2, v4, v3}, Lccsanandroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 158
    const-wide/32 p1, 0x112a880

    .line 160
    :cond_0
    const-wide/16 v1, 0x2710

    cmp-long v3, p1, v1

    if-gez v3, :cond_1

    .line 161
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v1

    sget-object v2, Lccsanandroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Throwable;

    const-string v3, "Backoff delay duration less than minimum value"

    invoke-virtual {v1, v2, v3, v0}, Lccsanandroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 162
    const-wide/16 p1, 0x2710

    .line 164
    :cond_1
    iput-wide p1, p0, Lccsanandroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 165
    return-void
.end method

.method public setPeriodic(J)V
    .locals 5
    .param p1, "intervalDuration"    # J

    .line 182
    const-wide/32 v0, 0xdbba0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 183
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v2

    sget-object v3, Lccsanandroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 185
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    .line 183
    const-string v0, "Interval duration lesser than minimum allowed value; Changed to %s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v0, v1}, Lccsanandroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 186
    const-wide/32 p1, 0xdbba0

    .line 188
    :cond_0
    invoke-virtual {p0, p1, p2, p1, p2}, Lccsanandroidx/work/impl/model/WorkSpec;->setPeriodic(JJ)V

    .line 189
    return-void
.end method

.method public setPeriodic(JJ)V
    .locals 7
    .param p1, "intervalDuration"    # J
    .param p3, "flexDuration"    # J

    .line 198
    const-wide/32 v0, 0xdbba0

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmp-long v4, p1, v0

    if-gez v4, :cond_0

    .line 199
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v4

    sget-object v5, Lccsanandroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Object;

    .line 201
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v3

    .line 199
    const-string v0, "Interval duration lesser than minimum allowed value; Changed to %s"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v0, v1}, Lccsanandroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 202
    const-wide/32 p1, 0xdbba0

    .line 204
    :cond_0
    const-wide/32 v0, 0x493e0

    cmp-long v4, p3, v0

    if-gez v4, :cond_1

    .line 205
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v4

    sget-object v5, Lccsanandroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Object;

    .line 207
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v3

    .line 206
    const-string v0, "Flex duration lesser than minimum allowed value; Changed to %s"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Throwable;

    .line 205
    invoke-virtual {v4, v5, v0, v1}, Lccsanandroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 208
    const-wide/32 p3, 0x493e0

    .line 210
    :cond_1
    cmp-long v0, p3, p1

    if-lez v0, :cond_2

    .line 211
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v1, Lccsanandroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    .line 213
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 212
    const-string v4, "Flex duration greater than interval duration; Changed to %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Throwable;

    .line 211
    invoke-virtual {v0, v1, v2, v3}, Lccsanandroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 214
    move-wide p3, p1

    .line 216
    :cond_2
    iput-wide p1, p0, Lccsanandroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 217
    iput-wide p3, p0, Lccsanandroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 218
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{WorkSpec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanandroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
