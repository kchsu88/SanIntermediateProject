.class public Lccsansan/bl/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/bl/addDownloadListener$addDownloadListener;
    }
.end annotation


# static fields
.field private static IncentiveDownloadUtils:Ljava/lang/Boolean; = null

.field private static addDownloadListener:Lccsansan/bl/addDownloadListener$addDownloadListener; = null

.field private static final getDownloadingList:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static removeDownloadListener:Z = false

.field private static unifiedDownload:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lccsansan/bl/addDownloadListener;->getDownloadingList:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static IncentiveDownloadUtils(Lccsansan/bl/addDownloadListener$addDownloadListener;)V
    .locals 0

    .line 5
    sput-object p0, Lccsansan/bl/addDownloadListener;->addDownloadListener:Lccsansan/bl/addDownloadListener$addDownloadListener;

    return-void
.end method

.method public static IncentiveDownloadUtils()Z
    .locals 1

    .line 12
    sget-object v0, Lccsansan/bl/addDownloadListener;->getDownloadingList:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static addDownloadListener()Z
    .locals 1

    .line 1
    sget-object v0, Lccsansan/bl/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static deleteDownItem()Lccsansan/bl/addDownloadListener$addDownloadListener;
    .locals 1

    .line 6
    sget-object v0, Lccsansan/bl/addDownloadListener;->addDownloadListener:Lccsansan/bl/addDownloadListener$addDownloadListener;

    return-object v0
.end method

.method private static getDownloadStatusByUrl()V
    .locals 2

    .line 1
    invoke-static {}, Lccsansan/bw/toString;->unifiedDownload()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/bl/addDownloadListener$IncentiveDownloadUtils;

    invoke-direct {v1}, Lccsansan/bl/addDownloadListener$IncentiveDownloadUtils;-><init>()V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;)J
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sdk_init_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/bw/deleteDownList;->getDownloadedList(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {p0, v0, v1, v2}, Lccsansan/bw/performActionWhenOffline;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDownloadingList()V
    .locals 8

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bl/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;)J

    move-result-wide v0

    const-string v2, "BasicSdkProxy"

    const-string v3, "sdk_init_time"

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lccsansan/bw/deleteDownList;->getDownloadedList(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lccsansan/bw/performActionWhenOffline;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initCommonValues + FirstInitTimeByApp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/bl/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bl/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;)J

    move-result-wide v0

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    .line 6
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lccsansan/bw/performActionWhenOffline;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initCommonValues + FirstInitTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/bl/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_1
    invoke-static {}, Lccsansan/bl/addDownloadListener;->getDownloadStatusByUrl()V

    .line 11
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/ca/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;)V

    return-void
.end method

.method public static getDownloadingList(Z)V
    .locals 1

    .line 2
    sget-object v0, Lccsansan/bl/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lccsansan/bl/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lccsansan/bw/setErrorMessage;->unifiedDownload(Lccsanandroid/content/Context;)V

    .line 3
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lccsanandroid/app/Application;

    invoke-virtual {v0, v1}, Lccsancom/san/ads/CommonActivityLifecycle;->register(Lccsanandroid/app/Application;)V

    .line 5
    invoke-static {}, Lccsansan/cy/removeDownloadListener;->addDownloadListener()Lccsansan/cy/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsansan/cy/removeDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;)V

    .line 7
    invoke-static {}, Lccsansan/cy/IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/cy/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsansan/cy/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/content/Context;)V

    .line 9
    const-string p0, "BasicSdkProxy"

    const-string v0, "Init finish"

    invoke-static {p0, v0}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    sget-object p0, Lccsansan/bl/addDownloadListener;->getDownloadingList:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static removeDownloadListener(Z)V
    .locals 0

    .line 2
    sput-boolean p0, Lccsansan/bl/addDownloadListener;->removeDownloadListener:Z

    return-void
.end method

.method public static removeDownloadListener()Z
    .locals 1

    .line 1
    sget-boolean v0, Lccsansan/bl/addDownloadListener;->removeDownloadListener:Z

    return v0
.end method

.method public static unifiedDownload()I
    .locals 1

    .line 3
    sget v0, Lccsansan/bl/addDownloadListener;->unifiedDownload:I

    return v0
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;)J
    .locals 3

    .line 1
    const-string v0, "sdk_init_time"

    const-wide/16 v1, -0x1

    invoke-static {p0, v0, v1, v2}, Lccsansan/bw/performActionWhenOffline;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static unifiedDownload(I)V
    .locals 0

    .line 4
    sput p0, Lccsansan/bl/addDownloadListener;->unifiedDownload:I

    return-void
.end method
