.class Lccsancom/bumptech/glide/load/engine/ResourceRecycler;
.super Ljava/lang/Object;
.source "ResourceRecycler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/engine/ResourceRecycler$ResourceRecyclerCallback;
    }
.end annotation


# instance fields
.field private final handler:Lccsanandroid/os/Handler;

.field private isRecycling:Z


# direct methods
.method constructor <init>()V
    .locals 4

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    new-instance v2, Lccsancom/bumptech/glide/load/engine/ResourceRecycler$ResourceRecyclerCallback;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lccsancom/bumptech/glide/load/engine/ResourceRecycler$ResourceRecyclerCallback;-><init>(Lccsancom/bumptech/glide/load/engine/ResourceRecycler$1;)V

    invoke-direct {v0, v1, v2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;Lccsanandroid/os/Handler$Callback;)V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/engine/ResourceRecycler;->handler:Lccsanandroid/os/Handler;

    .line 30
    return-void
.end method


# virtual methods
.method public recycle(Lccsancom/bumptech/glide/load/engine/Resource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "*>;)V"
        }
    .end annotation

    .line 17
    .local p1, "resource":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<*>;"
    invoke-static {}, Lccsancom/bumptech/glide/util/Util;->assertMainThread()V

    .line 19
    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/engine/ResourceRecycler;->isRecycling:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/ResourceRecycler;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Lccsanandroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 24
    :cond_0
    iput-boolean v1, p0, Lccsancom/bumptech/glide/load/engine/ResourceRecycler;->isRecycling:Z

    .line 25
    invoke-interface {p1}, Lccsancom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/bumptech/glide/load/engine/ResourceRecycler;->isRecycling:Z

    .line 28
    :goto_0
    return-void
.end method
