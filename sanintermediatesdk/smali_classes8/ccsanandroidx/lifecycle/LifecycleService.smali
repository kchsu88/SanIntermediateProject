.class public Lccsanandroidx/lifecycle/LifecycleService;
.super Lccsanandroid/app/Service;
.source "LifecycleService.java"

# interfaces
.implements Lccsanandroidx/lifecycle/LifecycleOwner;


# instance fields
.field private final mDispatcher:Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lccsanandroid/app/Service;-><init>()V

    .line 31
    new-instance v0, Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher;

    invoke-direct {v0, p0}, Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher;-><init>(Lccsanandroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lccsanandroidx/lifecycle/LifecycleService;->mDispatcher:Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher;

    return-void
.end method


# virtual methods
.method public getLifecycle()Lccsanandroidx/lifecycle/Lifecycle;
    .locals 1

    .line 75
    iget-object v0, p0, Lccsanandroidx/lifecycle/LifecycleService;->mDispatcher:Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {v0}, Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher;->getLifecycle()Lccsanandroidx/lifecycle/Lifecycle;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Lccsanandroid/content/Intent;)Lccsanandroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Lccsanandroid/content/Intent;

    .line 44
    iget-object v0, p0, Lccsanandroidx/lifecycle/LifecycleService;->mDispatcher:Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {v0}, Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher;->onServicePreSuperOnBind()V

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .line 36
    iget-object v0, p0, Lccsanandroidx/lifecycle/LifecycleService;->mDispatcher:Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {v0}, Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher;->onServicePreSuperOnCreate()V

    .line 37
    invoke-super {p0}, Lccsanandroid/app/Service;->onCreate()V

    .line 38
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 69
    iget-object v0, p0, Lccsanandroidx/lifecycle/LifecycleService;->mDispatcher:Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {v0}, Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher;->onServicePreSuperOnDestroy()V

    .line 70
    invoke-super {p0}, Lccsanandroid/app/Service;->onDestroy()V

    .line 71
    return-void
.end method

.method public onStart(Lccsanandroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Lccsanandroid/content/Intent;
    .param p2, "startId"    # I

    .line 52
    iget-object v0, p0, Lccsanandroidx/lifecycle/LifecycleService;->mDispatcher:Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {v0}, Lccsanandroidx/lifecycle/ServiceLifecycleDispatcher;->onServicePreSuperOnStart()V

    .line 53
    invoke-super {p0, p1, p2}, Lccsanandroid/app/Service;->onStart(Lccsanandroid/content/Intent;I)V

    .line 54
    return-void
.end method

.method public onStartCommand(Lccsanandroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Lccsanandroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 63
    invoke-super {p0, p1, p2, p3}, Lccsanandroid/app/Service;->onStartCommand(Lccsanandroid/content/Intent;II)I

    move-result v0

    return v0
.end method
