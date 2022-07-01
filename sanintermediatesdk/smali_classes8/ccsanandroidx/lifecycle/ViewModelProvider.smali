.class public Lccsanandroidx/lifecycle/ViewModelProvider;
.super Ljava/lang/Object;
.source "ViewModelProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;,
        Lccsanandroidx/lifecycle/ViewModelProvider$NewInstanceFactory;,
        Lccsanandroidx/lifecycle/ViewModelProvider$KeyedFactory;,
        Lccsanandroidx/lifecycle/ViewModelProvider$Factory;
    }
.end annotation


# static fields
.field private static final DEFAULT_KEY:Ljava/lang/String; = "androidx.lifecycle.ViewModelProvider.DefaultKey"


# instance fields
.field private final mFactory:Lccsanandroidx/lifecycle/ViewModelProvider$Factory;

.field private final mViewModelStore:Lccsanandroidx/lifecycle/ViewModelStore;


# direct methods
.method public constructor <init>(Lccsanandroidx/lifecycle/ViewModelStore;Lccsanandroidx/lifecycle/ViewModelProvider$Factory;)V
    .locals 0
    .param p1, "store"    # Lccsanandroidx/lifecycle/ViewModelStore;
    .param p2, "factory"    # Lccsanandroidx/lifecycle/ViewModelProvider$Factory;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p2, p0, Lccsanandroidx/lifecycle/ViewModelProvider;->mFactory:Lccsanandroidx/lifecycle/ViewModelProvider$Factory;

    .line 107
    iput-object p1, p0, Lccsanandroidx/lifecycle/ViewModelProvider;->mViewModelStore:Lccsanandroidx/lifecycle/ViewModelStore;

    .line 108
    return-void
.end method

.method public constructor <init>(Lccsanandroidx/lifecycle/ViewModelStoreOwner;Lccsanandroidx/lifecycle/ViewModelProvider$Factory;)V
    .locals 1
    .param p1, "owner"    # Lccsanandroidx/lifecycle/ViewModelStoreOwner;
    .param p2, "factory"    # Lccsanandroidx/lifecycle/ViewModelProvider$Factory;

    .line 94
    invoke-interface {p1}, Lccsanandroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Lccsanandroidx/lifecycle/ViewModelStore;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lccsanandroidx/lifecycle/ViewModelProvider;-><init>(Lccsanandroidx/lifecycle/ViewModelStore;Lccsanandroidx/lifecycle/ViewModelProvider$Factory;)V

    .line 95
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Lccsanandroidx/lifecycle/ViewModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lccsanandroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 126
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "canonicalName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lccsanandroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/String;Ljava/lang/Class;)Lccsanandroidx/lifecycle/ViewModel;

    move-result-object v1

    return-object v1

    .line 128
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Local and anonymous classes can not be ViewModels"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public get(Ljava/lang/String;Ljava/lang/Class;)Lccsanandroidx/lifecycle/ViewModel;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lccsanandroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 150
    .local p2, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lccsanandroidx/lifecycle/ViewModelProvider;->mViewModelStore:Lccsanandroidx/lifecycle/ViewModelStore;

    invoke-virtual {v0, p1}, Lccsanandroidx/lifecycle/ViewModelStore;->get(Ljava/lang/String;)Lccsanandroidx/lifecycle/ViewModel;

    move-result-object v0

    .line 152
    .local v0, "viewModel":Lccsanandroidx/lifecycle/ViewModel;
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    return-object v0

    .line 157
    :cond_0
    nop

    .line 161
    iget-object v1, p0, Lccsanandroidx/lifecycle/ViewModelProvider;->mFactory:Lccsanandroidx/lifecycle/ViewModelProvider$Factory;

    instance-of v2, v1, Lccsanandroidx/lifecycle/ViewModelProvider$KeyedFactory;

    if-eqz v2, :cond_1

    .line 162
    check-cast v1, Lccsanandroidx/lifecycle/ViewModelProvider$KeyedFactory;

    move-object v2, v1

    check-cast v2, Lccsanandroidx/lifecycle/ViewModelProvider$KeyedFactory;

    invoke-virtual {v1, p1, p2}, Lccsanandroidx/lifecycle/ViewModelProvider$KeyedFactory;->create(Ljava/lang/String;Ljava/lang/Class;)Lccsanandroidx/lifecycle/ViewModel;

    move-result-object v0

    goto :goto_0

    .line 164
    :cond_1
    invoke-interface {v1, p2}, Lccsanandroidx/lifecycle/ViewModelProvider$Factory;->create(Ljava/lang/Class;)Lccsanandroidx/lifecycle/ViewModel;

    move-result-object v0

    .line 166
    :goto_0
    iget-object v1, p0, Lccsanandroidx/lifecycle/ViewModelProvider;->mViewModelStore:Lccsanandroidx/lifecycle/ViewModelStore;

    invoke-virtual {v1, p1, v0}, Lccsanandroidx/lifecycle/ViewModelStore;->put(Ljava/lang/String;Lccsanandroidx/lifecycle/ViewModel;)V

    .line 168
    return-object v0
.end method
