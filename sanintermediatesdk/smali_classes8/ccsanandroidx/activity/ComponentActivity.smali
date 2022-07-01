.class public Lccsanandroidx/activity/ComponentActivity;
.super Lccsanandroidx/core/app/ComponentActivity;
.source "ComponentActivity.java"

# interfaces
.implements Lccsanandroidx/lifecycle/LifecycleOwner;
.implements Lccsanandroidx/lifecycle/ViewModelStoreOwner;
.implements Lccsanandroidx/savedstate/SavedStateRegistryOwner;
.implements Lccsanandroidx/activity/OnBackPressedDispatcherOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/activity/ComponentActivity$NonConfigurationInstances;
    }
.end annotation


# instance fields
.field private mContentLayoutId:I

.field private final mLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

.field private final mOnBackPressedDispatcher:Lccsanandroidx/activity/OnBackPressedDispatcher;

.field private final mSavedStateRegistryController:Lccsanandroidx/savedstate/SavedStateRegistryController;

.field private mViewModelStore:Lccsanandroidx/lifecycle/ViewModelStore;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 84
    invoke-direct {p0}, Lccsanandroidx/core/app/ComponentActivity;-><init>()V

    .line 61
    new-instance v0, Lccsanandroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Lccsanandroidx/lifecycle/LifecycleRegistry;-><init>(Lccsanandroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lccsanandroidx/activity/ComponentActivity;->mLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    .line 62
    nop

    .line 63
    invoke-static {p0}, Lccsanandroidx/savedstate/SavedStateRegistryController;->create(Lccsanandroidx/savedstate/SavedStateRegistryOwner;)Lccsanandroidx/savedstate/SavedStateRegistryController;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/activity/ComponentActivity;->mSavedStateRegistryController:Lccsanandroidx/savedstate/SavedStateRegistryController;

    .line 68
    new-instance v0, Lccsanandroidx/activity/OnBackPressedDispatcher;

    new-instance v1, Lccsanandroidx/activity/ComponentActivity$1;

    invoke-direct {v1, p0}, Lccsanandroidx/activity/ComponentActivity$1;-><init>(Lccsanandroidx/activity/ComponentActivity;)V

    invoke-direct {v0, v1}, Lccsanandroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lccsanandroidx/activity/ComponentActivity;->mOnBackPressedDispatcher:Lccsanandroidx/activity/OnBackPressedDispatcher;

    .line 85
    invoke-virtual {p0}, Lccsanandroidx/activity/ComponentActivity;->getLifecycle()Lccsanandroidx/lifecycle/Lifecycle;

    move-result-object v0

    .line 87
    .local v0, "lifecycle":Lccsanandroidx/lifecycle/Lifecycle;
    if-eqz v0, :cond_2

    .line 93
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 94
    invoke-virtual {p0}, Lccsanandroidx/activity/ComponentActivity;->getLifecycle()Lccsanandroidx/lifecycle/Lifecycle;

    move-result-object v1

    new-instance v3, Lccsanandroidx/activity/ComponentActivity$2;

    invoke-direct {v3, p0}, Lccsanandroidx/activity/ComponentActivity$2;-><init>(Lccsanandroidx/activity/ComponentActivity;)V

    invoke-virtual {v1, v3}, Lccsanandroidx/lifecycle/Lifecycle;->addObserver(Lccsanandroidx/lifecycle/LifecycleObserver;)V

    .line 108
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/activity/ComponentActivity;->getLifecycle()Lccsanandroidx/lifecycle/Lifecycle;

    move-result-object v1

    new-instance v3, Lccsanandroidx/activity/ComponentActivity$3;

    invoke-direct {v3, p0}, Lccsanandroidx/activity/ComponentActivity$3;-><init>(Lccsanandroidx/activity/ComponentActivity;)V

    invoke-virtual {v1, v3}, Lccsanandroidx/lifecycle/Lifecycle;->addObserver(Lccsanandroidx/lifecycle/LifecycleObserver;)V

    .line 120
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-gt v2, v1, :cond_1

    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-gt v1, v2, :cond_1

    .line 121
    invoke-virtual {p0}, Lccsanandroidx/activity/ComponentActivity;->getLifecycle()Lccsanandroidx/lifecycle/Lifecycle;

    move-result-object v1

    new-instance v2, Lccsanandroidx/activity/ImmLeaksCleaner;

    invoke-direct {v2, p0}, Lccsanandroidx/activity/ImmLeaksCleaner;-><init>(Lccsanandroid/app/Activity;)V

    invoke-virtual {v1, v2}, Lccsanandroidx/lifecycle/Lifecycle;->addObserver(Lccsanandroidx/lifecycle/LifecycleObserver;)V

    .line 123
    :cond_1
    return-void

    .line 88
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getLifecycle() returned null in ComponentActivity\'s constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "contentLayoutId"    # I

    .line 137
    invoke-direct {p0}, Lccsanandroidx/activity/ComponentActivity;-><init>()V

    .line 138
    iput p1, p0, Lccsanandroidx/activity/ComponentActivity;->mContentLayoutId:I

    .line 139
    return-void
.end method

.method static synthetic access$001(Lccsanandroidx/activity/ComponentActivity;)V
    .locals 0
    .param p0, "x0"    # Lccsanandroidx/activity/ComponentActivity;

    .line 50
    invoke-super {p0}, Lccsanandroidx/core/app/ComponentActivity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 220
    nop

    .line 221
    invoke-virtual {p0}, Lccsanandroidx/activity/ComponentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/activity/ComponentActivity$NonConfigurationInstances;

    .line 222
    .local v0, "nc":Lccsanandroidx/activity/ComponentActivity$NonConfigurationInstances;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lccsanandroidx/activity/ComponentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getLifecycle()Lccsanandroidx/lifecycle/Lifecycle;
    .locals 1

    .line 241
    iget-object v0, p0, Lccsanandroidx/activity/ComponentActivity;->mLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method public final getOnBackPressedDispatcher()Lccsanandroidx/activity/OnBackPressedDispatcher;
    .locals 1

    .line 297
    iget-object v0, p0, Lccsanandroidx/activity/ComponentActivity;->mOnBackPressedDispatcher:Lccsanandroidx/activity/OnBackPressedDispatcher;

    return-object v0
.end method

.method public final getSavedStateRegistry()Lccsanandroidx/savedstate/SavedStateRegistry;
    .locals 1

    .line 303
    iget-object v0, p0, Lccsanandroidx/activity/ComponentActivity;->mSavedStateRegistryController:Lccsanandroidx/savedstate/SavedStateRegistryController;

    invoke-virtual {v0}, Lccsanandroidx/savedstate/SavedStateRegistryController;->getSavedStateRegistry()Lccsanandroidx/savedstate/SavedStateRegistry;

    move-result-object v0

    return-object v0
.end method

.method public getViewModelStore()Lccsanandroidx/lifecycle/ViewModelStore;
    .locals 2

    .line 257
    invoke-virtual {p0}, Lccsanandroidx/activity/ComponentActivity;->getApplication()Lccsanandroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lccsanandroidx/activity/ComponentActivity;->mViewModelStore:Lccsanandroidx/lifecycle/ViewModelStore;

    if-nez v0, :cond_1

    .line 262
    nop

    .line 263
    invoke-virtual {p0}, Lccsanandroidx/activity/ComponentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/activity/ComponentActivity$NonConfigurationInstances;

    .line 264
    .local v0, "nc":Lccsanandroidx/activity/ComponentActivity$NonConfigurationInstances;
    if-eqz v0, :cond_0

    .line 266
    iget-object v1, v0, Lccsanandroidx/activity/ComponentActivity$NonConfigurationInstances;->viewModelStore:Lccsanandroidx/lifecycle/ViewModelStore;

    iput-object v1, p0, Lccsanandroidx/activity/ComponentActivity;->mViewModelStore:Lccsanandroidx/lifecycle/ViewModelStore;

    .line 268
    :cond_0
    iget-object v1, p0, Lccsanandroidx/activity/ComponentActivity;->mViewModelStore:Lccsanandroidx/lifecycle/ViewModelStore;

    if-nez v1, :cond_1

    .line 269
    new-instance v1, Lccsanandroidx/lifecycle/ViewModelStore;

    invoke-direct {v1}, Lccsanandroidx/lifecycle/ViewModelStore;-><init>()V

    iput-object v1, p0, Lccsanandroidx/activity/ComponentActivity;->mViewModelStore:Lccsanandroidx/lifecycle/ViewModelStore;

    .line 272
    .end local v0    # "nc":Lccsanandroidx/activity/ComponentActivity$NonConfigurationInstances;
    :cond_1
    iget-object v0, p0, Lccsanandroidx/activity/ComponentActivity;->mViewModelStore:Lccsanandroidx/lifecycle/ViewModelStore;

    return-object v0

    .line 258
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 286
    iget-object v0, p0, Lccsanandroidx/activity/ComponentActivity;->mOnBackPressedDispatcher:Lccsanandroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Lccsanandroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 287
    return-void
.end method

.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 149
    invoke-super {p0, p1}, Lccsanandroidx/core/app/ComponentActivity;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 150
    iget-object v0, p0, Lccsanandroidx/activity/ComponentActivity;->mSavedStateRegistryController:Lccsanandroidx/savedstate/SavedStateRegistryController;

    invoke-virtual {v0, p1}, Lccsanandroidx/savedstate/SavedStateRegistryController;->performRestore(Lccsanandroid/os/Bundle;)V

    .line 151
    invoke-static {p0}, Lccsanandroidx/lifecycle/ReportFragment;->injectIfNeededIn(Lccsanandroid/app/Activity;)V

    .line 152
    iget v0, p0, Lccsanandroidx/activity/ComponentActivity;->mContentLayoutId:I

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0, v0}, Lccsanandroidx/activity/ComponentActivity;->setContentView(I)V

    .line 155
    :cond_0
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 208
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .line 176
    invoke-virtual {p0}, Lccsanandroidx/activity/ComponentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 178
    .local v0, "custom":Ljava/lang/Object;
    iget-object v1, p0, Lccsanandroidx/activity/ComponentActivity;->mViewModelStore:Lccsanandroidx/lifecycle/ViewModelStore;

    .line 179
    .local v1, "viewModelStore":Lccsanandroidx/lifecycle/ViewModelStore;
    if-nez v1, :cond_0

    .line 182
    nop

    .line 183
    invoke-virtual {p0}, Lccsanandroidx/activity/ComponentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/activity/ComponentActivity$NonConfigurationInstances;

    .line 184
    .local v2, "nc":Lccsanandroidx/activity/ComponentActivity$NonConfigurationInstances;
    if-eqz v2, :cond_0

    .line 185
    iget-object v1, v2, Lccsanandroidx/activity/ComponentActivity$NonConfigurationInstances;->viewModelStore:Lccsanandroidx/lifecycle/ViewModelStore;

    .line 189
    .end local v2    # "nc":Lccsanandroidx/activity/ComponentActivity$NonConfigurationInstances;
    :cond_0
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 190
    const/4 v2, 0x0

    return-object v2

    .line 193
    :cond_1
    new-instance v2, Lccsanandroidx/activity/ComponentActivity$NonConfigurationInstances;

    invoke-direct {v2}, Lccsanandroidx/activity/ComponentActivity$NonConfigurationInstances;-><init>()V

    .line 194
    .local v2, "nci":Lccsanandroidx/activity/ComponentActivity$NonConfigurationInstances;
    iput-object v0, v2, Lccsanandroidx/activity/ComponentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    .line 195
    iput-object v1, v2, Lccsanandroidx/activity/ComponentActivity$NonConfigurationInstances;->viewModelStore:Lccsanandroidx/lifecycle/ViewModelStore;

    .line 196
    return-object v2
.end method

.method protected onSaveInstanceState(Lccsanandroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Lccsanandroid/os/Bundle;

    .line 160
    invoke-virtual {p0}, Lccsanandroidx/activity/ComponentActivity;->getLifecycle()Lccsanandroidx/lifecycle/Lifecycle;

    move-result-object v0

    .line 161
    .local v0, "lifecycle":Lccsanandroidx/lifecycle/Lifecycle;
    instance-of v1, v0, Lccsanandroidx/lifecycle/LifecycleRegistry;

    if-eqz v1, :cond_0

    .line 162
    move-object v1, v0

    check-cast v1, Lccsanandroidx/lifecycle/LifecycleRegistry;

    sget-object v2, Lccsanandroidx/lifecycle/Lifecycle$State;->CREATED:Lccsanandroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v2}, Lccsanandroidx/lifecycle/LifecycleRegistry;->setCurrentState(Lccsanandroidx/lifecycle/Lifecycle$State;)V

    .line 164
    :cond_0
    invoke-super {p0, p1}, Lccsanandroidx/core/app/ComponentActivity;->onSaveInstanceState(Lccsanandroid/os/Bundle;)V

    .line 165
    iget-object v1, p0, Lccsanandroidx/activity/ComponentActivity;->mSavedStateRegistryController:Lccsanandroidx/savedstate/SavedStateRegistryController;

    invoke-virtual {v1, p1}, Lccsanandroidx/savedstate/SavedStateRegistryController;->performSave(Lccsanandroid/os/Bundle;)V

    .line 166
    return-void
.end method
