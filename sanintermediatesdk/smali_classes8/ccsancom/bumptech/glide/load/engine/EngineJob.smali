.class Lccsancom/bumptech/glide/load/engine/EngineJob;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;,
        Lccsancom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lccsancom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

.field private static final MAIN_THREAD_HANDLER:Lccsanandroid/os/Handler;

.field private static final MSG_COMPLETE:I = 0x1

.field private static final MSG_EXCEPTION:I = 0x2


# instance fields
.field private final cbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/bumptech/glide/request/ResourceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final diskCacheService:Ljava/util/concurrent/ExecutorService;

.field private engineResource:Lccsancom/bumptech/glide/load/engine/EngineResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/engine/EngineResource<",
            "*>;"
        }
    .end annotation
.end field

.field private final engineResourceFactory:Lccsancom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

.field private engineRunnable:Lccsancom/bumptech/glide/load/engine/EngineRunnable;

.field private exception:Ljava/lang/Exception;

.field private volatile future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private hasException:Z

.field private hasResource:Z

.field private ignoredCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lccsancom/bumptech/glide/request/ResourceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final isCacheable:Z

.field private isCancelled:Z

.field private final key:Lccsancom/bumptech/glide/load/Key;

.field private final listener:Lccsancom/bumptech/glide/load/engine/EngineJobListener;

.field private resource:Lccsancom/bumptech/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "*>;"
        }
    .end annotation
.end field

.field private final sourceService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 23
    new-instance v0, Lccsancom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;-><init>()V

    sput-object v0, Lccsancom/bumptech/glide/load/engine/EngineJob;->DEFAULT_FACTORY:Lccsancom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

    .line 24
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    new-instance v2, Lccsancom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lccsancom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;-><init>(Lccsancom/bumptech/glide/load/engine/EngineJob$1;)V

    invoke-direct {v0, v1, v2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;Lccsanandroid/os/Handler$Callback;)V

    sput-object v0, Lccsancom/bumptech/glide/load/engine/EngineJob;->MAIN_THREAD_HANDLER:Lccsanandroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lccsancom/bumptech/glide/load/Key;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLccsancom/bumptech/glide/load/engine/EngineJobListener;)V
    .locals 7
    .param p1, "key"    # Lccsancom/bumptech/glide/load/Key;
    .param p2, "diskCacheService"    # Ljava/util/concurrent/ExecutorService;
    .param p3, "sourceService"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "isCacheable"    # Z
    .param p5, "listener"    # Lccsancom/bumptech/glide/load/engine/EngineJobListener;

    .line 53
    sget-object v6, Lccsancom/bumptech/glide/load/engine/EngineJob;->DEFAULT_FACTORY:Lccsancom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lccsancom/bumptech/glide/load/engine/EngineJob;-><init>(Lccsancom/bumptech/glide/load/Key;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLccsancom/bumptech/glide/load/engine/EngineJobListener;Lccsancom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lccsancom/bumptech/glide/load/Key;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLccsancom/bumptech/glide/load/engine/EngineJobListener;Lccsancom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;)V
    .locals 1
    .param p1, "key"    # Lccsancom/bumptech/glide/load/Key;
    .param p2, "diskCacheService"    # Ljava/util/concurrent/ExecutorService;
    .param p3, "sourceService"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "isCacheable"    # Z
    .param p5, "listener"    # Lccsancom/bumptech/glide/load/engine/EngineJobListener;
    .param p6, "engineResourceFactory"    # Lccsancom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    .line 58
    iput-object p1, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->key:Lccsancom/bumptech/glide/load/Key;

    .line 59
    iput-object p2, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->diskCacheService:Ljava/util/concurrent/ExecutorService;

    .line 60
    iput-object p3, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->sourceService:Ljava/util/concurrent/ExecutorService;

    .line 61
    iput-boolean p4, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->isCacheable:Z

    .line 62
    iput-object p5, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->listener:Lccsancom/bumptech/glide/load/engine/EngineJobListener;

    .line 63
    iput-object p6, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->engineResourceFactory:Lccsancom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

    .line 64
    return-void
.end method

.method static synthetic access$100(Lccsancom/bumptech/glide/load/engine/EngineJob;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/bumptech/glide/load/engine/EngineJob;

    .line 22
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/engine/EngineJob;->handleResultOnMainThread()V

    return-void
.end method

.method static synthetic access$200(Lccsancom/bumptech/glide/load/engine/EngineJob;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/bumptech/glide/load/engine/EngineJob;

    .line 22
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/engine/EngineJob;->handleExceptionOnMainThread()V

    return-void
.end method

.method private addIgnoredCallback(Lccsancom/bumptech/glide/request/ResourceCallback;)V
    .locals 1
    .param p1, "cb"    # Lccsancom/bumptech/glide/request/ResourceCallback;

    .line 105
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->ignoredCallbacks:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->ignoredCallbacks:Ljava/util/Set;

    .line 108
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->ignoredCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method private handleExceptionOnMainThread()V
    .locals 3

    .line 172
    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z

    if-eqz v0, :cond_0

    .line 173
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->hasException:Z

    .line 179
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->listener:Lccsancom/bumptech/glide/load/engine/EngineJobListener;

    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->key:Lccsancom/bumptech/glide/load/Key;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lccsancom/bumptech/glide/load/engine/EngineJobListener;->onEngineJobComplete(Lccsancom/bumptech/glide/load/Key;Lccsancom/bumptech/glide/load/engine/EngineResource;)V

    .line 181
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/bumptech/glide/request/ResourceCallback;

    .line 182
    .local v1, "cb":Lccsancom/bumptech/glide/request/ResourceCallback;
    invoke-direct {p0, v1}, Lccsancom/bumptech/glide/load/engine/EngineJob;->isInIgnoredCallbacks(Lccsancom/bumptech/glide/request/ResourceCallback;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 183
    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->exception:Ljava/lang/Exception;

    invoke-interface {v1, v2}, Lccsancom/bumptech/glide/request/ResourceCallback;->onException(Ljava/lang/Exception;)V

    .line 185
    .end local v1    # "cb":Lccsancom/bumptech/glide/request/ResourceCallback;
    :cond_1
    goto :goto_0

    .line 186
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void

    .line 175
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private handleResultOnMainThread()V
    .locals 3

    .line 141
    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->resource:Lccsancom/bumptech/glide/load/engine/Resource;

    invoke-interface {v0}, Lccsancom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 143
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 147
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->engineResourceFactory:Lccsancom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->resource:Lccsancom/bumptech/glide/load/engine/Resource;

    iget-boolean v2, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->isCacheable:Z

    invoke-virtual {v0, v1, v2}, Lccsancom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;->build(Lccsancom/bumptech/glide/load/engine/Resource;Z)Lccsancom/bumptech/glide/load/engine/EngineResource;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->engineResource:Lccsancom/bumptech/glide/load/engine/EngineResource;

    .line 148
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->hasResource:Z

    .line 152
    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/engine/EngineResource;->acquire()V

    .line 153
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->listener:Lccsancom/bumptech/glide/load/engine/EngineJobListener;

    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->key:Lccsancom/bumptech/glide/load/Key;

    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->engineResource:Lccsancom/bumptech/glide/load/engine/EngineResource;

    invoke-interface {v0, v1, v2}, Lccsancom/bumptech/glide/load/engine/EngineJobListener;->onEngineJobComplete(Lccsancom/bumptech/glide/load/Key;Lccsancom/bumptech/glide/load/engine/EngineResource;)V

    .line 155
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/bumptech/glide/request/ResourceCallback;

    .line 156
    .local v1, "cb":Lccsancom/bumptech/glide/request/ResourceCallback;
    invoke-direct {p0, v1}, Lccsancom/bumptech/glide/load/engine/EngineJob;->isInIgnoredCallbacks(Lccsancom/bumptech/glide/request/ResourceCallback;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 157
    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->engineResource:Lccsancom/bumptech/glide/load/engine/EngineResource;

    invoke-virtual {v2}, Lccsancom/bumptech/glide/load/engine/EngineResource;->acquire()V

    .line 158
    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->engineResource:Lccsancom/bumptech/glide/load/engine/EngineResource;

    invoke-interface {v1, v2}, Lccsancom/bumptech/glide/request/ResourceCallback;->onResourceReady(Lccsancom/bumptech/glide/load/engine/Resource;)V

    .line 160
    .end local v1    # "cb":Lccsancom/bumptech/glide/request/ResourceCallback;
    :cond_1
    goto :goto_0

    .line 162
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->engineResource:Lccsancom/bumptech/glide/load/engine/EngineResource;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/engine/EngineResource;->release()V

    .line 163
    return-void

    .line 145
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private isInIgnoredCallbacks(Lccsancom/bumptech/glide/request/ResourceCallback;)Z
    .locals 1
    .param p1, "cb"    # Lccsancom/bumptech/glide/request/ResourceCallback;

    .line 112
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->ignoredCallbacks:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addCallback(Lccsancom/bumptech/glide/request/ResourceCallback;)V
    .locals 1
    .param p1, "cb"    # Lccsancom/bumptech/glide/request/ResourceCallback;

    .line 77
    invoke-static {}, Lccsancom/bumptech/glide/util/Util;->assertMainThread()V

    .line 78
    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->hasResource:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->engineResource:Lccsancom/bumptech/glide/load/engine/EngineResource;

    invoke-interface {p1, v0}, Lccsancom/bumptech/glide/request/ResourceCallback;->onResourceReady(Lccsancom/bumptech/glide/load/engine/Resource;)V

    goto :goto_0

    .line 80
    :cond_0
    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->hasException:Z

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->exception:Ljava/lang/Exception;

    invoke-interface {p1, v0}, Lccsancom/bumptech/glide/request/ResourceCallback;->onException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :goto_0
    return-void
.end method

.method cancel()V
    .locals 3

    .line 117
    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->hasException:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->hasResource:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->engineRunnable:Lccsancom/bumptech/glide/load/engine/EngineRunnable;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/engine/EngineRunnable;->cancel()V

    .line 121
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->future:Ljava/util/concurrent/Future;

    .line 122
    .local v0, "currentFuture":Ljava/util/concurrent/Future;
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 123
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 125
    :cond_1
    iput-boolean v1, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z

    .line 126
    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->listener:Lccsancom/bumptech/glide/load/engine/EngineJobListener;

    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->key:Lccsancom/bumptech/glide/load/Key;

    invoke-interface {v1, p0, v2}, Lccsancom/bumptech/glide/load/engine/EngineJobListener;->onEngineJobCancelled(Lccsancom/bumptech/glide/load/engine/EngineJob;Lccsancom/bumptech/glide/load/Key;)V

    .line 127
    return-void

    .line 118
    .end local v0    # "currentFuture":Ljava/util/concurrent/Future;
    :cond_2
    :goto_0
    return-void
.end method

.method isCancelled()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z

    return v0
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 167
    iput-object p1, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->exception:Ljava/lang/Exception;

    .line 168
    sget-object v0, Lccsancom/bumptech/glide/load/engine/EngineJob;->MAIN_THREAD_HANDLER:Lccsanandroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lccsanandroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/Message;->sendToTarget()V

    .line 169
    return-void
.end method

.method public onResourceReady(Lccsancom/bumptech/glide/load/engine/Resource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "*>;)V"
        }
    .end annotation

    .line 136
    .local p1, "resource":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<*>;"
    iput-object p1, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->resource:Lccsancom/bumptech/glide/load/engine/Resource;

    .line 137
    sget-object v0, Lccsancom/bumptech/glide/load/engine/EngineJob;->MAIN_THREAD_HANDLER:Lccsanandroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lccsanandroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/Message;->sendToTarget()V

    .line 138
    return-void
.end method

.method public removeCallback(Lccsancom/bumptech/glide/request/ResourceCallback;)V
    .locals 1
    .param p1, "cb"    # Lccsancom/bumptech/glide/request/ResourceCallback;

    .line 88
    invoke-static {}, Lccsancom/bumptech/glide/util/Util;->assertMainThread()V

    .line 89
    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->hasResource:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->hasException:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/engine/EngineJob;->cancel()V

    goto :goto_1

    .line 90
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/load/engine/EngineJob;->addIgnoredCallback(Lccsancom/bumptech/glide/request/ResourceCallback;)V

    .line 97
    :cond_2
    :goto_1
    return-void
.end method

.method public start(Lccsancom/bumptech/glide/load/engine/EngineRunnable;)V
    .locals 1
    .param p1, "engineRunnable"    # Lccsancom/bumptech/glide/load/engine/EngineRunnable;

    .line 67
    iput-object p1, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->engineRunnable:Lccsancom/bumptech/glide/load/engine/EngineRunnable;

    .line 68
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->diskCacheService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->future:Ljava/util/concurrent/Future;

    .line 69
    return-void
.end method

.method public submitForSource(Lccsancom/bumptech/glide/load/engine/EngineRunnable;)V
    .locals 1
    .param p1, "runnable"    # Lccsancom/bumptech/glide/load/engine/EngineRunnable;

    .line 73
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->sourceService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineJob;->future:Ljava/util/concurrent/Future;

    .line 74
    return-void
.end method
