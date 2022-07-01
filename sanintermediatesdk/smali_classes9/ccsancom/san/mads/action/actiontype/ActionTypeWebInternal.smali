.class public Lccsancom/san/mads/action/actiontype/ActionTypeWebInternal;
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


# virtual methods
.method public getActionType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public performAction(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Lccsansan/ck/IncentiveDownloadUtils;)Lccsansan/ck/unifiedDownload;
    .locals 0

    .line 1
    invoke-static {p2}, Lccsansan/ck/getDownloadingRecordByUrl;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p2, p4}, Lccsansan/ck/getDownloadingRecordByUrl;->getDownloadingList(Ljava/lang/String;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->getActionType()Lccsansan/dt/pause;

    move-result-object p3

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    .line 3
    const-string p3, "cardnonbutton"

    invoke-static {p1, p2, p4, p3}, Lccsancom/san/bridge/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;ZLjava/lang/String;)Z

    .line 5
    :cond_0
    new-instance p1, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;

    invoke-direct {p1, p4}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;-><init>(Z)V

    invoke-virtual {p1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/ck/unifiedDownload;

    move-result-object p1

    return-object p1
.end method

.method public performActionWhenOffline(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Lccsansan/ck/IncentiveDownloadUtils;)Lccsansan/ck/unifiedDownload;
    .locals 1

    .line 1
    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->getActionType()Lccsansan/dt/pause;

    move-result-object p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    .line 2
    const-string p3, "cardnonbutton"

    invoke-static {p1, p2, v0, p3}, Lccsancom/san/bridge/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;ZLjava/lang/String;)Z

    move-result p1

    .line 3
    new-instance p2, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;

    invoke-direct {p2, p1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;-><init>(Z)V

    invoke-virtual {p2}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/ck/unifiedDownload;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lccsansan/bq/addDownloadListener;->getDownloadingList(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 8
    invoke-static {p1, p2}, Lccsancom/san/common/offline/getDownloadingRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;)Z

    move-result p1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {p2}, Lccsansan/ck/getDownloadingRecordByUrl;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p2, p1}, Lccsansan/ck/getDownloadingRecordByUrl;->getDownloadingList(Ljava/lang/String;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;)Z

    move-result p1

    .line 11
    const-string p2, "ActionTypeWebInternal"

    const-string p3, "Offline jump internal webView: no chrome open..."

    invoke-static {p2, p3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :goto_0
    new-instance p2, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;

    invoke-direct {p2, p1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;-><init>(Z)V

    invoke-virtual {p2, v0}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils(Z)Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/ck/unifiedDownload;

    move-result-object p1

    return-object p1
.end method

.method public resolveUrl(Ljava/lang/String;Ljava/lang/String;Lccsansan/ck/getDownloadedRecordByUrl$unifiedDownload;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    invoke-interface {p3, p1, p2}, Lccsansan/ck/getDownloadedRecordByUrl$unifiedDownload;->addDownloadListener(ZLjava/lang/String;)V

    return-void
.end method

.method public shouldTryHandlingAction(Lccsansan/dt/removeDownloadListener;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lccsancom/san/mads/action/actiontype/ActionTypeWebInternal;->getActionType()I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
