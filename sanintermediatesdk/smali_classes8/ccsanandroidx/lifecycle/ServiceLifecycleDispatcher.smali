.class public Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher;
.super Ljava/lang/Object;
.source "ServiceLifecycleDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;
    }
.end annotation


# instance fields
.field private final mHandler:Lccsanandroid/os/Handler;

.field private mLastDispatchRunnable:Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;

.field private final mRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;


# direct methods
.method public constructor <init>(Lccsanandroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1, "provider"    # Lccsanandroidx/lifecycle/LifecycleOwner;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lccsanandroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p1}, Lccsanandroidx/lifecycle/LifecycleRegistry;-><init>(Lccsanandroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher;->mRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    .line 40
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-direct {v0}, Lccsanandroid/os/Handler;-><init>()V

    iput-object v0, p0, Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher;->mHandler:Lccsanandroid/os/Handler;

    .line 41
    return-void
.end method

.method private postDispatchRunnable(Lccsanandroidx/lifecycle/Lifecycle$Event;)V
    .locals 2
    .param p1, "event"    # Lccsanandroidx/lifecycle/Lifecycle$Event;

    .line 44
    iget-object v0, p0, Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher;->mLastDispatchRunnable:Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->run()V

    .line 47
    :cond_0
    new-instance v0, Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;

    iget-object v1, p0, Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher;->mRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, v1, p1}, Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;-><init>(Lccsanandroidx/lifecycle/LifecycleRegistry;Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    iput-object v0, p0, Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher;->mLastDispatchRunnable:Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;

    .line 48
    iget-object v1, p0, Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher;->mHandler:Lccsanandroid/os/Handler;

    invoke-virtual {v1, v0}, Lccsanandroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 49
    return-void
.end method


# virtual methods
.method public getLifecycle()Lccsanandroidx/lifecycle/Lifecycle;
    .locals 1

    .line 88
    iget-object v0, p0, Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher;->mRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method public onServicePreSuperOnBind()V
    .locals 1

    .line 63
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_START:Lccsanandroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 64
    return-void
.end method

.method public onServicePreSuperOnCreate()V
    .locals 1

    .line 55
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Lccsanandroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 56
    return-void
.end method

.method public onServicePreSuperOnDestroy()V
    .locals 1

    .line 80
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_STOP:Lccsanandroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 81
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Lccsanandroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 82
    return-void
.end method

.method public onServicePreSuperOnStart()V
    .locals 1

    .line 72
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_START:Lccsanandroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 73
    return-void
.end method
