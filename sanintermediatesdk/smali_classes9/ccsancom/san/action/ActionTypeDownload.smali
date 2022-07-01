.class public Lccsancom/san/action/ActionTypeDownload;
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

    const/4 v0, 0x7

    return v0
.end method

.method public performAction(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Lccsansan/ck/IncentiveDownloadUtils;)Lccsansan/ck/unifiedDownload;
    .locals 0

    .line 1
    iget-object p3, p4, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    const/4 p4, 0x1

    invoke-static {p1, p2, p4, p3}, Lccsansan/au/addDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;ZLjava/lang/String;)V

    .line 2
    new-instance p1, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;

    invoke-direct {p1, p4}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;-><init>(Z)V

    invoke-virtual {p1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/ck/unifiedDownload;

    move-result-object p1

    return-object p1
.end method

.method public performActionWhenOffline(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Lccsansan/ck/IncentiveDownloadUtils;)Lccsansan/ck/unifiedDownload;
    .locals 0

    .line 1
    iget-object p3, p4, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    const/4 p4, 0x0

    invoke-static {p1, p2, p4, p3}, Lccsansan/au/addDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;ZLjava/lang/String;)V

    .line 2
    new-instance p1, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;-><init>(Z)V

    invoke-virtual {p1, p2}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils(Z)Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;

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
    invoke-virtual {p0}, Lccsancom/san/action/ActionTypeDownload;->getActionType()I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
