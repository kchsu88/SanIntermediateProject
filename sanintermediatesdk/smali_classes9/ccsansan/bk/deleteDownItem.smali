.class public Lccsansan/bk/deleteDownItem;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/bk/addDownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/bk/deleteDownItem$unifiedDownload;
    }
.end annotation


# instance fields
.field private final IncentiveDownloadUtils:Ljava/util/concurrent/locks/ReentrantLock;

.field private addDownloadListener:Ljava/lang/Thread;

.field private volatile deleteDownItem:Lccsansan/bk/deleteDownItem$unifiedDownload;

.field private final getDownloadingList:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lccsansan/bk/deleteDownItem$unifiedDownload;",
            ">;"
        }
    .end annotation
.end field

.field private final removeDownloadListener:Ljava/util/concurrent/Executor;

.field private final unifiedDownload:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lccsansan/bk/deleteDownItem;->IncentiveDownloadUtils:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lccsansan/bk/deleteDownItem;->unifiedDownload:Ljava/util/concurrent/locks/Condition;

    .line 22
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lccsansan/bk/deleteDownItem;->getDownloadingList:Ljava/util/PriorityQueue;

    .line 23
    iput-object p1, p0, Lccsansan/bk/deleteDownItem;->removeDownloadListener:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method unifiedDownload()V
    .locals 7

    .line 69
    iget-object v0, p0, Lccsansan/bk/deleteDownItem;->IncentiveDownloadUtils:Ljava/util/concurrent/locks/ReentrantLock;

    .line 70
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 73
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lccsansan/bk/deleteDownItem;->deleteDownItem:Lccsansan/bk/deleteDownItem$unifiedDownload;

    .line 76
    :goto_0
    iget-object v2, p0, Lccsansan/bk/deleteDownItem;->getDownloadingList:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/bk/deleteDownItem$unifiedDownload;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    .line 100
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 101
    :cond_0
    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3}, Lccsansan/bk/deleteDownItem$unifiedDownload;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    .line 104
    iget-object v1, p0, Lccsansan/bk/deleteDownItem;->removeDownloadListener:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lccsansan/bk/deleteDownItem;->getDownloadingList:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/bk/deleteDownItem$unifiedDownload;

    iput-object v2, p0, Lccsansan/bk/deleteDownItem;->deleteDownItem:Lccsansan/bk/deleteDownItem$unifiedDownload;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 121
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iput-object v4, p0, Lccsansan/bk/deleteDownItem;->addDownloadListener:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    :try_start_3
    iget-object v4, p0, Lccsansan/bk/deleteDownItem;->unifiedDownload:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 126
    :try_start_4
    iget-object v3, p0, Lccsansan/bk/deleteDownItem;->getDownloadingList:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->clear()V

    .line 127
    new-instance v3, Lccsansan/bj/IncentiveDownloadUtils;

    invoke-direct {v3, v2}, Lccsansan/bj/IncentiveDownloadUtils;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lccsansan/bj/getDownloadingList;->getDownloadingList(Lccsansan/bj/IncentiveDownloadUtils;)V

    :goto_1
    nop

    .line 130
    iput-object v1, p0, Lccsansan/bk/deleteDownItem;->addDownloadListener:Ljava/lang/Thread;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 133
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 134
    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public unifiedDownload(Lccsansan/bk/getDownloadingList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/bk/deleteDownItem;->IncentiveDownloadUtils:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    :try_start_0
    new-instance v1, Lccsansan/bk/deleteDownItem$unifiedDownload;

    invoke-direct {v1, p0, p1}, Lccsansan/bk/deleteDownItem$unifiedDownload;-><init>(Lccsansan/bk/deleteDownItem;Lccsansan/bk/getDownloadingList;)V

    .line 5
    iget-object p1, p0, Lccsansan/bk/deleteDownItem;->getDownloadingList:Ljava/util/PriorityQueue;

    invoke-virtual {p1, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lccsansan/bk/deleteDownItem;->getDownloadingList:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, p1, :cond_0

    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 28
    :cond_0
    :try_start_1
    iget-object p1, p0, Lccsansan/bk/deleteDownItem;->addDownloadListener:Ljava/lang/Thread;

    if-eqz p1, :cond_1

    .line 29
    iget-object p1, p0, Lccsansan/bk/deleteDownItem;->unifiedDownload:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 46
    :cond_1
    :try_start_2
    iget-object p1, p0, Lccsansan/bk/deleteDownItem;->deleteDownItem:Lccsansan/bk/deleteDownItem$unifiedDownload;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_2

    .line 58
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 59
    :cond_2
    :try_start_3
    new-instance p1, Lccsansan/bk/deleteDownItem$removeDownloadListener;

    invoke-direct {p1, p0}, Lccsansan/bk/deleteDownItem$removeDownloadListener;-><init>(Lccsansan/bk/deleteDownItem;)V

    .line 65
    invoke-static {}, Lccsansan/bh/addDownloadListener;->unifiedDownload()Lccsansan/bh/addDownloadListener;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/bh/addDownloadListener;->removeDownloadListener()Lccsansan/bk/getDownloadStatusByUrl;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/bk/getDownloadStatusByUrl;->removeDownloadListener()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 67
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 68
    throw p1
.end method
