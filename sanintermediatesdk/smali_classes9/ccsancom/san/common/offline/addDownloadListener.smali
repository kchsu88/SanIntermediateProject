.class public Lccsancom/san/common/offline/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/common/offline/addDownloadListener$removeDownloadListener;
    }
.end annotation


# static fields
.field private static volatile removeDownloadListener:Lccsancom/san/common/offline/addDownloadListener;


# instance fields
.field private IncentiveDownloadUtils:Z

.field private addDownloadListener:Z

.field private deleteDownItem:J

.field private getDownloadStatusByUrl:Lccsanandroid/app/Application$ActivityLifecycleCallbacks;

.field private getDownloadedList:Lccsanandroid/os/HandlerThread;

.field private getDownloadedRecordByUrl:Lccsancom/san/common/offline/addDownloadListener$removeDownloadListener;

.field private getDownloadingList:Lccsansan/ck/IncentiveDownloadUtils;

.field private unifiedDownload:Lccsanandroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/san/common/offline/addDownloadListener;->addDownloadListener:Z

    .line 3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsancom/san/common/offline/addDownloadListener;->deleteDownItem:J

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/san/common/offline/addDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/common/offline/addDownloadListener$removeDownloadListener;

    .line 178
    new-instance v0, Lccsancom/san/common/offline/addDownloadListener$getDownloadingList;

    invoke-direct {v0, p0}, Lccsancom/san/common/offline/addDownloadListener$getDownloadingList;-><init>(Lccsancom/san/common/offline/addDownloadListener;)V

    iput-object v0, p0, Lccsancom/san/common/offline/addDownloadListener;->getDownloadStatusByUrl:Lccsanandroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method private IncentiveDownloadUtils()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsancom/san/common/offline/addDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/common/offline/addDownloadListener$removeDownloadListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Z)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lccsancom/san/common/offline/addDownloadListener;->IncentiveDownloadUtils()V

    .line 4
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/Application;

    .line 5
    iget-object v1, p0, Lccsancom/san/common/offline/addDownloadListener;->getDownloadStatusByUrl:Lccsanandroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Lccsanandroid/app/Application;->unregisterActivityLifecycleCallbacks(Lccsanandroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 6
    iget-object v1, p0, Lccsancom/san/common/offline/addDownloadListener;->getDownloadStatusByUrl:Lccsanandroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Lccsanandroid/app/Application;->registerActivityLifecycleCallbacks(Lccsanandroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 7
    iput-object p2, p0, Lccsancom/san/common/offline/addDownloadListener;->getDownloadingList:Lccsansan/ck/IncentiveDownloadUtils;

    .line 8
    iput-boolean p3, p0, Lccsancom/san/common/offline/addDownloadListener;->IncentiveDownloadUtils:Z

    .line 9
    invoke-direct {p0}, Lccsancom/san/common/offline/addDownloadListener;->getDownloadedRecordByUrl()V

    .line 10
    invoke-direct {p0}, Lccsancom/san/common/offline/addDownloadListener;->getDownloadingList()V

    .line 11
    iput-object p1, p0, Lccsancom/san/common/offline/addDownloadListener;->unifiedDownload:Lccsanandroid/content/Context;

    return-void
.end method

.method private addDownloadListener()V
    .locals 5

    .line 12
    iget-object v0, p0, Lccsancom/san/common/offline/addDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/common/offline/addDownloadListener$removeDownloadListener;

    if-nez v0, :cond_0

    return-void

    .line 15
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/getDownloadedList;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/util/Pair;

    move-result-object v0

    .line 16
    iget-boolean v1, p0, Lccsancom/san/common/offline/addDownloadListener;->addDownloadListener:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 21
    :cond_1
    iget-wide v0, p0, Lccsancom/san/common/offline/addDownloadListener;->deleteDownItem:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lccsancom/san/common/offline/addDownloadListener;->deleteDownItem:J

    sub-long/2addr v0, v2

    invoke-static {}, Lccsansan/bq/addDownloadListener;->getDownloadingRecordByUrl()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 22
    invoke-direct {p0}, Lccsancom/san/common/offline/addDownloadListener;->getDownloadingRecordByUrl()V

    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {p0}, Lccsancom/san/common/offline/addDownloadListener;->unifiedDownload()V

    :goto_0
    return-void

    .line 25
    :cond_3
    :goto_1
    iget-object v0, p0, Lccsancom/san/common/offline/addDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/common/offline/addDownloadListener$removeDownloadListener;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static synthetic addDownloadListener(Lccsancom/san/common/offline/addDownloadListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsancom/san/common/offline/addDownloadListener;->addDownloadListener()V

    return-void
.end method

.method private getDownloadedRecordByUrl()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/san/common/offline/addDownloadListener;->deleteDownItem:J

    return-void
.end method

.method private getDownloadingList()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lccsancom/san/common/offline/addDownloadListener;->getDownloadedList:Lccsanandroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    new-instance v0, Lccsanandroid/os/HandlerThread;

    const-string v1, "LayerAdLoader.BgHandlerThread"

    invoke-direct {v0, v1}, Lccsanandroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lccsancom/san/common/offline/addDownloadListener;->getDownloadedList:Lccsanandroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Lccsanandroid/os/HandlerThread;->start()V

    .line 6
    :cond_1
    iget-object v0, p0, Lccsancom/san/common/offline/addDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/common/offline/addDownloadListener$removeDownloadListener;

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Lccsancom/san/common/offline/addDownloadListener$removeDownloadListener;

    iget-object v1, p0, Lccsancom/san/common/offline/addDownloadListener;->getDownloadedList:Lccsanandroid/os/HandlerThread;

    invoke-virtual {v1}, Lccsanandroid/os/HandlerThread;->getLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lccsancom/san/common/offline/addDownloadListener$removeDownloadListener;-><init>(Lccsancom/san/common/offline/addDownloadListener;Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/san/common/offline/addDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/common/offline/addDownloadListener$removeDownloadListener;

    .line 9
    :cond_2
    iget-object v0, p0, Lccsancom/san/common/offline/addDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/common/offline/addDownloadListener$removeDownloadListener;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private getDownloadingRecordByUrl()V
    .locals 5

    .line 7
    const-string v0, "AD.AutoAction"

    :try_start_0
    iget-object v1, p0, Lccsancom/san/common/offline/addDownloadListener;->getDownloadingList:Lccsansan/ck/IncentiveDownloadUtils;

    if-nez v1, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v2, v1, Lccsansan/ck/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    .line 11
    iget-object v1, v1, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lccsancom/san/common/offline/addDownloadListener;->getDownloadingList:Lccsansan/ck/IncentiveDownloadUtils;

    iget-object v1, v1, Lccsansan/ck/IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lccsancom/san/common/offline/addDownloadListener;->getDownloadingList:Lccsansan/ck/IncentiveDownloadUtils;

    iget-object v1, v1, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    .line 13
    :goto_0
    iget-object v3, p0, Lccsancom/san/common/offline/addDownloadListener;->unifiedDownload:Lccsanandroid/content/Context;

    if-eqz v3, :cond_2

    instance-of v4, v3, Lccsanandroidx/fragment/app/FragmentActivity;

    if-eqz v4, :cond_2

    .line 14
    check-cast v3, Lccsanandroidx/fragment/app/FragmentActivity;

    invoke-virtual {v3}, Lccsanandroidx/fragment/app/FragmentActivity;->finish()V

    :cond_2
    nop

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doAutoAction  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccsancom/san/common/offline/addDownloadListener;->getDownloadingList:Lccsansan/ck/IncentiveDownloadUtils;

    invoke-virtual {v4}, Lccsansan/ck/IncentiveDownloadUtils;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-boolean v3, p0, Lccsancom/san/common/offline/addDownloadListener;->IncentiveDownloadUtils:Z

    if-eqz v3, :cond_5

    .line 18
    invoke-static {v1}, Lccsansan/ab/getDownloadingList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lccsancom/san/common/offline/addDownloadListener;->getDownloadingList:Lccsansan/ck/IncentiveDownloadUtils;

    iget-object v4, v4, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-static {v2, v4, v1}, Lccsansan/ck/getDownloadingRecordByUrl;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams;

    move-result-object v4

    invoke-static {v3, v4}, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v2, :cond_4

    .line 23
    :try_start_1
    invoke-virtual {v2}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v3

    invoke-virtual {v3}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object v3

    .line 24
    :cond_3
    invoke-virtual {v2}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 19
    :cond_4
    move-object v2, v3

    .line 26
    :goto_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v3, v2}, Lccsansan/bw/resume;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 27
    :cond_5
    iget-object v2, p0, Lccsancom/san/common/offline/addDownloadListener;->getDownloadingList:Lccsansan/ck/IncentiveDownloadUtils;

    iget v3, v2, Lccsansan/ck/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 28
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Lccsansan/bw/resume;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;ZI)Z

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    .line 30
    iget-object v2, v2, Lccsansan/ck/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-static {v2}, Lccsansan/ck/getDownloadingRecordByUrl;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lccsansan/ck/getDownloadingRecordByUrl;->getDownloadingList(Ljava/lang/String;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;)Z

    .line 26
    :goto_2
    nop

    .line 33
    iget-object v1, p0, Lccsancom/san/common/offline/addDownloadListener;->getDownloadingList:Lccsansan/ck/IncentiveDownloadUtils;

    const-string v2, "auto"

    iput-object v2, v1, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    .line 34
    invoke-static {v1}, Lccsansan/ck/getDownloadingRecordByUrl;->IncentiveDownloadUtils(Lccsansan/ck/IncentiveDownloadUtils;)V

    .line 36
    invoke-virtual {p0}, Lccsancom/san/common/offline/addDownloadListener;->unifiedDownload()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#doAutoAction exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public static removeDownloadListener()Lccsancom/san/common/offline/addDownloadListener;
    .locals 2

    .line 1
    sget-object v0, Lccsancom/san/common/offline/addDownloadListener;->removeDownloadListener:Lccsancom/san/common/offline/addDownloadListener;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lccsancom/san/common/offline/addDownloadListener;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsancom/san/common/offline/addDownloadListener;->removeDownloadListener:Lccsancom/san/common/offline/addDownloadListener;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsancom/san/common/offline/addDownloadListener;

    invoke-direct {v1}, Lccsancom/san/common/offline/addDownloadListener;-><init>()V

    sput-object v1, Lccsancom/san/common/offline/addDownloadListener;->removeDownloadListener:Lccsancom/san/common/offline/addDownloadListener;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lccsancom/san/common/offline/addDownloadListener;->removeDownloadListener:Lccsancom/san/common/offline/addDownloadListener;

    return-object v0
.end method

.method static synthetic removeDownloadListener(Lccsancom/san/common/offline/addDownloadListener;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lccsancom/san/common/offline/addDownloadListener;->addDownloadListener:Z

    return p1
.end method


# virtual methods
.method public getDownloadingList(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Z)V
    .locals 2

    if-eqz p3, :cond_0

    .line 1
    invoke-static {}, Lccsansan/bq/addDownloadListener;->getDownloadedList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lccsancom/san/common/offline/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p2, Lccsansan/ck/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    const/4 v1, 0x3

    if-ne v1, v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lccsansan/bq/addDownloadListener;->removeDownloadListener(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lccsancom/san/common/offline/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Z)V

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p2, Lccsansan/ck/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    invoke-static {v0}, Lccsansan/bq/addDownloadListener;->removeDownloadListener(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lccsancom/san/common/offline/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public removeDownloadListener(Lccsansan/ck/IncentiveDownloadUtils;)V
    .locals 5

    const-string v0, "AD.AutoAction"

    if-nez p1, :cond_0

    return-void

    .line 26
    :cond_0
    :try_start_0
    iget-object v1, p1, Lccsansan/ck/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    .line 27
    iget-object v2, p1, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lccsansan/ck/IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    .line 29
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doGpActionDefault  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsansan/ck/IncentiveDownloadUtils;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {v2}, Lccsansan/ab/getDownloadingList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    iget-object v4, p1, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-static {v1, v4, v2}, Lccsansan/ck/getDownloadingRecordByUrl;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams;

    move-result-object v4

    invoke-static {v3, v4}, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v1, :cond_3

    .line 35
    :try_start_1
    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v3

    invoke-virtual {v3}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object v3

    .line 36
    :cond_2
    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 31
    :cond_3
    move-object v1, v3

    .line 38
    :goto_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v3, v1}, Lccsansan/bw/resume;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "auto"

    .line 40
    iput-object v1, p1, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lccsansan/ck/getDownloadingRecordByUrl;->IncentiveDownloadUtils(Lccsansan/ck/IncentiveDownloadUtils;)V

    .line 43
    invoke-virtual {p0}, Lccsancom/san/common/offline/addDownloadListener;->unifiedDownload()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#doAutoAction exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public unifiedDownload()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove check auto action msg  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lccsancom/san/common/offline/addDownloadListener;->deleteDownItem:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AD.AutoAction"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lccsancom/san/common/offline/addDownloadListener;->IncentiveDownloadUtils()V

    .line 3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/Application;

    .line 4
    iget-object v1, p0, Lccsancom/san/common/offline/addDownloadListener;->getDownloadStatusByUrl:Lccsanandroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Lccsanandroid/app/Application;->unregisterActivityLifecycleCallbacks(Lccsanandroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/san/common/offline/addDownloadListener;->unifiedDownload:Lccsanandroid/content/Context;

    return-void
.end method
