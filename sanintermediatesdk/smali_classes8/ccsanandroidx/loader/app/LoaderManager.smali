.class public abstract Lccsanandroidx/loader/app/LoaderManager;
.super Ljava/lang/Object;
.source "LoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/loader/app/LoaderManager$LoaderCallbacks;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static enableDebugLogging(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .line 235
    sput-boolean p0, Lccsanandroidx/loader/app/LoaderManagerImpl;->DEBUG:Z

    .line 236
    return-void
.end method

.method public static getInstance(Lccsanandroidx/lifecycle/LifecycleOwner;)Lccsanandroidx/loader/app/LoaderManager;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lccsanandroidx/lifecycle/LifecycleOwner;",
            ":",
            "Lccsanandroidx/lifecycle/ViewModelStoreOwner;",
            ">(TT;)",
            "Lccsanandroidx/loader/app/LoaderManager;"
        }
    .end annotation

    .line 128
    .local p0, "owner":Lccsanandroidx/lifecycle/LifecycleOwner;, "TT;"
    new-instance v0, Lccsanandroidx/loader/app/LoaderManagerImpl;

    move-object v1, p0

    check-cast v1, Lccsanandroidx/lifecycle/ViewModelStoreOwner;

    invoke-interface {v1}, Lccsanandroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Lccsanandroidx/lifecycle/ViewModelStore;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lccsanandroidx/loader/app/LoaderManagerImpl;-><init>(Lccsanandroidx/lifecycle/LifecycleOwner;Lccsanandroidx/lifecycle/ViewModelStore;)V

    return-object v0
.end method


# virtual methods
.method public abstract destroyLoader(I)V
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLoader(I)Lccsanandroidx/loader/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lccsanandroidx/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end method

.method public hasRunningLoaders()Z
    .locals 1

    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public abstract initLoader(ILccsanandroid/os/Bundle;Lccsanandroidx/loader/app/LoaderManager$LoaderCallbacks;)Lccsanandroidx/loader/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Lccsanandroid/os/Bundle;",
            "Lccsanandroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "TD;>;)",
            "Lccsanandroidx/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract markForRedelivery()V
.end method

.method public abstract restartLoader(ILccsanandroid/os/Bundle;Lccsanandroidx/loader/app/LoaderManager$LoaderCallbacks;)Lccsanandroidx/loader/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Lccsanandroid/os/Bundle;",
            "Lccsanandroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "TD;>;)",
            "Lccsanandroidx/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end method
