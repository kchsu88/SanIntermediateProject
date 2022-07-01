.class public Lccsansan/ar/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private IncentiveDownloadUtils:I

.field private addDownloadListener:Lccsanandroid/content/Context;

.field private deleteDownItem:Z

.field private getDownloadStatusByUrl:Ljava/util/concurrent/ExecutorService;

.field private getDownloadedList:Ljava/util/concurrent/ExecutorService;

.field private getDownloadingList:Lccsansan/ar/getDownloadingList;

.field private removeDownloadListener:Lccsanandroid/content/BroadcastReceiver;

.field private unifiedDownload:Lccsansan/ai/addDownloadListener;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lccsansan/ar/removeDownloadListener;->removeDownloadListener:Lccsanandroid/content/BroadcastReceiver;

    .line 14
    iput-object p1, p0, Lccsansan/ar/removeDownloadListener;->addDownloadListener:Lccsanandroid/content/Context;

    .line 15
    invoke-static {}, Lccsansan/am/IncentiveDownloadUtils;->unifiedDownload()Lccsansan/am/IncentiveDownloadUtils;

    move-result-object p1

    invoke-static {p1}, Lccsansan/ai/unifiedDownload;->unifiedDownload(Lccsansan/am/IncentiveDownloadUtils;)V

    .line 16
    new-instance p1, Lccsansan/ar/getDownloadingList;

    iget-object v0, p0, Lccsansan/ar/removeDownloadListener;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-direct {p1, v0}, Lccsansan/ar/getDownloadingList;-><init>(Lccsanandroid/content/Context;)V

    iput-object p1, p0, Lccsansan/ar/removeDownloadListener;->getDownloadingList:Lccsansan/ar/getDownloadingList;

    .line 17
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsansan/ar/removeDownloadListener;->deleteDownItem:Z

    .line 19
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lccsansan/ar/removeDownloadListener;->getDownloadStatusByUrl:Ljava/util/concurrent/ExecutorService;

    .line 20
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lccsansan/ar/removeDownloadListener;->getDownloadedList:Ljava/util/concurrent/ExecutorService;

    .line 22
    invoke-direct {p0}, Lccsansan/ar/removeDownloadListener;->addDownloadListener()V

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/ar/removeDownloadListener;)Lccsansan/ar/getDownloadingList;
    .locals 0

    .line 3
    iget-object p0, p0, Lccsansan/ar/removeDownloadListener;->getDownloadingList:Lccsansan/ar/getDownloadingList;

    return-object p0
.end method

.method private declared-synchronized IncentiveDownloadUtils(Lccsansan/ar/getDownloadingList$addDownloadListener;Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    .line 34
    :try_start_0
    iget-object v0, p0, Lccsansan/ar/removeDownloadListener;->getDownloadingList:Lccsansan/ar/getDownloadingList;

    invoke-virtual {v0, p1}, Lccsansan/ar/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/ar/getDownloadingList$addDownloadListener;)V

    .line 35
    invoke-direct {p0, p1, p2}, Lccsansan/ar/removeDownloadListener;->getDownloadingList(Lccsansan/ar/getDownloadingList$addDownloadListener;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 39
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doDispatch portal:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AD.SanStats.Manager"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lccsansan/ar/removeDownloadListener;->unifiedDownload:Lccsansan/ai/addDownloadListener;

    if-nez p1, :cond_1

    invoke-static {}, Lccsansan/bw/toString;->removeDownloadListener()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lccsansan/ai/addDownloadListener;->unifiedDownload()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lccsansan/ar/removeDownloadListener;->unifiedDownload(Ljava/lang/String;)Lccsansan/ai/addDownloadListener;

    move-result-object p1

    iput-object p1, p0, Lccsansan/ar/removeDownloadListener;->unifiedDownload:Lccsansan/ai/addDownloadListener;

    .line 42
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsansan/ar/removeDownloadListener;->deleteDownItem:Z

    .line 45
    iget-object v0, p0, Lccsansan/ar/removeDownloadListener;->getDownloadedList:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lccsansan/ar/removeDownloadListener$getDownloadingList;

    invoke-direct {v1, p0, p2}, Lccsansan/ar/removeDownloadListener$getDownloadingList;-><init>(Lccsansan/ar/removeDownloadListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 33
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic addDownloadListener(Lccsansan/ar/removeDownloadListener;)Lccsanandroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/ar/removeDownloadListener;->addDownloadListener:Lccsanandroid/content/Context;

    return-object p0
.end method

.method private addDownloadListener()V
    .locals 3

    .line 2
    new-instance v0, Lccsansan/ar/removeDownloadListener$addDownloadListener;

    invoke-direct {v0, p0}, Lccsansan/ar/removeDownloadListener$addDownloadListener;-><init>(Lccsansan/ar/removeDownloadListener;)V

    iput-object v0, p0, Lccsansan/ar/removeDownloadListener;->removeDownloadListener:Lccsanandroid/content/BroadcastReceiver;

    .line 11
    new-instance v0, Lccsanandroid/content/IntentFilter;

    invoke-direct {v0}, Lccsanandroid/content/IntentFilter;-><init>()V

    .line 12
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lccsansan/ar/removeDownloadListener;->addDownloadListener:Lccsanandroid/content/Context;

    if-eqz v1, :cond_0

    .line 14
    iget-object v2, p0, Lccsansan/ar/removeDownloadListener;->removeDownloadListener:Lccsanandroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    :cond_0
    return-void
.end method

.method private declared-synchronized addDownloadListener(Lccsansan/ai/removeDownloadListener;)V
    .locals 5

    monitor-enter p0

    .line 15
    :try_start_0
    invoke-static {p1}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 17
    iget-object v0, p0, Lccsansan/ar/removeDownloadListener;->unifiedDownload:Lccsansan/ai/addDownloadListener;

    if-nez v0, :cond_0

    .line 19
    invoke-static {}, Lccsansan/bw/toString;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsansan/ar/removeDownloadListener;->unifiedDownload(Ljava/lang/String;)Lccsansan/ai/addDownloadListener;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ar/removeDownloadListener;->unifiedDownload:Lccsansan/ai/addDownloadListener;

    goto :goto_0

    .line 20
    :cond_0
    iget v0, p0, Lccsansan/ar/removeDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lccsansan/ar/removeDownloadListener;->IncentiveDownloadUtils:I

    const/16 v1, 0x400

    invoke-static {v1}, Lccsansan/ac/getDownloadingList;->getDownloadingList(I)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 22
    iget-object v0, p0, Lccsansan/ar/removeDownloadListener;->unifiedDownload:Lccsansan/ai/addDownloadListener;

    invoke-virtual {v0}, Lccsansan/ai/addDownloadListener;->unifiedDownload()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsansan/ar/removeDownloadListener;->unifiedDownload(Ljava/lang/String;)Lccsansan/ai/addDownloadListener;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ar/removeDownloadListener;->unifiedDownload:Lccsansan/ai/addDownloadListener;

    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p1}, Lccsansan/ai/removeDownloadListener;->unifiedDownload()Lccsansan/ai/removeDownloadListener$getDownloadingList;

    move-result-object v0

    sget-object v1, Lccsansan/ai/removeDownloadListener$getDownloadingList;->PageIn:Lccsansan/ai/removeDownloadListener$getDownloadingList;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lccsansan/ai/removeDownloadListener;->getDownloadedRecordByUrl()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 25
    invoke-static {}, Lccsansan/bw/toString;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsansan/ar/removeDownloadListener;->unifiedDownload(Ljava/lang/String;)Lccsansan/ai/addDownloadListener;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ar/removeDownloadListener;->unifiedDownload:Lccsansan/ai/addDownloadListener;

    .line 28
    :cond_2
    :goto_0
    iget-object v0, p0, Lccsansan/ar/removeDownloadListener;->unifiedDownload:Lccsansan/ai/addDownloadListener;

    invoke-virtual {v0}, Lccsansan/ai/addDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsansan/ai/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lccsansan/ai/removeDownloadListener;->deleteDownItem()Z

    move-result v0

    if-nez v0, :cond_3

    .line 31
    invoke-static {}, Lccsansan/am/IncentiveDownloadUtils;->unifiedDownload()Lccsansan/am/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsansan/am/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/ai/removeDownloadListener;)Z

    .line 32
    :cond_3
    invoke-static {}, Lccsansan/bl/addDownloadListener;->deleteDownItem()Lccsansan/bl/addDownloadListener$addDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 33
    invoke-static {}, Lccsansan/bl/addDownloadListener;->deleteDownItem()Lccsansan/bl/addDownloadListener$addDownloadListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsansan/bl/addDownloadListener$addDownloadListener;->a(Lccsansan/ai/removeDownloadListener;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    .line 14
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic addDownloadListener(Lccsansan/ar/removeDownloadListener;Lccsansan/ar/getDownloadingList$addDownloadListener;Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lccsansan/ar/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/ar/getDownloadingList$addDownloadListener;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic getDownloadingList(Lccsansan/ar/removeDownloadListener;)Lccsansan/ai/addDownloadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/ar/removeDownloadListener;->unifiedDownload:Lccsansan/ai/addDownloadListener;

    return-object p0
.end method

.method private getDownloadingList(Lccsansan/ar/getDownloadingList$addDownloadListener;Ljava/lang/String;)Z
    .locals 3

    .line 2
    sget-object v0, Lccsansan/ar/getDownloadingList$addDownloadListener;->DEFAULT:Lccsansan/ar/getDownloadingList$addDownloadListener;

    const-string v1, "AD.SanStats.Manager"

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "policy_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lccsansan/ar/removeDownloadListener;->getDownloadingList:Lccsansan/ar/getDownloadingList;

    invoke-virtual {v0, p2}, Lccsansan/ar/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    const-string p1, "isUpload true on special portal"

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 9
    :cond_0
    sget-object v0, Lccsansan/ar/getDownloadingList$addDownloadListener;->QUIT_APP:Lccsansan/ar/getDownloadingList$addDownloadListener;

    if-ne p1, v0, :cond_1

    .line 10
    iget-object p1, p0, Lccsansan/ar/removeDownloadListener;->getDownloadingList:Lccsansan/ar/getDownloadingList;

    invoke-virtual {p1, p2}, Lccsansan/ar/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    const-string p1, "isUpload true on QUIT_APP"

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 16
    :cond_1
    iget-boolean p1, p0, Lccsansan/ar/removeDownloadListener;->deleteDownItem:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lccsansan/ar/removeDownloadListener;->getDownloadingList:Lccsansan/ar/getDownloadingList;

    invoke-virtual {p1}, Lccsansan/ar/getDownloadingList;->IncentiveDownloadUtils()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic getDownloadingList(Lccsansan/ar/removeDownloadListener;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lccsansan/ar/removeDownloadListener;->deleteDownItem:Z

    return p1
.end method

.method static synthetic removeDownloadListener(Lccsansan/ar/removeDownloadListener;Lccsansan/ai/removeDownloadListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsansan/ar/removeDownloadListener;->addDownloadListener(Lccsansan/ai/removeDownloadListener;)V

    return-void
.end method

.method private unifiedDownload(Ljava/lang/String;)Lccsansan/ai/addDownloadListener;
    .locals 4

    .line 12
    iget-object v0, p0, Lccsansan/ar/removeDownloadListener;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/bw/getMinIntervalToReturn;->addDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 14
    new-instance v2, Lccsansan/ai/addDownloadListener;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, p1, v3, v1}, Lccsansan/ai/addDownloadListener;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create new header entity:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsansan/ai/addDownloadListener;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AD.SanStats.Manager"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lccsansan/am/IncentiveDownloadUtils;->unifiedDownload()Lccsansan/am/IncentiveDownloadUtils;

    move-result-object p1

    invoke-virtual {p1, v2}, Lccsansan/am/IncentiveDownloadUtils;->removeDownloadListener(Lccsansan/ai/addDownloadListener;)Z

    .line 17
    const/4 p1, 0x1

    iput p1, p0, Lccsansan/ar/removeDownloadListener;->IncentiveDownloadUtils:I

    return-object v2
.end method


# virtual methods
.method public addDownloadListener(Lccsansan/ar/getDownloadingList$addDownloadListener;Ljava/lang/String;)V
    .locals 2

    .line 18
    iget-object v0, p0, Lccsansan/ar/removeDownloadListener;->getDownloadStatusByUrl:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lccsansan/ar/removeDownloadListener$removeDownloadListener;

    invoke-direct {v1, p0, p1, p2}, Lccsansan/ar/removeDownloadListener$removeDownloadListener;-><init>(Lccsansan/ar/removeDownloadListener;Lccsansan/ar/getDownloadingList$addDownloadListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public getDownloadingList(Lccsansan/ai/removeDownloadListener;)V
    .locals 2

    .line 5
    invoke-virtual {p1}, Lccsansan/ai/removeDownloadListener;->unifiedDownload()Lccsansan/ai/removeDownloadListener$getDownloadingList;

    move-result-object v0

    sget-object v1, Lccsansan/ai/removeDownloadListener$getDownloadingList;->UnhandledException:Lccsansan/ai/removeDownloadListener$getDownloadingList;

    if-ne v0, v1, :cond_0

    .line 6
    invoke-direct {p0, p1}, Lccsansan/ar/removeDownloadListener;->addDownloadListener(Lccsansan/ai/removeDownloadListener;)V

    .line 7
    sget-object p1, Lccsansan/ar/getDownloadingList$addDownloadListener;->UNHANDLE_EXCEPTION_EVENT:Lccsansan/ar/getDownloadingList$addDownloadListener;

    const-string v0, "add_event"

    invoke-direct {p0, p1, v0}, Lccsansan/ar/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/ar/getDownloadingList$addDownloadListener;Ljava/lang/String;)Z

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lccsansan/ar/removeDownloadListener;->getDownloadStatusByUrl:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lccsansan/ar/removeDownloadListener$unifiedDownload;

    invoke-direct {v1, p0, p1}, Lccsansan/ar/removeDownloadListener$unifiedDownload;-><init>(Lccsansan/ar/removeDownloadListener;Lccsansan/ai/removeDownloadListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public removeDownloadListener()V
    .locals 2

    .line 19
    const-string v0, "AD.SanStats.Manager"

    const-string v1, "san stats manager will be destroyed!"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lccsansan/ar/removeDownloadListener;->getDownloadStatusByUrl:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 21
    iget-object v0, p0, Lccsansan/ar/removeDownloadListener;->getDownloadedList:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 22
    iget-object v0, p0, Lccsansan/ar/removeDownloadListener;->addDownloadListener:Lccsanandroid/content/Context;

    if-eqz v0, :cond_0

    .line 23
    iget-object v1, p0, Lccsansan/ar/removeDownloadListener;->removeDownloadListener:Lccsanandroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->unregisterReceiver(Lccsanandroid/content/BroadcastReceiver;)V

    .line 24
    :cond_0
    invoke-static {}, Lccsansan/am/IncentiveDownloadUtils;->IncentiveDownloadUtils()V

    return-void
.end method
