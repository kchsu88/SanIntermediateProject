.class public Lccsancom/san/mads/action/actiontype/ActionTypeDeeplink;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/ck/getDownloadedRecordByUrl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDownloadingList(Ljava/lang/String;Lccsansan/ck/getDownloadedRecordByUrl$unifiedDownload;)V
    .locals 3

    .line 1
    invoke-static {}, Lccsansan/bb/IncentiveDownloadUtils;->getDownloadedList()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lccsansan/cy/removeDownloadListener;->addDownloadListener()Lccsansan/cy/removeDownloadListener;

    move-result-object v0

    invoke-static {}, Lccsancom/san/mads/webview/deleteDownItem;->IncentiveDownloadUtils()Lccsancom/san/mads/webview/deleteDownItem;

    move-result-object v1

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/san/mads/webview/deleteDownItem;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Lccsancom/san/mads/action/actiontype/ActionTypeDeeplink$1;

    invoke-direct {v2, p0, p2}, Lccsancom/san/mads/action/actiontype/ActionTypeDeeplink$1;-><init>(Lccsancom/san/mads/action/actiontype/ActionTypeDeeplink;Lccsansan/ck/getDownloadedRecordByUrl$unifiedDownload;)V

    invoke-virtual {v0, v1, p1, v2}, Lccsansan/cy/removeDownloadListener;->addDownloadListener(Lccsanandroid/webkit/WebView;Ljava/lang/String;Lccsansan/cy/removeDownloadListener$deleteDownItem;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/mads/action/actiontype/ActionTypeDeeplink$2;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/san/mads/action/actiontype/ActionTypeDeeplink$2;-><init>(Lccsancom/san/mads/action/actiontype/ActionTypeDeeplink;Ljava/lang/String;Lccsansan/ck/getDownloadedRecordByUrl$unifiedDownload;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getActionType()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public performAction(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Lccsansan/ck/IncentiveDownloadUtils;)Lccsansan/ck/unifiedDownload;
    .locals 0

    .line 1
    invoke-static {p3}, Lccsansan/ck/getDownloadingRecordByUrl;->addDownloadListener(Ljava/lang/String;)Z

    move-result p1

    .line 2
    new-instance p2, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;

    invoke-direct {p2, p1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;-><init>(Z)V

    invoke-virtual {p2}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/ck/unifiedDownload;

    move-result-object p1

    return-object p1
.end method

.method public performActionWhenOffline(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Lccsansan/ck/IncentiveDownloadUtils;)Lccsansan/ck/unifiedDownload;
    .locals 0

    .line 1
    invoke-static {p3}, Lccsansan/ck/getDownloadingRecordByUrl;->addDownloadListener(Ljava/lang/String;)Z

    move-result p1

    .line 2
    new-instance p2, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;

    invoke-direct {p2, p1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;-><init>(Z)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils(Z)Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/ck/unifiedDownload;

    move-result-object p1

    return-object p1
.end method

.method public resolveUrl(Ljava/lang/String;Ljava/lang/String;Lccsansan/ck/getDownloadedRecordByUrl$unifiedDownload;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lccsansan/bw/getAdFormat;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-direct {p0, p1, p3}, Lccsancom/san/mads/action/actiontype/ActionTypeDeeplink;->getDownloadingList(Ljava/lang/String;Lccsansan/ck/getDownloadedRecordByUrl$unifiedDownload;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 4
    invoke-interface {p3, p2, p1}, Lccsansan/ck/getDownloadedRecordByUrl$unifiedDownload;->addDownloadListener(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public shouldTryHandlingAction(Lccsansan/dt/removeDownloadListener;I)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->AdError$ErrorCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
