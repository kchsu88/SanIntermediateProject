.class public Lccsancom/san/ads/TaskHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TYPE_NETWORK_REQUEST:I = 0x4

.field public static final TYPE_NORMAL:I = 0x2

.field public static final TYPE_SOURCE_ANALYTICS_TASK:I = 0x8

.field public static final TYPE_SOURCE_PRELOAD_TASK:I = 0x6

.field private static addDownloadListener:Lccsancom/san/ads/TaskHelper;


# instance fields
.field private IncentiveDownloadUtils:Ljava/util/concurrent/ExecutorService;

.field private getDownloadingList:Ljava/util/concurrent/ExecutorService;

.field private getDownloadingRecordByUrl:Lccsanandroid/os/Handler;

.field private removeDownloadListener:Ljava/util/concurrent/ExecutorService;

.field private unifiedDownload:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/san/ads/TaskHelper;->unifiedDownload:Ljava/util/concurrent/ExecutorService;

    .line 3
    iput-object v0, p0, Lccsancom/san/ads/TaskHelper;->removeDownloadListener:Ljava/util/concurrent/ExecutorService;

    .line 4
    iput-object v0, p0, Lccsancom/san/ads/TaskHelper;->IncentiveDownloadUtils:Ljava/util/concurrent/ExecutorService;

    .line 5
    iput-object v0, p0, Lccsancom/san/ads/TaskHelper;->getDownloadingList:Ljava/util/concurrent/ExecutorService;

    .line 10
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/ads/TaskHelper;->unifiedDownload:Ljava/util/concurrent/ExecutorService;

    .line 11
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/ads/TaskHelper;->removeDownloadListener:Ljava/util/concurrent/ExecutorService;

    .line 13
    new-instance v0, Lccsancom/san/ads/TaskHelper$1;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lccsancom/san/ads/TaskHelper$1;-><init>(Lccsancom/san/ads/TaskHelper;Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/san/ads/TaskHelper;->getDownloadingRecordByUrl:Lccsanandroid/os/Handler;

    return-void
.end method

.method public static getInstance()Lccsancom/san/ads/TaskHelper;
    .locals 1

    .line 1
    sget-object v0, Lccsancom/san/ads/TaskHelper;->addDownloadListener:Lccsancom/san/ads/TaskHelper;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lccsancom/san/ads/TaskHelper;

    invoke-direct {v0}, Lccsancom/san/ads/TaskHelper;-><init>()V

    sput-object v0, Lccsancom/san/ads/TaskHelper;->addDownloadListener:Lccsancom/san/ads/TaskHelper;

    .line 4
    :cond_0
    sget-object v0, Lccsancom/san/ads/TaskHelper;->addDownloadListener:Lccsancom/san/ads/TaskHelper;

    return-object v0
.end method


# virtual methods
.method public run(Lccsancom/san/ads/Task;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;I)V

    return-void
.end method

.method public run(Lccsancom/san/ads/Task;I)V
    .locals 1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_4

    const/4 v0, 0x6

    if-eq p2, v0, :cond_2

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    .line 2
    iget-object p2, p0, Lccsancom/san/ads/TaskHelper;->unifiedDownload:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lccsancom/san/ads/TaskHelper;->getDownloadingList:Ljava/util/concurrent/ExecutorService;

    if-nez p2, :cond_1

    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lccsancom/san/ads/TaskHelper;->getDownloadingList:Ljava/util/concurrent/ExecutorService;

    .line 6
    :cond_1
    iget-object p2, p0, Lccsancom/san/ads/TaskHelper;->getDownloadingList:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    .line 7
    :cond_2
    iget-object p2, p0, Lccsancom/san/ads/TaskHelper;->IncentiveDownloadUtils:Ljava/util/concurrent/ExecutorService;

    if-nez p2, :cond_3

    .line 8
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lccsancom/san/ads/TaskHelper;->IncentiveDownloadUtils:Ljava/util/concurrent/ExecutorService;

    .line 10
    :cond_3
    iget-object p2, p0, Lccsancom/san/ads/TaskHelper;->IncentiveDownloadUtils:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    .line 11
    :cond_4
    iget-object p2, p0, Lccsancom/san/ads/TaskHelper;->removeDownloadListener:Ljava/util/concurrent/ExecutorService;

    .line 28
    :goto_0
    invoke-virtual {p0, p1, p2}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public run(Lccsancom/san/ads/Task;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 29
    :cond_0
    instance-of v0, p1, Lccsancom/san/ads/Task$UICallBackTask;

    if-eqz v0, :cond_1

    .line 30
    move-object v0, p1

    check-cast v0, Lccsancom/san/ads/Task$UICallBackTask;

    iget-object v1, p0, Lccsancom/san/ads/TaskHelper;->getDownloadingRecordByUrl:Lccsanandroid/os/Handler;

    invoke-virtual {v0, v1}, Lccsancom/san/ads/Task$UICallBackTask;->setUIHandler(Lccsanandroid/os/Handler;)V

    .line 32
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
