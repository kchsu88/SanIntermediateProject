.class final Lccsanandroidx/work/impl/utils/CancelWorkRunnable$4;
.super Lccsanandroidx/work/impl/utils/CancelWorkRunnable;
.source "CancelWorkRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/work/impl/utils/CancelWorkRunnable;->forAll(Lccsanandroidx/work/impl/WorkManagerImpl;)Lccsanandroidx/work/impl/utils/CancelWorkRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$workManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;


# direct methods
.method constructor <init>(Lccsanandroidx/work/impl/WorkManagerImpl;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lccsanandroidx/work/impl/utils/CancelWorkRunnable$4;->val$workManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-direct {p0}, Lccsanandroidx/work/impl/utils/CancelWorkRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method runInternal()V
    .locals 6

    .line 210
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/CancelWorkRunnable$4;->val$workManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Lccsanandroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 211
    .local v0, "workDatabase":Lccsanandroidx/work/impl/WorkDatabase;
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 213
    :try_start_0
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->workSpecDao()Lccsanandroidx/work/impl/model/WorkSpecDao;

    move-result-object v1

    .line 214
    .local v1, "workSpecDao":Lccsanandroidx/work/impl/model/WorkSpecDao;
    invoke-interface {v1}, Lccsanandroidx/work/impl/model/WorkSpecDao;->getAllUnfinishedWork()Ljava/util/List;

    move-result-object v2

    .line 215
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

    .line 216
    .local v4, "workSpecId":Ljava/lang/String;
    iget-object v5, p0, Lccsanandroidx/work/impl/utils/CancelWorkRunnable$4;->val$workManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {p0, v5, v4}, Lccsanandroidx/work/impl/utils/CancelWorkRunnable$4;->cancel(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    .line 217
    .end local v4    # "workSpecId":Ljava/lang/String;
    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V

    .line 220
    new-instance v3, Lccsanandroidx/work/impl/utils/Preferences;

    iget-object v4, p0, Lccsanandroidx/work/impl/utils/CancelWorkRunnable$4;->val$workManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v4}, Lccsanandroidx/work/impl/WorkManagerImpl;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lccsanandroidx/work/impl/utils/Preferences;-><init>(Lccsanandroid/content/Context;)V

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lccsanandroidx/work/impl/utils/Preferences;->setLastCancelAllTimeMillis(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    .end local v1    # "workSpecDao":Lccsanandroidx/work/impl/model/WorkSpecDao;
    .end local v2    # "workSpecIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 224
    nop

    .line 226
    return-void

    .line 223
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 224
    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
