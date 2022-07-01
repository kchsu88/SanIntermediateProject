.class public Lccsancom/san/core/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:Ljava/lang/Boolean;

.field private static final addDownloadListener:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static getDownloadStatusByUrl:J

.field private static final getDownloadedRecordByUrl:Lccsansan/r/addDownloadListener;

.field public static getDownloadingList:J

.field private static getDownloadingRecordByUrl:Ljava/lang/Boolean;

.field private static removeDownloadListener:Z

.field private static final unifiedDownload:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$CY_Os5Yld1XnLgH52zEEPv4MqDM(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/san/core/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QxoT0qjtDfjb9Hphnsjd4kCRmfo(Lccsansan/ai/removeDownloadListener;)Z
    .locals 0

    invoke-static {p0}, Lccsancom/san/core/unifiedDownload;->removeDownloadListener(Lccsansan/ai/removeDownloadListener;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lccsancom/san/core/unifiedDownload;->unifiedDownload:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lccsancom/san/core/unifiedDownload;->addDownloadListener:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    sput-boolean v1, Lccsancom/san/core/unifiedDownload;->removeDownloadListener:Z

    .line 10
    sget-object v0, Lccsancom/san/core/unifiedDownload$$ExternalSyntheticLambda1;->INSTANCE:Lccsancom/san/core/unifiedDownload$$ExternalSyntheticLambda1;

    sput-object v0, Lccsancom/san/core/unifiedDownload;->getDownloadedRecordByUrl:Lccsansan/r/addDownloadListener;

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 3
    sput-object p0, Lccsancom/san/core/unifiedDownload;->IncentiveDownloadUtils:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static IncentiveDownloadUtils(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lccsansan/bl/addDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;)V

    .line 3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lccsansan/bw/deleteDownList;->getDownloadedRecordByUrl(Lccsanandroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 4
    invoke-static {p0}, Lccsansan/bl/addDownloadListener;->getDownloadingList(Z)V

    :cond_0
    const/16 p0, 0x7920

    .line 7
    invoke-static {p0}, Lccsansan/bl/addDownloadListener;->unifiedDownload(I)V

    .line 8
    sget-object p0, Lccsancom/san/core/unifiedDownload$$ExternalSyntheticLambda0;->INSTANCE:Lccsancom/san/core/unifiedDownload$$ExternalSyntheticLambda0;

    invoke-static {p0}, Lccsansan/bl/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/bl/addDownloadListener$addDownloadListener;)V

    return-void
.end method

.method private static IncentiveDownloadUtils(Lccsancom/san/api/SanAdSettings;)V
    .locals 0

    .line 9
    invoke-static {p0}, Lccsancom/san/core/unifiedDownload;->addDownloadListener(Lccsancom/san/api/SanAdSettings;)V

    .line 11
    invoke-static {p0}, Lccsancom/san/core/unifiedDownload;->removeDownloadListener(Lccsancom/san/api/SanAdSettings;)V

    .line 13
    invoke-static {p0}, Lccsancom/san/core/unifiedDownload;->unifiedDownload(Lccsancom/san/api/SanAdSettings;)V

    return-void
.end method

.method private static synthetic IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onListenerChange() value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InitProxy"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    const-string p1, "r_p"

    invoke-static {p0, p1}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 9
    :cond_0
    :try_start_0
    invoke-static {}, Lccsancom/san/ads/core/ConfigManager;->getInstance()Lccsancom/san/ads/core/ConfigManager;

    move-result-object p0

    const-string p1, "PUPPY"

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lccsancom/san/ads/core/ConfigManager;->tryToSyncAdConfig(Ljava/lang/String;Z)V

    .line 11
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lccsansan/bq/getDownloadedRecordByUrl;->addDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ac_on"

    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    invoke-static {v0}, Lccsansan/cc/unifiedDownload;->IncentiveDownloadUtils(Z)V

    :cond_1
    const-string p1, "ac_off"

    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 16
    invoke-static {p1}, Lccsansan/cc/unifiedDownload;->IncentiveDownloadUtils(Z)V

    :cond_2
    const-string p1, "ac_clear"

    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 19
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsansan/cc/unifiedDownload;->addDownloadListener(Lccsanandroid/content/Context;)V

    :cond_3
    const-string p1, "ac_check"

    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 22
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lccsansan/cc/unifiedDownload;->unifiedDownload(Lccsanandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :cond_4
    :goto_0
    return-void
.end method

.method public static IncentiveDownloadUtils(Z)V
    .locals 1

    .line 11
    sget-object v0, Lccsancom/san/core/unifiedDownload;->getDownloadingRecordByUrl:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 12
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lccsancom/san/core/unifiedDownload;->getDownloadingRecordByUrl:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method public static IncentiveDownloadUtils()Z
    .locals 1

    .line 14
    sget-object v0, Lccsancom/san/core/unifiedDownload;->getDownloadingRecordByUrl:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static addDownloadListener()Ljava/lang/String;
    .locals 2

    .line 2
    sget-object v0, Lccsancom/san/core/unifiedDownload;->IncentiveDownloadUtils:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lccsancom/san/core/unifiedDownload;->deleteDownItem()V

    .line 5
    :cond_0
    sget-object v0, Lccsancom/san/core/unifiedDownload;->IncentiveDownloadUtils:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const-string v0, "unknown"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lccsancom/san/core/unifiedDownload;->IncentiveDownloadUtils:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static addDownloadListener(Lccsanandroid/content/Context;)V
    .locals 3

    .line 13
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/core/unifiedDownload$getDownloadingList;

    const-string v2, "GetBidder"

    invoke-direct {v1, v2, p0}, Lccsancom/san/core/unifiedDownload$getDownloadingList;-><init>(Ljava/lang/String;Lccsanandroid/content/Context;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method

.method private static addDownloadListener(Lccsancom/san/api/SanAdSettings;)V
    .locals 1

    .line 97
    invoke-virtual {p0}, Lccsancom/san/api/SanAdSettings;->getBeylaIdHelper()Lccsancom/san/ads/base/IBeylaIdHelper;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 99
    invoke-static {p0}, Lccsansan/bw/execute;->removeDownloadListener(Lccsancom/san/ads/base/IBeylaIdHelper;)V

    .line 100
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p0

    new-instance v0, Lccsancom/san/core/unifiedDownload$unifiedDownload;

    invoke-direct {v0}, Lccsancom/san/core/unifiedDownload$unifiedDownload;-><init>()V

    invoke-virtual {p0, v0}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    :cond_0
    return-void
.end method

.method private static deleteDownItem()V
    .locals 2

    .line 1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/core/unifiedDownload$removeDownloadListener;

    invoke-direct {v1}, Lccsancom/san/core/unifiedDownload$removeDownloadListener;-><init>()V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method

.method private static getDownloadStatusByUrl()V
    .locals 3

    .line 1
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v0

    sget-object v1, Lccsancom/san/core/unifiedDownload;->getDownloadedRecordByUrl:Lccsansan/r/addDownloadListener;

    const-string v2, "r_p"

    invoke-virtual {v0, v2, v1}, Lccsansan/r/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Lccsansan/r/addDownloadListener;)V

    return-void
.end method

.method private static getDownloadedList()V
    .locals 0

    .line 1
    invoke-static {}, Lccsancom/san/core/unifiedDownload;->deleteDownItem()V

    .line 2
    invoke-static {}, Lccsansan/bl/addDownloadListener;->getDownloadingList()V

    return-void
.end method

.method private static getDownloadedList(Lccsanandroid/content/Context;)V
    .locals 2

    .line 5
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/core/unifiedDownload$getDownloadedList;

    invoke-direct {v1, p0}, Lccsancom/san/core/unifiedDownload$getDownloadedList;-><init>(Lccsanandroid/content/Context;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method

.method static synthetic getDownloadedRecordByUrl()V
    .locals 0

    .line 2
    invoke-static {}, Lccsancom/san/core/unifiedDownload;->getDownloadStatusByUrl()V

    return-void
.end method

.method public static getDownloadingList()J
    .locals 2

    .line 10
    sget-wide v0, Lccsancom/san/core/unifiedDownload;->getDownloadStatusByUrl:J

    return-wide v0
.end method

.method private static getDownloadingList(Lccsanandroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "init"

    invoke-static {p0, v0}, Lccsansan/c/getDownloadingRecordByUrl;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;Lccsancom/san/api/SanAdSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lccsancom/san/core/unifiedDownload;->unifiedDownload(Lccsanandroid/content/Context;Lccsancom/san/api/SanAdSettings;Z)V

    return-void
.end method

.method private static getDownloadingRecordByUrl()V
    .locals 3

    .line 1
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v0

    sget-object v1, Lccsancom/san/core/unifiedDownload;->getDownloadedRecordByUrl:Lccsansan/r/addDownloadListener;

    const-string v2, "r_p"

    invoke-virtual {v0, v2, v1}, Lccsansan/r/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Lccsansan/r/addDownloadListener;)V

    return-void
.end method

.method private static getDownloadingRecordByUrl(Lccsanandroid/content/Context;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lccsancom/san/bridge/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;)V

    return-void
.end method

.method static synthetic removeDownloadListener(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lccsancom/san/core/unifiedDownload;->addDownloadListener(Lccsanandroid/content/Context;)V

    return-void
.end method

.method private static removeDownloadListener(Lccsancom/san/api/SanAdSettings;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lccsancom/san/api/SanAdSettings;->getStatsInjection()Lccsancom/san/ads/base/IStats;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p0}, Lccsansan/dl/getDownloadingList;->IncentiveDownloadUtils(Lccsancom/san/ads/base/IStats;)V

    :cond_0
    return-void
.end method

.method public static removeDownloadListener()Z
    .locals 1

    .line 1
    sget-object v0, Lccsancom/san/core/unifiedDownload;->getDownloadingRecordByUrl:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    sget-boolean v0, Lccsancom/san/core/unifiedDownload;->removeDownloadListener:Z

    return v0
.end method

.method private static synthetic removeDownloadListener(Lccsansan/ai/removeDownloadListener;)Z
    .locals 1

    .line 96
    invoke-static {}, Lccsansan/cj/getDownloadedList;->getDownloadingList()Lccsansan/cj/getDownloadedList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsansan/cj/getDownloadedList;->removeDownloadListener(Lccsansan/ai/removeDownloadListener;)Z

    move-result p0

    return p0
.end method

.method private static unifiedDownload(Lccsanandroid/content/Context;)V
    .locals 3

    .line 3
    const-string v0, "puppy"

    invoke-static {p0}, Lccsansan/bw/IncentiveSDK;->addDownloadListener(Lccsanandroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 7
    :cond_0
    :try_start_0
    new-instance v1, Lccsanandroid/content/IntentFilter;

    invoke-direct {v1, v0}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v2, Lccsansan/bq/getDownloadedRecordByUrl;

    invoke-direct {v2, p0}, Lccsansan/bq/getDownloadedRecordByUrl;-><init>(Lccsanandroid/content/Context;)V

    invoke-virtual {p0, v2, v1}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "d e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :goto_0
    invoke-static {}, Lccsancom/san/core/unifiedDownload;->getDownloadingRecordByUrl()V

    return-void
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;Lccsancom/san/api/SanAdSettings;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Init isAuto = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " hasInitialized = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lccsancom/san/core/unifiedDownload;->unifiedDownload:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "InitProxy"

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v2, "app_init"

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    .line 26
    sget-object p2, Lccsancom/san/core/unifiedDownload;->addDownloadListener:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 27
    invoke-static {p1}, Lccsancom/san/core/unifiedDownload;->IncentiveDownloadUtils(Lccsancom/san/api/SanAdSettings;)V

    .line 28
    invoke-virtual {p1}, Lccsancom/san/api/SanAdSettings;->getCloudConfigImpl()Lccsancom/san/ads/base/ICloudConfigListener;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lccsancom/san/api/SanAdSettings;->getCloudConfigImpl()Lccsancom/san/ads/base/ICloudConfigListener;

    move-result-object p1

    invoke-static {}, Lccsansan/bw/performActionWhenOffline;->addDownloadListener()Lccsancom/san/ads/base/ICloudConfigListener;

    move-result-object p2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 30
    invoke-static {}, Lccsancom/san/ads/core/ConfigManager;->getInstance()Lccsancom/san/ads/core/ConfigManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lccsancom/san/ads/core/ConfigManager;->tryToSyncAdConfig(Ljava/lang/String;)V

    .line 32
    :cond_1
    invoke-static {p0}, Lccsancom/san/ads/AdSourceHelper;->initialize(Lccsanandroid/content/Context;)V

    :cond_2
    return-void

    .line 37
    :cond_3
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p0

    .line 38
    instance-of v0, p0, Lccsanandroid/app/Application;

    if-eqz v0, :cond_5

    .line 41
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lccsancom/san/core/unifiedDownload;->getDownloadStatusByUrl:J

    .line 44
    invoke-static {p0}, Lccsancom/san/core/unifiedDownload;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)V

    .line 46
    invoke-static {p0}, Lccsancom/san/core/unifiedDownload;->unifiedDownload(Lccsanandroid/content/Context;)V

    .line 48
    invoke-static {p1}, Lccsancom/san/core/unifiedDownload;->IncentiveDownloadUtils(Lccsancom/san/api/SanAdSettings;)V

    .line 50
    invoke-static {}, Lccsancom/san/core/unifiedDownload;->getDownloadedList()V

    .line 52
    invoke-static {}, Lccsansan/df/getDownloadingList;->unifiedDownload()V

    .line 54
    invoke-static {p0}, Lccsancom/san/core/unifiedDownload;->getDownloadingRecordByUrl(Lccsanandroid/content/Context;)V

    .line 56
    invoke-static {p0}, Lccsancom/san/core/unifiedDownload;->getDownloadedList(Lccsanandroid/content/Context;)V

    if-nez p2, :cond_4

    .line 59
    invoke-static {p0}, Lccsancom/san/ads/AdSourceHelper;->initialize(Lccsanandroid/content/Context;)V

    .line 61
    :cond_4
    invoke-static {p0}, Lccsancom/san/core/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)V

    .line 63
    invoke-static {}, Lccsancom/san/ads/core/ConfigManager;->getInstance()Lccsancom/san/ads/core/ConfigManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lccsancom/san/ads/core/ConfigManager;->tryToSyncAdConfig(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance p2, Lccsancom/san/core/unifiedDownload$IncentiveDownloadUtils;

    invoke-direct {p2}, Lccsancom/san/core/unifiedDownload$IncentiveDownloadUtils;-><init>()V

    invoke-virtual {p1, p2}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 76
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object p1

    new-instance p2, Lccsancom/san/core/unifiedDownload$addDownloadListener;

    invoke-direct {p2}, Lccsancom/san/core/unifiedDownload$addDownloadListener;-><init>()V

    invoke-virtual {p1, p2}, Lccsancom/san/ads/CommonActivityLifecycle;->addAppExitCallBack(Lccsancom/san/ads/CommonActivityLifecycle$AppStatusCallBack;)V

    .line 91
    invoke-static {}, Lccsansan/cv/getDownloadStatusByUrl;->IncentiveDownloadUtils()V

    .line 92
    sget-wide p1, Lccsancom/san/core/unifiedDownload;->getDownloadStatusByUrl:J

    sget-wide v0, Lccsancom/san/core/unifiedDownload;->getDownloadingList:J

    invoke-static {p0, p1, p2, v0, v1}, Lccsansan/bn/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanandroid/content/Context;JJ)V

    .line 94
    const-string p0, "Init finished."

    invoke-static {p0}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)V

    return-void

    .line 95
    :cond_5
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Should init SANAdSdk in Application or Activity"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static unifiedDownload(Lccsancom/san/api/SanAdSettings;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lccsancom/san/api/SanAdSettings;->getCloudConfigImpl()Lccsancom/san/ads/base/ICloudConfigListener;

    move-result-object p0

    if-nez p0, :cond_0

    .line 3
    new-instance p0, Lccsancom/san/core/getDownloadingList;

    invoke-direct {p0}, Lccsancom/san/core/getDownloadingList;-><init>()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lccsansan/bw/performActionWhenOffline;->addDownloadListener()Lccsancom/san/ads/base/ICloudConfigListener;

    move-result-object v0

    if-ne p0, v0, :cond_1

    return-void

    .line 8
    :cond_1
    :goto_0
    invoke-static {p0}, Lccsansan/bw/performActionWhenOffline;->unifiedDownload(Lccsancom/san/ads/base/ICloudConfigListener;)V

    .line 9
    invoke-static {}, Lccsancom/san/ads/core/ConfigManager;->getInstance()Lccsancom/san/ads/core/ConfigManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lccsancom/san/ads/core/ConfigManager;->init(Lccsancom/san/ads/base/ICloudConfigListener;I)V

    return-void
.end method

.method public static unifiedDownload(Z)V
    .locals 0

    .line 101
    sput-boolean p0, Lccsancom/san/core/unifiedDownload;->removeDownloadListener:Z

    return-void
.end method

.method public static unifiedDownload()Z
    .locals 1

    .line 4
    sget-object v0, Lccsancom/san/core/unifiedDownload;->unifiedDownload:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
