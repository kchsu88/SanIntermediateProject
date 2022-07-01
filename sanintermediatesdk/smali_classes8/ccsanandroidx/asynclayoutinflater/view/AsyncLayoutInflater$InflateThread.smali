.class Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;
.super Ljava/lang/Thread;
.source "AsyncLayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InflateThread"
.end annotation


# static fields
.field private static final sInstance:Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;


# instance fields
.field private mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestPool:Lccsanandroidx/core/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/core/util/Pools$SynchronizedPool<",
            "Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 163
    new-instance v0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;

    invoke-direct {v0}, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;-><init>()V

    sput-object v0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->sInstance:Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;

    .line 164
    invoke-virtual {v0}, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->start()V

    .line 165
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 160
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 171
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 172
    new-instance v0, Lccsanandroidx/core/util/Pools$SynchronizedPool;

    invoke-direct {v0, v1}, Lccsanandroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Lccsanandroidx/core/util/Pools$SynchronizedPool;

    return-void
.end method

.method public static getInstance()Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;
    .locals 1

    .line 168
    sget-object v0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->sInstance:Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;

    return-object v0
.end method


# virtual methods
.method public enqueue(Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;)V
    .locals 3
    .param p1, "request"    # Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;

    .line 225
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    nop

    .line 230
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to enqueue async inflate request"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public obtainRequest()Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;
    .locals 2

    .line 207
    iget-object v0, p0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Lccsanandroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Lccsanandroidx/core/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;

    .line 208
    .local v0, "obj":Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;
    if-nez v0, :cond_0

    .line 209
    new-instance v1, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;

    invoke-direct {v1}, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;-><init>()V

    move-object v0, v1

    .line 211
    :cond_0
    return-object v0
.end method

.method public releaseRequest(Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;)V
    .locals 2
    .param p1, "obj"    # Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;

    .line 215
    const/4 v0, 0x0

    iput-object v0, p1, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->callback:Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;

    .line 216
    iput-object v0, p1, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->inflater:Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    .line 217
    iput-object v0, p1, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->parent:Lccsanandroid/view/ViewGroup;

    .line 218
    const/4 v1, 0x0

    iput v1, p1, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->resid:I

    .line 219
    iput-object v0, p1, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->view:Lccsanandroid/view/View;

    .line 220
    iget-object v0, p0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Lccsanandroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p1}, Lccsanandroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method public run()V
    .locals 0

    .line 202
    :goto_0
    invoke-virtual {p0}, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->runInner()V

    goto :goto_0
.end method

.method public runInner()V
    .locals 6

    .line 180
    const-string v0, "AsyncLayoutInflater"

    :try_start_0
    iget-object v1, p0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 185
    .local v1, "request":Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;
    nop

    .line 188
    const/4 v2, 0x0

    :try_start_1
    iget-object v3, v1, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->inflater:Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    iget-object v3, v3, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater;->mInflater:Lccsanandroid/view/LayoutInflater;

    iget v4, v1, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->resid:I

    iget-object v5, v1, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->parent:Lccsanandroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5, v2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->view:Lccsanandroid/view/View;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 194
    goto :goto_0

    .line 190
    :catch_0
    move-exception v3

    .line 192
    .local v3, "ex":Ljava/lang/RuntimeException;
    const-string v4, "Failed to inflate resource in the background! Retrying on the UI thread"

    invoke-static {v0, v4, v3}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v0, v1, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->inflater:Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    iget-object v0, v0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater;->mHandler:Lccsanandroid/os/Handler;

    invoke-static {v0, v2, v1}, Lccsanandroid/os/Message;->obtain(Lccsanandroid/os/Handler;ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Lccsanandroid/os/Message;->sendToTarget()V

    .line 197
    return-void

    .line 181
    .end local v1    # "request":Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;
    :catch_1
    move-exception v1

    .line 183
    .local v1, "ex":Ljava/lang/InterruptedException;
    invoke-static {v0, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    return-void
.end method
