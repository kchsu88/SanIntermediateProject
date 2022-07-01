.class public Lccsanandroidx/fragment/app/FragmentController;
.super Ljava/lang/Object;
.source "FragmentController.java"


# instance fields
.field private final mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/fragment/app/FragmentHostCallback<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lccsanandroidx/fragment/app/FragmentHostCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/fragment/app/FragmentHostCallback<",
            "*>;)V"
        }
    .end annotation

    .line 60
    .local p1, "callbacks":Lccsanandroidx/fragment/app/FragmentHostCallback;, "Lccsanandroidx/fragment/app/FragmentHostCallback<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    .line 62
    return-void
.end method

.method public static createController(Lccsanandroidx/fragment/app/FragmentHostCallback;)Lccsanandroidx/fragment/app/FragmentController;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/fragment/app/FragmentHostCallback<",
            "*>;)",
            "Lccsanandroidx/fragment/app/FragmentController;"
        }
    .end annotation

    .line 57
    .local p0, "callbacks":Lccsanandroidx/fragment/app/FragmentHostCallback;, "Lccsanandroidx/fragment/app/FragmentHostCallback<*>;"
    new-instance v0, Lccsanandroidx/fragment/app/FragmentController;

    const-string v1, "callbacks == null"

    invoke-static {p0, v1}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/fragment/app/FragmentHostCallback;

    invoke-direct {v0, v1}, Lccsanandroidx/fragment/app/FragmentController;-><init>(Lccsanandroidx/fragment/app/FragmentHostCallback;)V

    return-object v0
.end method


# virtual methods
.method public attachHost(Lccsanandroidx/fragment/app/Fragment;)V
    .locals 2
    .param p1, "parent"    # Lccsanandroidx/fragment/app/Fragment;

    .line 116
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0, v1, v1, p1}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->attachController(Lccsanandroidx/fragment/app/FragmentHostCallback;Lccsanandroidx/fragment/app/FragmentContainer;Lccsanandroidx/fragment/app/Fragment;)V

    .line 118
    return-void
.end method

.method public dispatchActivityCreated()V
    .locals 1

    .line 246
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchActivityCreated()V

    .line 247
    return-void
.end method

.method public dispatchConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Lccsanandroid/content/res/Configuration;

    .line 362
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 363
    return-void
.end method

.method public dispatchContextItemSelected(Lccsanandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lccsanandroid/view/MenuItem;

    .line 424
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchContextItemSelected(Lccsanandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public dispatchCreate()V
    .locals 1

    .line 235
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchCreate()V

    .line 236
    return-void
.end method

.method public dispatchCreateOptionsMenu(Lccsanandroid/view/Menu;Lccsanandroid/view/MenuInflater;)Z
    .locals 1
    .param p1, "menu"    # Lccsanandroid/view/Menu;
    .param p2, "inflater"    # Lccsanandroid/view/MenuInflater;

    .line 386
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Lccsanandroid/view/Menu;Lccsanandroid/view/MenuInflater;)Z

    move-result v0

    return v0
.end method

.method public dispatchDestroy()V
    .locals 1

    .line 329
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchDestroy()V

    .line 330
    return-void
.end method

.method public dispatchDestroyView()V
    .locals 1

    .line 308
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchDestroyView()V

    .line 309
    return-void
.end method

.method public dispatchLowMemory()V
    .locals 1

    .line 374
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchLowMemory()V

    .line 375
    return-void
.end method

.method public dispatchMultiWindowModeChanged(Z)V
    .locals 1
    .param p1, "isInMultiWindowMode"    # Z

    .line 340
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchMultiWindowModeChanged(Z)V

    .line 341
    return-void
.end method

.method public dispatchOptionsItemSelected(Lccsanandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lccsanandroid/view/MenuItem;

    .line 411
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Lccsanandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public dispatchOptionsMenuClosed(Lccsanandroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Lccsanandroid/view/Menu;

    .line 435
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Lccsanandroid/view/Menu;)V

    .line 436
    return-void
.end method

.method public dispatchPause()V
    .locals 1

    .line 279
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchPause()V

    .line 280
    return-void
.end method

.method public dispatchPictureInPictureModeChanged(Z)V
    .locals 1
    .param p1, "isInPictureInPictureMode"    # Z

    .line 351
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchPictureInPictureModeChanged(Z)V

    .line 352
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Lccsanandroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Lccsanandroid/view/Menu;

    .line 398
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Lccsanandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public dispatchReallyStop()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 298
    return-void
.end method

.method public dispatchResume()V
    .locals 1

    .line 268
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchResume()V

    .line 269
    return-void
.end method

.method public dispatchStart()V
    .locals 1

    .line 257
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchStart()V

    .line 258
    return-void
.end method

.method public dispatchStop()V
    .locals 1

    .line 290
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchStop()V

    .line 291
    return-void
.end method

.method public doLoaderDestroy()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 487
    return-void
.end method

.method public doLoaderRetain()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 478
    return-void
.end method

.method public doLoaderStart()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 456
    return-void
.end method

.method public doLoaderStop(Z)V
    .locals 0
    .param p1, "retain"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 469
    return-void
.end method

.method public dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 531
    return-void
.end method

.method public execPendingActions()Z
    .locals 1

    .line 446
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v0

    return v0
.end method

.method public findFragmentByWho(Ljava/lang/String;)Lccsanandroidx/fragment/app/Fragment;
    .locals 1
    .param p1, "who"    # Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Lccsanandroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getActiveFragments(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroidx/fragment/app/Fragment;",
            ">;)",
            "Ljava/util/List<",
            "Lccsanandroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 108
    .local p1, "actives":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/fragment/app/Fragment;>;"
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->getActiveFragments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getActiveFragmentsCount()I
    .locals 1

    .line 99
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->getActiveFragmentCount()I

    move-result v0

    return v0
.end method

.method public getSupportFragmentManager()Lccsanandroidx/fragment/app/FragmentManager;
    .locals 1

    .line 69
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    return-object v0
.end method

.method public getSupportLoaderManager()Lccsanandroidx/loader/app/LoaderManager;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Loaders are managed separately from FragmentController, use LoaderManager.getInstance() to obtain a LoaderManager."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public noteStateNotSaved()V
    .locals 1

    .line 141
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 142
    return-void
.end method

.method public onCreateView(Lccsanandroid/view/View;Ljava/lang/String;Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroid/view/View;
    .locals 1
    .param p1, "parent"    # Lccsanandroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Lccsanandroid/content/Context;
    .param p4, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 134
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->onCreateView(Lccsanandroid/view/View;Ljava/lang/String;Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public reportLoaderStart()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 496
    return-void
.end method

.method public restoreAllState(Lccsanandroid/os/Parcelable;Lccsanandroidx/fragment/app/FragmentManagerNonConfig;)V
    .locals 1
    .param p1, "state"    # Lccsanandroid/os/Parcelable;
    .param p2, "nonConfig"    # Lccsanandroidx/fragment/app/FragmentManagerNonConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->restoreAllState(Lccsanandroid/os/Parcelable;Lccsanandroidx/fragment/app/FragmentManagerNonConfig;)V

    .line 181
    return-void
.end method

.method public restoreAllState(Lccsanandroid/os/Parcelable;Ljava/util/List;)V
    .locals 3
    .param p1, "state"    # Lccsanandroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/os/Parcelable;",
            "Ljava/util/List<",
            "Lccsanandroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 165
    .local p2, "nonConfigList":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/fragment/app/Fragment;>;"
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    new-instance v1, Lccsanandroidx/fragment/app/FragmentManagerNonConfig;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2, v2}, Lccsanandroidx/fragment/app/FragmentManagerNonConfig;-><init>(Ljava/util/Collection;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v0, p1, v1}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->restoreAllState(Lccsanandroid/os/Parcelable;Lccsanandroidx/fragment/app/FragmentManagerNonConfig;)V

    .line 167
    return-void
.end method

.method public restoreLoaderNonConfig(Lccsanandroidx/collection/SimpleArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lccsanandroidx/loader/app/LoaderManager;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 521
    .local p1, "loaderManagers":Lccsanandroidx/collection/SimpleArrayMap;, "Lccsanandroidx/collection/SimpleArrayMap<Ljava/lang/String;Lccsanandroidx/loader/app/LoaderManager;>;"
    return-void
.end method

.method public restoreSaveState(Lccsanandroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Lccsanandroid/os/Parcelable;

    .line 190
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    instance-of v1, v0, Lccsanandroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v1, :cond_0

    .line 195
    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->restoreSaveState(Lccsanandroid/os/Parcelable;)V

    .line 196
    return-void

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you\'re still using retainNestedNonConfig()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public retainLoaderNonConfig()Lccsanandroidx/collection/SimpleArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsanandroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lccsanandroidx/loader/app/LoaderManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 507
    const/4 v0, 0x0

    return-object v0
.end method

.method public retainNestedNonConfig()Lccsanandroidx/fragment/app/FragmentManagerNonConfig;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->retainNonConfig()Lccsanandroidx/fragment/app/FragmentManagerNonConfig;

    move-result-object v0

    return-object v0
.end method

.method public retainNonConfig()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsanandroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 208
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->retainNonConfig()Lccsanandroidx/fragment/app/FragmentManagerNonConfig;

    move-result-object v0

    .line 209
    .local v0, "nonconf":Lccsanandroidx/fragment/app/FragmentManagerNonConfig;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerNonConfig;->getFragments()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    .line 210
    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerNonConfig;->getFragments()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 209
    :goto_0
    return-object v1
.end method

.method public saveAllState()Lccsanandroid/os/Parcelable;
    .locals 1

    .line 151
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentController;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->saveAllState()Lccsanandroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
