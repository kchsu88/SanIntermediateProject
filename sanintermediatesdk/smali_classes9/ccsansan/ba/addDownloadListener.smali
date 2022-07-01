.class public Lccsansan/ba/addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/hybrid/ui/getDownloadingList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/ba/addDownloadListener$removeDownloadListener;,
        Lccsansan/ba/addDownloadListener$addDownloadListener;,
        Lccsansan/ba/addDownloadListener$getDownloadedRecordByUrl;
    }
.end annotation


# instance fields
.field protected IncentiveDownloadUtils:Lccsancom/san/hybrid/ui/addDownloadListener;

.field protected addDownloadListener:Lccsancom/san/hybrid/ui/unifiedDownload;

.field private final deleteDownItem:Lccsanandroid/content/BroadcastReceiver;

.field private deleteDownList:J

.field protected getDownloadStatusByUrl:Lccsansan/br/IncentiveDownloadUtils;

.field private volatile getDownloadedCount:Z

.field protected getDownloadedList:Lccsansan/bm/getDownloadingList;

.field protected getDownloadedRecordByUrl:Lccsansan/ba/unifiedDownload;

.field private final getDownloadingCount:Lccsanandroid/content/BroadcastReceiver;

.field protected getDownloadingList:Lccsancom/san/hybrid/ui/BaseHybridActivity;

.field getDownloadingRecordByUrl:Lccsansan/bm/getDownloadingList$removeDownloadListener;

.field private getThumbPathByRecord:Lccsansan/ba/addDownloadListener$addDownloadListener;

.field private pause:Lccsansan/ba/addDownloadListener$getDownloadedRecordByUrl;

.field protected removeDownloadListener:Lccsansan/ba/IncentiveDownloadUtils;

.field private resume:Lccsansan/ba/addDownloadListener$removeDownloadListener;

.field private trackReportClick:I

.field protected unifiedDownload:Lccsansan/aq/addDownloadListener;


# direct methods
.method public constructor <init>(Lccsancom/san/hybrid/ui/BaseHybridActivity;Lccsansan/aq/addDownloadListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lccsansan/ba/addDownloadListener$IncentiveDownloadUtils;

    invoke-direct {v0, p0}, Lccsansan/ba/addDownloadListener$IncentiveDownloadUtils;-><init>(Lccsansan/ba/addDownloadListener;)V

    iput-object v0, p0, Lccsansan/ba/addDownloadListener;->deleteDownItem:Lccsanandroid/content/BroadcastReceiver;

    .line 14
    new-instance v0, Lccsansan/ba/addDownloadListener$unifiedDownload;

    invoke-direct {v0, p0}, Lccsansan/ba/addDownloadListener$unifiedDownload;-><init>(Lccsansan/ba/addDownloadListener;)V

    iput-object v0, p0, Lccsansan/ba/addDownloadListener;->getDownloadingRecordByUrl:Lccsansan/bm/getDownloadingList$removeDownloadListener;

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsansan/ba/addDownloadListener;->deleteDownList:J

    .line 35
    new-instance v0, Lccsansan/ba/addDownloadListener$getDownloadingList;

    invoke-direct {v0, p0}, Lccsansan/ba/addDownloadListener$getDownloadingList;-><init>(Lccsansan/ba/addDownloadListener;)V

    iput-object v0, p0, Lccsansan/ba/addDownloadListener;->getDownloadingCount:Lccsanandroid/content/BroadcastReceiver;

    .line 58
    const/high16 v0, -0x80000000

    iput v0, p0, Lccsansan/ba/addDownloadListener;->trackReportClick:I

    .line 61
    iput-object p1, p0, Lccsansan/ba/addDownloadListener;->getDownloadingList:Lccsancom/san/hybrid/ui/BaseHybridActivity;

    .line 62
    iput-object p2, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    .line 63
    invoke-direct {p0}, Lccsansan/ba/addDownloadListener;->resume()V

    .line 64
    new-instance p1, Lccsansan/ba/unifiedDownload;

    invoke-direct {p1}, Lccsansan/ba/unifiedDownload;-><init>()V

    iput-object p1, p0, Lccsansan/ba/addDownloadListener;->getDownloadedRecordByUrl:Lccsansan/ba/unifiedDownload;

    .line 65
    iget-object p1, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    invoke-virtual {p1}, Lccsansan/aq/addDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object p1

    .line 66
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 67
    const-string v0, "url"

    invoke-virtual {p2, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object p1, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    invoke-virtual {p1}, Lccsansan/aq/addDownloadListener;->getDownloadedCount()Ljava/lang/String;

    move-result-object p1

    const-string v0, "extra_info"

    invoke-virtual {p2, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    return-void
.end method

.method private IncentiveSDK()V
    .locals 4

    .line 1
    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->getDownloadingList:Lccsancom/san/hybrid/ui/BaseHybridActivity;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lccsanandroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManager;->beginTransaction()Lccsanandroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lccsansan/ba/addDownloadListener;->deleteDownItem()Lccsancom/san/hybrid/ui/addDownloadListener;

    move-result-object v1

    iput-object v1, p0, Lccsansan/ba/addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/hybrid/ui/addDownloadListener;

    .line 4
    new-instance v1, Lccsanandroid/os/Bundle;

    invoke-direct {v1}, Lccsanandroid/os/Bundle;-><init>()V

    .line 5
    iget-object v2, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    const-string v3, "INTENT_TAG_CONFIG"

    invoke-virtual {v1, v3, v2}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 6
    iget-object v2, p0, Lccsansan/ba/addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/hybrid/ui/addDownloadListener;

    invoke-virtual {v2, v1}, Lccsanandroidx/fragment/app/Fragment;->setArguments(Lccsanandroid/os/Bundle;)V

    .line 7
    const-string v1, "san_hybrid_web_view_fragment"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    .line 8
    iget v2, p0, Lccsansan/ba/addDownloadListener;->trackReportClick:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    move v1, v2

    .line 12
    :cond_0
    iget-object v2, p0, Lccsansan/ba/addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/hybrid/ui/addDownloadListener;

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/fragment/app/FragmentTransaction;->replace(ILccsanandroidx/fragment/app/Fragment;)Lccsanandroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentTransaction;->commit()I

    .line 13
    iput v3, p0, Lccsansan/ba/addDownloadListener;->trackReportClick:I

    return-void
.end method

.method private declared-synchronized deleteDownList()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lccsansan/ba/addDownloadListener;->getDownloadedCount:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lccsansan/ba/addDownloadListener;->getDownloadedCount:Z

    .line 3
    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->getDownloadingList:Lccsancom/san/hybrid/ui/BaseHybridActivity;

    iget-object v1, p0, Lccsansan/ba/addDownloadListener;->getDownloadingCount:Lccsanandroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lccsanandroidx/fragment/app/FragmentActivity;->unregisterReceiver(Lccsanandroid/content/BroadcastReceiver;)V

    .line 4
    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->getDownloadingList:Lccsancom/san/hybrid/ui/BaseHybridActivity;

    iget-object v1, p0, Lccsansan/ba/addDownloadListener;->deleteDownItem:Lccsanandroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lccsanandroidx/fragment/app/FragmentActivity;->unregisterReceiver(Lccsanandroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getDownloadedCount()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lccsansan/ba/addDownloadListener;->getDownloadedCount:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lccsanandroid/content/IntentFilter;

    invoke-direct {v0}, Lccsanandroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 3
    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lccsansan/ba/addDownloadListener;->getDownloadingList:Lccsancom/san/hybrid/ui/BaseHybridActivity;

    iget-object v2, p0, Lccsansan/ba/addDownloadListener;->getDownloadingCount:Lccsanandroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lccsanandroidx/fragment/app/FragmentActivity;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    .line 6
    new-instance v0, Lccsanandroid/content/IntentFilter;

    invoke-direct {v0}, Lccsanandroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 7
    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 8
    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 9
    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lccsansan/ba/addDownloadListener;->getDownloadingList:Lccsancom/san/hybrid/ui/BaseHybridActivity;

    iget-object v2, p0, Lccsansan/ba/addDownloadListener;->deleteDownItem:Lccsanandroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lccsanandroidx/fragment/app/FragmentActivity;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lccsansan/ba/addDownloadListener;->getDownloadedCount:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic getDownloadingList(Lccsansan/ba/addDownloadListener;)Lccsansan/ba/addDownloadListener$removeDownloadListener;
    .locals 0

    .line 2
    iget-object p0, p0, Lccsansan/ba/addDownloadListener;->resume:Lccsansan/ba/addDownloadListener$removeDownloadListener;

    return-object p0
.end method

.method static synthetic removeDownloadListener(Lccsansan/ba/addDownloadListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsansan/ba/addDownloadListener;->unifiedDownload(Ljava/lang/String;)V

    return-void
.end method

.method private resume()V
    .locals 4

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "webview_prefetch_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lccsansan/bw/performActionWhenOffline;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 2
    new-instance v1, Lccsansan/av/IncentiveDownloadUtils;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsansan/av/IncentiveDownloadUtils;-><init>(Lccsanandroid/content/Context;)V

    if-eqz v0, :cond_0

    .line 4
    new-instance v2, Lccsansan/br/removeDownloadListener;

    iget-object v3, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    invoke-virtual {v3}, Lccsansan/aq/addDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lccsansan/br/removeDownloadListener;-><init>(Ljava/lang/String;Lccsansan/av/getDownloadingList;)V

    iput-object v2, p0, Lccsansan/ba/addDownloadListener;->getDownloadedList:Lccsansan/bm/getDownloadingList;

    goto :goto_0

    .line 6
    :cond_0
    new-instance v2, Lccsansan/br/unifiedDownload;

    invoke-direct {v2, v1}, Lccsansan/br/unifiedDownload;-><init>(Lccsansan/av/getDownloadingList;)V

    iput-object v2, p0, Lccsansan/ba/addDownloadListener;->getDownloadedList:Lccsansan/bm/getDownloadingList;

    .line 8
    :goto_0
    iget-object v1, p0, Lccsansan/ba/addDownloadListener;->getDownloadedList:Lccsansan/bm/getDownloadingList;

    iget-object v2, p0, Lccsansan/ba/addDownloadListener;->getDownloadingRecordByUrl:Lccsansan/bm/getDownloadingList$removeDownloadListener;

    invoke-interface {v1, v2}, Lccsansan/bm/getDownloadingList;->addDownloadListener(Lccsansan/bm/getDownloadingList$removeDownloadListener;)V

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->getDownloadedList:Lccsansan/bm/getDownloadingList;

    iget-object v1, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    invoke-virtual {v1}, Lccsansan/aq/addDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsansan/bm/getDownloadingList;->unifiedDownload(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private trackReportShow()V
    .locals 4

    .line 1
    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    invoke-virtual {v0}, Lccsansan/aq/addDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    invoke-virtual {v0}, Lccsansan/aq/addDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/getAdFormat;->addDownloadListener(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    const-string v1, "titlebar"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    const-string v2, "screen"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    const-string v3, "hide"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lccsansan/aq/addDownloadListener;->removeDownloadListener(I)V

    :cond_0
    nop

    .line 10
    const-string v1, "status"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 11
    const-string v1, "show"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    invoke-virtual {v0, v1}, Lccsansan/aq/addDownloadListener;->removeDownloadListener(I)V

    :cond_1
    nop

    .line 15
    const-string v0, "vertical"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    invoke-virtual {v0, v1}, Lccsansan/aq/addDownloadListener;->addDownloadListener(I)V

    goto :goto_0

    :cond_2
    nop

    .line 17
    const-string v0, "horizontal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsansan/aq/addDownloadListener;->addDownloadListener(I)V

    .line 23
    :cond_3
    :goto_0
    new-instance v0, Lccsancom/san/hybrid/ui/unifiedDownload;

    iget-object v1, p0, Lccsansan/ba/addDownloadListener;->getDownloadingList:Lccsancom/san/hybrid/ui/BaseHybridActivity;

    invoke-direct {v0, v1}, Lccsancom/san/hybrid/ui/unifiedDownload;-><init>(Lccsanandroid/app/Activity;)V

    iput-object v0, p0, Lccsansan/ba/addDownloadListener;->addDownloadListener:Lccsancom/san/hybrid/ui/unifiedDownload;

    .line 24
    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    invoke-virtual {v0}, Lccsansan/aq/addDownloadListener;->deleteDownList()I

    move-result v0

    if-eqz v0, :cond_4

    .line 25
    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->addDownloadListener:Lccsancom/san/hybrid/ui/unifiedDownload;

    iget-object v1, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    invoke-virtual {v1}, Lccsansan/aq/addDownloadListener;->deleteDownList()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/san/hybrid/ui/unifiedDownload;->removeDownloadListener(I)V

    .line 28
    :cond_4
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_6

    .line 29
    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->getDownloadingList:Lccsancom/san/hybrid/ui/BaseHybridActivity;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentActivity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lccsanandroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 31
    iget-object v2, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    invoke-virtual {v2}, Lccsansan/aq/addDownloadListener;->getDownloadingCount()Z

    move-result v2

    if-eqz v2, :cond_5

    or-int/lit16 v1, v1, 0x2000

    goto :goto_1

    :cond_5
    and-int/lit16 v1, v1, -0x2001

    .line 36
    :goto_1
    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setSystemUiVisibility(I)V

    .line 39
    :cond_6
    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->getDownloadingList:Lccsancom/san/hybrid/ui/BaseHybridActivity;

    iget-object v1, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    invoke-virtual {v1}, Lccsansan/aq/addDownloadListener;->addDownloadListener()I

    move-result v1

    invoke-static {v0, v1}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Lccsanandroid/app/Activity;I)V

    .line 40
    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->getDownloadingList:Lccsancom/san/hybrid/ui/BaseHybridActivity;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentActivity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1, v1}, Lccsanandroid/view/Window;->setFlags(II)V

    .line 41
    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->getDownloadingList:Lccsancom/san/hybrid/ui/BaseHybridActivity;

    invoke-static {v0}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)V

    return-void
.end method

.method private unifiedDownload(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->getDownloadStatusByUrl:Lccsansan/br/IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lccsansan/br/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->getDownloadStatusByUrl:Lccsansan/br/IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lccsansan/br/IncentiveDownloadUtils;->deleteDownList()V

    :cond_0
    return-void
.end method

.method public addDownloadListener()V
    .locals 4

    .line 1
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lccsansan/ba/addDownloadListener;->deleteDownList:J

    sub-long/2addr v0, v2

    .line 4
    :try_start_0
    iget-object v2, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    invoke-virtual {v2}, Lccsansan/aq/addDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    invoke-virtual {v3}, Lccsansan/aq/addDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lccsansan/bo/unifiedDownload;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    :goto_0
    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->getDownloadStatusByUrl:Lccsansan/br/IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    .line 9
    iput-wide v1, p0, Lccsansan/ba/addDownloadListener;->deleteDownList:J

    .line 10
    const-string v1, ""

    iput-object v1, v0, Lccsansan/br/IncentiveDownloadUtils;->deleteDownItem:Ljava/lang/String;

    .line 11
    iput-object v1, v0, Lccsansan/br/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Ljava/lang/String;

    .line 12
    iput-object v1, v0, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    .line 16
    :cond_0
    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->getDownloadStatusByUrl:Lccsansan/br/IncentiveDownloadUtils;

    if-eqz v0, :cond_1

    .line 17
    iget-object v1, p0, Lccsansan/ba/addDownloadListener;->getDownloadedRecordByUrl:Lccsansan/ba/unifiedDownload;

    invoke-virtual {v1, v0}, Lccsansan/ba/unifiedDownload;->getDownloadingList(Lccsansan/br/IncentiveDownloadUtils;)V

    .line 20
    :cond_1
    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lccsansan/aq/addDownloadListener;->getDownloadingList()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->removeDownloadListener:Lccsansan/ba/IncentiveDownloadUtils;

    if-eqz v0, :cond_2

    .line 21
    invoke-virtual {v0}, Lccsansan/ba/IncentiveDownloadUtils;->unifiedDownload()V

    .line 24
    :cond_2
    invoke-direct {p0}, Lccsansan/ba/addDownloadListener;->deleteDownList()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lccsansan/ba/addDownloadListener;->getDownloadingList:Lccsancom/san/hybrid/ui/BaseHybridActivity;

    return-void
.end method

.method public addDownloadListener(Lccsanandroid/os/Bundle;)V
    .locals 2

    .line 5
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/ba/addDownloadListener;->deleteDownList:J

    .line 8
    :try_start_0
    iget-object p1, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    invoke-virtual {p1}, Lccsansan/aq/addDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    invoke-virtual {v0}, Lccsansan/aq/addDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lccsansan/bo/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    :goto_0
    iget-object p1, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    invoke-virtual {p1}, Lccsansan/aq/addDownloadListener;->getDownloadingList()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    new-instance p1, Lccsansan/ba/IncentiveDownloadUtils;

    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->getDownloadingList:Lccsancom/san/hybrid/ui/BaseHybridActivity;

    invoke-direct {p1, v0}, Lccsansan/ba/IncentiveDownloadUtils;-><init>(Lccsanandroid/content/Context;)V

    iput-object p1, p0, Lccsansan/ba/addDownloadListener;->removeDownloadListener:Lccsansan/ba/IncentiveDownloadUtils;

    .line 14
    invoke-virtual {p1}, Lccsansan/ba/IncentiveDownloadUtils;->removeDownloadListener()V

    .line 17
    :cond_0
    invoke-direct {p0}, Lccsansan/ba/addDownloadListener;->trackReportShow()V

    .line 18
    invoke-virtual {p0}, Lccsansan/ba/addDownloadListener;->getDownloadingRecordByUrl()Lccsansan/br/IncentiveDownloadUtils;

    move-result-object p1

    iput-object p1, p0, Lccsansan/ba/addDownloadListener;->getDownloadStatusByUrl:Lccsansan/br/IncentiveDownloadUtils;

    .line 19
    invoke-direct {p0}, Lccsansan/ba/addDownloadListener;->getDownloadedCount()V

    .line 20
    iget-object p1, p0, Lccsansan/ba/addDownloadListener;->getDownloadStatusByUrl:Lccsansan/br/IncentiveDownloadUtils;

    if-nez p1, :cond_1

    .line 21
    iget-object p1, p0, Lccsansan/ba/addDownloadListener;->getDownloadingList:Lccsancom/san/hybrid/ui/BaseHybridActivity;

    invoke-virtual {p1}, Lccsancom/san/hybrid/ui/BaseHybridActivity;->finish()V

    goto :goto_1

    .line 23
    :cond_1
    invoke-direct {p0}, Lccsansan/ba/addDownloadListener;->IncentiveSDK()V

    :goto_1
    return-void
.end method

.method public deleteDownItem()Lccsancom/san/hybrid/ui/addDownloadListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/hybrid/ui/addDownloadListener;

    if-nez v0, :cond_0

    invoke-static {}, Lccsansan/ah/addDownloadListener;->addDownloadListener()Lccsancom/san/hybrid/ui/addDownloadListener;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDownloadStatusByUrl()Lccsancom/san/hybrid/ui/unifiedDownload;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->addDownloadListener:Lccsancom/san/hybrid/ui/unifiedDownload;

    return-object v0
.end method

.method public getDownloadedList()V
    .locals 0

    return-void
.end method

.method public getDownloadedRecordByUrl()Lccsansan/aq/addDownloadListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    return-object v0
.end method

.method public getDownloadingCount()Lccsansan/bm/getDownloadingList;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->getDownloadedList:Lccsansan/bm/getDownloadingList;

    return-object v0
.end method

.method public getDownloadingList()V
    .locals 0

    return-void
.end method

.method public getDownloadingList(ILccsanandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_3

    .line 1
    iget-object p1, p0, Lccsansan/ba/addDownloadListener;->pause:Lccsansan/ba/addDownloadListener$getDownloadedRecordByUrl;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lccsansan/ba/addDownloadListener$getDownloadedRecordByUrl;->unifiedDownload()V

    .line 5
    :cond_0
    iget-object p1, p0, Lccsansan/ba/addDownloadListener;->getThumbPathByRecord:Lccsansan/ba/addDownloadListener$addDownloadListener;

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1}, Lccsansan/ba/addDownloadListener$addDownloadListener;->unifiedDownload()Z

    move-result p1

    return p1

    .line 8
    :cond_1
    iget-object p1, p0, Lccsansan/ba/addDownloadListener;->getDownloadStatusByUrl:Lccsansan/br/IncentiveDownloadUtils;

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingRecordByUrl()V

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public getDownloadingRecordByUrl()Lccsansan/br/IncentiveDownloadUtils;
    .locals 13

    .line 1
    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->getDownloadStatusByUrl:Lccsansan/br/IncentiveDownloadUtils;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lccsansan/aq/IncentiveDownloadUtils;

    iget-object v1, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    invoke-virtual {v1}, Lccsansan/aq/addDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    invoke-virtual {v1}, Lccsansan/aq/addDownloadListener;->unifiedDownload()I

    move-result v3

    iget-object v1, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    invoke-virtual {v1}, Lccsansan/aq/addDownloadListener;->deleteDownItem()Z

    move-result v4

    iget-object v1, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    invoke-virtual {v1}, Lccsansan/aq/addDownloadListener;->getDownloadedList()Z

    move-result v5

    iget-object v1, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    invoke-virtual {v1}, Lccsansan/aq/addDownloadListener;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    invoke-virtual {v1}, Lccsansan/aq/addDownloadListener;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    invoke-virtual {v1}, Lccsansan/aq/addDownloadListener;->getDownloadingRecordByUrl()Z

    move-result v12

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lccsansan/aq/IncentiveDownloadUtils;-><init>(Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ZZZZZ)V

    .line 3
    iget-object v1, p0, Lccsansan/ba/addDownloadListener;->getDownloadedRecordByUrl:Lccsansan/ba/unifiedDownload;

    iget-object v2, p0, Lccsansan/ba/addDownloadListener;->getDownloadingList:Lccsancom/san/hybrid/ui/BaseHybridActivity;

    invoke-virtual {v1, v2, v0}, Lccsansan/ba/unifiedDownload;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/aq/IncentiveDownloadUtils;)Lccsansan/br/IncentiveDownloadUtils;

    move-result-object v1

    iput-object v1, p0, Lccsansan/ba/addDownloadListener;->getDownloadStatusByUrl:Lccsansan/br/IncentiveDownloadUtils;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lccsansan/aq/IncentiveDownloadUtils;->deleteDownItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->getDownloadStatusByUrl:Lccsansan/br/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/br/IncentiveDownloadUtils;->IncentiveDownloadUtils()V

    .line 9
    :cond_0
    iget-object v1, p0, Lccsansan/ba/addDownloadListener;->getDownloadedRecordByUrl:Lccsansan/ba/unifiedDownload;

    iget-object v2, p0, Lccsansan/ba/addDownloadListener;->getDownloadingList:Lccsancom/san/hybrid/ui/BaseHybridActivity;

    iget-object v3, p0, Lccsansan/ba/addDownloadListener;->getDownloadStatusByUrl:Lccsansan/br/IncentiveDownloadUtils;

    iget-object v4, p0, Lccsansan/ba/addDownloadListener;->removeDownloadListener:Lccsansan/ba/IncentiveDownloadUtils;

    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    invoke-virtual {v0}, Lccsansan/aq/addDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    invoke-virtual {v0}, Lccsansan/aq/addDownloadListener;->getDownloadedCount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lccsansan/ba/unifiedDownload;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/br/IncentiveDownloadUtils;Lccsansan/ba/IncentiveDownloadUtils;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_1
    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->getDownloadStatusByUrl:Lccsansan/br/IncentiveDownloadUtils;

    return-object v0
.end method

.method public pause()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/ba/addDownloadListener;->deleteDownList:J

    return-wide v0
.end method

.method public removeDownloadListener()V
    .locals 0

    return-void
.end method

.method public removeDownloadListener(IILccsanandroid/content/Intent;)V
    .locals 1

    .line 24
    :try_start_0
    iget-object v0, p0, Lccsansan/ba/addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/hybrid/ui/addDownloadListener;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/san/hybrid/ui/addDownloadListener;->unifiedDownload(IILccsanandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    return-void
.end method

.method public removeDownloadListener(Lccsanandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public unifiedDownload()V
    .locals 0

    return-void
.end method
