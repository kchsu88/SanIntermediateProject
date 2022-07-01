.class public Lccsancom/san/action/ActionTypeDetailPage;
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

    const/4 v0, -0x3

    return v0
.end method

.method public performAction(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Lccsansan/ck/IncentiveDownloadUtils;)Lccsansan/ck/unifiedDownload;
    .locals 0

    .line 1
    iget p1, p4, Lccsansan/ck/IncentiveDownloadUtils;->unifiedDownload:I

    iget p3, p4, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    invoke-static {p2, p1, p3}, Lccsancom/san/action/getDownloadingList;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;II)Z

    move-result p1

    .line 2
    new-instance p2, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;

    invoke-direct {p2, p1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;-><init>(Z)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->getDownloadingList(Z)Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/ck/unifiedDownload;

    move-result-object p1

    return-object p1
.end method

.method public performActionWhenOffline(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Lccsansan/ck/IncentiveDownloadUtils;)Lccsansan/ck/unifiedDownload;
    .locals 0

    .line 1
    iget p1, p4, Lccsansan/ck/IncentiveDownloadUtils;->unifiedDownload:I

    iget p3, p4, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    invoke-static {p2, p1, p3}, Lccsancom/san/action/getDownloadingList;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;II)Z

    move-result p1

    .line 2
    new-instance p2, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;

    invoke-direct {p2, p1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;-><init>(Z)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils(Z)Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->getDownloadingList(Z)Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/ck/unifiedDownload;

    move-result-object p1

    return-object p1
.end method

.method public resolveUrl(Ljava/lang/String;Ljava/lang/String;Lccsansan/ck/getDownloadedRecordByUrl$unifiedDownload;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2}, Lccsansan/ck/getDownloadedRecordByUrl$unifiedDownload;->addDownloadListener(ZLjava/lang/String;)V

    return-void
.end method

.method public shouldTryHandlingAction(Lccsansan/dt/removeDownloadListener;I)Z
    .locals 1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getName()Lccsansan/dt/deleteDownItem;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getDownloadedRecordByUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getName()Lccsansan/dt/deleteDownItem;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/deleteDownItem;->removeDownloadListener()Z

    move-result p1

    if-nez p1, :cond_1

    return p2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return p2
.end method
