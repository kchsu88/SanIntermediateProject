.class public Lccsancom/san/action/ActionTypeReserveApp;
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

    const/4 v0, -0x4

    return v0
.end method

.method public performAction(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Lccsansan/ck/IncentiveDownloadUtils;)Lccsansan/ck/unifiedDownload;
    .locals 0

    .line 1
    const/4 p3, 0x0

    const-string p4, "cardbutton"

    invoke-static {p1, p2, p3, p4}, Lccsansan/ay/getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;ZLjava/lang/String;)Z

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
    const/4 p3, 0x0

    const-string p4, "cardbutton"

    invoke-static {p1, p2, p3, p4}, Lccsansan/ay/getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;ZLjava/lang/String;)Z

    move-result p1

    .line 2
    new-instance p2, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;

    invoke-direct {p2, p1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;-><init>(Z)V

    invoke-virtual {p2}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/ck/unifiedDownload;

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
    .locals 0

    .line 1
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getActionType()Lccsansan/dt/pause;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
