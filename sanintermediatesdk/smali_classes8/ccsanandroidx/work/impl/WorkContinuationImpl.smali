.class public Lccsanandroidx/work/impl/WorkContinuationImpl;
.super Lccsanandroidx/work/WorkContinuation;
.source "WorkContinuationImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAllIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnqueued:Z

.field private final mExistingWorkPolicy:Lccsanandroidx/work/ExistingWorkPolicy;

.field private final mIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private mOperation:Lccsanandroidx/work/Operation;

.field private final mParents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/WorkContinuationImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mWork:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lccsanandroidx/work/WorkRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-string v0, "WorkContinuationImpl"

    invoke-static {v0}, Lccsanandroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/impl/WorkContinuationImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Lccsanandroidx/work/ExistingWorkPolicy;Ljava/util/List;)V
    .locals 6
    .param p1, "workManagerImpl"    # Lccsanandroidx/work/impl/WorkManagerImpl;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "existingWorkPolicy"    # Lccsanandroidx/work/ExistingWorkPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/work/impl/WorkManagerImpl;",
            "Ljava/lang/String;",
            "Lccsanandroidx/work/ExistingWorkPolicy;",
            "Ljava/util/List<",
            "+",
            "Lccsanandroidx/work/WorkRequest;",
            ">;)V"
        }
    .end annotation

    .line 125
    .local p4, "work":Ljava/util/List;, "Ljava/util/List<+Lccsanandroidx/work/WorkRequest;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lccsanandroidx/work/impl/WorkContinuationImpl;-><init>(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Lccsanandroidx/work/ExistingWorkPolicy;Ljava/util/List;Ljava/util/List;)V

    .line 126
    return-void
.end method

.method constructor <init>(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Lccsanandroidx/work/ExistingWorkPolicy;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .param p1, "workManagerImpl"    # Lccsanandroidx/work/impl/WorkManagerImpl;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "existingWorkPolicy"    # Lccsanandroidx/work/ExistingWorkPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/work/impl/WorkManagerImpl;",
            "Ljava/lang/String;",
            "Lccsanandroidx/work/ExistingWorkPolicy;",
            "Ljava/util/List<",
            "+",
            "Lccsanandroidx/work/WorkRequest;",
            ">;",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/WorkContinuationImpl;",
            ">;)V"
        }
    .end annotation

    .line 132
    .local p4, "work":Ljava/util/List;, "Ljava/util/List<+Lccsanandroidx/work/WorkRequest;>;"
    .local p5, "parents":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/WorkContinuationImpl;>;"
    invoke-direct {p0}, Lccsanandroidx/work/WorkContinuation;-><init>()V

    .line 133
    iput-object p1, p0, Lccsanandroidx/work/impl/WorkContinuationImpl;->mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 134
    iput-object p2, p0, Lccsanandroidx/work/impl/WorkContinuationImpl;->mName:Ljava/lang/String;

    .line 135
    iput-object p3, p0, Lccsanandroidx/work/impl/WorkContinuationImpl;->mExistingWorkPolicy:Lccsanandroidx/work/ExistingWorkPolicy;

    .line 136
    iput-object p4, p0, Lccsanandroidx/work/impl/WorkContinuationImpl;->mWork:Ljava/util/List;

    .line 137
    iput-object p5, p0, Lccsanandroidx/work/impl/WorkContinuationImpl;->mParents:Ljava/util/List;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lccsanandroidx/work/impl/WorkContinuationImpl;->mIds:Ljava/util/List;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsanandroidx/work/impl/WorkContinuationImpl;->mAllIds:Ljava/util/List;

    .line 140
    if-eqz p5, :cond_0

    .line 141
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/work/impl/WorkContinuationImpl;

    .line 142
    .local v1, "parent":Lccsanandroidx/work/impl/WorkContinuationImpl;
    iget-object v2, p0, Lccsanandroidx/work/impl/WorkContinuationImpl;->mAllIds:Ljava/util/List;

    iget-object v3, v1, Lccsanandroidx/work/impl/WorkContinuationImpl;->mAllIds:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    .end local v1    # "parent":Lccsanandroidx/work/impl/WorkContinuationImpl;
    goto :goto_0

    .line 145
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 146
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/work/WorkRequest;

    invoke-virtual {v1}, Lccsanandroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "id":Ljava/lang/String;
    iget-object v2, p0, Lccsanandroidx/work/impl/WorkContinuationImpl;->mIds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v2, p0, Lccsanandroidx/work/impl/WorkContinuationImpl;->mAllIds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    .end local v1    # "id":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 150
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method constructor <init>(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/util/List;)V
    .locals 6
    .param p1, "workManagerImpl"    # Lccsanandroidx/work/impl/WorkManagerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/work/impl/WorkManagerImpl;",
            "Ljava/util/List<",
            "+",
            "Lccsanandroidx/work/WorkRequest;",
            ">;)V"
        }
    .end annotation

    .line 112
    .local p2, "work":Ljava/util/List;, "Ljava/util/List<+Lccsanandroidx/work/WorkRequest;>;"
    sget-object v3, Lccsanandroidx/work/ExistingWorkPolicy;->KEEP:Lccsanandroidx/work/ExistingWorkPolicy;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lccsanandroidx/work/impl/WorkContinuationImpl;-><init>(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Lccsanandroidx/work/ExistingWorkPolicy;Ljava/util/List;Ljava/util/List;)V

    .line 118
    return-void
.end method

.method private static hasCycles(Lccsanandroidx/work/impl/WorkContinuationImpl;Ljava/util/Set;)Z
    .locals 6
    .param p0, "continuation"    # Lccsanandroidx/work/impl/WorkContinuationImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/work/impl/WorkContinuationImpl;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 236
    .local p1, "visited":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lccsanandroidx/work/impl/WorkContinuationImpl;->getIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 238
    invoke-static {p0}, Lccsanandroidx/work/impl/WorkContinuationImpl;->prerequisitesFor(Lccsanandroidx/work/impl/WorkContinuationImpl;)Ljava/util/Set;

    move-result-object v0

    .line 239
    .local v0, "prerequisiteIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 240
    .local v2, "id":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 243
    return v3

    .line 245
    .end local v2    # "id":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {p0}, Lccsanandroidx/work/impl/WorkContinuationImpl;->getParents()Ljava/util/List;

    move-result-object v1

    .line 248
    .local v1, "parents":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/WorkContinuationImpl;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 249
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroidx/work/impl/WorkContinuationImpl;

    .line 251
    .local v4, "parent":Lccsanandroidx/work/impl/WorkContinuationImpl;
    invoke-static {v4, p1}, Lccsanandroidx/work/impl/WorkContinuationImpl;->hasCycles(Lccsanandroidx/work/impl/WorkContinuationImpl;Ljava/util/Set;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 252
    return v3

    .line 254
    .end local v4    # "parent":Lccsanandroidx/work/impl/WorkContinuationImpl;
    :cond_2
    goto :goto_1

    .line 261
    :cond_3
    invoke-virtual {p0}, Lccsanandroidx/work/impl/WorkContinuationImpl;->getIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 262
    const/4 v2, 0x0

    return v2
.end method

.method public static prerequisitesFor(Lccsanandroidx/work/impl/WorkContinuationImpl;)Ljava/util/Set;
    .locals 5
    .param p0, "continuation"    # Lccsanandroidx/work/impl/WorkContinuationImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/work/impl/WorkContinuationImpl;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 272
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 273
    .local v0, "preRequisites":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lccsanandroidx/work/impl/WorkContinuationImpl;->getParents()Ljava/util/List;

    move-result-object v1

    .line 274
    .local v1, "parents":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/WorkContinuationImpl;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 275
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/work/impl/WorkContinuationImpl;

    .line 276
    .local v3, "parent":Lccsanandroidx/work/impl/WorkContinuationImpl;
    invoke-virtual {v3}, Lccsanandroidx/work/impl/WorkContinuationImpl;->getIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 277
    .end local v3    # "parent":Lccsanandroidx/work/impl/WorkContinuationImpl;
    goto :goto_0

    .line 279
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected combineInternal(Ljava/util/List;)Lccsanandroidx/work/WorkContinuation;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroidx/work/WorkContinuation;",
            ">;)",
            "Lccsanandroidx/work/WorkContinuation;"
        }
    .end annotation

    .line 195
    .local p1, "continuations":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/WorkContinuation;>;"
    new-instance v0, Lccsanandroidx/work/OneTimeWorkRequest$Builder;

    const-class v1, Lccsanandroidx/work/impl/workers/CombineContinuationsWorker;

    invoke-direct {v0, v1}, Lccsanandroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    const-class v1, Lccsanandroidx/work/ArrayCreatingInputMerger;

    .line 197
    invoke-virtual {v0, v1}, Lccsanandroidx/work/OneTimeWorkRequest$Builder;->setInputMerger(Ljava/lang/Class;)Lccsanandroidx/work/OneTimeWorkRequest$Builder;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lccsanandroidx/work/OneTimeWorkRequest$Builder;->build()Lccsanandroidx/work/WorkRequest;

    move-result-object v0

    check-cast v0, Lccsanandroidx/work/OneTimeWorkRequest;

    .line 200
    .local v0, "combinedWork":Lccsanandroidx/work/OneTimeWorkRequest;
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    .local v1, "parents":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/WorkContinuationImpl;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/work/WorkContinuation;

    .line 202
    .local v3, "continuation":Lccsanandroidx/work/WorkContinuation;
    move-object v4, v3

    check-cast v4, Lccsanandroidx/work/impl/WorkContinuationImpl;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .end local v3    # "continuation":Lccsanandroidx/work/WorkContinuation;
    goto :goto_0

    .line 205
    :cond_0
    new-instance v2, Lccsanandroidx/work/impl/WorkContinuationImpl;

    iget-object v4, p0, Lccsanandroidx/work/impl/WorkContinuationImpl;->mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    const/4 v5, 0x0

    sget-object v6, Lccsanandroidx/work/ExistingWorkPolicy;->KEEP:Lccsanandroidx/work/ExistingWorkPolicy;

    .line 208
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move-object v3, v2

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lccsanandroidx/work/impl/WorkContinuationImpl;-><init>(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Lccsanandroidx/work/ExistingWorkPolicy;Ljava/util/List;Ljava/util/List;)V

    .line 205
    return-object v2
.end method

.method public enqueue()Lccsanandroidx/work/Operation;
    .locals 5

    .line 179
    iget-boolean v0, p0, Lccsanandroidx/work/impl/WorkContinuationImpl;->mEnqueued:Z

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lccsanandroidx/work/impl/utils/EnqueueRunnable;

    invoke-direct {v0, p0}, Lccsanandroidx/work/impl/utils/EnqueueRunnable;-><init>(Lccsanandroidx/work/impl/WorkContinuationImpl;)V

    .line 183
    .local v0, "runnable":Lccsanandroidx/work/impl/utils/EnqueueRunnable;
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkContinuationImpl;->mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v1}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkTaskExecutor()Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v1

    invoke-interface {v1, v0}, Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;->executeOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 184
    invoke-virtual {v0}, Lccsanandroidx/work/impl/utils/EnqueueRunnable;->getOperation()Lccsanandroidx/work/Operation;

    move-result-object v1

    iput-object v1, p0, Lccsanandroidx/work/impl/WorkContinuationImpl;->mOperation:Lccsanandroidx/work/Operation;

    .line 185
    .end local v0    # "runnable":Lccsanandroidx/work/impl/utils/EnqueueRunnable;
    goto :goto_0

    .line 186
    :cond_0
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v1, Lccsanandroidx/work/impl/WorkContinuationImpl;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lccsanandroidx/work/impl/WorkContinuationImpl;->mIds:Ljava/util/List;

    .line 187
    const-string v4, ", "

    invoke-static {v4, v3}, Lccsanandroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Already enqueued work ids (%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Throwable;

    .line 186
    invoke-virtual {v0, v1, v2, v3}, Lccsanandroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 189
    :goto_0
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkContinuationImpl;->mOperation:Lccsanandroidx/work/Operation;

    return-object v0
.end method

.method public getAllIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkContinuationImpl;->mAllIds:Ljava/util/List;

    return-object v0
.end method

.method public getExistingWorkPolicy()Lccsanandroidx/work/ExistingWorkPolicy;
    .locals 1

    .line 77
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkContinuationImpl;->mExistingWorkPolicy:Lccsanandroidx/work/ExistingWorkPolicy;

    return-object v0
.end method

.method public getIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkContinuationImpl;->mIds:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkContinuationImpl;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/WorkContinuationImpl;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkContinuationImpl;->mParents:Ljava/util/List;

    return-object v0
.end method

.method public getWork()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lccsanandroidx/work/WorkRequest;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkContinuationImpl;->mWork:Ljava/util/List;

    return-object v0
.end method

.method public getWorkInfos()Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Lccsanandroidx/work/WorkInfo;",
            ">;>;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkContinuationImpl;->mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    iget-object v1, p0, Lccsanandroidx/work/impl/WorkContinuationImpl;->mAllIds:Ljava/util/List;

    .line 170
    invoke-static {v0, v1}, Lccsanandroidx/work/impl/utils/StatusRunnable;->forStringIds(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/util/List;)Lccsanandroidx/work/impl/utils/StatusRunnable;

    move-result-object v0

    .line 172
    .local v0, "runnable":Lccsanandroidx/work/impl/utils/StatusRunnable;, "Lccsanandroidx/work/impl/utils/StatusRunnable<Ljava/util/List<Lccsanandroidx/work/WorkInfo;>;>;"
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkContinuationImpl;->mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v1}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkTaskExecutor()Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v1

    invoke-interface {v1, v0}, Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;->executeOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 173
    invoke-virtual {v0}, Lccsanandroidx/work/impl/utils/StatusRunnable;->getFuture()Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1
.end method

.method public getWorkInfosLiveData()Lccsanandroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsanandroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lccsanandroidx/work/WorkInfo;",
            ">;>;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkContinuationImpl;->mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    iget-object v1, p0, Lccsanandroidx/work/impl/WorkContinuationImpl;->mAllIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkInfosById(Ljava/util/List;)Lccsanandroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getWorkManagerImpl()Lccsanandroidx/work/impl/WorkManagerImpl;
    .locals 1

    .line 68
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkContinuationImpl;->mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    return-object v0
.end method

.method public hasCycles()Z
    .locals 1

    .line 219
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, v0}, Lccsanandroidx/work/impl/WorkContinuationImpl;->hasCycles(Lccsanandroidx/work/impl/WorkContinuationImpl;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public isEnqueued()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lccsanandroidx/work/impl/WorkContinuationImpl;->mEnqueued:Z

    return v0
.end method

.method public markEnqueued()V
    .locals 1

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/work/impl/WorkContinuationImpl;->mEnqueued:Z

    .line 103
    return-void
.end method

.method public then(Ljava/util/List;)Lccsanandroidx/work/WorkContinuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroidx/work/OneTimeWorkRequest;",
            ">;)",
            "Lccsanandroidx/work/WorkContinuation;"
        }
    .end annotation

    .line 154
    .local p1, "work":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/OneTimeWorkRequest;>;"
    new-instance v6, Lccsanandroidx/work/impl/WorkContinuationImpl;

    iget-object v1, p0, Lccsanandroidx/work/impl/WorkContinuationImpl;->mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    iget-object v2, p0, Lccsanandroidx/work/impl/WorkContinuationImpl;->mName:Ljava/lang/String;

    sget-object v3, Lccsanandroidx/work/ExistingWorkPolicy;->KEEP:Lccsanandroidx/work/ExistingWorkPolicy;

    .line 158
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lccsanandroidx/work/impl/WorkContinuationImpl;-><init>(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Lccsanandroidx/work/ExistingWorkPolicy;Ljava/util/List;Ljava/util/List;)V

    .line 154
    return-object v6
.end method
