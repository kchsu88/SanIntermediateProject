.class final Lccsansan/bw/deleteDownItem$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/bw/deleteDownItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IncentiveDownloadUtils"
.end annotation


# instance fields
.field private final removeDownloadListener:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final unifiedDownload:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lccsanandroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lccsansan/bw/deleteDownItem$IncentiveDownloadUtils;->removeDownloadListener:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lccsansan/bw/deleteDownItem$IncentiveDownloadUtils;->unifiedDownload:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lccsansan/bw/deleteDownItem$getDownloadingList;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lccsansan/bw/deleteDownItem$IncentiveDownloadUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Lccsanandroid/content/ComponentName;Lccsanandroid/os/IBinder;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lccsansan/bw/deleteDownItem$IncentiveDownloadUtils;->unifiedDownload:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Lccsanandroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public unifiedDownload()Lccsanandroid/os/IBinder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/bw/deleteDownItem$IncentiveDownloadUtils;->removeDownloadListener:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lccsansan/bw/deleteDownItem$IncentiveDownloadUtils;->unifiedDownload:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/os/IBinder;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Binder already consumed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
