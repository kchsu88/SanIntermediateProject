.class final Lccsanandroidx/work/impl/utils/CancelWorkRunnable$3;
.super Lccsanandroidx/work/impl/utils/CancelWorkRunnable;
.source "CancelWorkRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/work/impl/utils/CancelWorkRunnable;->forName(Ljava/lang/String;Lccsanandroidx/work/impl/WorkManagerImpl;Z)Lccsanandroidx/work/impl/utils/CancelWorkRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$allowReschedule:Z

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$workManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;


# direct methods
.method constructor <init>(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Z)V
    .locals 0

    .line 175
    iput-object p1, p0, Lccsanandroidx/work/impl/utils/CancelWorkRunnable$3;->val$workManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    iput-object p2, p0, Lccsanandroidx/work/impl/utils/CancelWorkRunnable$3;->val$name:Ljava/lang/String;

    iput-boolean p3, p0, Lccsanandroidx/work/impl/utils/CancelWorkRunnable$3;->val$allowReschedule:Z

    invoke-direct {p0}, Lccsanandroidx/work/impl/utils/CancelWorkRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method runInternal()V
    .locals 6

    .line 179
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/CancelWorkRunnable$3;->val$workManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Lccsanandroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 180
    .local v0, "workDatabase":Lccsanandroidx/work/impl/WorkDatabase;
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 182
    :try_start_0
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->workSpecDao()Lccsanandroidx/work/impl/model/WorkSpecDao;

    move-result-object v1

    .line 183
    .local v1, "workSpecDao":Lccsanandroidx/work/impl/model/WorkSpecDao;
    iget-object v2, p0, Lccsanandroidx/work/impl/utils/CancelWorkRunnable$3;->val$name:Ljava/lang/String;

    invoke-interface {v1, v2}, Lccsanandroidx/work/impl/model/WorkSpecDao;->getUnfinishedWorkWithName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 184
    .local v2, "workSpecIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 185
    .local v4, "workSpecId":Ljava/lang/String;
    iget-object v5, p0, Lccsanandroidx/work/impl/utils/CancelWorkRunnable$3;->val$workManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {p0, v5, v4}, Lccsanandroidx/work/impl/utils/CancelWorkRunnable$3;->cancel(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    .line 186
    .end local v4    # "workSpecId":Ljava/lang/String;
    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    .end local v1    # "workSpecDao":Lccsanandroidx/work/impl/model/WorkSpecDao;
    .end local v2    # "workSpecIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 190
    nop

    .line 192
    iget-boolean v1, p0, Lccsanandroidx/work/impl/utils/CancelWorkRunnable$3;->val$allowReschedule:Z

    if-eqz v1, :cond_1

    .line 193
    iget-object v1, p0, Lccsanandroidx/work/impl/utils/CancelWorkRunnable$3;->val$workManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {p0, v1}, Lccsanandroidx/work/impl/utils/CancelWorkRunnable$3;->reschedulePendingWorkers(Lccsanandroidx/work/impl/WorkManagerImpl;)V

    .line 195
    :cond_1
    return-void

    .line 189
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 190
    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
