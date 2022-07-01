.class public Lccsansan/cv/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected final IncentiveDownloadUtils:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lccsansan/cv/removeDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final addDownloadListener:I

.field protected final getDownloadingList:I

.field protected removeDownloadListener:I

.field protected final unifiedDownload:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lccsansan/cv/removeDownloadListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lccsansan/cv/getDownloadingList;->unifiedDownload:Ljava/util/concurrent/BlockingQueue;

    .line 3
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lccsansan/cv/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/concurrent/BlockingQueue;

    .line 6
    iput p1, p0, Lccsansan/cv/getDownloadingList;->addDownloadListener:I

    .line 7
    iput p2, p0, Lccsansan/cv/getDownloadingList;->getDownloadingList:I

    return-void
.end method


# virtual methods
.method public final addDownloadListener(I)Lccsansan/cv/removeDownloadListener;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/cv/getDownloadingList;->unifiedDownload:Ljava/util/concurrent/BlockingQueue;

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, p1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsansan/cv/removeDownloadListener;

    return-object p1
.end method

.method public final addDownloadListener(Lccsansan/cv/removeDownloadListener;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lccsansan/cv/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getDownloadingList(I)Lccsansan/cv/removeDownloadListener;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/cv/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lccsansan/cv/getDownloadingList;->removeDownloadListener:I

    iget v1, p0, Lccsansan/cv/getDownloadingList;->getDownloadingList:I

    if-ge v0, v1, :cond_0

    .line 2
    iget v0, p0, Lccsansan/cv/getDownloadingList;->addDownloadListener:I

    invoke-static {v0}, Lccsansan/cv/removeDownloadListener;->IncentiveDownloadUtils(I)Lccsansan/cv/removeDownloadListener;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lccsansan/cv/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 4
    iget v0, p0, Lccsansan/cv/getDownloadingList;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lccsansan/cv/getDownloadingList;->removeDownloadListener:I

    .line 6
    :cond_0
    iget-object v0, p0, Lccsansan/cv/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/concurrent/BlockingQueue;

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, p1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsansan/cv/removeDownloadListener;

    return-object p1
.end method

.method public final removeDownloadListener(Lccsansan/cv/removeDownloadListener;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lccsansan/cv/getDownloadingList;->unifiedDownload:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
