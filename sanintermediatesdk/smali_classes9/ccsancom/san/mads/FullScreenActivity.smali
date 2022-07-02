.class public Lccsancom/san/mads/FullScreenActivity;
.super Lccsanandroidx/fragment/app/FragmentActivity;
.source ""


# instance fields
.field private IncentiveDownloadUtils:Lccsanandroid/widget/FrameLayout;

.field private addDownloadListener:Lccsansan/bw/AdError$ErrorCode;

.field private getDownloadingList:Z

.field private removeDownloadListener:Lccsansan/db/IncentiveDownloadUtils;

.field private unifiedDownload:Lccsansan/db/getDownloadingList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanandroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsancom/san/mads/FullScreenActivity;)Lccsansan/db/getDownloadingList;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/mads/FullScreenActivity;->unifiedDownload:Lccsansan/db/getDownloadingList;

    return-object p0
.end method

.method private IncentiveDownloadUtils()V
    .locals 2

    .line 33
    iget-object v0, p0, Lccsancom/san/mads/FullScreenActivity;->addDownloadListener:Lccsansan/bw/AdError$ErrorCode;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Lccsansan/bw/AdError$ErrorCode;->getDownloadingList()V

    .line 36
    :cond_0
    iget-object v0, p0, Lccsancom/san/mads/FullScreenActivity;->unifiedDownload:Lccsansan/db/getDownloadingList;

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {v0}, Lccsansan/db/getDownloadingList;->unifiedDownload()V

    :cond_1
    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lccsancom/san/mads/FullScreenActivity;->getDownloadingList:Z

    .line 40
    const-string v0, "Mads.FullScreenActivity"

    const-string v1, "#cancelCountDown"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)V
    .locals 11

    .line 9
    iget-object v0, p0, Lccsancom/san/mads/FullScreenActivity;->unifiedDownload:Lccsansan/db/getDownloadingList;

    instance-of v1, v0, Lccsansan/db/getDownloadedList;

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v0}, Lccsansan/db/getDownloadingList;->unifiedDownload()V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lccsancom/san/mads/FullScreenActivity;->getDownloadingList:Z

    .line 13
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object p1

    if-nez p1, :cond_1

    .line 14
    invoke-static {}, Lccsansan/cz/unifiedDownload;->resolveUrl()I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK()I

    move-result p1

    :goto_0
    int-to-long v0, p1

    .line 15
    iget-object p1, p0, Lccsancom/san/mads/FullScreenActivity;->unifiedDownload:Lccsansan/db/getDownloadingList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v3, 0x3e8

    mul-long v7, v0, v3

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsansan/db/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 16
    const-string p1, "Mads.FullScreenActivity"

    const-string v0, "#setCountDownTime"

    invoke-static {p1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance p1, Lccsancom/san/mads/FullScreenActivity$unifiedDownload;

    const-wide/16 v9, 0x3e8

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lccsancom/san/mads/FullScreenActivity$unifiedDownload;-><init>(Lccsancom/san/mads/FullScreenActivity;JJ)V

    iput-object p1, p0, Lccsancom/san/mads/FullScreenActivity;->addDownloadListener:Lccsansan/bw/AdError$ErrorCode;

    .line 32
    invoke-direct {p0}, Lccsancom/san/mads/FullScreenActivity;->getDownloadingList()V

    :goto_1
    return-void
.end method

.method private addDownloadListener()V
    .locals 2

    .line 7
    iget-object v0, p0, Lccsancom/san/mads/FullScreenActivity;->unifiedDownload:Lccsansan/db/getDownloadingList;

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance v1, Lccsancom/san/mads/FullScreenActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lccsancom/san/mads/FullScreenActivity$$ExternalSyntheticLambda0;-><init>(Lccsancom/san/mads/FullScreenActivity;)V

    invoke-virtual {v0, v1}, Lccsansan/db/getDownloadingList;->addDownloadListener(Lccsansan/db/getDownloadingList$getDownloadingList;)V

    return-void
.end method

.method private getDownloadingList()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/FullScreenActivity;->addDownloadListener:Lccsansan/bw/AdError$ErrorCode;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lccsansan/bw/AdError$ErrorCode;->removeDownloadListener()Lccsansan/bw/AdError$ErrorCode;

    .line 3
    const-string v0, "Mads.FullScreenActivity"

    const-string v1, "#startCountDown"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getDownloadingList(Ljava/lang/String;)V
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onShowFailed() error msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mads.FullScreenActivity"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lccsancom/san/mads/FullScreenActivity;->removeDownloadListener:Lccsansan/db/IncentiveDownloadUtils;

    if-eqz p1, :cond_0

    .line 43
    sget-object v0, Lccsancom/san/ads/AdError;->DIS_CONDITION_ERROR:Lccsancom/san/ads/AdError;

    invoke-interface {p1, v0}, Lccsansan/db/IncentiveDownloadUtils;->removeDownloadListener(Lccsancom/san/ads/AdError;)V

    .line 44
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method private getDownloadingList(Lccsansan/dt/removeDownloadListener;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->ActionTypeDetailPage()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->removeDownloadListener()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lccsancom/san/mads/FullScreenActivity;->unifiedDownload:Lccsansan/db/getDownloadingList;

    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsansan/db/getDownloadingList;->getDownloadingList(Lccsanandroid/content/Context;)I

    move-result p1

    invoke-static {p0, p1}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Lccsanandroid/app/Activity;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 6
    invoke-static {p0, p1}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Lccsanandroid/app/Activity;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic getDownloadingList(Lccsancom/san/mads/FullScreenActivity;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lccsancom/san/mads/FullScreenActivity;->getDownloadingList:Z

    return p1
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;Lccsansan/db/getDownloadingList;)V
    .locals 1

    :try_start_0
    const-string v0, "full_screen_ad"

    .line 3
    invoke-static {v0, p1}, Lccsansan/bw/setErrorMessage;->unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    new-instance p1, Lccsanandroid/content/Intent;

    const-class v0, Lccsancom/san/mads/FullScreenActivity;

    invoke-direct {p1, p0, v0}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x14000000

    .line 5
    invoke-virtual {p1, v0}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 6
    invoke-virtual {p0, p1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    const-string p1, "Mads.FullScreenActivity"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getResources()Lccsanandroid/content/res/Resources;
    .locals 1

    invoke-super {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lccsansan/d/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsancom/san/mads/FullScreenActivity;->getDownloadingList:Z

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lccsancom/san/mads/FullScreenActivity;->unifiedDownload:Lccsansan/db/getDownloadingList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsansan/db/getDownloadingList;->IncentiveDownloadUtils()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-super {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Lccsanandroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lccsanandroidx/fragment/app/FragmentActivity;->onCreate(Lccsanandroid/os/Bundle;)V

    :try_start_0
    const-string p1, "full_screen_ad"

    .line 3
    invoke-static {p1}, Lccsansan/bw/setErrorMessage;->unifiedDownload(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsansan/db/getDownloadingList;

    iput-object p1, p0, Lccsancom/san/mads/FullScreenActivity;->unifiedDownload:Lccsansan/db/getDownloadingList;

    if-nez p1, :cond_0

    const-string p1, "UnSupport creative type"

    .line 5
    invoke-direct {p0, p1}, Lccsancom/san/mads/FullScreenActivity;->getDownloadingList(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lccsansan/db/getDownloadingList;->addDownloadListener()Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "AdData is null."

    .line 10
    invoke-direct {p0, p1}, Lccsancom/san/mads/FullScreenActivity;->getDownloadingList(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_1
    invoke-direct {p0, p1}, Lccsancom/san/mads/FullScreenActivity;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)V

    const-string v0, "ccsan_san_full_activity_layout"

    .line 14
    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lccsanandroidx/fragment/app/FragmentActivity;->setContentView(I)V

    .line 16
    iget-object v0, p0, Lccsancom/san/mads/FullScreenActivity;->unifiedDownload:Lccsansan/db/getDownloadingList;

    invoke-virtual {v0, p0}, Lccsansan/db/getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, "FullScreenAd initView failed"

    .line 18
    invoke-direct {p0, p1}, Lccsancom/san/mads/FullScreenActivity;->getDownloadingList(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v1, "san_root"

    .line 22
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lccsanandroidx/fragment/app/FragmentActivity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/FrameLayout;

    iput-object v1, p0, Lccsancom/san/mads/FullScreenActivity;->IncentiveDownloadUtils:Lccsanandroid/widget/FrameLayout;

    .line 23
    invoke-virtual {v1, v0}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;)V

    .line 25
    invoke-direct {p0, p1}, Lccsancom/san/mads/FullScreenActivity;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)V

    .line 27
    invoke-direct {p0}, Lccsancom/san/mads/FullScreenActivity;->addDownloadListener()V

    .line 28
    iget-object v0, p0, Lccsancom/san/mads/FullScreenActivity;->unifiedDownload:Lccsansan/db/getDownloadingList;

    invoke-virtual {v0}, Lccsansan/db/getDownloadingList;->getDownloadingList()Lccsansan/db/IncentiveDownloadUtils;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/mads/FullScreenActivity;->removeDownloadListener:Lccsansan/db/IncentiveDownloadUtils;

    if-eqz v0, :cond_3

    .line 30
    invoke-interface {v0}, Lccsansan/db/IncentiveDownloadUtils;->getDownloadingList()V

    .line 31
    :cond_3
    invoke-static {p1}, Lccsansan/di/IncentiveDownloadUtils;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;)V

    .line 32
    invoke-static {p1}, Lccsansan/bn/getDownloadingRecordByUrl;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)V

    .line 33
    invoke-static {p1}, Lccsansan/ck/deleteDownList;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)V

    const-string p1, "Mads.FullScreenActivity"

    const-string v0, "Activity created"

    .line 34
    invoke-static {p1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lccsancom/san/mads/FullScreenActivity;->getDownloadingList:Z

    .line 37
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsancom/san/mads/FullScreenActivity;->getDownloadingList(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/FullScreenActivity;->removeDownloadListener:Lccsansan/db/IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lccsansan/db/IncentiveDownloadUtils;->IncentiveDownloadUtils()V

    .line 4
    :cond_0
    invoke-direct {p0}, Lccsancom/san/mads/FullScreenActivity;->IncentiveDownloadUtils()V

    .line 6
    iget-object v0, p0, Lccsancom/san/mads/FullScreenActivity;->unifiedDownload:Lccsansan/db/getDownloadingList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lccsansan/db/getDownloadingList;->removeDownloadListener()V

    .line 8
    iget-object v0, p0, Lccsancom/san/mads/FullScreenActivity;->unifiedDownload:Lccsansan/db/getDownloadingList;

    invoke-virtual {v0, v1}, Lccsansan/db/getDownloadingList;->addDownloadListener(Lccsansan/db/getDownloadingList$getDownloadingList;)V

    .line 9
    iput-object v1, p0, Lccsancom/san/mads/FullScreenActivity;->unifiedDownload:Lccsansan/db/getDownloadingList;

    .line 11
    :cond_1
    iget-object v0, p0, Lccsancom/san/mads/FullScreenActivity;->IncentiveDownloadUtils:Lccsanandroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0}, Lccsanandroid/widget/FrameLayout;->removeAllViews()V

    .line 13
    iput-object v1, p0, Lccsancom/san/mads/FullScreenActivity;->IncentiveDownloadUtils:Lccsanandroid/widget/FrameLayout;

    .line 15
    :cond_2
    invoke-super {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILccsanandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lccsanandroidx/fragment/app/FragmentActivity;->onKeyDown(ILccsanandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
