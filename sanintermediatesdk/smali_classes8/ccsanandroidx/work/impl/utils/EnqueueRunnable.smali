.class public Lccsanandroidx/work/impl/utils/EnqueueRunnable;
.super Ljava/lang/Object;
.source "EnqueueRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mOperation:Lccsanandroidx/work/impl/OperationImpl;

.field private final mWorkContinuation:Lccsanandroidx/work/impl/WorkContinuationImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    const-string v0, "EnqueueRunnable"

    invoke-static {v0}, Lccsanandroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsanandroidx/work/impl/WorkContinuationImpl;)V
    .locals 1
    .param p1, "workContinuation"    # Lccsanandroidx/work/impl/WorkContinuationImpl;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lccsanandroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Lccsanandroidx/work/impl/WorkContinuationImpl;

    .line 77
    new-instance v0, Lccsanandroidx/work/impl/OperationImpl;

    invoke-direct {v0}, Lccsanandroidx/work/impl/OperationImpl;-><init>()V

    iput-object v0, p0, Lccsanandroidx/work/impl/utils/EnqueueRunnable;->mOperation:Lccsanandroidx/work/impl/OperationImpl;

    .line 78
    return-void
.end method

.method private static enqueueContinuation(Lccsanandroidx/work/impl/WorkContinuationImpl;)Z
    .locals 6
    .param p0, "workContinuation"    # Lccsanandroidx/work/impl/WorkContinuationImpl;

    .line 158
    invoke-static {p0}, Lccsanandroidx/work/impl/WorkContinuationImpl;->prerequisitesFor(Lccsanandroidx/work/impl/WorkContinuationImpl;)Ljava/util/Set;

    move-result-object v0

    .line 160
    .local v0, "prerequisiteIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 161
    invoke-virtual {p0}, Lccsanandroidx/work/impl/WorkContinuationImpl;->getWorkManagerImpl()Lccsanandroidx/work/impl/WorkManagerImpl;

    move-result-object v1

    .line 162
    invoke-virtual {p0}, Lccsanandroidx/work/impl/WorkContinuationImpl;->getWork()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 163
    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 164
    invoke-virtual {p0}, Lccsanandroidx/work/impl/WorkContinuationImpl;->getName()Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-virtual {p0}, Lccsanandroidx/work/impl/WorkContinuationImpl;->getExistingWorkPolicy()Lccsanandroidx/work/ExistingWorkPolicy;

    move-result-object v5

    .line 160
    invoke-static {v1, v2, v3, v4, v5}, Lccsanandroidx/work/impl/utils/EnqueueRunnable;->enqueueWorkWithPrerequisites(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Lccsanandroidx/work/ExistingWorkPolicy;)Z

    move-result v1

    .line 167
    .local v1, "needsScheduling":Z
    invoke-virtual {p0}, Lccsanandroidx/work/impl/WorkContinuationImpl;->markEnqueued()V

    .line 168
    return v1
.end method

.method private static enqueueWorkWithPrerequisites(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Lccsanandroidx/work/ExistingWorkPolicy;)Z
    .locals 23
    .param p0, "workManagerImpl"    # Lccsanandroidx/work/impl/WorkManagerImpl;
    .param p2, "prerequisiteIds"    # [Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "existingWorkPolicy"    # Lccsanandroidx/work/ExistingWorkPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/work/impl/WorkManagerImpl;",
            "Ljava/util/List<",
            "+",
            "Lccsanandroidx/work/WorkRequest;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lccsanandroidx/work/ExistingWorkPolicy;",
            ")Z"
        }
    .end annotation

    .line 183
    .local p1, "workList":Ljava/util/List;, "Ljava/util/List<+Lccsanandroidx/work/WorkRequest;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x0

    .line 185
    .local v4, "needsScheduling":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 186
    .local v5, "currentTimeMillis":J
    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Lccsanandroidx/work/impl/WorkDatabase;

    move-result-object v7

    .line 188
    .local v7, "workDatabase":Lccsanandroidx/work/impl/WorkDatabase;
    if-eqz v1, :cond_0

    array-length v10, v1

    if-lez v10, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 189
    .local v10, "hasPrerequisite":Z
    :goto_0
    const/4 v11, 0x1

    .line 190
    .local v11, "hasCompletedAllPrerequisites":Z
    const/4 v12, 0x0

    .line 191
    .local v12, "hasFailedPrerequisites":Z
    const/4 v13, 0x0

    .line 193
    .local v13, "hasCancelledPrerequisites":Z
    if-eqz v10, :cond_6

    .line 197
    array-length v14, v1

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_5

    aget-object v9, v1, v15

    .line 198
    .local v9, "id":Ljava/lang/String;
    invoke-virtual {v7}, Lccsanandroidx/work/impl/WorkDatabase;->workSpecDao()Lccsanandroidx/work/impl/model/WorkSpecDao;

    move-result-object v8

    invoke-interface {v8, v9}, Lccsanandroidx/work/impl/model/WorkSpecDao;->getWorkSpec(Ljava/lang/String;)Lccsanandroidx/work/impl/model/WorkSpec;

    move-result-object v8

    .line 199
    .local v8, "prerequisiteWorkSpec":Lccsanandroidx/work/impl/model/WorkSpec;
    if-nez v8, :cond_1

    .line 200
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v14

    sget-object v15, Lccsanandroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    move/from16 v18, v4

    const/4 v4, 0x1

    .end local v4    # "needsScheduling":Z
    .local v18, "needsScheduling":Z
    new-array v4, v4, [Ljava/lang/Object;

    move/from16 v19, v12

    const/4 v12, 0x0

    .end local v12    # "hasFailedPrerequisites":Z
    .local v19, "hasFailedPrerequisites":Z
    aput-object v9, v4, v12

    .line 201
    move-object/from16 v20, v9

    .end local v9    # "id":Ljava/lang/String;
    .local v20, "id":Ljava/lang/String;
    const-string v9, "Prerequisite %s doesn\'t exist; not enqueuing"

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v9, v12, [Ljava/lang/Throwable;

    .line 200
    invoke-virtual {v14, v15, v4, v9}, Lccsanandroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 202
    return v12

    .line 205
    .end local v18    # "needsScheduling":Z
    .end local v19    # "hasFailedPrerequisites":Z
    .end local v20    # "id":Ljava/lang/String;
    .restart local v4    # "needsScheduling":Z
    .restart local v9    # "id":Ljava/lang/String;
    .restart local v12    # "hasFailedPrerequisites":Z
    :cond_1
    move/from16 v18, v4

    move-object/from16 v20, v9

    move/from16 v19, v12

    .end local v4    # "needsScheduling":Z
    .end local v9    # "id":Ljava/lang/String;
    .end local v12    # "hasFailedPrerequisites":Z
    .restart local v18    # "needsScheduling":Z
    .restart local v19    # "hasFailedPrerequisites":Z
    .restart local v20    # "id":Ljava/lang/String;
    iget-object v4, v8, Lccsanandroidx/work/impl/model/WorkSpec;->state:Lccsanandroidx/work/WorkInfo$State;

    .line 206
    .local v4, "prerequisiteState":Lccsanandroidx/work/WorkInfo$State;
    sget-object v9, Lccsanandroidx/work/WorkInfo$State;->SUCCEEDED:Lccsanandroidx/work/WorkInfo$State;

    if-ne v4, v9, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    and-int/2addr v11, v9

    .line 207
    sget-object v9, Lccsanandroidx/work/WorkInfo$State;->FAILED:Lccsanandroidx/work/WorkInfo$State;

    if-ne v4, v9, :cond_3

    .line 208
    const/4 v9, 0x1

    move v12, v9

    .end local v19    # "hasFailedPrerequisites":Z
    .local v9, "hasFailedPrerequisites":Z
    goto :goto_3

    .line 209
    .end local v9    # "hasFailedPrerequisites":Z
    .restart local v19    # "hasFailedPrerequisites":Z
    :cond_3
    sget-object v9, Lccsanandroidx/work/WorkInfo$State;->CANCELLED:Lccsanandroidx/work/WorkInfo$State;

    if-ne v4, v9, :cond_4

    .line 210
    const/4 v9, 0x1

    move v13, v9

    move/from16 v12, v19

    .end local v13    # "hasCancelledPrerequisites":Z
    .local v9, "hasCancelledPrerequisites":Z
    goto :goto_3

    .line 209
    .end local v9    # "hasCancelledPrerequisites":Z
    .restart local v13    # "hasCancelledPrerequisites":Z
    :cond_4
    move/from16 v12, v19

    .line 197
    .end local v4    # "prerequisiteState":Lccsanandroidx/work/WorkInfo$State;
    .end local v8    # "prerequisiteWorkSpec":Lccsanandroidx/work/impl/model/WorkSpec;
    .end local v19    # "hasFailedPrerequisites":Z
    .end local v20    # "id":Ljava/lang/String;
    .restart local v12    # "hasFailedPrerequisites":Z
    :goto_3
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v18

    goto :goto_1

    .end local v18    # "needsScheduling":Z
    .local v4, "needsScheduling":Z
    :cond_5
    move/from16 v18, v4

    move/from16 v19, v12

    .end local v4    # "needsScheduling":Z
    .end local v12    # "hasFailedPrerequisites":Z
    .restart local v18    # "needsScheduling":Z
    .restart local v19    # "hasFailedPrerequisites":Z
    goto :goto_4

    .line 193
    .end local v18    # "needsScheduling":Z
    .end local v19    # "hasFailedPrerequisites":Z
    .restart local v4    # "needsScheduling":Z
    .restart local v12    # "hasFailedPrerequisites":Z
    :cond_6
    move/from16 v18, v4

    .line 215
    .end local v4    # "needsScheduling":Z
    .restart local v18    # "needsScheduling":Z
    :goto_4
    invoke-static/range {p3 .. p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v8, 0x1

    xor-int/2addr v4, v8

    .line 219
    .local v4, "isNamed":Z
    if-eqz v4, :cond_7

    if-nez v10, :cond_7

    const/4 v9, 0x1

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    .line 220
    .local v9, "shouldApplyExistingWorkPolicy":Z
    :goto_5
    if-eqz v9, :cond_15

    .line 222
    nop

    .line 223
    invoke-virtual {v7}, Lccsanandroidx/work/impl/WorkDatabase;->workSpecDao()Lccsanandroidx/work/impl/model/WorkSpecDao;

    move-result-object v14

    invoke-interface {v14, v2}, Lccsanandroidx/work/impl/model/WorkSpecDao;->getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 225
    .local v14, "existingWorkSpecIdAndStates":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;>;"
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_14

    .line 227
    sget-object v15, Lccsanandroidx/work/ExistingWorkPolicy;->APPEND:Lccsanandroidx/work/ExistingWorkPolicy;

    if-ne v3, v15, :cond_e

    .line 228
    invoke-virtual {v7}, Lccsanandroidx/work/impl/WorkDatabase;->dependencyDao()Lccsanandroidx/work/impl/model/DependencyDao;

    move-result-object v15

    .line 229
    .local v15, "dependencyDao":Lccsanandroidx/work/impl/model/DependencyDao;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v17

    .line 230
    .local v19, "newPrerequisiteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v8, v20

    check-cast v8, Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;

    .line 231
    .local v8, "idAndState":Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;
    move/from16 v20, v9

    .end local v9    # "shouldApplyExistingWorkPolicy":Z
    .local v20, "shouldApplyExistingWorkPolicy":Z
    iget-object v9, v8, Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-interface {v15, v9}, Lccsanandroidx/work/impl/model/DependencyDao;->hasDependents(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 232
    iget-object v9, v8, Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;->state:Lccsanandroidx/work/WorkInfo$State;

    move/from16 v21, v10

    .end local v10    # "hasPrerequisite":Z
    .local v21, "hasPrerequisite":Z
    sget-object v10, Lccsanandroidx/work/WorkInfo$State;->SUCCEEDED:Lccsanandroidx/work/WorkInfo$State;

    if-ne v9, v10, :cond_8

    const/4 v9, 0x1

    goto :goto_7

    :cond_8
    const/4 v9, 0x0

    :goto_7
    and-int/2addr v9, v11

    .line 233
    .end local v11    # "hasCompletedAllPrerequisites":Z
    .local v9, "hasCompletedAllPrerequisites":Z
    iget-object v10, v8, Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;->state:Lccsanandroidx/work/WorkInfo$State;

    sget-object v11, Lccsanandroidx/work/WorkInfo$State;->FAILED:Lccsanandroidx/work/WorkInfo$State;

    if-ne v10, v11, :cond_9

    .line 234
    const/4 v12, 0x1

    goto :goto_8

    .line 235
    :cond_9
    iget-object v10, v8, Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;->state:Lccsanandroidx/work/WorkInfo$State;

    sget-object v11, Lccsanandroidx/work/WorkInfo$State;->CANCELLED:Lccsanandroidx/work/WorkInfo$State;

    if-ne v10, v11, :cond_a

    .line 236
    const/4 v13, 0x1

    .line 238
    :cond_a
    :goto_8
    iget-object v10, v8, Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    move-object/from16 v11, v19

    .end local v19    # "newPrerequisiteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v11, "newPrerequisiteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v22, v11

    move v11, v9

    move-object/from16 v9, v22

    goto :goto_9

    .line 231
    .end local v9    # "hasCompletedAllPrerequisites":Z
    .end local v21    # "hasPrerequisite":Z
    .restart local v10    # "hasPrerequisite":Z
    .local v11, "hasCompletedAllPrerequisites":Z
    .restart local v19    # "newPrerequisiteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b
    move/from16 v21, v10

    move-object/from16 v9, v19

    .line 240
    .end local v8    # "idAndState":Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;
    .end local v10    # "hasPrerequisite":Z
    .end local v19    # "newPrerequisiteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v9, "newPrerequisiteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "hasPrerequisite":Z
    :goto_9
    move-object/from16 v19, v9

    move/from16 v9, v20

    move/from16 v10, v21

    const/4 v8, 0x1

    goto :goto_6

    .line 241
    .end local v20    # "shouldApplyExistingWorkPolicy":Z
    .end local v21    # "hasPrerequisite":Z
    .local v9, "shouldApplyExistingWorkPolicy":Z
    .restart local v10    # "hasPrerequisite":Z
    .restart local v19    # "newPrerequisiteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    move/from16 v20, v9

    move/from16 v21, v10

    move-object/from16 v9, v19

    .end local v10    # "hasPrerequisite":Z
    .end local v19    # "newPrerequisiteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v9, "newPrerequisiteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "shouldApplyExistingWorkPolicy":Z
    .restart local v21    # "hasPrerequisite":Z
    invoke-interface {v9, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    move-object v1, v8

    check-cast v1, [Ljava/lang/String;

    .line 242
    .end local p2    # "prerequisiteIds":[Ljava/lang/String;
    .local v1, "prerequisiteIds":[Ljava/lang/String;
    array-length v8, v1

    if-lez v8, :cond_d

    const/4 v8, 0x1

    goto :goto_a

    :cond_d
    const/4 v8, 0x0

    :goto_a
    move v10, v8

    .line 243
    .end local v9    # "newPrerequisiteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "dependencyDao":Lccsanandroidx/work/impl/model/DependencyDao;
    .end local v21    # "hasPrerequisite":Z
    .restart local v10    # "hasPrerequisite":Z
    goto/16 :goto_10

    .line 246
    .end local v1    # "prerequisiteIds":[Ljava/lang/String;
    .end local v20    # "shouldApplyExistingWorkPolicy":Z
    .local v9, "shouldApplyExistingWorkPolicy":Z
    .restart local p2    # "prerequisiteIds":[Ljava/lang/String;
    :cond_e
    move/from16 v20, v9

    move/from16 v21, v10

    .end local v9    # "shouldApplyExistingWorkPolicy":Z
    .end local v10    # "hasPrerequisite":Z
    .restart local v20    # "shouldApplyExistingWorkPolicy":Z
    .restart local v21    # "hasPrerequisite":Z
    sget-object v8, Lccsanandroidx/work/ExistingWorkPolicy;->KEEP:Lccsanandroidx/work/ExistingWorkPolicy;

    if-ne v3, v8, :cond_12

    .line 247
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;

    .line 248
    .local v9, "idAndState":Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;
    iget-object v10, v9, Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;->state:Lccsanandroidx/work/WorkInfo$State;

    sget-object v15, Lccsanandroidx/work/WorkInfo$State;->ENQUEUED:Lccsanandroidx/work/WorkInfo$State;

    if-eq v10, v15, :cond_10

    iget-object v10, v9, Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;->state:Lccsanandroidx/work/WorkInfo$State;

    sget-object v15, Lccsanandroidx/work/WorkInfo$State;->RUNNING:Lccsanandroidx/work/WorkInfo$State;

    if-ne v10, v15, :cond_f

    goto :goto_c

    .line 251
    .end local v9    # "idAndState":Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;
    :cond_f
    goto :goto_b

    .line 249
    .restart local v9    # "idAndState":Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;
    :cond_10
    :goto_c
    const/4 v8, 0x0

    return v8

    .line 247
    .end local v9    # "idAndState":Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;
    :cond_11
    const/4 v8, 0x0

    goto :goto_d

    .line 246
    :cond_12
    const/4 v8, 0x0

    .line 259
    :goto_d
    invoke-static {v2, v0, v8}, Lccsanandroidx/work/impl/utils/CancelWorkRunnable;->forName(Ljava/lang/String;Lccsanandroidx/work/impl/WorkManagerImpl;Z)Lccsanandroidx/work/impl/utils/CancelWorkRunnable;

    move-result-object v9

    invoke-virtual {v9}, Lccsanandroidx/work/impl/utils/CancelWorkRunnable;->run()V

    .line 263
    const/4 v9, 0x1

    .line 266
    .end local v18    # "needsScheduling":Z
    .local v9, "needsScheduling":Z
    invoke-virtual {v7}, Lccsanandroidx/work/impl/WorkDatabase;->workSpecDao()Lccsanandroidx/work/impl/model/WorkSpecDao;

    move-result-object v10

    .line 267
    .local v10, "workSpecDao":Lccsanandroidx/work/impl/model/WorkSpecDao;
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_e
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_13

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;

    .line 268
    .restart local v8    # "idAndState":Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;
    iget-object v1, v8, Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-interface {v10, v1}, Lccsanandroidx/work/impl/model/WorkSpecDao;->delete(Ljava/lang/String;)V

    .line 269
    .end local v8    # "idAndState":Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;
    move-object/from16 v1, p2

    const/4 v8, 0x0

    goto :goto_e

    .line 267
    :cond_13
    move-object/from16 v1, p2

    move/from16 v18, v9

    move/from16 v10, v21

    goto :goto_10

    .line 225
    .end local v20    # "shouldApplyExistingWorkPolicy":Z
    .end local v21    # "hasPrerequisite":Z
    .local v9, "shouldApplyExistingWorkPolicy":Z
    .local v10, "hasPrerequisite":Z
    .restart local v18    # "needsScheduling":Z
    :cond_14
    move/from16 v20, v9

    move/from16 v21, v10

    .end local v9    # "shouldApplyExistingWorkPolicy":Z
    .end local v10    # "hasPrerequisite":Z
    .restart local v20    # "shouldApplyExistingWorkPolicy":Z
    .restart local v21    # "hasPrerequisite":Z
    goto :goto_f

    .line 220
    .end local v14    # "existingWorkSpecIdAndStates":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;>;"
    .end local v20    # "shouldApplyExistingWorkPolicy":Z
    .end local v21    # "hasPrerequisite":Z
    .restart local v9    # "shouldApplyExistingWorkPolicy":Z
    .restart local v10    # "hasPrerequisite":Z
    :cond_15
    move/from16 v20, v9

    move/from16 v21, v10

    .line 274
    .end local v9    # "shouldApplyExistingWorkPolicy":Z
    .end local v10    # "hasPrerequisite":Z
    .restart local v20    # "shouldApplyExistingWorkPolicy":Z
    .restart local v21    # "hasPrerequisite":Z
    :goto_f
    move-object/from16 v1, p2

    move/from16 v10, v21

    .end local v21    # "hasPrerequisite":Z
    .end local p2    # "prerequisiteIds":[Ljava/lang/String;
    .restart local v1    # "prerequisiteIds":[Ljava/lang/String;
    .restart local v10    # "hasPrerequisite":Z
    :goto_10
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_11
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_21

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lccsanandroidx/work/WorkRequest;

    .line 275
    .local v9, "work":Lccsanandroidx/work/WorkRequest;
    invoke-virtual {v9}, Lccsanandroidx/work/WorkRequest;->getWorkSpec()Lccsanandroidx/work/impl/model/WorkSpec;

    move-result-object v14

    .line 277
    .local v14, "workSpec":Lccsanandroidx/work/impl/model/WorkSpec;
    if-eqz v10, :cond_18

    if-nez v11, :cond_18

    .line 278
    if-eqz v12, :cond_16

    .line 279
    sget-object v15, Lccsanandroidx/work/WorkInfo$State;->FAILED:Lccsanandroidx/work/WorkInfo$State;

    iput-object v15, v14, Lccsanandroidx/work/impl/model/WorkSpec;->state:Lccsanandroidx/work/WorkInfo$State;

    move-wide v15, v5

    goto :goto_12

    .line 280
    :cond_16
    if-eqz v13, :cond_17

    .line 281
    sget-object v15, Lccsanandroidx/work/WorkInfo$State;->CANCELLED:Lccsanandroidx/work/WorkInfo$State;

    iput-object v15, v14, Lccsanandroidx/work/impl/model/WorkSpec;->state:Lccsanandroidx/work/WorkInfo$State;

    move-wide v15, v5

    goto :goto_12

    .line 283
    :cond_17
    sget-object v15, Lccsanandroidx/work/WorkInfo$State;->BLOCKED:Lccsanandroidx/work/WorkInfo$State;

    iput-object v15, v14, Lccsanandroidx/work/impl/model/WorkSpec;->state:Lccsanandroidx/work/WorkInfo$State;

    move-wide v15, v5

    goto :goto_12

    .line 289
    :cond_18
    invoke-virtual {v14}, Lccsanandroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v15

    if-nez v15, :cond_19

    .line 290
    iput-wide v5, v14, Lccsanandroidx/work/impl/model/WorkSpec;->periodStartTime:J

    move-wide v15, v5

    goto :goto_12

    .line 292
    :cond_19
    move-wide v15, v5

    .end local v5    # "currentTimeMillis":J
    .local v15, "currentTimeMillis":J
    const-wide/16 v5, 0x0

    iput-wide v5, v14, Lccsanandroidx/work/impl/model/WorkSpec;->periodStartTime:J

    .line 296
    :goto_12
    sget v5, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_1a

    sget v5, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x19

    if-gt v5, v6, :cond_1a

    .line 298
    invoke-static {v14}, Lccsanandroidx/work/impl/utils/EnqueueRunnable;->tryDelegateConstrainedWorkSpec(Lccsanandroidx/work/impl/model/WorkSpec;)V

    goto :goto_13

    .line 299
    :cond_1a
    sget v5, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x16

    if-gt v5, v6, :cond_1b

    .line 300
    const-string v5, "androidx.work.impl.background.gcm.GcmScheduler"

    invoke-static {v0, v5}, Lccsanandroidx/work/impl/utils/EnqueueRunnable;->usesScheduler(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 301
    invoke-static {v14}, Lccsanandroidx/work/impl/utils/EnqueueRunnable;->tryDelegateConstrainedWorkSpec(Lccsanandroidx/work/impl/model/WorkSpec;)V

    .line 305
    :cond_1b
    :goto_13
    iget-object v5, v14, Lccsanandroidx/work/impl/model/WorkSpec;->state:Lccsanandroidx/work/WorkInfo$State;

    sget-object v6, Lccsanandroidx/work/WorkInfo$State;->ENQUEUED:Lccsanandroidx/work/WorkInfo$State;

    if-ne v5, v6, :cond_1c

    .line 306
    const/4 v5, 0x1

    move/from16 v18, v5

    .line 309
    :cond_1c
    invoke-virtual {v7}, Lccsanandroidx/work/impl/WorkDatabase;->workSpecDao()Lccsanandroidx/work/impl/model/WorkSpecDao;

    move-result-object v5

    invoke-interface {v5, v14}, Lccsanandroidx/work/impl/model/WorkSpecDao;->insertWorkSpec(Lccsanandroidx/work/impl/model/WorkSpec;)V

    .line 311
    if-eqz v10, :cond_1e

    .line 312
    array-length v5, v1

    const/4 v6, 0x0

    :goto_14
    if-ge v6, v5, :cond_1d

    aget-object v0, v1, v6

    .line 313
    .local v0, "prerequisiteId":Ljava/lang/String;
    move-object/from16 v19, v1

    .end local v1    # "prerequisiteIds":[Ljava/lang/String;
    .local v19, "prerequisiteIds":[Ljava/lang/String;
    new-instance v1, Lccsanandroidx/work/impl/model/Dependency;

    invoke-virtual {v9}, Lccsanandroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lccsanandroidx/work/impl/model/Dependency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .local v1, "dep":Lccsanandroidx/work/impl/model/Dependency;
    invoke-virtual {v7}, Lccsanandroidx/work/impl/WorkDatabase;->dependencyDao()Lccsanandroidx/work/impl/model/DependencyDao;

    move-result-object v3

    invoke-interface {v3, v1}, Lccsanandroidx/work/impl/model/DependencyDao;->insertDependency(Lccsanandroidx/work/impl/model/Dependency;)V

    .line 312
    .end local v0    # "prerequisiteId":Ljava/lang/String;
    .end local v1    # "dep":Lccsanandroidx/work/impl/model/Dependency;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    move-object/from16 v1, v19

    goto :goto_14

    .end local v19    # "prerequisiteIds":[Ljava/lang/String;
    .local v1, "prerequisiteIds":[Ljava/lang/String;
    :cond_1d
    move-object/from16 v19, v1

    .end local v1    # "prerequisiteIds":[Ljava/lang/String;
    .restart local v19    # "prerequisiteIds":[Ljava/lang/String;
    goto :goto_15

    .line 311
    .end local v19    # "prerequisiteIds":[Ljava/lang/String;
    .restart local v1    # "prerequisiteIds":[Ljava/lang/String;
    :cond_1e
    move-object/from16 v19, v1

    .line 318
    .end local v1    # "prerequisiteIds":[Ljava/lang/String;
    .restart local v19    # "prerequisiteIds":[Ljava/lang/String;
    :goto_15
    invoke-virtual {v9}, Lccsanandroidx/work/WorkRequest;->getTags()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 319
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {v7}, Lccsanandroidx/work/impl/WorkDatabase;->workTagDao()Lccsanandroidx/work/impl/model/WorkTagDao;

    move-result-object v3

    new-instance v5, Lccsanandroidx/work/impl/model/WorkTag;

    invoke-virtual {v9}, Lccsanandroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lccsanandroidx/work/impl/model/WorkTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Lccsanandroidx/work/impl/model/WorkTagDao;->insert(Lccsanandroidx/work/impl/model/WorkTag;)V

    .line 320
    .end local v1    # "tag":Ljava/lang/String;
    goto :goto_16

    .line 322
    :cond_1f
    if-eqz v4, :cond_20

    .line 323
    invoke-virtual {v7}, Lccsanandroidx/work/impl/WorkDatabase;->workNameDao()Lccsanandroidx/work/impl/model/WorkNameDao;

    move-result-object v0

    new-instance v1, Lccsanandroidx/work/impl/model/WorkName;

    invoke-virtual {v9}, Lccsanandroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lccsanandroidx/work/impl/model/WorkName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lccsanandroidx/work/impl/model/WorkNameDao;->insert(Lccsanandroidx/work/impl/model/WorkName;)V

    .line 325
    .end local v9    # "work":Lccsanandroidx/work/WorkRequest;
    .end local v14    # "workSpec":Lccsanandroidx/work/impl/model/WorkSpec;
    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v3, p4

    move-wide v5, v15

    move-object/from16 v1, v19

    goto/16 :goto_11

    .line 326
    .end local v15    # "currentTimeMillis":J
    .end local v19    # "prerequisiteIds":[Ljava/lang/String;
    .local v1, "prerequisiteIds":[Ljava/lang/String;
    .restart local v5    # "currentTimeMillis":J
    :cond_21
    return v18
.end method

.method private static processContinuation(Lccsanandroidx/work/impl/WorkContinuationImpl;)Z
    .locals 9
    .param p0, "workContinuation"    # Lccsanandroidx/work/impl/WorkContinuationImpl;

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "needsScheduling":Z
    invoke-virtual {p0}, Lccsanandroidx/work/impl/WorkContinuationImpl;->getParents()Ljava/util/List;

    move-result-object v1

    .line 141
    .local v1, "parents":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/WorkContinuationImpl;>;"
    if-eqz v1, :cond_1

    .line 142
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/work/impl/WorkContinuationImpl;

    .line 145
    .local v3, "parent":Lccsanandroidx/work/impl/WorkContinuationImpl;
    invoke-virtual {v3}, Lccsanandroidx/work/impl/WorkContinuationImpl;->isEnqueued()Z

    move-result v4

    if-nez v4, :cond_0

    .line 146
    invoke-static {v3}, Lccsanandroidx/work/impl/utils/EnqueueRunnable;->processContinuation(Lccsanandroidx/work/impl/WorkContinuationImpl;)Z

    move-result v4

    or-int/2addr v0, v4

    goto :goto_1

    .line 148
    :cond_0
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v4

    sget-object v5, Lccsanandroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 149
    invoke-virtual {v3}, Lccsanandroidx/work/impl/WorkContinuationImpl;->getIds()Ljava/util/List;

    move-result-object v7

    const-string v8, ", "

    invoke-static {v8, v7}, Lccsanandroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 148
    const-string v7, "Already enqueued work ids (%s)."

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6, v7}, Lccsanandroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 151
    .end local v3    # "parent":Lccsanandroidx/work/impl/WorkContinuationImpl;
    :goto_1
    goto :goto_0

    .line 153
    :cond_1
    invoke-static {p0}, Lccsanandroidx/work/impl/utils/EnqueueRunnable;->enqueueContinuation(Lccsanandroidx/work/impl/WorkContinuationImpl;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 154
    return v0
.end method

.method private static tryDelegateConstrainedWorkSpec(Lccsanandroidx/work/impl/model/WorkSpec;)V
    .locals 5
    .param p0, "workSpec"    # Lccsanandroidx/work/impl/model/WorkSpec;

    .line 332
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpec;->constraints:Lccsanandroidx/work/Constraints;

    .line 333
    .local v0, "constraints":Lccsanandroidx/work/Constraints;
    invoke-virtual {v0}, Lccsanandroidx/work/Constraints;->requiresBatteryNotLow()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lccsanandroidx/work/Constraints;->requiresStorageNotLow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    :cond_0
    iget-object v1, p0, Lccsanandroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 335
    .local v1, "workerClassName":Ljava/lang/String;
    new-instance v2, Lccsanandroidx/work/Data$Builder;

    invoke-direct {v2}, Lccsanandroidx/work/Data$Builder;-><init>()V

    .line 337
    .local v2, "builder":Lccsanandroidx/work/Data$Builder;
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpec;->input:Lccsanandroidx/work/Data;

    invoke-virtual {v2, v3}, Lccsanandroidx/work/Data$Builder;->putAll(Lccsanandroidx/work/Data;)Lccsanandroidx/work/Data$Builder;

    move-result-object v3

    .line 338
    const-string v4, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    invoke-virtual {v3, v4, v1}, Lccsanandroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lccsanandroidx/work/Data$Builder;

    .line 339
    const-class v3, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 340
    invoke-virtual {v2}, Lccsanandroidx/work/Data$Builder;->build()Lccsanandroidx/work/Data;

    move-result-object v3

    iput-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpec;->input:Lccsanandroidx/work/Data;

    .line 342
    .end local v1    # "workerClassName":Ljava/lang/String;
    .end local v2    # "builder":Lccsanandroidx/work/Data$Builder;
    :cond_1
    return-void
.end method

.method private static usesScheduler(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)Z
    .locals 5
    .param p0, "workManager"    # Lccsanandroidx/work/impl/WorkManagerImpl;
    .param p1, "className"    # Ljava/lang/String;

    .line 353
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 354
    .local v1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getSchedulers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/work/impl/Scheduler;

    .line 355
    .local v3, "scheduler":Lccsanandroidx/work/impl/Scheduler;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    .line 356
    const/4 v0, 0x1

    return v0

    .line 358
    .end local v3    # "scheduler":Lccsanandroidx/work/impl/Scheduler;
    :cond_0
    goto :goto_0

    .line 359
    :cond_1
    return v0

    .line 360
    .end local v1    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 361
    .local v1, "ignore":Ljava/lang/ClassNotFoundException;
    return v0
.end method


# virtual methods
.method public addToDatabase()Z
    .locals 3

    .line 114
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Lccsanandroidx/work/impl/WorkContinuationImpl;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkContinuationImpl;->getWorkManagerImpl()Lccsanandroidx/work/impl/WorkManagerImpl;

    move-result-object v0

    .line 115
    .local v0, "workManagerImpl":Lccsanandroidx/work/impl/WorkManagerImpl;
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Lccsanandroidx/work/impl/WorkDatabase;

    move-result-object v1

    .line 116
    .local v1, "workDatabase":Lccsanandroidx/work/impl/WorkDatabase;
    invoke-virtual {v1}, Lccsanandroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 118
    :try_start_0
    iget-object v2, p0, Lccsanandroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Lccsanandroidx/work/impl/WorkContinuationImpl;

    invoke-static {v2}, Lccsanandroidx/work/impl/utils/EnqueueRunnable;->processContinuation(Lccsanandroidx/work/impl/WorkContinuationImpl;)Z

    move-result v2

    .line 119
    .local v2, "needsScheduling":Z
    invoke-virtual {v1}, Lccsanandroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    nop

    .line 122
    invoke-virtual {v1}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 120
    return v2

    .line 122
    .end local v2    # "needsScheduling":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 123
    throw v2
.end method

.method public getOperation()Lccsanandroidx/work/Operation;
    .locals 1

    .line 105
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/EnqueueRunnable;->mOperation:Lccsanandroidx/work/impl/OperationImpl;

    return-object v0
.end method

.method public run()V
    .locals 5

    .line 83
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Lccsanandroidx/work/impl/WorkContinuationImpl;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkContinuationImpl;->hasCycles()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 87
    invoke-virtual {p0}, Lccsanandroidx/work/impl/utils/EnqueueRunnable;->addToDatabase()Z

    move-result v0

    .line 88
    .local v0, "needsScheduling":Z
    if-eqz v0, :cond_0

    .line 90
    iget-object v2, p0, Lccsanandroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Lccsanandroidx/work/impl/WorkContinuationImpl;

    .line 91
    invoke-virtual {v2}, Lccsanandroidx/work/impl/WorkContinuationImpl;->getWorkManagerImpl()Lccsanandroidx/work/impl/WorkManagerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroidx/work/impl/WorkManagerImpl;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v2

    .line 92
    .local v2, "context":Lccsanandroid/content/Context;
    const-class v3, Lccsanandroidx/work/impl/background/systemalarm/RescheduleReceiver;

    invoke-static {v2, v3, v1}, Lccsanandroidx/work/impl/utils/PackageManagerHelper;->setComponentEnabled(Lccsanandroid/content/Context;Ljava/lang/Class;Z)V

    .line 93
    invoke-virtual {p0}, Lccsanandroidx/work/impl/utils/EnqueueRunnable;->scheduleWorkInBackground()V

    .line 95
    .end local v2    # "context":Lccsanandroid/content/Context;
    :cond_0
    iget-object v1, p0, Lccsanandroidx/work/impl/utils/EnqueueRunnable;->mOperation:Lccsanandroidx/work/impl/OperationImpl;

    sget-object v2, Lccsanandroidx/work/Operation;->SUCCESS:Lccsanandroidx/work/Operation$State$SUCCESS;

    invoke-virtual {v1, v2}, Lccsanandroidx/work/impl/OperationImpl;->setState(Lccsanandroidx/work/Operation$State;)V

    .line 98
    .end local v0    # "needsScheduling":Z
    goto :goto_0

    .line 84
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "WorkContinuation has cycles (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lccsanandroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Lccsanandroidx/work/impl/WorkContinuationImpl;

    aput-object v4, v1, v3

    .line 85
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    .local v0, "exception":Ljava/lang/Throwable;
    iget-object v1, p0, Lccsanandroidx/work/impl/utils/EnqueueRunnable;->mOperation:Lccsanandroidx/work/impl/OperationImpl;

    new-instance v2, Lccsanandroidx/work/Operation$State$FAILURE;

    invoke-direct {v2, v0}, Lccsanandroidx/work/Operation$State$FAILURE;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lccsanandroidx/work/impl/OperationImpl;->setState(Lccsanandroidx/work/Operation$State;)V

    .line 99
    .end local v0    # "exception":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public scheduleWorkInBackground()V
    .locals 4

    .line 131
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Lccsanandroidx/work/impl/WorkContinuationImpl;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkContinuationImpl;->getWorkManagerImpl()Lccsanandroidx/work/impl/WorkManagerImpl;

    move-result-object v0

    .line 132
    .local v0, "workManager":Lccsanandroidx/work/impl/WorkManagerImpl;
    nop

    .line 133
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getConfiguration()Lccsanandroidx/work/Configuration;

    move-result-object v1

    .line 134
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Lccsanandroidx/work/impl/WorkDatabase;

    move-result-object v2

    .line 135
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getSchedulers()Ljava/util/List;

    move-result-object v3

    .line 132
    invoke-static {v1, v2, v3}, Lccsanandroidx/work/impl/Schedulers;->schedule(Lccsanandroidx/work/Configuration;Lccsanandroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 136
    return-void
.end method
