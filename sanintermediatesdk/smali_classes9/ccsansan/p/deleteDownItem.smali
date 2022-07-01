.class public Lccsansan/p/deleteDownItem;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static getDownloadingList:Lccsansan/p/deleteDownItem; = null

.field private static volatile removeDownloadListener:Z = false


# instance fields
.field private IncentiveDownloadUtils:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/p/addDownloadListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/p/deleteDownItem;->IncentiveDownloadUtils:Ljava/util/List;

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 8
    invoke-virtual {p0}, Lccsansan/p/deleteDownItem;->getDownloadingList()V

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/p/deleteDownItem;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/p/deleteDownItem;->IncentiveDownloadUtils:Ljava/util/List;

    return-object p0
.end method

.method public static removeDownloadListener()Lccsansan/p/deleteDownItem;
    .locals 2

    .line 1
    sget-object v0, Lccsansan/p/deleteDownItem;->getDownloadingList:Lccsansan/p/deleteDownItem;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lccsansan/p/deleteDownItem;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsansan/p/deleteDownItem;->getDownloadingList:Lccsansan/p/deleteDownItem;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsansan/p/deleteDownItem;

    invoke-direct {v1}, Lccsansan/p/deleteDownItem;-><init>()V

    sput-object v1, Lccsansan/p/deleteDownItem;->getDownloadingList:Lccsansan/p/deleteDownItem;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lccsansan/p/deleteDownItem;->getDownloadingList:Lccsansan/p/deleteDownItem;

    return-object v0
.end method


# virtual methods
.method public addDownloadListener(Lccsansan/p/addDownloadListener$getDownloadingList;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lccsansan/p/deleteDownItem;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/p/addDownloadListener;

    .line 7
    invoke-virtual {v1, p1}, Lccsansan/p/addDownloadListener;->removeDownloadListener(Lccsansan/p/addDownloadListener$getDownloadingList;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lccsansan/p/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/p/addDownloadListener$getDownloadingList;)V

    return-void
.end method

.method public getDownloadingList()V
    .locals 2

    .line 2
    sget-boolean v0, Lccsansan/p/deleteDownItem;->removeDownloadListener:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    sput-boolean v0, Lccsansan/p/deleteDownItem;->removeDownloadListener:Z

    .line 5
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;

    invoke-direct {v1, p0}, Lccsansan/p/deleteDownItem$IncentiveDownloadUtils;-><init>(Lccsansan/p/deleteDownItem;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method
