.class public Lccsancom/san/bridge/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:Lccsancom/san/bridge/removeDownloadListener; = null

.field private static addDownloadListener:Lccsancom/san/bridge/IncentiveDownloadUtils; = null

.field private static deleteDownItem:Z = false

.field private static getDownloadingList:Z = false

.field private static removeDownloadListener:Lccsancom/san/bridge/unifiedDownload; = null

.field private static unifiedDownload:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static IncentiveDownloadUtils()Lccsancom/san/bridge/removeDownloadListener;
    .locals 2

    .line 10
    :try_start_0
    sget-object v0, Lccsancom/san/bridge/addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/bridge/removeDownloadListener;

    if-eqz v0, :cond_0

    return-object v0

    .line 12
    :cond_0
    sget-boolean v0, Lccsancom/san/bridge/addDownloadListener;->unifiedDownload:Z

    if-nez v0, :cond_2

    const-string v0, "com.san.bridge.ActionServiceImpl"

    .line 13
    invoke-static {v0}, Lccsancom/san/bridge/addDownloadListener;->getDownloadedRecordByUrl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    instance-of v1, v0, Lccsancom/san/bridge/removeDownloadListener;

    if-eqz v1, :cond_1

    .line 15
    check-cast v0, Lccsancom/san/bridge/removeDownloadListener;

    sput-object v0, Lccsancom/san/bridge/addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/bridge/removeDownloadListener;

    :cond_1
    const/4 v0, 0x1

    .line 17
    sput-boolean v0, Lccsancom/san/bridge/addDownloadListener;->unifiedDownload:Z

    .line 19
    :cond_2
    sget-object v0, Lccsancom/san/bridge/addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/bridge/removeDownloadListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 21
    const-string v1, "BridgeManager"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 7
    invoke-static {}, Lccsancom/san/bridge/addDownloadListener;->getDownloadingList()Lccsancom/san/bridge/unifiedDownload;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0, p0}, Lccsancom/san/bridge/unifiedDownload;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-static {}, Lccsancom/san/bridge/addDownloadListener;->IncentiveDownloadUtils()Lccsancom/san/bridge/removeDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0, p0, p1}, Lccsancom/san/bridge/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static IncentiveDownloadUtils(Z)V
    .locals 1

    .line 28
    invoke-static {}, Lccsancom/san/bridge/addDownloadListener;->removeDownloadListener()Lccsancom/san/bridge/IncentiveDownloadUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0, p0}, Lccsancom/san/bridge/IncentiveDownloadUtils;->IncentiveDownloadUtils(Z)V

    :cond_0
    return-void
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z
    .locals 1

    .line 4
    invoke-static {}, Lccsancom/san/bridge/addDownloadListener;->getDownloadingList()Lccsancom/san/bridge/unifiedDownload;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p0}, Lccsancom/san/bridge/unifiedDownload;->removeDownloadListener(Lccsanandroid/content/Context;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;ZLjava/lang/String;)Z
    .locals 1

    .line 10
    invoke-static {}, Lccsancom/san/bridge/addDownloadListener;->getDownloadingList()Lccsancom/san/bridge/unifiedDownload;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0, p0, p1, p2, p3}, Lccsancom/san/bridge/unifiedDownload;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;ZLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;)Lccsancom/san/mads/webview/getDownloadingList;
    .locals 1

    .line 34
    invoke-static {}, Lccsancom/san/bridge/addDownloadListener;->removeDownloadListener()Lccsancom/san/bridge/IncentiveDownloadUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0, p0}, Lccsancom/san/bridge/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsancom/san/mads/webview/getDownloadingList;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static addDownloadListener(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lccsancom/san/bridge/addDownloadListener;->getDownloadingList()Lccsancom/san/bridge/unifiedDownload;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0}, Lccsancom/san/bridge/unifiedDownload;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static addDownloadListener(Lccsansan/dt/removeDownloadListener;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/dt/removeDownloadListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-static {}, Lccsancom/san/bridge/addDownloadListener;->removeDownloadListener()Lccsancom/san/bridge/IncentiveDownloadUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0, p0, p1}, Lccsancom/san/bridge/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private static getDownloadedRecordByUrl(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 13
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lccsansan/bw/getPackageNameByRecord;->addDownloadListener(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getDownloadingList(Ljava/lang/String;Lccsanandroid/content/Context;Lccsanandroid/webkit/WebView;)Lccsanandroid/webkit/DownloadListener;
    .locals 1

    .line 22
    invoke-static {}, Lccsancom/san/bridge/addDownloadListener;->IncentiveDownloadUtils()Lccsancom/san/bridge/removeDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    invoke-interface {v0, p0, p1, p2}, Lccsancom/san/bridge/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Lccsanandroid/content/Context;Lccsanandroid/webkit/WebView;)Lccsanandroid/webkit/DownloadListener;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static getDownloadingList()Lccsancom/san/bridge/unifiedDownload;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lccsancom/san/bridge/addDownloadListener;->removeDownloadListener:Lccsancom/san/bridge/unifiedDownload;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    sget-boolean v0, Lccsancom/san/bridge/addDownloadListener;->getDownloadingList:Z

    if-nez v0, :cond_2

    const-string v0, "com.san.bridge.ExServiceImpl"

    .line 4
    invoke-static {v0}, Lccsancom/san/bridge/addDownloadListener;->getDownloadedRecordByUrl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lccsancom/san/bridge/unifiedDownload;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Lccsancom/san/bridge/unifiedDownload;

    sput-object v0, Lccsancom/san/bridge/addDownloadListener;->removeDownloadListener:Lccsancom/san/bridge/unifiedDownload;

    :cond_1
    const/4 v0, 0x1

    .line 8
    sput-boolean v0, Lccsancom/san/bridge/addDownloadListener;->getDownloadingList:Z

    .line 10
    :cond_2
    sget-object v0, Lccsancom/san/bridge/addDownloadListener;->removeDownloadListener:Lccsancom/san/bridge/unifiedDownload;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 12
    const-string v1, "BridgeManager"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDownloadingList(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lccsancom/san/bridge/addDownloadListener;->getDownloadingList()Lccsancom/san/bridge/unifiedDownload;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0}, Lccsancom/san/bridge/unifiedDownload;->getDownloadingList(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-static {}, Lccsancom/san/bridge/addDownloadListener;->IncentiveDownloadUtils()Lccsancom/san/bridge/removeDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18
    invoke-interface {v0, p0, p1}, Lccsancom/san/bridge/removeDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getDownloadingList(Lccsansan/p/getDownloadedList;Ljava/lang/String;ZLccsansan/m/removeDownloadListener;)V
    .locals 1

    .line 13
    invoke-static {}, Lccsancom/san/bridge/addDownloadListener;->IncentiveDownloadUtils()Lccsancom/san/bridge/removeDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0, p0, p1, p2, p3}, Lccsancom/san/bridge/removeDownloadListener;->addDownloadListener(Lccsansan/p/getDownloadedList;Ljava/lang/String;ZLccsansan/m/removeDownloadListener;)V

    :cond_0
    return-void
.end method

.method public static getDownloadingList(ZLjava/lang/String;)V
    .locals 1

    .line 25
    invoke-static {}, Lccsancom/san/bridge/addDownloadListener;->removeDownloadListener()Lccsancom/san/bridge/IncentiveDownloadUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0, p0, p1}, Lccsancom/san/bridge/IncentiveDownloadUtils;->addDownloadListener(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static removeDownloadListener()Lccsancom/san/bridge/IncentiveDownloadUtils;
    .locals 2

    .line 4
    :try_start_0
    sget-object v0, Lccsancom/san/bridge/addDownloadListener;->addDownloadListener:Lccsancom/san/bridge/IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    return-object v0

    .line 6
    :cond_0
    sget-boolean v0, Lccsancom/san/bridge/addDownloadListener;->deleteDownItem:Z

    if-nez v0, :cond_2

    const-string v0, "com.san.bridge.SanServiceImpl"

    .line 7
    invoke-static {v0}, Lccsancom/san/bridge/addDownloadListener;->getDownloadedRecordByUrl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    instance-of v1, v0, Lccsancom/san/bridge/IncentiveDownloadUtils;

    if-eqz v1, :cond_1

    .line 9
    check-cast v0, Lccsancom/san/bridge/IncentiveDownloadUtils;

    sput-object v0, Lccsancom/san/bridge/addDownloadListener;->addDownloadListener:Lccsancom/san/bridge/IncentiveDownloadUtils;

    :cond_1
    const/4 v0, 0x1

    .line 11
    sput-boolean v0, Lccsancom/san/bridge/addDownloadListener;->deleteDownItem:Z

    .line 13
    :cond_2
    sget-object v0, Lccsancom/san/bridge/addDownloadListener;->addDownloadListener:Lccsancom/san/bridge/IncentiveDownloadUtils;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 15
    const-string v1, "BridgeManager"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lccsancom/san/bridge/addDownloadListener;->getDownloadingList()Lccsancom/san/bridge/unifiedDownload;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0}, Lccsancom/san/bridge/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lccsancom/san/bridge/addDownloadListener;->getDownloadingList()Lccsancom/san/bridge/unifiedDownload;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0, p1, p2}, Lccsancom/san/bridge/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;Z)V
    .locals 1

    .line 31
    invoke-static {}, Lccsancom/san/bridge/addDownloadListener;->removeDownloadListener()Lccsancom/san/bridge/IncentiveDownloadUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0, p0, p1}, Lccsancom/san/bridge/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public static unifiedDownload()V
    .locals 1

    .line 4
    invoke-static {}, Lccsancom/san/bridge/addDownloadListener;->getDownloadingList()Lccsancom/san/bridge/unifiedDownload;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lccsancom/san/bridge/unifiedDownload;->removeDownloadListener()V

    :cond_0
    return-void
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V
    .locals 1

    .line 19
    invoke-static {}, Lccsancom/san/bridge/addDownloadListener;->IncentiveDownloadUtils()Lccsancom/san/bridge/removeDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {v0, p0, p1}, Lccsancom/san/bridge/removeDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V

    :cond_0
    return-void
.end method

.method public static unifiedDownload(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lccsancom/san/bridge/addDownloadListener;->IncentiveDownloadUtils()Lccsancom/san/bridge/removeDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0}, Lccsancom/san/bridge/removeDownloadListener;->unifiedDownload(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static unifiedDownload(Lccsansan/dt/removeDownloadListener;)V
    .locals 1

    .line 37
    invoke-static {}, Lccsancom/san/bridge/addDownloadListener;->removeDownloadListener()Lccsancom/san/bridge/IncentiveDownloadUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {v0, p0}, Lccsancom/san/bridge/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)V

    :cond_0
    return-void
.end method
