.class Lccsanandroidx/fragment/app/FragmentViewLifecycleOwner;
.super Ljava/lang/Object;
.source "FragmentViewLifecycleOwner.java"

# interfaces
.implements Lccsanandroidx/lifecycle/LifecycleOwner;


# instance fields
.field private mLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentViewLifecycleOwner;->mLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    return-void
.end method


# virtual methods
.method public getLifecycle()Lccsanandroidx/lifecycle/Lifecycle;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentViewLifecycleOwner;->initialize()V

    .line 47
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentViewLifecycleOwner;->mLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method handleLifecycleEvent(Lccsanandroidx/lifecycle/Lifecycle$Event;)V
    .locals 1
    .param p1, "event"    # Lccsanandroidx/lifecycle/Lifecycle$Event;

    .line 51
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentViewLifecycleOwner;->mLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v0, p1}, Lccsanandroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 52
    return-void
.end method

.method initialize()V
    .locals 1

    .line 31
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentViewLifecycleOwner;->mLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lccsanandroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Lccsanandroidx/lifecycle/LifecycleRegistry;-><init>(Lccsanandroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentViewLifecycleOwner;->mLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    .line 34
    :cond_0
    return-void
.end method

.method isInitialized()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentViewLifecycleOwner;->mLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
