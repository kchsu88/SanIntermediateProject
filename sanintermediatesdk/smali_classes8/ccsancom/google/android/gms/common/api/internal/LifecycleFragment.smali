.class public interface abstract Lccsancom/google/android/gms/common/api/internal/LifecycleFragment;
.super Ljava/lang/Object;


# virtual methods
.method public abstract addCallback(Ljava/lang/String;Lccsancom/google/android/gms/common/api/internal/LifecycleCallback;)V
.end method

.method public abstract getCallbackOrNull(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/google/android/gms/common/api/internal/LifecycleCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lccsancom/google/android/gms/common/api/internal/LifecycleCallback;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getLifecycleActivity()Lccsanandroid/app/Activity;
.end method

.method public abstract isCreated()Z
.end method

.method public abstract isStarted()Z
.end method

.method public abstract startActivityForResult(Lccsanandroid/content/Intent;I)V
.end method
