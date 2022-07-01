.class public interface abstract Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;
.super Ljava/lang/Object;
.source "TaskExecutor.java"


# virtual methods
.method public abstract executeOnBackgroundThread(Ljava/lang/Runnable;)V
.end method

.method public abstract getBackgroundExecutor()Lccsanandroidx/work/impl/utils/SerialExecutor;
.end method

.method public abstract getMainThreadExecutor()Ljava/util/concurrent/Executor;
.end method

.method public abstract postToMainThread(Ljava/lang/Runnable;)V
.end method
