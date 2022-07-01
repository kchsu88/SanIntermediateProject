.class public Lccsancom/san/ads/CommonActivityLifecycle;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/ads/CommonActivityLifecycle$AppStatusCallBack;,
        Lccsancom/san/ads/CommonActivityLifecycle$ActivityStatsCallBack;
    }
.end annotation


# static fields
.field private static IncentiveDownloadUtils:Lccsancom/san/ads/CommonActivityLifecycle;

.field private static getDownloadStatusByUrl:I

.field private static final getDownloadingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/san/ads/CommonActivityLifecycle$AppStatusCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private static final removeDownloadListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/san/ads/CommonActivityLifecycle$ActivityStatsCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private static final unifiedDownload:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field protected final addDownloadListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private final deleteDownItem:Ljava/util/concurrent/atomic/AtomicInteger;

.field public hasInitializedLifecycle:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lccsancom/san/ads/CommonActivityLifecycle;->unifiedDownload:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lccsancom/san/ads/CommonActivityLifecycle;->removeDownloadListener:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lccsancom/san/ads/CommonActivityLifecycle;->getDownloadingList:Ljava/util/List;

    .line 9
    const/4 v0, 0x1

    sput v0, Lccsancom/san/ads/CommonActivityLifecycle;->getDownloadStatusByUrl:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lccsancom/san/ads/CommonActivityLifecycle;->addDownloadListener:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lccsancom/san/ads/CommonActivityLifecycle;->deleteDownItem:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lccsancom/san/ads/CommonActivityLifecycle;->hasInitializedLifecycle:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private IncentiveDownloadUtils()V
    .locals 3

    .line 2
    iget-object v0, p0, Lccsancom/san/ads/CommonActivityLifecycle;->deleteDownItem:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/san/ads/CommonActivityLifecycle;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doExit: shouldAppExit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " foregroundCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/san/ads/CommonActivityLifecycle;->deleteDownItem:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CommonActivityLifecycle"

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lccsancom/san/ads/CommonActivityLifecycle;->getDownloadingList()V

    :cond_1
    return-void
.end method

.method private addDownloadListener(Lccsanandroid/app/Activity;)V
    .locals 3

    .line 3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/t/unifiedDownload;->addDownloadListener(Lccsanandroid/content/Context;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onAppInit: hasExeFirstInit = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lccsancom/san/ads/CommonActivityLifecycle;->unifiedDownload:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CommonActivityLifecycle"

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    sget-object v0, Lccsancom/san/ads/CommonActivityLifecycle;->getDownloadingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/san/ads/CommonActivityLifecycle$AppStatusCallBack;

    .line 9
    invoke-interface {v1, p1}, Lccsancom/san/ads/CommonActivityLifecycle$AppStatusCallBack;->onAppInit(Lccsanandroid/app/Activity;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static getDownloadingList(Lccsanandroid/app/Activity;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDownloadingList()V
    .locals 2

    .line 14
    sget-object v0, Lccsancom/san/ads/CommonActivityLifecycle;->getDownloadingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/san/ads/CommonActivityLifecycle$AppStatusCallBack;

    .line 15
    invoke-interface {v1}, Lccsancom/san/ads/CommonActivityLifecycle$AppStatusCallBack;->onAppExit()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Lccsansan/m/unifiedDownload;->addDownloadListener()V

    .line 18
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/t/unifiedDownload;->removeDownloadListener(Lccsanandroid/content/Context;)V

    return-void
.end method

.method public static getInstance()Lccsancom/san/ads/CommonActivityLifecycle;
    .locals 2

    .line 1
    sget-object v0, Lccsancom/san/ads/CommonActivityLifecycle;->IncentiveDownloadUtils:Lccsancom/san/ads/CommonActivityLifecycle;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lccsancom/san/ads/CommonActivityLifecycle;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Lccsancom/san/ads/CommonActivityLifecycle;

    invoke-direct {v1}, Lccsancom/san/ads/CommonActivityLifecycle;-><init>()V

    sput-object v1, Lccsancom/san/ads/CommonActivityLifecycle;->IncentiveDownloadUtils:Lccsancom/san/ads/CommonActivityLifecycle;

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_0
    :goto_0
    sget-object v0, Lccsancom/san/ads/CommonActivityLifecycle;->IncentiveDownloadUtils:Lccsancom/san/ads/CommonActivityLifecycle;

    return-object v0
.end method

.method private removeDownloadListener(Lccsanandroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lccsancom/san/ads/CommonActivityLifecycle;->unifiedDownload(Lccsanandroid/app/Activity;)V

    .line 3
    iget-object v0, p0, Lccsancom/san/ads/CommonActivityLifecycle;->deleteDownItem:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lccsancom/san/ads/CommonActivityLifecycle;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#onActivityActive: isFirstInit = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " foregroundCount = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/san/ads/CommonActivityLifecycle;->deleteDownItem:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CommonActivityLifecycle"

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 7
    invoke-direct {p0, p1}, Lccsancom/san/ads/CommonActivityLifecycle;->addDownloadListener(Lccsanandroid/app/Activity;)V

    .line 10
    :cond_1
    invoke-static {p1}, Lccsancom/san/core/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/app/Activity;)V

    .line 12
    invoke-static {}, Lccsansan/dl/getDownloadingList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    invoke-static {}, Lccsansan/dl/getDownloadingList;->addDownloadListener()V

    :cond_2
    return-void
.end method

.method private unifiedDownload()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/CommonActivityLifecycle;->deleteDownItem:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "policy_back_home"

    invoke-static {v0, v1}, Lccsansan/y/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private unifiedDownload(Lccsanandroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lccsancom/san/ads/CommonActivityLifecycle;->getDownloadingList(Lccsanandroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lccsancom/san/ads/CommonActivityLifecycle;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Lccsancom/san/ads/CommonActivityLifecycle;->addDownloadListener:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public addActivityStatsCallBack(Lccsancom/san/ads/CommonActivityLifecycle$ActivityStatsCallBack;)V
    .locals 1

    .line 1
    sget-object v0, Lccsancom/san/ads/CommonActivityLifecycle;->removeDownloadListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAppExitCallBack(Lccsancom/san/ads/CommonActivityLifecycle$AppStatusCallBack;)V
    .locals 1

    .line 1
    sget-object v0, Lccsancom/san/ads/CommonActivityLifecycle;->getDownloadingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getRunningActivityCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/CommonActivityLifecycle;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getRunningTopActivity()Lccsanandroid/app/Activity;
    .locals 5

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/CommonActivityLifecycle;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object v0, p0, Lccsancom/san/ads/CommonActivityLifecycle;->addDownloadListener:Ljava/util/Map;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v2, p0, Lccsancom/san/ads/CommonActivityLifecycle;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 6
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 9
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/app/Activity;

    goto :goto_0

    .line 12
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public isAppInBackground()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/CommonActivityLifecycle;->deleteDownItem:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isForeground()Z
    .locals 1

    .line 1
    sget v0, Lccsancom/san/ads/CommonActivityLifecycle;->getDownloadStatusByUrl:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityCreated(Lccsanandroid/app/Activity;Lccsanandroid/os/Bundle;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityCreated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/ads/CommonActivityLifecycle;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonActivityLifecycle"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lccsancom/san/ads/CommonActivityLifecycle;->unifiedDownload(Lccsanandroid/app/Activity;)V

    .line 3
    sget-object v0, Lccsancom/san/ads/CommonActivityLifecycle;->removeDownloadListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/san/ads/CommonActivityLifecycle$ActivityStatsCallBack;

    .line 4
    invoke-interface {v1, p1, p2}, Lccsancom/san/ads/CommonActivityLifecycle$ActivityStatsCallBack;->onActivityCreated(Lccsanandroid/app/Activity;Lccsanandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Lccsanandroid/app/Activity;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityDestroyed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/ads/CommonActivityLifecycle;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonActivityLifecycle"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/ads/CommonActivityLifecycle;->addDownloadListener:Ljava/util/Map;

    invoke-static {p1}, Lccsancom/san/ads/CommonActivityLifecycle;->getDownloadingList(Lccsanandroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lccsancom/san/ads/CommonActivityLifecycle;->removeDownloadListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/san/ads/CommonActivityLifecycle$ActivityStatsCallBack;

    .line 4
    invoke-interface {v1, p1}, Lccsancom/san/ads/CommonActivityLifecycle$ActivityStatsCallBack;->onActivityDestroyed(Lccsanandroid/app/Activity;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, Lccsancom/san/ads/CommonActivityLifecycle;->IncentiveDownloadUtils()V

    return-void
.end method

.method public onActivityPaused(Lccsanandroid/app/Activity;)V
    .locals 2

    .line 1
    sget-object v0, Lccsancom/san/ads/CommonActivityLifecycle;->removeDownloadListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/san/ads/CommonActivityLifecycle$ActivityStatsCallBack;

    .line 2
    invoke-interface {v1, p1}, Lccsancom/san/ads/CommonActivityLifecycle$ActivityStatsCallBack;->onActivityPaused(Lccsanandroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityResumed(Lccsanandroid/app/Activity;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResumed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/ads/CommonActivityLifecycle;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonActivityLifecycle"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lccsancom/san/ads/CommonActivityLifecycle;->removeDownloadListener(Lccsanandroid/app/Activity;)V

    .line 3
    sget-object v0, Lccsancom/san/ads/CommonActivityLifecycle;->removeDownloadListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/san/ads/CommonActivityLifecycle$ActivityStatsCallBack;

    .line 4
    invoke-interface {v1, p1}, Lccsancom/san/ads/CommonActivityLifecycle$ActivityStatsCallBack;->onActivityResumed(Lccsanandroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Lccsanandroid/app/Activity;Lccsanandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Lccsanandroid/app/Activity;)V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/ads/CommonActivityLifecycle;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lccsancom/san/ads/CommonActivityLifecycle;->getDownloadStatusByUrl:I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/ads/CommonActivityLifecycle;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonActivityLifecycle"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lccsancom/san/ads/CommonActivityLifecycle;->deleteDownItem:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    sget-object v0, Lccsancom/san/ads/CommonActivityLifecycle;->removeDownloadListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/san/ads/CommonActivityLifecycle$ActivityStatsCallBack;

    .line 5
    invoke-interface {v1, p1}, Lccsancom/san/ads/CommonActivityLifecycle$ActivityStatsCallBack;->onActivityStarted(Lccsanandroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityStopped(Lccsanandroid/app/Activity;)V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/ads/CommonActivityLifecycle;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lccsancom/san/ads/CommonActivityLifecycle;->getDownloadStatusByUrl:I

    .line 2
    iget-object v0, p0, Lccsancom/san/ads/CommonActivityLifecycle;->deleteDownItem:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lccsancom/san/ads/CommonActivityLifecycle;->deleteDownItem:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityStopped: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/ads/CommonActivityLifecycle;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " foregroundCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/ads/CommonActivityLifecycle;->deleteDownItem:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    const-string v1, "CommonActivityLifecycle"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lccsancom/san/ads/CommonActivityLifecycle;->removeDownloadListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/san/ads/CommonActivityLifecycle$ActivityStatsCallBack;

    .line 8
    invoke-interface {v1, p1}, Lccsancom/san/ads/CommonActivityLifecycle$ActivityStatsCallBack;->onActivityStopped(Lccsanandroid/app/Activity;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-direct {p0}, Lccsancom/san/ads/CommonActivityLifecycle;->unifiedDownload()V

    return-void
.end method

.method public register(Lccsanandroid/app/Application;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/CommonActivityLifecycle;->hasInitializedLifecycle:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1, p0}, Lccsanandroid/app/Application;->registerActivityLifecycleCallbacks(Lccsanandroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public shouldAppExit()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/CommonActivityLifecycle;->deleteDownItem:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/san/ads/CommonActivityLifecycle;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
