.class public Lccsancom/san/mads/action/actiontype/ActionTypeWeb;
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

    const/4 v0, 0x2

    return v0
.end method

.method public performAction(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Lccsansan/ck/IncentiveDownloadUtils;)Lccsansan/ck/unifiedDownload;
    .locals 4

    .line 1
    const-string v0, ""

    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p4, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-static {p2, v1}, Lccsansan/ck/getDownloadingRecordByUrl;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;)Lccsansan/p/addDownloadListener$getDownloadingList;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lccsansan/cy/addDownloadListener;->addDownloadListener(Lccsansan/p/addDownloadListener$getDownloadingList;)V

    .line 8
    :cond_0
    invoke-static {p3}, Lccsansan/ab/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "ACTION_WEB"

    if-eqz v1, :cond_2

    .line 13
    :try_start_0
    invoke-static {p3}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v1

    const-string v3, "id"

    invoke-virtual {v1, v3}, Lccsanandroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    :try_start_1
    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 16
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :goto_1
    invoke-static {p1, v1}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 19
    invoke-static {p1, v0, p3, v1}, Lccsansan/bw/resume;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    goto :goto_2

    .line 21
    :cond_1
    iget-object p4, p4, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-static {p2, p4, p3}, Lccsansan/ck/getDownloadingRecordByUrl;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams;

    move-result-object p2

    invoke-static {p1, p2}, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V

    .line 22
    invoke-static {p1, p3, v1, v0}, Lccsansan/bw/resume;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    goto :goto_2

    :cond_2
    const/4 p2, 0x1

    const/4 p4, 0x0

    .line 25
    invoke-static {p1, p3, p2, p4}, Lccsansan/bw/resume;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;ZI)Z

    move-result p1

    .line 26
    const-string p2, "online jump to out browser"

    invoke-static {v2, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    nop

    .line 28
    const-string p2, "online-out web:no chrome open..."

    invoke-static {v2, p2}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance p2, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;

    invoke-direct {p2, p1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;-><init>(Z)V

    invoke-virtual {p2}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/ck/unifiedDownload;

    move-result-object p1

    return-object p1
.end method

.method public performActionWhenOffline(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Lccsansan/ck/IncentiveDownloadUtils;)Lccsansan/ck/unifiedDownload;
    .locals 2

    .line 1
    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bq/addDownloadListener;->unifiedDownload(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Lccsancom/san/common/offline/getDownloadingRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;)Z

    move-result p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p4, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-static {p2, v0}, Lccsansan/ck/getDownloadingRecordByUrl;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;)Lccsansan/p/addDownloadListener$getDownloadingList;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lccsansan/cy/addDownloadListener;->addDownloadListener(Lccsansan/p/addDownloadListener$getDownloadingList;)V

    .line 10
    :cond_1
    invoke-static {p3}, Lccsansan/ab/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object p4, p4, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-static {p2, p4, p3}, Lccsansan/ck/getDownloadingRecordByUrl;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams;

    move-result-object p4

    invoke-static {p1, p4}, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V

    .line 12
    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    const-string p4, ""

    invoke-static {p1, p3, p4, p2}, Lccsansan/bw/resume;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 14
    invoke-static {p1, p3, v1, p2}, Lccsansan/bw/resume;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;ZI)Z

    move-result p1

    .line 17
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
    .locals 0

    .line 1
    const/4 p1, 0x1

    invoke-interface {p3, p1, p2}, Lccsansan/ck/getDownloadedRecordByUrl$unifiedDownload;->addDownloadListener(ZLjava/lang/String;)V

    return-void
.end method

.method public shouldTryHandlingAction(Lccsansan/dt/removeDownloadListener;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lccsancom/san/mads/action/actiontype/ActionTypeWeb;->getActionType()I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
