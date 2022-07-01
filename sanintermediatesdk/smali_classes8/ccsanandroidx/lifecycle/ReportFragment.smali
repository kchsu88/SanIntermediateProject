.class public Lccsanandroidx/lifecycle/ReportFragment;
.super Lccsanandroid/app/Fragment;
.source "ReportFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/lifecycle/ReportFragment$ActivityInitializationListener;
    }
.end annotation


# static fields
.field private static final REPORT_FRAGMENT_TAG:Ljava/lang/String; = "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"


# instance fields
.field private mProcessListener:Lccsanandroidx/lifecycle/ReportFragment$ActivityInitializationListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lccsanandroid/app/Fragment;-><init>()V

    return-void
.end method

.method private dispatch(Lccsanandroidx/lifecycle/Lifecycle$Event;)V
    .locals 3
    .param p1, "event"    # Lccsanandroidx/lifecycle/Lifecycle$Event;

    .line 114
    invoke-virtual {p0}, Lccsanandroidx/lifecycle/ReportFragment;->getActivity()Lccsanandroid/app/Activity;

    move-result-object v0

    .line 115
    .local v0, "activity":Lccsanandroid/app/Activity;
    instance-of v1, v0, Lccsanandroidx/lifecycle/LifecycleRegistryOwner;

    if-eqz v1, :cond_0

    .line 116
    move-object v1, v0

    check-cast v1, Lccsanandroidx/lifecycle/LifecycleRegistryOwner;

    invoke-interface {v1}, Lccsanandroidx/lifecycle/LifecycleRegistryOwner;->getLifecycle()Lccsanandroidx/lifecycle/LifecycleRegistry;

    move-result-object v1

    invoke-virtual {v1, p1}, Lccsanandroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 117
    return-void

    .line 120
    :cond_0
    instance-of v1, v0, Lccsanandroidx/lifecycle/LifecycleOwner;

    if-eqz v1, :cond_1

    .line 121
    move-object v1, v0

    check-cast v1, Lccsanandroidx/lifecycle/LifecycleOwner;

    invoke-interface {v1}, Lccsanandroidx/lifecycle/LifecycleOwner;->getLifecycle()Lccsanandroidx/lifecycle/Lifecycle;

    move-result-object v1

    .line 122
    .local v1, "lifecycle":Lccsanandroidx/lifecycle/Lifecycle;
    instance-of v2, v1, Lccsanandroidx/lifecycle/LifecycleRegistry;

    if-eqz v2, :cond_1

    .line 123
    move-object v2, v1

    check-cast v2, Lccsanandroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v2, p1}, Lccsanandroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 126
    .end local v1    # "lifecycle":Lccsanandroidx/lifecycle/Lifecycle;
    :cond_1
    return-void
.end method

.method private dispatchCreate(Lccsanandroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .locals 0
    .param p1, "listener"    # Lccsanandroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 55
    if-eqz p1, :cond_0

    .line 56
    invoke-interface {p1}, Lccsanandroidx/lifecycle/ReportFragment$ActivityInitializationListener;->onCreate()V

    .line 58
    :cond_0
    return-void
.end method

.method private dispatchResume(Lccsanandroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .locals 0
    .param p1, "listener"    # Lccsanandroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 67
    if-eqz p1, :cond_0

    .line 68
    invoke-interface {p1}, Lccsanandroidx/lifecycle/ReportFragment$ActivityInitializationListener;->onResume()V

    .line 70
    :cond_0
    return-void
.end method

.method private dispatchStart(Lccsanandroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .locals 0
    .param p1, "listener"    # Lccsanandroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 61
    if-eqz p1, :cond_0

    .line 62
    invoke-interface {p1}, Lccsanandroidx/lifecycle/ReportFragment$ActivityInitializationListener;->onStart()V

    .line 64
    :cond_0
    return-void
.end method

.method static get(Lccsanandroid/app/Activity;)Lccsanandroidx/lifecycle/ReportFragment;
    .locals 2
    .param p0, "activity"    # Lccsanandroid/app/Activity;

    .line 48
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getFragmentManager()Lccsanandroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {v0, v1}, Lccsanandroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Lccsanandroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lccsanandroidx/lifecycle/ReportFragment;

    return-object v0
.end method

.method public static injectIfNeededIn(Lccsanandroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Lccsanandroid/app/Activity;

    .line 39
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getFragmentManager()Lccsanandroid/app/FragmentManager;

    move-result-object v0

    .line 40
    .local v0, "manager":Lccsanandroid/app/FragmentManager;
    const-string v1, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {v0, v1}, Lccsanandroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Lccsanandroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 41
    invoke-virtual {v0}, Lccsanandroid/app/FragmentManager;->beginTransaction()Lccsanandroid/app/FragmentTransaction;

    move-result-object v2

    new-instance v3, Lccsanandroidx/lifecycle/ReportFragment;

    invoke-direct {v3}, Lccsanandroidx/lifecycle/ReportFragment;-><init>()V

    invoke-virtual {v2, v3, v1}, Lccsanandroid/app/FragmentTransaction;->add(Lccsanandroid/app/Fragment;Ljava/lang/String;)Lccsanandroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/app/FragmentTransaction;->commit()I

    .line 43
    invoke-virtual {v0}, Lccsanandroid/app/FragmentManager;->executePendingTransactions()Z

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 74
    invoke-super {p0, p1}, Lccsanandroid/app/Fragment;->onActivityCreated(Lccsanandroid/os/Bundle;)V

    .line 75
    iget-object v0, p0, Lccsanandroidx/lifecycle/ReportFragment;->mProcessListener:Lccsanandroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    invoke-direct {p0, v0}, Lccsanandroidx/lifecycle/ReportFragment;->dispatchCreate(Lccsanandroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V

    .line 76
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Lccsanandroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Lccsanandroidx/lifecycle/ReportFragment;->dispatch(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 77
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 107
    invoke-super {p0}, Lccsanandroid/app/Fragment;->onDestroy()V

    .line 108
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Lccsanandroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Lccsanandroidx/lifecycle/ReportFragment;->dispatch(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/lifecycle/ReportFragment;->mProcessListener:Lccsanandroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 111
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 95
    invoke-super {p0}, Lccsanandroid/app/Fragment;->onPause()V

    .line 96
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Lccsanandroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Lccsanandroidx/lifecycle/ReportFragment;->dispatch(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 97
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 88
    invoke-super {p0}, Lccsanandroid/app/Fragment;->onResume()V

    .line 89
    iget-object v0, p0, Lccsanandroidx/lifecycle/ReportFragment;->mProcessListener:Lccsanandroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    invoke-direct {p0, v0}, Lccsanandroidx/lifecycle/ReportFragment;->dispatchResume(Lccsanandroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V

    .line 90
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Lccsanandroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Lccsanandroidx/lifecycle/ReportFragment;->dispatch(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 91
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 81
    invoke-super {p0}, Lccsanandroid/app/Fragment;->onStart()V

    .line 82
    iget-object v0, p0, Lccsanandroidx/lifecycle/ReportFragment;->mProcessListener:Lccsanandroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    invoke-direct {p0, v0}, Lccsanandroidx/lifecycle/ReportFragment;->dispatchStart(Lccsanandroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V

    .line 83
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_START:Lccsanandroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Lccsanandroidx/lifecycle/ReportFragment;->dispatch(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 84
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 101
    invoke-super {p0}, Lccsanandroid/app/Fragment;->onStop()V

    .line 102
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_STOP:Lccsanandroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Lccsanandroidx/lifecycle/ReportFragment;->dispatch(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 103
    return-void
.end method

.method setProcessListener(Lccsanandroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .locals 0
    .param p1, "processListener"    # Lccsanandroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 129
    iput-object p1, p0, Lccsanandroidx/lifecycle/ReportFragment;->mProcessListener:Lccsanandroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 130
    return-void
.end method
