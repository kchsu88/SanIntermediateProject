.class Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;
.super Ljava/lang/Object;
.source "WorkTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WorkTimerRunnable"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "WrkTimerRunnable"


# instance fields
.field private final mWorkSpecId:Ljava/lang/String;

.field private final mWorkTimer:Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;


# direct methods
.method constructor <init>(Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;Ljava/lang/String;)V
    .locals 0
    .param p1, "workTimer"    # Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;
    .param p2, "workSpecId"    # Ljava/lang/String;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;->mWorkTimer:Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;

    .line 134
    iput-object p2, p0, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;->mWorkSpecId:Ljava/lang/String;

    .line 135
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 139
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;->mWorkTimer:Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;

    iget-object v0, v0, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;->mWorkTimer:Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;

    iget-object v1, v1, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;->mTimerMap:Ljava/util/Map;

    iget-object v2, p0, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;

    .line 141
    .local v1, "removed":Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;
    if-eqz v1, :cond_1

    .line 143
    iget-object v2, p0, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;->mWorkTimer:Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;

    iget-object v2, v2, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;->mListeners:Ljava/util/Map;

    iget-object v3, p0, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$TimeLimitExceededListener;

    .line 144
    .local v2, "listener":Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$TimeLimitExceededListener;
    if-eqz v2, :cond_0

    .line 145
    iget-object v3, p0, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$TimeLimitExceededListener;->onTimeLimitExceeded(Ljava/lang/String;)V

    .line 147
    .end local v2    # "listener":Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$TimeLimitExceededListener;
    :cond_0
    goto :goto_0

    .line 148
    :cond_1
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v2

    const-string v3, "WrkTimerRunnable"

    const-string v4, "Timer with %s is already marked as complete."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;->mWorkSpecId:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4, v5}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 151
    .end local v1    # "removed":Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;
    :goto_0
    monitor-exit v0

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
