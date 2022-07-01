.class Lccsanandroidx/work/impl/background/systemalarm/ConstraintsCommandHandler;
.super Ljava/lang/Object;
.source "ConstraintsCommandHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Lccsanandroid/content/Context;

.field private final mDispatcher:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

.field private final mStartId:I

.field private final mWorkConstraintsTracker:Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-string v0, "ConstraintsCmdHandler"

    invoke-static {v0}, Lccsanandroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/impl/background/systemalarm/ConstraintsCommandHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lccsanandroid/content/Context;ILccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "startId"    # I
    .param p3, "dispatcher"    # Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lccsanandroidx/work/impl/background/systemalarm/ConstraintsCommandHandler;->mContext:Lccsanandroid/content/Context;

    .line 55
    iput p2, p0, Lccsanandroidx/work/impl/background/systemalarm/ConstraintsCommandHandler;->mStartId:I

    .line 56
    iput-object p3, p0, Lccsanandroidx/work/impl/background/systemalarm/ConstraintsCommandHandler;->mDispatcher:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 57
    invoke-virtual {p3}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->getTaskExecutor()Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v0

    .line 58
    .local v0, "taskExecutor":Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;
    new-instance v1, Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;Lccsanandroidx/work/impl/constraints/WorkConstraintsCallback;)V

    iput-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/ConstraintsCommandHandler;->mWorkConstraintsTracker:Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;

    .line 59
    return-void
.end method


# virtual methods
.method handleConstraintsChanged()V
    .locals 13

    .line 63
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/ConstraintsCommandHandler;->mDispatcher:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->getWorkManager()Lccsanandroidx/work/impl/WorkManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Lccsanandroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->workSpecDao()Lccsanandroidx/work/impl/model/WorkSpecDao;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Lccsanandroidx/work/impl/model/WorkSpecDao;->getScheduledWork()Ljava/util/List;

    move-result-object v0

    .line 69
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec;>;"
    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/ConstraintsCommandHandler;->mContext:Lccsanandroid/content/Context;

    invoke-static {v1, v0}, Lccsanandroidx/work/impl/background/systemalarm/ConstraintProxy;->updateAll(Lccsanandroid/content/Context;Ljava/util/List;)V

    .line 72
    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/ConstraintsCommandHandler;->mWorkConstraintsTracker:Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;

    invoke-virtual {v1, v0}, Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;->replace(Ljava/util/List;)V

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    .local v1, "eligibleWorkSpecs":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 77
    .local v2, "now":J
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsanandroidx/work/impl/model/WorkSpec;

    .line 78
    .local v5, "workSpec":Lccsanandroidx/work/impl/model/WorkSpec;
    iget-object v6, v5, Lccsanandroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 79
    .local v6, "workSpecId":Ljava/lang/String;
    invoke-virtual {v5}, Lccsanandroidx/work/impl/model/WorkSpec;->calculateNextRunTime()J

    move-result-wide v7

    .line 80
    .local v7, "triggerAt":J
    cmp-long v9, v2, v7

    if-ltz v9, :cond_1

    invoke-virtual {v5}, Lccsanandroidx/work/impl/model/WorkSpec;->hasConstraints()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lccsanandroidx/work/impl/background/systemalarm/ConstraintsCommandHandler;->mWorkConstraintsTracker:Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;

    .line 81
    invoke-virtual {v9, v6}, Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;->areAllConstraintsMet(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 82
    :cond_0
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v5    # "workSpec":Lccsanandroidx/work/impl/model/WorkSpec;
    .end local v6    # "workSpecId":Ljava/lang/String;
    .end local v7    # "triggerAt":J
    :cond_1
    goto :goto_0

    .line 86
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsanandroidx/work/impl/model/WorkSpec;

    .line 87
    .restart local v5    # "workSpec":Lccsanandroidx/work/impl/model/WorkSpec;
    iget-object v6, v5, Lccsanandroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 88
    .restart local v6    # "workSpecId":Ljava/lang/String;
    iget-object v7, p0, Lccsanandroidx/work/impl/background/systemalarm/ConstraintsCommandHandler;->mContext:Lccsanandroid/content/Context;

    invoke-static {v7, v6}, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->createDelayMetIntent(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object v7

    .line 89
    .local v7, "intent":Lccsanandroid/content/Intent;
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v8

    sget-object v9, Lccsanandroidx/work/impl/background/systemalarm/ConstraintsCommandHandler;->TAG:Ljava/lang/String;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const-string v12, "Creating a delay_met command for workSpec with id (%s)"

    invoke-static {v12, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-array v11, v11, [Ljava/lang/Throwable;

    invoke-virtual {v8, v9, v10, v11}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 91
    iget-object v8, p0, Lccsanandroidx/work/impl/background/systemalarm/ConstraintsCommandHandler;->mDispatcher:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    new-instance v9, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;

    iget v10, p0, Lccsanandroidx/work/impl/background/systemalarm/ConstraintsCommandHandler;->mStartId:I

    invoke-direct {v9, v8, v7, v10}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;-><init>(Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;Lccsanandroid/content/Intent;I)V

    invoke-virtual {v8, v9}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 93
    .end local v5    # "workSpec":Lccsanandroidx/work/impl/model/WorkSpec;
    .end local v6    # "workSpecId":Ljava/lang/String;
    .end local v7    # "intent":Lccsanandroid/content/Intent;
    goto :goto_1

    .line 95
    :cond_3
    iget-object v4, p0, Lccsanandroidx/work/impl/background/systemalarm/ConstraintsCommandHandler;->mWorkConstraintsTracker:Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;

    invoke-virtual {v4}, Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;->reset()V

    .line 96
    return-void
.end method
