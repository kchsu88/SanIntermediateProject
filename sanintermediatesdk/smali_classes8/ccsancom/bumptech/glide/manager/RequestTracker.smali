.class public Lccsancom/bumptech/glide/manager/RequestTracker;
.super Ljava/lang/Object;
.source "RequestTracker.java"


# instance fields
.field private isPaused:Z

.field private final pendingRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/bumptech/glide/request/Request;",
            ">;"
        }
    .end annotation
.end field

.field private final requests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lccsancom/bumptech/glide/request/Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/manager/RequestTracker;->pendingRequests:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addRequest(Lccsancom/bumptech/glide/request/Request;)V
    .locals 1
    .param p1, "request"    # Lccsancom/bumptech/glide/request/Request;

    .line 45
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public clearRequests()V
    .locals 2

    .line 93
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/RequestTracker;->requests:Ljava/util/Set;

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

    check-cast v1, Lccsancom/bumptech/glide/request/Request;

    .line 94
    .local v1, "request":Lccsancom/bumptech/glide/request/Request;
    invoke-interface {v1}, Lccsancom/bumptech/glide/request/Request;->clear()V

    .line 95
    .end local v1    # "request":Lccsancom/bumptech/glide/request/Request;
    goto :goto_0

    .line 96
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/RequestTracker;->pendingRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 97
    return-void
.end method

.method public isPaused()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lccsancom/bumptech/glide/manager/RequestTracker;->isPaused:Z

    return v0
.end method

.method public pauseRequests()V
    .locals 3

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/bumptech/glide/manager/RequestTracker;->isPaused:Z

    .line 68
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    invoke-static {v0}, Lccsancom/bumptech/glide/util/Util;->getSnapshot(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/bumptech/glide/request/Request;

    .line 69
    .local v1, "request":Lccsancom/bumptech/glide/request/Request;
    invoke-interface {v1}, Lccsancom/bumptech/glide/request/Request;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-interface {v1}, Lccsancom/bumptech/glide/request/Request;->pause()V

    .line 71
    iget-object v2, p0, Lccsancom/bumptech/glide/manager/RequestTracker;->pendingRequests:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .end local v1    # "request":Lccsancom/bumptech/glide/request/Request;
    :cond_0
    goto :goto_0

    .line 74
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public removeRequest(Lccsancom/bumptech/glide/request/Request;)V
    .locals 1
    .param p1, "request"    # Lccsancom/bumptech/glide/request/Request;

    .line 52
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/RequestTracker;->pendingRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public restartRequests()V
    .locals 3

    .line 103
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    invoke-static {v0}, Lccsancom/bumptech/glide/util/Util;->getSnapshot(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/bumptech/glide/request/Request;

    .line 104
    .local v1, "request":Lccsancom/bumptech/glide/request/Request;
    invoke-interface {v1}, Lccsancom/bumptech/glide/request/Request;->isComplete()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lccsancom/bumptech/glide/request/Request;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    invoke-interface {v1}, Lccsancom/bumptech/glide/request/Request;->pause()V

    .line 107
    iget-boolean v2, p0, Lccsancom/bumptech/glide/manager/RequestTracker;->isPaused:Z

    if-nez v2, :cond_0

    .line 108
    invoke-interface {v1}, Lccsancom/bumptech/glide/request/Request;->begin()V

    goto :goto_1

    .line 110
    :cond_0
    iget-object v2, p0, Lccsancom/bumptech/glide/manager/RequestTracker;->pendingRequests:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v1    # "request":Lccsancom/bumptech/glide/request/Request;
    :cond_1
    :goto_1
    goto :goto_0

    .line 114
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public resumeRequests()V
    .locals 3

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/bumptech/glide/manager/RequestTracker;->isPaused:Z

    .line 81
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    invoke-static {v0}, Lccsancom/bumptech/glide/util/Util;->getSnapshot(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/bumptech/glide/request/Request;

    .line 82
    .local v1, "request":Lccsancom/bumptech/glide/request/Request;
    invoke-interface {v1}, Lccsancom/bumptech/glide/request/Request;->isComplete()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lccsancom/bumptech/glide/request/Request;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lccsancom/bumptech/glide/request/Request;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    invoke-interface {v1}, Lccsancom/bumptech/glide/request/Request;->begin()V

    .line 85
    .end local v1    # "request":Lccsancom/bumptech/glide/request/Request;
    :cond_0
    goto :goto_0

    .line 86
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/RequestTracker;->pendingRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    return-void
.end method

.method public runRequest(Lccsancom/bumptech/glide/request/Request;)V
    .locals 1
    .param p1, "request"    # Lccsancom/bumptech/glide/request/Request;

    .line 35
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    iget-boolean v0, p0, Lccsancom/bumptech/glide/manager/RequestTracker;->isPaused:Z

    if-nez v0, :cond_0

    .line 37
    invoke-interface {p1}, Lccsancom/bumptech/glide/request/Request;->begin()V

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/RequestTracker;->pendingRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :goto_0
    return-void
.end method
