.class public Lccsancom/san/common/offline/OfflineNetGuideActivity;
.super Lccsanandroidx/fragment/app/FragmentActivity;
.source ""


# instance fields
.field private IncentiveDownloadUtils:Lccsanandroid/widget/TextView;

.field private addDownloadListener:Lccsansan/dt/removeDownloadListener;

.field private getDownloadStatusByUrl:Lccsansan/r/addDownloadListener;

.field private getDownloadedRecordByUrl:Ljava/lang/String;

.field private getDownloadingList:Z

.field private removeDownloadListener:Z

.field private unifiedDownload:Lccsanandroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsanandroidx/fragment/app/FragmentActivity;-><init>()V

    .line 9
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity;->getDownloadedRecordByUrl:Ljava/lang/String;

    .line 65
    new-instance v0, Lccsancom/san/common/offline/OfflineNetGuideActivity$addDownloadListener;

    invoke-direct {v0, p0}, Lccsancom/san/common/offline/OfflineNetGuideActivity$addDownloadListener;-><init>(Lccsancom/san/common/offline/OfflineNetGuideActivity;)V

    iput-object v0, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity;->getDownloadStatusByUrl:Lccsansan/r/addDownloadListener;

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsancom/san/common/offline/OfflineNetGuideActivity;)Lccsansan/dt/removeDownloadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    return-object p0
.end method

.method private IncentiveDownloadUtils()V
    .locals 3

    .line 2
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity;->getDownloadStatusByUrl:Lccsansan/r/addDownloadListener;

    const-string v2, "connectivity_change"

    invoke-virtual {v0, v2, v1}, Lccsansan/r/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Lccsansan/r/addDownloadListener;)V

    return-void
.end method

.method static synthetic addDownloadListener(Lccsancom/san/common/offline/OfflineNetGuideActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity;->getDownloadedRecordByUrl:Ljava/lang/String;

    return-object p0
.end method

.method private addDownloadListener()V
    .locals 3

    .line 2
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity;->getDownloadStatusByUrl:Lccsansan/r/addDownloadListener;

    const-string v2, "connectivity_change"

    invoke-virtual {v0, v2, v1}, Lccsansan/r/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Lccsansan/r/addDownloadListener;)V

    return-void
.end method

.method static synthetic getDownloadingList(Lccsancom/san/common/offline/OfflineNetGuideActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity;->removeDownloadListener:Z

    return p0
.end method

.method static synthetic getDownloadingList(Lccsancom/san/common/offline/OfflineNetGuideActivity;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity;->removeDownloadListener:Z

    return p1
.end method

.method private removeDownloadListener()I
    .locals 1

    .line 3
    const-string v0, "ccsan_san_basic_offline_guide_network_dialog"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic removeDownloadListener(Lccsancom/san/common/offline/OfflineNetGuideActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsancom/san/common/offline/OfflineNetGuideActivity;->unifiedDownload()V

    return-void
.end method

.method private unifiedDownload()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity;->getDownloadingList:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lccsancom/san/common/offline/addDownloadListener;->removeDownloadListener()Lccsancom/san/common/offline/addDownloadListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->getNetworkId()Lccsansan/ck/IncentiveDownloadUtils;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/san/common/offline/addDownloadListener;->removeDownloadListener(Lccsansan/ck/IncentiveDownloadUtils;)V

    :cond_0
    return-void
.end method

.method static synthetic unifiedDownload(Lccsancom/san/common/offline/OfflineNetGuideActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity;->getDownloadingList:Z

    return p0
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
    .locals 6

    .line 1
    invoke-super {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 2
    invoke-direct {p0}, Lccsancom/san/common/offline/OfflineNetGuideActivity;->unifiedDownload()V

    .line 3
    iget-object v0, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity;->getDownloadedRecordByUrl:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lccsansan/l/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public onCreate(Lccsanandroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lccsanandroidx/fragment/app/FragmentActivity;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lccsancom/san/common/offline/OfflineNetGuideActivity;->removeDownloadListener()I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroidx/fragment/app/FragmentActivity;->setContentView(I)V

    .line 4
    invoke-direct {p0}, Lccsancom/san/common/offline/OfflineNetGuideActivity;->IncentiveDownloadUtils()V

    :try_start_0
    const-string p1, "key_offline_net_nativeAd"

    .line 6
    invoke-static {p1}, Lccsansan/bw/setErrorMessage;->unifiedDownload(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsansan/dt/removeDownloadListener;

    iput-object p1, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    const-string p1, "key_offline_net_isJumpGp"

    .line 7
    invoke-static {p1}, Lccsansan/bw/setErrorMessage;->unifiedDownload(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity;->getDownloadingList:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    if-nez p1, :cond_1

    .line 11
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    iget-object v0, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    if-nez v0, :cond_0

    .line 13
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    .line 16
    :cond_0
    throw p1

    :catch_0
    move-exception p1

    .line 17
    iget-object p1, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    if-nez p1, :cond_1

    .line 18
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    .line 23
    :cond_1
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    const-string v0, "san_ad_no_net_guide_title"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    const-string v1, "san_ad_no_net_guide_connect"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 26
    const-string v1, "san_tv_title"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lccsanandroidx/fragment/app/FragmentActivity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity;->unifiedDownload:Lccsanandroid/widget/TextView;

    .line 27
    invoke-virtual {v1, p1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    const-string p1, "san_tv_connect"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroidx/fragment/app/FragmentActivity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/TextView;

    iput-object p1, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity;->IncentiveDownloadUtils:Lccsanandroid/widget/TextView;

    .line 30
    invoke-virtual {p1, v0}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object p1, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity;->IncentiveDownloadUtils:Lccsanandroid/widget/TextView;

    new-instance v0, Lccsancom/san/common/offline/OfflineNetGuideActivity$IncentiveDownloadUtils;

    invoke-direct {v0, p0}, Lccsancom/san/common/offline/OfflineNetGuideActivity$IncentiveDownloadUtils;-><init>(Lccsancom/san/common/offline/OfflineNetGuideActivity;)V

    invoke-virtual {p1, v0}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 41
    const-string p1, "san_tv_cancel"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroidx/fragment/app/FragmentActivity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/TextView;

    .line 42
    new-instance v0, Lccsancom/san/common/offline/OfflineNetGuideActivity$unifiedDownload;

    invoke-direct {v0, p0}, Lccsancom/san/common/offline/OfflineNetGuideActivity$unifiedDownload;-><init>(Lccsancom/san/common/offline/OfflineNetGuideActivity;)V

    invoke-virtual {p1, v0}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 51
    iget-object p1, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity;->getDownloadedRecordByUrl:Ljava/lang/String;

    iget-object v0, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lccsansan/l/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 2
    invoke-direct {p0}, Lccsancom/san/common/offline/OfflineNetGuideActivity;->addDownloadListener()V

    return-void
.end method
