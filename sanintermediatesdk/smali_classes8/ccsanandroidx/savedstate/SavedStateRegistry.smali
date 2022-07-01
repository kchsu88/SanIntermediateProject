.class public final Lccsanandroidx/savedstate/SavedStateRegistry;
.super Ljava/lang/Object;
.source "SavedStateRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/savedstate/SavedStateRegistry$SavedStateProvider;,
        Lccsanandroidx/savedstate/SavedStateRegistry$AutoRecreated;
    }
.end annotation


# static fields
.field private static final SAVED_COMPONENTS_KEY:Ljava/lang/String; = "androidx.lifecycle.BundlableSavedStateRegistry.key"


# instance fields
.field mAllowingSavingState:Z

.field private mComponents:Lccsanandroidx/arch/core/internal/SafeIterableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/arch/core/internal/SafeIterableMap<",
            "Ljava/lang/String;",
            "Lccsanandroidx/savedstate/SavedStateRegistry$SavedStateProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mRecreatorProvider:Lccsanandroidx/savedstate/Recreator$SavedStateProvider;

.field private mRestored:Z

.field private mRestoredState:Lccsanandroid/os/Bundle;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lccsanandroidx/arch/core/internal/SafeIterableMap;

    invoke-direct {v0}, Lccsanandroidx/arch/core/internal/SafeIterableMap;-><init>()V

    iput-object v0, p0, Lccsanandroidx/savedstate/SavedStateRegistry;->mComponents:Lccsanandroidx/arch/core/internal/SafeIterableMap;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/savedstate/SavedStateRegistry;->mAllowingSavingState:Z

    .line 53
    return-void
.end method


# virtual methods
.method public consumeRestoredStateForKey(Ljava/lang/String;)Lccsanandroid/os/Bundle;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 76
    iget-boolean v0, p0, Lccsanandroidx/savedstate/SavedStateRegistry;->mRestored:Z

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lccsanandroidx/savedstate/SavedStateRegistry;->mRestoredState:Lccsanandroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v0, p1}, Lccsanandroid/os/Bundle;->getBundle(Ljava/lang/String;)Lccsanandroid/os/Bundle;

    move-result-object v0

    .line 82
    .local v0, "result":Lccsanandroid/os/Bundle;
    iget-object v2, p0, Lccsanandroidx/savedstate/SavedStateRegistry;->mRestoredState:Lccsanandroid/os/Bundle;

    invoke-virtual {v2, p1}, Lccsanandroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 83
    iget-object v2, p0, Lccsanandroidx/savedstate/SavedStateRegistry;->mRestoredState:Lccsanandroid/os/Bundle;

    invoke-virtual {v2}, Lccsanandroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    iput-object v1, p0, Lccsanandroidx/savedstate/SavedStateRegistry;->mRestoredState:Lccsanandroid/os/Bundle;

    .line 86
    :cond_0
    return-object v0

    .line 88
    .end local v0    # "result":Lccsanandroid/os/Bundle;
    :cond_1
    return-object v1

    .line 77
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can consumeRestoredStateForKey only after super.onCreate of corresponding component"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isRestored()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lccsanandroidx/savedstate/SavedStateRegistry;->mRestored:Z

    return v0
.end method

.method performRestore(Lccsanandroidx/lifecycle/Lifecycle;Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "lifecycle"    # Lccsanandroidx/lifecycle/Lifecycle;
    .param p2, "savedState"    # Lccsanandroid/os/Bundle;

    .line 190
    iget-boolean v0, p0, Lccsanandroidx/savedstate/SavedStateRegistry;->mRestored:Z

    if-nez v0, :cond_1

    .line 193
    if-eqz p2, :cond_0

    .line 194
    const-string v0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    invoke-virtual {p2, v0}, Lccsanandroid/os/Bundle;->getBundle(Ljava/lang/String;)Lccsanandroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/savedstate/SavedStateRegistry;->mRestoredState:Lccsanandroid/os/Bundle;

    .line 197
    :cond_0
    new-instance v0, Lccsanandroidx/savedstate/SavedStateRegistry$1;

    invoke-direct {v0, p0}, Lccsanandroidx/savedstate/SavedStateRegistry$1;-><init>(Lccsanandroidx/savedstate/SavedStateRegistry;)V

    invoke-virtual {p1, v0}, Lccsanandroidx/lifecycle/Lifecycle;->addObserver(Lccsanandroidx/lifecycle/LifecycleObserver;)V

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/savedstate/SavedStateRegistry;->mRestored:Z

    .line 209
    return-void

    .line 191
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SavedStateRegistry was already restored."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performSave(Lccsanandroid/os/Bundle;)V
    .locals 5
    .param p1, "outBundle"    # Lccsanandroid/os/Bundle;

    .line 220
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 221
    .local v0, "components":Lccsanandroid/os/Bundle;
    iget-object v1, p0, Lccsanandroidx/savedstate/SavedStateRegistry;->mRestoredState:Lccsanandroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->putAll(Lccsanandroid/os/Bundle;)V

    .line 224
    :cond_0
    iget-object v1, p0, Lccsanandroidx/savedstate/SavedStateRegistry;->mComponents:Lccsanandroidx/arch/core/internal/SafeIterableMap;

    .line 225
    invoke-virtual {v1}, Lccsanandroidx/arch/core/internal/SafeIterableMap;->iteratorWithAdditions()Lccsanandroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lccsanandroidx/savedstate/SavedStateRegistry$SavedStateProvider;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 227
    .local v2, "entry1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lccsanandroidx/savedstate/SavedStateRegistry$SavedStateProvider;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    invoke-interface {v4}, Lccsanandroidx/savedstate/SavedStateRegistry$SavedStateProvider;->saveState()Lccsanandroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lccsanandroid/os/Bundle;->putBundle(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 228
    .end local v2    # "entry1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lccsanandroidx/savedstate/SavedStateRegistry$SavedStateProvider;>;"
    goto :goto_0

    .line 229
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lccsanandroidx/savedstate/SavedStateRegistry$SavedStateProvider;>;>;"
    :cond_1
    const-string v1, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    invoke-virtual {p1, v1, v0}, Lccsanandroid/os/Bundle;->putBundle(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 230
    return-void
.end method

.method public registerSavedStateProvider(Ljava/lang/String;Lccsanandroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "provider"    # Lccsanandroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    .line 109
    iget-object v0, p0, Lccsanandroidx/savedstate/SavedStateRegistry;->mComponents:Lccsanandroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    .line 110
    .local v0, "previous":Lccsanandroidx/savedstate/SavedStateRegistry$SavedStateProvider;
    if-nez v0, :cond_0

    .line 114
    return-void

    .line 111
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "SavedStateProvider with the given key is already registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public runOnNextRecreation(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lccsanandroidx/savedstate/SavedStateRegistry$AutoRecreated;",
            ">;)V"
        }
    .end annotation

    .line 167
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lccsanandroidx/savedstate/SavedStateRegistry$AutoRecreated;>;"
    iget-boolean v0, p0, Lccsanandroidx/savedstate/SavedStateRegistry;->mAllowingSavingState:Z

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lccsanandroidx/savedstate/SavedStateRegistry;->mRecreatorProvider:Lccsanandroidx/savedstate/Recreator$SavedStateProvider;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lccsanandroidx/savedstate/Recreator$SavedStateProvider;

    invoke-direct {v0, p0}, Lccsanandroidx/savedstate/Recreator$SavedStateProvider;-><init>(Lccsanandroidx/savedstate/SavedStateRegistry;)V

    iput-object v0, p0, Lccsanandroidx/savedstate/SavedStateRegistry;->mRecreatorProvider:Lccsanandroidx/savedstate/Recreator$SavedStateProvider;

    .line 175
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    nop

    .line 180
    iget-object v0, p0, Lccsanandroidx/savedstate/SavedStateRegistry;->mRecreatorProvider:Lccsanandroidx/savedstate/Recreator$SavedStateProvider;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/savedstate/Recreator$SavedStateProvider;->add(Ljava/lang/String;)V

    .line 181
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must have default constructor in order to be automatically recreated"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 168
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterSavedStateProvider(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lccsanandroidx/savedstate/SavedStateRegistry;->mComponents:Lccsanandroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0, p1}, Lccsanandroidx/arch/core/internal/SafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-void
.end method
