.class public Lccsancom/san/api/ActionSdkInitProxy;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsanandroid/app/Activity;)V
    .locals 0

    .line 3
    invoke-static {p0}, Lccsancom/san/api/ActionSdkInitProxy;->getDownloadingList(Lccsanandroid/app/Activity;)V

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsanandroid/content/Context;)V
    .locals 0

    .line 4
    invoke-static {p0}, Lccsancom/san/api/ActionSdkInitProxy;->getDownloadingList(Lccsanandroid/content/Context;)V

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lccsancom/san/api/ActionSdkInitProxy;->addDownloadListener(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsanandroid/net/NetworkInfo;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lccsancom/san/api/ActionSdkInitProxy;->unifiedDownload(Lccsanandroid/net/NetworkInfo;)Z

    move-result p0

    return p0
.end method

.method private static addDownloadListener(Lccsanandroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object p0

    new-instance v0, Lccsancom/san/api/ActionSdkInitProxy$3;

    invoke-direct {v0}, Lccsancom/san/api/ActionSdkInitProxy$3;-><init>()V

    invoke-virtual {p0, v0}, Lccsancom/san/ads/CommonActivityLifecycle;->addActivityStatsCallBack(Lccsancom/san/ads/CommonActivityLifecycle$ActivityStatsCallBack;)V

    return-void
.end method

.method private static addDownloadListener(Ljava/lang/String;)V
    .locals 4

    .line 2
    :try_start_0
    new-instance v0, Lccsanandroid/content/Intent;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {}, Lccsansan/bt/unifiedDownload;->getDownloadedList()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-class v2, Lccsancom/san/core/CommonStartOpenActivity;

    goto :goto_0

    :cond_0
    const-class v2, Lccsancom/san/core/CommonProtectActivity;

    :goto_0
    invoke-direct {v0, v1, v2}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "portal"

    .line 3
    invoke-virtual {v0, v1, p0}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    const-string p0, "status"

    const-string v1, "active_network"

    .line 4
    invoke-virtual {v0, p0, v1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    const-string p0, "mode"

    const-string v1, "wake_up"

    .line 5
    invoke-virtual {v0, p0, v1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 6
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    :goto_1
    return-void
.end method

.method public static collectNetAndWakeUp(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lccsansan/bt/removeDownloadListener;->unifiedDownload()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/bw/getDownloadedList;->getDownloadedRecordByUrl(Lccsanandroid/content/Context;)Lccsanandroid/net/NetworkInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6
    invoke-static {p0, v1, v2, v3}, Lccsansan/bn/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Lccsanandroid/net/NetworkInfo;ZLjava/lang/String;)V

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    return-void

    .line 11
    :cond_1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v2, Lccsancom/san/api/ActionSdkInitProxy$1;

    invoke-direct {v2, v1, p0}, Lccsancom/san/api/ActionSdkInitProxy$1;-><init>(Lccsanandroid/net/NetworkInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method

.method private static getDownloadingList(Lccsanandroid/app/Activity;)V
    .locals 2

    .line 20
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/ads/CommonActivityLifecycle;->isAppInBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/ads/CommonActivityLifecycle;->getRunningActivityCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onActivityCreated setHadShownInAppLifeCycle false, main activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActionSdkInitProxy"

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 22
    invoke-static {p0}, Lccsansan/bt/getDownloadingList;->removeDownloadListener(Z)V

    :cond_0
    return-void
.end method

.method private static getDownloadingList(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lccsancom/san/proaz/getDownloadStatusByUrl;->getDownloadingList(Lccsanandroid/content/Context;)V

    return-void
.end method

.method public static initialize(Lccsanandroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lccsancom/san/action/IncentiveDownloadUtils;

    invoke-direct {v0}, Lccsancom/san/action/IncentiveDownloadUtils;-><init>()V

    invoke-static {v0}, Lccsansan/bq/getDownloadingRecordByUrl;->unifiedDownload(Lccsansan/bq/getDownloadingRecordByUrl$removeDownloadListener;)V

    .line 3
    const-string v0, "init_proxy"

    invoke-static {v0}, Lccsancom/san/api/ActionSdkInitProxy;->collectNetAndWakeUp(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lccsansan/au/addDownloadListener;->removeDownloadListener()V

    .line 6
    invoke-static {}, Lccsansan/au/unifiedDownload;->getDownloadingList()V

    .line 8
    invoke-static {p0}, Lccsancom/san/api/ActionSdkInitProxy;->unifiedDownload(Lccsanandroid/content/Context;)V

    return-void
.end method

.method private static unifiedDownload(Lccsanandroid/content/Context;)V
    .locals 2

    .line 7
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v0

    new-instance v1, Lccsancom/san/api/ActionSdkInitProxy$2;

    invoke-direct {v1}, Lccsancom/san/api/ActionSdkInitProxy$2;-><init>()V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/CommonActivityLifecycle;->addAppExitCallBack(Lccsancom/san/ads/CommonActivityLifecycle$AppStatusCallBack;)V

    .line 19
    invoke-static {p0}, Lccsancom/san/api/ActionSdkInitProxy;->addDownloadListener(Lccsanandroid/content/Context;)V

    return-void
.end method

.method private static unifiedDownload(Lccsanandroid/net/NetworkInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/net/NetworkInfo;->getState()Lccsanandroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Lccsanandroid/net/NetworkInfo$State;->DISCONNECTED:Lccsanandroid/net/NetworkInfo$State;

    invoke-virtual {v1, v2}, Lccsanandroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lccsanandroid/net/NetworkInfo;->getDetailedState()Lccsanandroid/net/NetworkInfo$DetailedState;

    move-result-object p0

    sget-object v1, Lccsanandroid/net/NetworkInfo$DetailedState;->BLOCKED:Lccsanandroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v1}, Lccsanandroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
