.class final Lccsanandroidx/work/impl/utils/CancelWorkRunnable$1;
.super Lccsanandroidx/work/impl/utils/CancelWorkRunnable;
.source "CancelWorkRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/work/impl/utils/CancelWorkRunnable;->forId(Ljava/util/UUID;Lccsanandroidx/work/impl/WorkManagerImpl;)Lccsanandroidx/work/impl/utils/CancelWorkRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$id:Ljava/util/UUID;

.field final synthetic val$workManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;


# direct methods
.method constructor <init>(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/util/UUID;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lccsanandroidx/work/impl/utils/CancelWorkRunnable$1;->val$workManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    iput-object p2, p0, Lccsanandroidx/work/impl/utils/CancelWorkRunnable$1;->val$id:Ljava/util/UUID;

    invoke-direct {p0}, Lccsanandroidx/work/impl/utils/CancelWorkRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method runInternal()V
    .locals 3

    .line 119
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/CancelWorkRunnable$1;->val$workManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Lccsanandroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 120
    .local v0, "workDatabase":Lccsanandroidx/work/impl/WorkDatabase;
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 122
    :try_start_0
    iget-object v1, p0, Lccsanandroidx/work/impl/utils/CancelWorkRunnable$1;->val$workManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    iget-object v2, p0, Lccsanandroidx/work/impl/utils/CancelWorkRunnable$1;->val$id:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lccsanandroidx/work/impl/utils/CancelWorkRunnable$1;->cancel(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 126
    nop

    .line 127
    iget-object v1, p0, Lccsanandroidx/work/impl/utils/CancelWorkRunnable$1;->val$workManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {p0, v1}, Lccsanandroidx/work/impl/utils/CancelWorkRunnable$1;->reschedulePendingWorkers(Lccsanandroidx/work/impl/WorkManagerImpl;)V

    .line 128
    return-void

    .line 125
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 126
    throw v1
.end method
