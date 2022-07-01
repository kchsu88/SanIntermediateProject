.class Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;
.super Ljava/lang/Object;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/lifecycle/LifecycleRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObserverWithState"
.end annotation


# instance fields
.field mLifecycleObserver:Lccsanandroidx/lifecycle/LifecycleEventObserver;

.field mState:Lccsanandroidx/lifecycle/Lifecycle$State;


# direct methods
.method constructor <init>(Lccsanandroidx/lifecycle/LifecycleObserver;Lccsanandroidx/lifecycle/Lifecycle$State;)V
    .locals 1
    .param p1, "observer"    # Lccsanandroidx/lifecycle/LifecycleObserver;
    .param p2, "initialState"    # Lccsanandroidx/lifecycle/Lifecycle$State;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    invoke-static {p1}, Lccsanandroidx/lifecycle/Lifecycling;->lifecycleEventObserver(Ljava/lang/Object;)Lccsanandroidx/lifecycle/LifecycleEventObserver;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mLifecycleObserver:Lccsanandroidx/lifecycle/LifecycleEventObserver;

    .line 355
    iput-object p2, p0, Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lccsanandroidx/lifecycle/Lifecycle$State;

    .line 356
    return-void
.end method


# virtual methods
.method dispatchEvent(Lccsanandroidx/lifecycle/LifecycleOwner;Lccsanandroidx/lifecycle/Lifecycle$Event;)V
    .locals 2
    .param p1, "owner"    # Lccsanandroidx/lifecycle/LifecycleOwner;
    .param p2, "event"    # Lccsanandroidx/lifecycle/Lifecycle$Event;

    .line 359
    invoke-static {p2}, Lccsanandroidx/lifecycle/LifecycleRegistry;->getStateAfter(Lccsanandroidx/lifecycle/Lifecycle$Event;)Lccsanandroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    .line 360
    .local v0, "newState":Lccsanandroidx/lifecycle/Lifecycle$State;
    iget-object v1, p0, Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lccsanandroidx/lifecycle/Lifecycle$State;

    invoke-static {v1, v0}, Lccsanandroidx/lifecycle/LifecycleRegistry;->min(Lccsanandroidx/lifecycle/Lifecycle$State;Lccsanandroidx/lifecycle/Lifecycle$State;)Lccsanandroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    iput-object v1, p0, Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lccsanandroidx/lifecycle/Lifecycle$State;

    .line 361
    iget-object v1, p0, Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mLifecycleObserver:Lccsanandroidx/lifecycle/LifecycleEventObserver;

    invoke-interface {v1, p1, p2}, Lccsanandroidx/lifecycle/LifecycleEventObserver;->onStateChanged(Lccsanandroidx/lifecycle/LifecycleOwner;Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 362
    iput-object v0, p0, Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lccsanandroidx/lifecycle/Lifecycle$State;

    .line 363
    return-void
.end method
