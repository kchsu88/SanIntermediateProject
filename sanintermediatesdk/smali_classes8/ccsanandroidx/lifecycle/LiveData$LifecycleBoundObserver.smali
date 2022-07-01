.class Lccsanandroidx/lifecycle/LiveData$LifecycleBoundObserver;
.super Lccsanandroidx/lifecycle/LiveData$ObserverWrapper;
.source "LiveData.java"

# interfaces
.implements Lccsanandroidx/lifecycle/GenericLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LifecycleBoundObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/lifecycle/LiveData<",
        "TT;>.ObserverWrapper;",
        "Lccsanandroidx/lifecycle/GenericLifecycleObserver;"
    }
.end annotation


# instance fields
.field final mOwner:Lccsanandroidx/lifecycle/LifecycleOwner;

.field final synthetic this$0:Lccsanandroidx/lifecycle/LiveData;


# direct methods
.method constructor <init>(Lccsanandroidx/lifecycle/LiveData;Lccsanandroidx/lifecycle/LifecycleOwner;Lccsanandroidx/lifecycle/Observer;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/lifecycle/LiveData;
    .param p2, "owner"    # Lccsanandroidx/lifecycle/LifecycleOwner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/lifecycle/LifecycleOwner;",
            "Lccsanandroidx/lifecycle/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 360
    .local p0, "this":Lccsanandroidx/lifecycle/LiveData$LifecycleBoundObserver;, "Lccsanandroidx/lifecycle/LiveData<TT;>.LifecycleBoundObserver;"
    .local p3, "observer":Lccsanandroidx/lifecycle/Observer;, "Lccsanandroidx/lifecycle/Observer<-TT;>;"
    iput-object p1, p0, Lccsanandroidx/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Lccsanandroidx/lifecycle/LiveData;

    .line 361
    invoke-direct {p0, p1, p3}, Lccsanandroidx/lifecycle/LiveData$ObserverWrapper;-><init>(Lccsanandroidx/lifecycle/LiveData;Lccsanandroidx/lifecycle/Observer;)V

    .line 362
    iput-object p2, p0, Lccsanandroidx/lifecycle/LiveData$LifecycleBoundObserver;->mOwner:Lccsanandroidx/lifecycle/LifecycleOwner;

    .line 363
    return-void
.end method


# virtual methods
.method detachObserver()V
    .locals 1

    .line 386
    .local p0, "this":Lccsanandroidx/lifecycle/LiveData$LifecycleBoundObserver;, "Lccsanandroidx/lifecycle/LiveData<TT;>.LifecycleBoundObserver;"
    iget-object v0, p0, Lccsanandroidx/lifecycle/LiveData$LifecycleBoundObserver;->mOwner:Lccsanandroidx/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Lccsanandroidx/lifecycle/LifecycleOwner;->getLifecycle()Lccsanandroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsanandroidx/lifecycle/Lifecycle;->removeObserver(Lccsanandroidx/lifecycle/LifecycleObserver;)V

    .line 387
    return-void
.end method

.method isAttachedTo(Lccsanandroidx/lifecycle/LifecycleOwner;)Z
    .locals 1
    .param p1, "owner"    # Lccsanandroidx/lifecycle/LifecycleOwner;

    .line 381
    .local p0, "this":Lccsanandroidx/lifecycle/LiveData$LifecycleBoundObserver;, "Lccsanandroidx/lifecycle/LiveData<TT;>.LifecycleBoundObserver;"
    iget-object v0, p0, Lccsanandroidx/lifecycle/LiveData$LifecycleBoundObserver;->mOwner:Lccsanandroidx/lifecycle/LifecycleOwner;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onStateChanged(Lccsanandroidx/lifecycle/LifecycleOwner;Lccsanandroidx/lifecycle/Lifecycle$Event;)V
    .locals 2
    .param p1, "source"    # Lccsanandroidx/lifecycle/LifecycleOwner;
    .param p2, "event"    # Lccsanandroidx/lifecycle/Lifecycle$Event;

    .line 372
    .local p0, "this":Lccsanandroidx/lifecycle/LiveData$LifecycleBoundObserver;, "Lccsanandroidx/lifecycle/LiveData<TT;>.LifecycleBoundObserver;"
    iget-object v0, p0, Lccsanandroidx/lifecycle/LiveData$LifecycleBoundObserver;->mOwner:Lccsanandroidx/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Lccsanandroidx/lifecycle/LifecycleOwner;->getLifecycle()Lccsanandroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/lifecycle/Lifecycle;->getCurrentState()Lccsanandroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Lccsanandroidx/lifecycle/Lifecycle$State;->DESTROYED:Lccsanandroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    .line 373
    iget-object v0, p0, Lccsanandroidx/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Lccsanandroidx/lifecycle/LiveData;

    iget-object v1, p0, Lccsanandroidx/lifecycle/LiveData$LifecycleBoundObserver;->mObserver:Lccsanandroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Lccsanandroidx/lifecycle/LiveData;->removeObserver(Lccsanandroidx/lifecycle/Observer;)V

    .line 374
    return-void

    .line 376
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/lifecycle/LiveData$LifecycleBoundObserver;->shouldBeActive()Z

    move-result v0

    invoke-virtual {p0, v0}, Lccsanandroidx/lifecycle/LiveData$LifecycleBoundObserver;->activeStateChanged(Z)V

    .line 377
    return-void
.end method

.method shouldBeActive()Z
    .locals 2

    .line 367
    .local p0, "this":Lccsanandroidx/lifecycle/LiveData$LifecycleBoundObserver;, "Lccsanandroidx/lifecycle/LiveData<TT;>.LifecycleBoundObserver;"
    iget-object v0, p0, Lccsanandroidx/lifecycle/LiveData$LifecycleBoundObserver;->mOwner:Lccsanandroidx/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Lccsanandroidx/lifecycle/LifecycleOwner;->getLifecycle()Lccsanandroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/lifecycle/Lifecycle;->getCurrentState()Lccsanandroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Lccsanandroidx/lifecycle/Lifecycle$State;->STARTED:Lccsanandroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Lccsanandroidx/lifecycle/Lifecycle$State;->isAtLeast(Lccsanandroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    return v0
.end method
