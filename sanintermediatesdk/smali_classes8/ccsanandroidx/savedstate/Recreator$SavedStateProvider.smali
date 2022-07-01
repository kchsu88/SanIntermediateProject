.class final Lccsanandroidx/savedstate/Recreator$SavedStateProvider;
.super Ljava/lang/Object;
.source "Recreator.java"

# interfaces
.implements Lccsanandroidx/savedstate/SavedStateRegistry$SavedStateProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/savedstate/Recreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SavedStateProvider"
.end annotation


# instance fields
.field final mClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsanandroidx/savedstate/SavedStateRegistry;)V
    .locals 1
    .param p1, "registry"    # Lccsanandroidx/savedstate/SavedStateRegistry;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lccsanandroidx/savedstate/Recreator$SavedStateProvider;->mClasses:Ljava/util/Set;

    .line 100
    const-string v0, "androidx.savedstate.Restarter"

    invoke-virtual {p1, v0, p0}, Lccsanandroidx/savedstate/SavedStateRegistry;->registerSavedStateProvider(Ljava/lang/String;Lccsanandroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V

    .line 101
    return-void
.end method


# virtual methods
.method add(Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lccsanandroidx/savedstate/Recreator$SavedStateProvider;->mClasses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public saveState()Lccsanandroid/os/Bundle;
    .locals 3

    .line 106
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 107
    .local v0, "bundle":Lccsanandroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lccsanandroidx/savedstate/Recreator$SavedStateProvider;->mClasses:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "classes_to_restore"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 108
    return-object v0
.end method
