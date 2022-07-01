.class public Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;
.super Ljava/lang/Object;
.source "ThumbnailRequestCoordinator.java"

# interfaces
.implements Lccsancom/bumptech/glide/request/RequestCoordinator;
.implements Lccsancom/bumptech/glide/request/Request;


# instance fields
.field private coordinator:Lccsancom/bumptech/glide/request/RequestCoordinator;

.field private full:Lccsancom/bumptech/glide/request/Request;

.field private thumb:Lccsancom/bumptech/glide/request/Request;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;-><init>(Lccsancom/bumptech/glide/request/RequestCoordinator;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Lccsancom/bumptech/glide/request/RequestCoordinator;)V
    .locals 0
    .param p1, "coordinator"    # Lccsancom/bumptech/glide/request/RequestCoordinator;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->coordinator:Lccsancom/bumptech/glide/request/RequestCoordinator;

    .line 18
    return-void
.end method

.method private parentCanNotifyStatusChanged()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->coordinator:Lccsancom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lccsancom/bumptech/glide/request/RequestCoordinator;->canNotifyStatusChanged(Lccsancom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private parentCanSetImage()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->coordinator:Lccsancom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lccsancom/bumptech/glide/request/RequestCoordinator;->canSetImage(Lccsancom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private parentIsAnyResourceSet()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->coordinator:Lccsancom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lccsancom/bumptech/glide/request/RequestCoordinator;->isAnyResourceSet()Z

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
.method public begin()V
    .locals 1

    .line 86
    iget-object v0, p0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lccsancom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lccsancom/bumptech/glide/request/Request;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lccsancom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lccsancom/bumptech/glide/request/Request;->begin()V

    .line 89
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lccsancom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lccsancom/bumptech/glide/request/Request;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lccsancom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lccsancom/bumptech/glide/request/Request;->begin()V

    .line 92
    :cond_1
    return-void
.end method

.method public canNotifyStatusChanged(Lccsancom/bumptech/glide/request/Request;)Z
    .locals 1
    .param p1, "request"    # Lccsancom/bumptech/glide/request/Request;

    .line 49
    invoke-direct {p0}, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->parentCanNotifyStatusChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lccsancom/bumptech/glide/request/Request;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->isAnyResourceSet()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canSetImage(Lccsancom/bumptech/glide/request/Request;)Z
    .locals 1
    .param p1, "request"    # Lccsancom/bumptech/glide/request/Request;

    .line 34
    invoke-direct {p0}, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->parentCanSetImage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lccsancom/bumptech/glide/request/Request;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lccsancom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lccsancom/bumptech/glide/request/Request;->isResourceSet()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clear()V
    .locals 1

    .line 105
    iget-object v0, p0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lccsancom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lccsancom/bumptech/glide/request/Request;->clear()V

    .line 106
    iget-object v0, p0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lccsancom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lccsancom/bumptech/glide/request/Request;->clear()V

    .line 107
    return-void
.end method

.method public isAnyResourceSet()Z
    .locals 1

    .line 58
    invoke-direct {p0}, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->parentIsAnyResourceSet()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->isResourceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 137
    iget-object v0, p0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lccsancom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lccsancom/bumptech/glide/request/Request;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isComplete()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lccsancom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lccsancom/bumptech/glide/request/Request;->isComplete()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lccsancom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lccsancom/bumptech/glide/request/Request;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isFailed()Z
    .locals 1

    .line 145
    iget-object v0, p0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lccsancom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lccsancom/bumptech/glide/request/Request;->isFailed()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lccsancom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lccsancom/bumptech/glide/request/Request;->isPaused()Z

    move-result v0

    return v0
.end method

.method public isResourceSet()Z
    .locals 1

    .line 132
    iget-object v0, p0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lccsancom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lccsancom/bumptech/glide/request/Request;->isResourceSet()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lccsancom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lccsancom/bumptech/glide/request/Request;->isResourceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lccsancom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lccsancom/bumptech/glide/request/Request;->isRunning()Z

    move-result v0

    return v0
.end method

.method public onRequestSuccess(Lccsancom/bumptech/glide/request/Request;)V
    .locals 1
    .param p1, "request"    # Lccsancom/bumptech/glide/request/Request;

    .line 63
    iget-object v0, p0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lccsancom/bumptech/glide/request/Request;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->coordinator:Lccsancom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    .line 67
    invoke-interface {v0, p0}, Lccsancom/bumptech/glide/request/RequestCoordinator;->onRequestSuccess(Lccsancom/bumptech/glide/request/Request;)V

    .line 72
    :cond_1
    iget-object v0, p0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lccsancom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lccsancom/bumptech/glide/request/Request;->isComplete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    iget-object v0, p0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lccsancom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lccsancom/bumptech/glide/request/Request;->clear()V

    .line 75
    :cond_2
    return-void
.end method

.method public pause()V
    .locals 1

    .line 96
    iget-object v0, p0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lccsancom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lccsancom/bumptech/glide/request/Request;->pause()V

    .line 97
    iget-object v0, p0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lccsancom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lccsancom/bumptech/glide/request/Request;->pause()V

    .line 98
    return-void
.end method

.method public recycle()V
    .locals 1

    .line 153
    iget-object v0, p0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lccsancom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lccsancom/bumptech/glide/request/Request;->recycle()V

    .line 154
    iget-object v0, p0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lccsancom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lccsancom/bumptech/glide/request/Request;->recycle()V

    .line 155
    return-void
.end method

.method public setRequests(Lccsancom/bumptech/glide/request/Request;Lccsancom/bumptech/glide/request/Request;)V
    .locals 0
    .param p1, "full"    # Lccsancom/bumptech/glide/request/Request;
    .param p2, "thumb"    # Lccsancom/bumptech/glide/request/Request;

    .line 21
    iput-object p1, p0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lccsancom/bumptech/glide/request/Request;

    .line 22
    iput-object p2, p0, Lccsancom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lccsancom/bumptech/glide/request/Request;

    .line 23
    return-void
.end method
