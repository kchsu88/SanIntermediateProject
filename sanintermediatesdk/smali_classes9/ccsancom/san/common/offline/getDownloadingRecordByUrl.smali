.class public Lccsancom/san/common/offline/getDownloadingRecordByUrl;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static getDownloadingList(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Z)Z
    .locals 2

    .line 2
    :try_start_0
    new-instance v0, Lccsanandroid/content/Intent;

    const-class v1, Lccsancom/san/common/offline/OfflineNetGuideActivity;

    invoke-direct {v0, p0, v1}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "key_offline_net_nativeAd"

    .line 3
    invoke-static {v1, p1}, Lccsansan/bw/setErrorMessage;->unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "key_offline_net_isJumpGp"

    .line 4
    :try_start_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lccsansan/bw/setErrorMessage;->unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    instance-of p1, p0, Lccsanandroid/app/Activity;

    if-nez p1, :cond_0

    const/high16 p1, 0x10000000

    .line 6
    invoke-virtual {v0, p1}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 8
    :cond_0
    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "exception="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "start_noNet_activity"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 12
    instance-of v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    invoke-static {}, Lccsansan/bq/addDownloadListener;->getDownloadStatusByUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    new-instance v1, Lccsancom/san/common/offline/getDownloadedList;

    invoke-direct {v1}, Lccsancom/san/common/offline/getDownloadedList;-><init>()V

    .line 16
    invoke-virtual {v1, p2}, Lccsancom/san/common/offline/getDownloadedList;->removeDownloadListener(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, p3}, Lccsancom/san/common/offline/getDownloadedList;->getDownloadingList(Ljava/lang/String;)V

    .line 19
    new-instance p2, Lccsancom/san/common/offline/getDownloadingRecordByUrl$getDownloadingList;

    invoke-direct {p2, p1, v0, p0, v1}, Lccsancom/san/common/offline/getDownloadingRecordByUrl$getDownloadingList;-><init>(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Lccsanandroid/content/Context;Lccsancom/san/common/offline/getDownloadedList;)V

    invoke-virtual {v1, p2}, Lccsancom/san/common/offline/IncentiveDownloadUtils;->removeDownloadListener(Lccsancom/san/common/offline/unifiedDownload;)V

    .line 32
    new-instance p2, Lccsancom/san/common/offline/getDownloadingRecordByUrl$IncentiveDownloadUtils;

    invoke-direct {p2, v1, p1, v0}, Lccsancom/san/common/offline/getDownloadingRecordByUrl$IncentiveDownloadUtils;-><init>(Lccsancom/san/common/offline/getDownloadedList;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lccsancom/san/common/offline/IncentiveDownloadUtils;->addDownloadListener(Lccsancom/san/common/offline/removeDownloadListener;)V

    .line 43
    new-instance p2, Lccsancom/san/common/offline/getDownloadingRecordByUrl$addDownloadListener;

    invoke-direct {p2, p1, v0}, Lccsancom/san/common/offline/getDownloadingRecordByUrl$addDownloadListener;-><init>(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lccsancom/san/common/offline/getDownloadedList;->unifiedDownload(Lccsancom/san/common/offline/getDownloadedList$getDownloadingList;)V

    .line 52
    check-cast p0, Lccsanandroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lccsanandroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentManager;->beginTransaction()Lccsanandroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const-string p2, "dialog"

    invoke-virtual {p0, v1, p2}, Lccsanandroidx/fragment/app/FragmentTransaction;->add(Lccsanandroidx/fragment/app/Fragment;Ljava/lang/String;)Lccsanandroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x2

    invoke-static {v0, p0, p2, p1, p3}, Lccsansan/l/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lccsancom/san/common/offline/getDownloadingRecordByUrl;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Z)Z

    move-result p0

    return p0
.end method
