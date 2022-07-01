.class public interface abstract Lccsancom/google/common/util/concurrent/Service;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/util/concurrent/Service$Listener;,
        Lccsancom/google/common/util/concurrent/Service$State;
    }
.end annotation


# virtual methods
.method public abstract addListener(Lccsancom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V
.end method

.method public abstract awaitRunning()V
.end method

.method public abstract awaitRunning(JLjava/util/concurrent/TimeUnit;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation
.end method

.method public abstract awaitTerminated()V
.end method

.method public abstract awaitTerminated(JLjava/util/concurrent/TimeUnit;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation
.end method

.method public abstract failureCause()Ljava/lang/Throwable;
.end method

.method public abstract isRunning()Z
.end method

.method public abstract startAsync()Lccsancom/google/common/util/concurrent/Service;
.end method

.method public abstract state()Lccsancom/google/common/util/concurrent/Service$State;
.end method

.method public abstract stopAsync()Lccsancom/google/common/util/concurrent/Service;
.end method
