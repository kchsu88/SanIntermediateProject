.class Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;
.super Ljava/lang/Object;
.source "ActivityFragmentLifecycle.java"

# interfaces
.implements Lccsancom/bumptech/glide/manager/Lifecycle;


# instance fields
.field private isDestroyed:Z

.field private isStarted:Z

.field private final lifecycleListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lccsancom/bumptech/glide/manager/LifecycleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;->lifecycleListeners:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addListener(Lccsancom/bumptech/glide/manager/LifecycleListener;)V
    .locals 1
    .param p1, "listener"    # Lccsancom/bumptech/glide/manager/LifecycleListener;

    .line 36
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;->lifecycleListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    iget-boolean v0, p0, Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;->isDestroyed:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {p1}, Lccsancom/bumptech/glide/manager/LifecycleListener;->onDestroy()V

    goto :goto_0

    .line 40
    :cond_0
    iget-boolean v0, p0, Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;->isStarted:Z

    if-eqz v0, :cond_1

    .line 41
    invoke-interface {p1}, Lccsancom/bumptech/glide/manager/LifecycleListener;->onStart()V

    goto :goto_0

    .line 43
    :cond_1
    invoke-interface {p1}, Lccsancom/bumptech/glide/manager/LifecycleListener;->onStop()V

    .line 45
    :goto_0
    return-void
.end method

.method onDestroy()V
    .locals 2

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;->isDestroyed:Z

    .line 63
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;->lifecycleListeners:Ljava/util/Set;

    invoke-static {v0}, Lccsancom/bumptech/glide/util/Util;->getSnapshot(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/bumptech/glide/manager/LifecycleListener;

    .line 64
    .local v1, "lifecycleListener":Lccsancom/bumptech/glide/manager/LifecycleListener;
    invoke-interface {v1}, Lccsancom/bumptech/glide/manager/LifecycleListener;->onDestroy()V

    .line 65
    .end local v1    # "lifecycleListener":Lccsancom/bumptech/glide/manager/LifecycleListener;
    goto :goto_0

    .line 66
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method onStart()V
    .locals 2

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;->isStarted:Z

    .line 49
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;->lifecycleListeners:Ljava/util/Set;

    invoke-static {v0}, Lccsancom/bumptech/glide/util/Util;->getSnapshot(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/bumptech/glide/manager/LifecycleListener;

    .line 50
    .local v1, "lifecycleListener":Lccsancom/bumptech/glide/manager/LifecycleListener;
    invoke-interface {v1}, Lccsancom/bumptech/glide/manager/LifecycleListener;->onStart()V

    .line 51
    .end local v1    # "lifecycleListener":Lccsancom/bumptech/glide/manager/LifecycleListener;
    goto :goto_0

    .line 52
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method onStop()V
    .locals 2

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;->isStarted:Z

    .line 56
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;->lifecycleListeners:Ljava/util/Set;

    invoke-static {v0}, Lccsancom/bumptech/glide/util/Util;->getSnapshot(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/bumptech/glide/manager/LifecycleListener;

    .line 57
    .local v1, "lifecycleListener":Lccsancom/bumptech/glide/manager/LifecycleListener;
    invoke-interface {v1}, Lccsancom/bumptech/glide/manager/LifecycleListener;->onStop()V

    .line 58
    .end local v1    # "lifecycleListener":Lccsancom/bumptech/glide/manager/LifecycleListener;
    goto :goto_0

    .line 59
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method
