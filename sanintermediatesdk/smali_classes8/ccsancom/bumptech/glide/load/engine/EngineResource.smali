.class Lccsancom/bumptech/glide/load/engine/EngineResource;
.super Ljava/lang/Object;
.source "EngineResource.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/engine/Resource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/engine/EngineResource$ResourceListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/engine/Resource<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field private acquired:I

.field private final isCacheable:Z

.field private isRecycled:Z

.field private key:Lccsancom/bumptech/glide/load/Key;

.field private listener:Lccsancom/bumptech/glide/load/engine/EngineResource$ResourceListener;

.field private final resource:Lccsancom/bumptech/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/bumptech/glide/load/engine/Resource;Z)V
    .locals 2
    .param p2, "isCacheable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "TZ;>;Z)V"
        }
    .end annotation

    .line 25
    .local p0, "this":Lccsancom/bumptech/glide/load/engine/EngineResource;, "Lccsancom/bumptech/glide/load/engine/EngineResource<TZ;>;"
    .local p1, "toWrap":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<TZ;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-eqz p1, :cond_0

    .line 29
    iput-object p1, p0, Lccsancom/bumptech/glide/load/engine/EngineResource;->resource:Lccsancom/bumptech/glide/load/engine/Resource;

    .line 30
    iput-boolean p2, p0, Lccsancom/bumptech/glide/load/engine/EngineResource;->isCacheable:Z

    .line 31
    return-void

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Wrapped resource must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method acquire()V
    .locals 2

    .line 74
    .local p0, "this":Lccsancom/bumptech/glide/load/engine/EngineResource;, "Lccsancom/bumptech/glide/load/engine/EngineResource<TZ;>;"
    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/engine/EngineResource;->isRecycled:Z

    if-nez v0, :cond_1

    .line 77
    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget v0, p0, Lccsancom/bumptech/glide/load/engine/EngineResource;->acquired:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lccsancom/bumptech/glide/load/engine/EngineResource;->acquired:I

    .line 81
    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Must call acquire on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot acquire a recycled resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    .line 44
    .local p0, "this":Lccsancom/bumptech/glide/load/engine/EngineResource;, "Lccsancom/bumptech/glide/load/engine/EngineResource<TZ;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineResource;->resource:Lccsancom/bumptech/glide/load/engine/Resource;

    invoke-interface {v0}, Lccsancom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 49
    .local p0, "this":Lccsancom/bumptech/glide/load/engine/EngineResource;, "Lccsancom/bumptech/glide/load/engine/EngineResource<TZ;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineResource;->resource:Lccsancom/bumptech/glide/load/engine/Resource;

    invoke-interface {v0}, Lccsancom/bumptech/glide/load/engine/Resource;->getSize()I

    move-result v0

    return v0
.end method

.method isCacheable()Z
    .locals 1

    .line 39
    .local p0, "this":Lccsancom/bumptech/glide/load/engine/EngineResource;, "Lccsancom/bumptech/glide/load/engine/EngineResource<TZ;>;"
    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/engine/EngineResource;->isCacheable:Z

    return v0
.end method

.method public recycle()V
    .locals 2

    .line 54
    .local p0, "this":Lccsancom/bumptech/glide/load/engine/EngineResource;, "Lccsancom/bumptech/glide/load/engine/EngineResource<TZ;>;"
    iget v0, p0, Lccsancom/bumptech/glide/load/engine/EngineResource;->acquired:I

    if-gtz v0, :cond_1

    .line 57
    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/engine/EngineResource;->isRecycled:Z

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/bumptech/glide/load/engine/EngineResource;->isRecycled:Z

    .line 61
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineResource;->resource:Lccsancom/bumptech/glide/load/engine/Resource;

    invoke-interface {v0}, Lccsancom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 62
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recycle a resource that has already been recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recycle a resource while it is still acquired"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method release()V
    .locals 2

    .line 93
    .local p0, "this":Lccsancom/bumptech/glide/load/engine/EngineResource;, "Lccsancom/bumptech/glide/load/engine/EngineResource<TZ;>;"
    iget v0, p0, Lccsancom/bumptech/glide/load/engine/EngineResource;->acquired:I

    if-lez v0, :cond_2

    .line 96
    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget v0, p0, Lccsancom/bumptech/glide/load/engine/EngineResource;->acquired:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lccsancom/bumptech/glide/load/engine/EngineResource;->acquired:I

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineResource;->listener:Lccsancom/bumptech/glide/load/engine/EngineResource$ResourceListener;

    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/EngineResource;->key:Lccsancom/bumptech/glide/load/Key;

    invoke-interface {v0, v1, p0}, Lccsancom/bumptech/glide/load/engine/EngineResource$ResourceListener;->onResourceReleased(Lccsancom/bumptech/glide/load/Key;Lccsancom/bumptech/glide/load/engine/EngineResource;)V

    .line 102
    :cond_0
    return-void

    .line 97
    :cond_1
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Must call release on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot release a recycled or not yet acquired resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setResourceListener(Lccsancom/bumptech/glide/load/Key;Lccsancom/bumptech/glide/load/engine/EngineResource$ResourceListener;)V
    .locals 0
    .param p1, "key"    # Lccsancom/bumptech/glide/load/Key;
    .param p2, "listener"    # Lccsancom/bumptech/glide/load/engine/EngineResource$ResourceListener;

    .line 34
    .local p0, "this":Lccsancom/bumptech/glide/load/engine/EngineResource;, "Lccsancom/bumptech/glide/load/engine/EngineResource<TZ;>;"
    iput-object p1, p0, Lccsancom/bumptech/glide/load/engine/EngineResource;->key:Lccsancom/bumptech/glide/load/Key;

    .line 35
    iput-object p2, p0, Lccsancom/bumptech/glide/load/engine/EngineResource;->listener:Lccsancom/bumptech/glide/load/engine/EngineResource$ResourceListener;

    .line 36
    return-void
.end method
