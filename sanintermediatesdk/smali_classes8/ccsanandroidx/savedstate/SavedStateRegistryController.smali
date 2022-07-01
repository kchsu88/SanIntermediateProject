.class public final Lccsanandroidx/savedstate/SavedStateRegistryController;
.super Ljava/lang/Object;
.source "SavedStateRegistryController.java"


# instance fields
.field private final mOwner:Lccsanandroidx/savedstate/SavedStateRegistryOwner;

.field private final mRegistry:Lccsanandroidx/savedstate/SavedStateRegistry;


# direct methods
.method private constructor <init>(Lccsanandroidx/savedstate/SavedStateRegistryOwner;)V
    .locals 1
    .param p1, "owner"    # Lccsanandroidx/savedstate/SavedStateRegistryOwner;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lccsanandroidx/savedstate/SavedStateRegistryController;->mOwner:Lccsanandroidx/savedstate/SavedStateRegistryOwner;

    .line 38
    new-instance v0, Lccsanandroidx/savedstate/SavedStateRegistry;

    invoke-direct {v0}, Lccsanandroidx/savedstate/SavedStateRegistry;-><init>()V

    iput-object v0, p0, Lccsanandroidx/savedstate/SavedStateRegistryController;->mRegistry:Lccsanandroidx/savedstate/SavedStateRegistry;

    .line 39
    return-void
.end method

.method public static create(Lccsanandroidx/savedstate/SavedStateRegistryOwner;)Lccsanandroidx/savedstate/SavedStateRegistryController;
    .locals 1
    .param p0, "owner"    # Lccsanandroidx/savedstate/SavedStateRegistryOwner;

    .line 84
    new-instance v0, Lccsanandroidx/savedstate/SavedStateRegistryController;

    invoke-direct {v0, p0}, Lccsanandroidx/savedstate/SavedStateRegistryController;-><init>(Lccsanandroidx/savedstate/SavedStateRegistryOwner;)V

    return-object v0
.end method


# virtual methods
.method public getSavedStateRegistry()Lccsanandroidx/savedstate/SavedStateRegistry;
    .locals 1

    .line 46
    iget-object v0, p0, Lccsanandroidx/savedstate/SavedStateRegistryController;->mRegistry:Lccsanandroidx/savedstate/SavedStateRegistry;

    return-object v0
.end method

.method public performRestore(Lccsanandroid/os/Bundle;)V
    .locals 3
    .param p1, "savedState"    # Lccsanandroid/os/Bundle;

    .line 56
    iget-object v0, p0, Lccsanandroidx/savedstate/SavedStateRegistryController;->mOwner:Lccsanandroidx/savedstate/SavedStateRegistryOwner;

    invoke-interface {v0}, Lccsanandroidx/savedstate/SavedStateRegistryOwner;->getLifecycle()Lccsanandroidx/lifecycle/Lifecycle;

    move-result-object v0

    .line 57
    .local v0, "lifecycle":Lccsanandroidx/lifecycle/Lifecycle;
    invoke-virtual {v0}, Lccsanandroidx/lifecycle/Lifecycle;->getCurrentState()Lccsanandroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    sget-object v2, Lccsanandroidx/lifecycle/Lifecycle$State;->INITIALIZED:Lccsanandroidx/lifecycle/Lifecycle$State;

    if-ne v1, v2, :cond_0

    .line 61
    new-instance v1, Lccsanandroidx/savedstate/Recreator;

    iget-object v2, p0, Lccsanandroidx/savedstate/SavedStateRegistryController;->mOwner:Lccsanandroidx/savedstate/SavedStateRegistryOwner;

    invoke-direct {v1, v2}, Lccsanandroidx/savedstate/Recreator;-><init>(Lccsanandroidx/savedstate/SavedStateRegistryOwner;)V

    invoke-virtual {v0, v1}, Lccsanandroidx/lifecycle/Lifecycle;->addObserver(Lccsanandroidx/lifecycle/LifecycleObserver;)V

    .line 62
    iget-object v1, p0, Lccsanandroidx/savedstate/SavedStateRegistryController;->mRegistry:Lccsanandroidx/savedstate/SavedStateRegistry;

    invoke-virtual {v1, v0, p1}, Lccsanandroidx/savedstate/SavedStateRegistry;->performRestore(Lccsanandroidx/lifecycle/Lifecycle;Lccsanandroid/os/Bundle;)V

    .line 63
    return-void

    .line 58
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Restarter must be created only during owner\'s initialization stage"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public performSave(Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "outBundle"    # Lccsanandroid/os/Bundle;

    .line 74
    iget-object v0, p0, Lccsanandroidx/savedstate/SavedStateRegistryController;->mRegistry:Lccsanandroidx/savedstate/SavedStateRegistry;

    invoke-virtual {v0, p1}, Lccsanandroidx/savedstate/SavedStateRegistry;->performSave(Lccsanandroid/os/Bundle;)V

    .line 75
    return-void
.end method
