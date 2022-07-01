.class public Lccsancom/san/mads/action/actiontype/ActionTypeNone;
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

    const/4 v0, 0x0

    return v0
.end method

.method public performAction(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Lccsansan/ck/IncentiveDownloadUtils;)Lccsansan/ck/unifiedDownload;
    .locals 0

    .line 1
    new-instance p1, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;-><init>(Z)V

    invoke-virtual {p1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/ck/unifiedDownload;

    move-result-object p1

    return-object p1
.end method

.method public performActionWhenOffline(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Lccsansan/ck/IncentiveDownloadUtils;)Lccsansan/ck/unifiedDownload;
    .locals 0

    .line 1
    new-instance p1, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;-><init>(Z)V

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
    invoke-virtual {p0}, Lccsancom/san/mads/action/actiontype/ActionTypeNone;->getActionType()I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
