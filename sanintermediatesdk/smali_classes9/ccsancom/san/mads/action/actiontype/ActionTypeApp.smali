.class public Lccsancom/san/mads/action/actiontype/ActionTypeApp;
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

    const/4 v0, 0x1

    return v0
.end method

.method public performAction(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Lccsansan/ck/IncentiveDownloadUtils;)Lccsansan/ck/unifiedDownload;
    .locals 5

    .line 1
    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->AdError()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 2
    iget-object p4, p4, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-static {p2, p4, p3}, Lccsansan/ck/getDownloadingRecordByUrl;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams;

    move-result-object p4

    invoke-static {p1, p4}, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V

    .line 3
    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, v1, p2}, Lccsansan/bw/resume;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    goto/16 :goto_3

    :cond_0
    nop

    .line 9
    :try_start_0
    invoke-static {p3}, Lccsansan/ab/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-static {p3}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0

    const-string v2, "id"

    invoke-virtual {v0, v2}, Lccsanandroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 9
    :cond_1
    move-object v0, v1

    .line 12
    :goto_0
    :try_start_1
    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p4, Lccsansan/ck/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 15
    iget-object v2, p4, Lccsansan/ck/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v2

    invoke-virtual {v2}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 18
    :catch_0
    move-exception v2

    move-object v4, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, v4

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "APP"

    invoke-static {v3, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    move-object v1, v2

    .line 21
    :cond_2
    :goto_2
    invoke-static {p1, v0}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 22
    invoke-static {p1, v1, p3, v0}, Lccsansan/bw/resume;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    goto :goto_3

    .line 23
    :cond_3
    invoke-static {p3}, Lccsansan/ab/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 24
    iget-object p4, p4, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-static {p2, p4, p3}, Lccsansan/ck/getDownloadingRecordByUrl;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams;

    move-result-object p4

    invoke-static {p1, p4}, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V

    .line 25
    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, v0, p2}, Lccsansan/bw/resume;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    goto :goto_3

    .line 26
    :cond_4
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 27
    iget-object p4, p4, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-static {p2, p4, p3}, Lccsansan/ck/getDownloadingRecordByUrl;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams;

    move-result-object p3

    invoke-static {p1, p3}, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V

    .line 29
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "https://play.google.com/store/apps/details?id="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 30
    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, v0, p2}, Lccsansan/bw/resume;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    goto :goto_3

    .line 26
    :cond_5
    const/4 p1, 0x0

    .line 33
    :goto_3
    new-instance p2, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;

    invoke-direct {p2, p1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;-><init>(Z)V

    invoke-virtual {p2}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/ck/unifiedDownload;

    move-result-object p1

    return-object p1
.end method

.method public performActionWhenOffline(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Lccsansan/ck/IncentiveDownloadUtils;)Lccsansan/ck/unifiedDownload;
    .locals 2

    .line 1
    invoke-static {}, Lccsansan/bq/addDownloadListener;->getDownloadedRecordByUrl()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, p2, v1}, Lccsancom/san/common/offline/getDownloadingRecordByUrl;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Z)Z

    move-result p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p4, p4, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-static {p2, p4, p3}, Lccsansan/ck/getDownloadingRecordByUrl;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams;

    move-result-object p3

    invoke-static {p1, p3}, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V

    .line 5
    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->values()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->shouldTryHandlingAction()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p4, p2}, Lccsansan/bw/resume;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 7
    :goto_0
    new-instance p2, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;

    invoke-direct {p2, p1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;-><init>(Z)V

    invoke-virtual {p2, v1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils(Z)Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/ck/unifiedDownload;

    move-result-object p1

    return-object p1
.end method

.method public resolveUrl(Ljava/lang/String;Ljava/lang/String;Lccsansan/ck/getDownloadedRecordByUrl$unifiedDownload;)V
    .locals 2

    .line 1
    invoke-static {p2}, Lccsansan/ab/getDownloadingList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lccsansan/ab/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 3
    invoke-interface {p3, p2, p1}, Lccsansan/ck/getDownloadedRecordByUrl$unifiedDownload;->addDownloadListener(ZLjava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lccsansan/cy/removeDownloadListener;->addDownloadListener()Lccsansan/cy/removeDownloadListener;

    move-result-object p2

    invoke-static {}, Lccsancom/san/mads/webview/deleteDownItem;->IncentiveDownloadUtils()Lccsancom/san/mads/webview/deleteDownItem;

    move-result-object v0

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/san/mads/webview/deleteDownItem;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lccsancom/san/mads/action/actiontype/ActionTypeApp$1;

    invoke-direct {v1, p0, p3}, Lccsancom/san/mads/action/actiontype/ActionTypeApp$1;-><init>(Lccsancom/san/mads/action/actiontype/ActionTypeApp;Lccsansan/ck/getDownloadedRecordByUrl$unifiedDownload;)V

    invoke-virtual {p2, v0, p1, v1}, Lccsansan/cy/removeDownloadListener;->addDownloadListener(Lccsanandroid/webkit/WebView;Ljava/lang/String;Lccsansan/cy/removeDownloadListener$deleteDownItem;)V

    return-void
.end method

.method public shouldTryHandlingAction(Lccsansan/dt/removeDownloadListener;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lccsancom/san/mads/action/actiontype/ActionTypeApp;->getActionType()I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
