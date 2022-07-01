.class public Lccsancom/san/landingpage/AdLandingPageActivity;
.super Lccsancom/san/landingpage/BaseLandingPageActivity;
.source ""


# static fields
.field private static deleteDownItem:I

.field private static unifiedDownload:I


# instance fields
.field private IncentiveDownloadUtils:Z

.field private addDownloadListener:Lccsansan/dt/deleteDownItem;

.field protected getDownloadingList:Lccsansan/dt/removeDownloadListener;

.field protected removeDownloadListener:Lccsancom/san/landingpage/IncentiveDownloadUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/AdLandingPageActivity;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/AdLandingPageActivity;->deleteDownItem:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsancom/san/landingpage/BaseLandingPageActivity;-><init>()V

    .line 6
    new-instance v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-direct {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;-><init>()V

    iput-object v0, p0, Lccsancom/san/landingpage/AdLandingPageActivity;->removeDownloadListener:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    return-void
.end method

.method static synthetic getDownloadingList(Lccsancom/san/landingpage/AdLandingPageActivity;Z)Z
    .locals 5

    .line 1
    sget v0, Lccsancom/san/landingpage/AdLandingPageActivity;->unifiedDownload:I

    const/16 v1, 0x9

    or-int/lit8 v2, v0, 0x9

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    and-int/lit8 v4, v0, -0xa

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    or-int/2addr v0, v4

    neg-int v0, v0

    or-int v1, v2, v0

    shl-int/2addr v1, v3

    xor-int/2addr v0, v2

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/AdLandingPageActivity;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean p1, p0, Lccsancom/san/landingpage/AdLandingPageActivity;->IncentiveDownloadUtils:Z

    packed-switch v3, :pswitch_data_0

    const/16 p0, 0x50

    :try_start_0
    div-int/2addr p0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return p1

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public doInitData()V
    .locals 13

    .line 32
    sget v0, Lccsancom/san/landingpage/AdLandingPageActivity;->deleteDownItem:I

    xor-int/lit8 v1, v0, 0x1b

    and-int/lit8 v0, v0, 0x1b

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    neg-int v0, v0

    neg-int v0, v0

    xor-int v3, v1, v0

    and-int/2addr v0, v1

    shl-int/2addr v0, v2

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/landingpage/AdLandingPageActivity;->unifiedDownload:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 28
    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    :goto_0
    const/4 v1, 0x0

    const-string v3, "Mads.AdLandingPage"

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lccsancom/san/landingpage/AdLandingPageActivity;->addDownloadListener:Lccsansan/dt/deleteDownItem;

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/landingpage/AdLandingPageActivity;->addDownloadListener:Lccsansan/dt/deleteDownItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x52

    :try_start_1
    div-int/2addr v5, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 28
    const/16 v0, 0x19

    goto :goto_1

    :cond_1
    const/16 v0, 0x16

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_4

    .line 32
    :catchall_0
    move-exception v0

    throw v0

    .line 28
    :catch_0
    move-exception v0

    goto/16 :goto_b

    .line 1
    :goto_2
    if-nez v0, :cond_2

    .line 28
    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    packed-switch v0, :pswitch_data_2

    :goto_4
    goto :goto_5

    .line 1
    :pswitch_1
    :try_start_2
    const-string v0, "#doInitData return : mLandingPageData = null"

    .line 2
    invoke-static {v3, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 28
    sget v0, Lccsancom/san/landingpage/AdLandingPageActivity;->unifiedDownload:I

    and-int/lit8 v1, v0, 0xe

    or-int/lit8 v0, v0, 0xe

    add-int/2addr v1, v0

    sub-int/2addr v1, v4

    sub-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/AdLandingPageActivity;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    const/4 v2, 0x0

    :cond_3
    packed-switch v2, :pswitch_data_3

    .line 32
    return-void

    .line 28
    :pswitch_2
    const/16 v0, 0x4d

    :try_start_3
    div-int/2addr v0, v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    throw v0

    .line 6
    :goto_5
    :try_start_4
    invoke-virtual {p0}, Lccsancom/san/landingpage/BaseLandingPageActivity;->getTitleView()Lccsanandroid/widget/TextView;

    move-result-object v0

    iget-object v5, p0, Lccsancom/san/landingpage/AdLandingPageActivity;->addDownloadListener:Lccsansan/dt/deleteDownItem;

    iget-object v5, v5, Lccsansan/dt/deleteDownItem;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p0}, Lccsancom/san/landingpage/BaseLandingPageActivity;->getContainerView()Lccsanandroid/widget/LinearLayout;

    move-result-object v7

    .line 8
    invoke-virtual {p0}, Lccsancom/san/landingpage/BaseLandingPageActivity;->getRootView()Lccsanandroid/widget/FrameLayout;

    move-result-object v8

    .line 10
    iget-object v6, p0, Lccsancom/san/landingpage/AdLandingPageActivity;->removeDownloadListener:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    iget-object v9, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->mRootViewBg:Lccsanandroid/widget/TextView;

    const/4 v10, 0x0

    new-instance v11, Lccsancom/san/landingpage/AdLandingPageActivity$IncentiveDownloadUtils;

    invoke-direct {v11, p0}, Lccsancom/san/landingpage/AdLandingPageActivity$IncentiveDownloadUtils;-><init>(Lccsancom/san/landingpage/AdLandingPageActivity;)V

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/widget/LinearLayout;Lccsanandroid/widget/FrameLayout;Lccsanandroid/widget/TextView;Lccsansan/i/addDownloadListener;Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;Z)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v0, :cond_4

    .line 28
    const/4 v0, 0x0

    goto :goto_6

    :cond_4
    const/4 v0, 0x1

    :goto_6
    packed-switch v0, :pswitch_data_4

    .line 1
    sget v0, Lccsancom/san/landingpage/AdLandingPageActivity;->unifiedDownload:I

    or-int/lit8 v5, v0, 0x51

    shl-int/2addr v5, v2

    xor-int/lit8 v0, v0, 0x51

    sub-int/2addr v5, v0

    rem-int/lit16 v0, v5, 0x80

    sput v0, Lccsancom/san/landingpage/AdLandingPageActivity;->deleteDownItem:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_5

    .line 28
    const/16 v0, 0x30

    goto :goto_7

    :cond_5
    const/4 v0, 0x1

    :goto_7
    packed-switch v0, :pswitch_data_5

    :try_start_5
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_8

    :pswitch_3
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->finish()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_9

    :goto_8
    :try_start_6
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1
    :goto_9
    sget v0, Lccsancom/san/landingpage/AdLandingPageActivity;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/landingpage/AdLandingPageActivity;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6

    .line 28
    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    const/4 v0, 0x1

    :goto_a
    packed-switch v0, :pswitch_data_6

    .line 32
    goto :goto_c

    .line 1
    :pswitch_4
    goto :goto_c

    :catchall_2
    move-exception v0

    throw v0

    .line 31
    :goto_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#doInitData occurs exception and finished for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->finish()V

    :goto_c
    :pswitch_5
    sget v0, Lccsancom/san/landingpage/AdLandingPageActivity;->unifiedDownload:I

    and-int/lit8 v3, v0, -0x7e

    xor-int/lit8 v5, v0, -0x1

    and-int/lit8 v5, v5, 0x7d

    or-int/2addr v3, v5

    and-int/lit8 v0, v0, 0x7d

    shl-int/2addr v0, v2

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/landingpage/AdLandingPageActivity;->deleteDownItem:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_7

    .line 28
    const/4 v2, 0x0

    goto :goto_d

    :cond_7
    nop

    :goto_d
    packed-switch v2, :pswitch_data_7

    .line 32
    return-void

    :pswitch_6
    :try_start_7
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    return-void

    :catchall_3
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method public getResources()Lccsanandroid/content/res/Resources;
    .locals 1

    invoke-super {p0}, Lccsancom/san/landingpage/BaseLandingPageActivity;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lccsansan/d/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public isNotOfflineAd()Z
    .locals 6

    .line 1
    sget v0, Lccsancom/san/landingpage/AdLandingPageActivity;->deleteDownItem:I

    const/16 v1, 0x27

    and-int/lit8 v2, v0, -0x28

    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    and-int/lit8 v2, v0, 0x27

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    or-int v4, v1, v2

    shl-int/2addr v4, v3

    xor-int/2addr v1, v2

    sub-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lccsancom/san/landingpage/AdLandingPageActivity;->unifiedDownload:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    :cond_0
    iget-object v1, p0, Lccsancom/san/landingpage/AdLandingPageActivity;->getDownloadingList:Lccsansan/dt/removeDownloadListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    :goto_0
    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_8

    :pswitch_1
    xor-int/lit8 v4, v0, 0x52

    and-int/lit8 v0, v0, 0x52

    shl-int/2addr v0, v3

    add-int/2addr v4, v0

    sub-int/2addr v4, v3

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lccsancom/san/landingpage/AdLandingPageActivity;->unifiedDownload:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    const/16 v0, 0x35

    goto :goto_1

    :cond_2
    const/16 v0, 0x10

    :goto_1
    packed-switch v0, :pswitch_data_1

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->getDownloadedRecordByUrl()Z

    move-result v0

    goto :goto_4

    :pswitch_2
    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->getDownloadedRecordByUrl()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    packed-switch v0, :pswitch_data_2

    :goto_3
    goto :goto_6

    :goto_4
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    const/16 v0, 0x39

    goto :goto_5

    :cond_4
    const/16 v0, 0x2b

    :goto_5
    packed-switch v0, :pswitch_data_3

    goto :goto_3

    :goto_6
    sget v0, Lccsancom/san/landingpage/AdLandingPageActivity;->deleteDownItem:I

    and-int/lit8 v1, v0, 0x2d

    xor-int/lit8 v0, v0, 0x2d

    or-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    or-int v4, v1, v0

    shl-int/2addr v4, v3

    xor-int/2addr v0, v1

    sub-int/2addr v4, v0

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lccsancom/san/landingpage/AdLandingPageActivity;->unifiedDownload:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    goto :goto_7

    :cond_5
    const/4 v2, 0x1

    :goto_7
    packed-switch v2, :pswitch_data_4

    :pswitch_3
    const/4 v2, 0x1

    goto :goto_9

    :catchall_0
    move-exception v0

    throw v0

    :goto_8
    sget v0, Lccsancom/san/landingpage/AdLandingPageActivity;->deleteDownItem:I

    const/16 v1, 0x6b

    and-int/lit8 v4, v0, -0x6c

    xor-int/lit8 v5, v0, -0x1

    and-int/2addr v5, v1

    or-int/2addr v4, v5

    and-int/2addr v0, v1

    shl-int/2addr v0, v3

    neg-int v0, v0

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v4, v0

    sub-int/2addr v4, v3

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lccsancom/san/landingpage/AdLandingPageActivity;->unifiedDownload:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_6

    :cond_6
    :goto_9
    sget v0, Lccsancom/san/landingpage/AdLandingPageActivity;->unifiedDownload:I

    and-int/lit8 v1, v0, -0xe

    xor-int/lit8 v4, v0, -0x1

    and-int/lit8 v4, v4, 0xd

    or-int/2addr v1, v4

    and-int/lit8 v0, v0, 0xd

    shl-int/2addr v0, v3

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/AdLandingPageActivity;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2b
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 7

    .line 15
    nop

    .line 9
    sget v0, Lccsancom/san/landingpage/AdLandingPageActivity;->unifiedDownload:I

    and-int/lit8 v1, v0, 0x65

    xor-int/lit8 v0, v0, 0x65

    or-int/2addr v0, v1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/AdLandingPageActivity;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 1
    :cond_0
    invoke-super {p0, p1}, Lccsancom/san/landingpage/BaseLandingPageActivity;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 2
    const-string p1, "ad_landing_page"

    invoke-static {p1}, Lccsansan/bw/setErrorMessage;->unifiedDownload(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsansan/dt/removeDownloadListener;

    iput-object p1, p0, Lccsancom/san/landingpage/AdLandingPageActivity;->getDownloadingList:Lccsansan/dt/removeDownloadListener;

    if-eqz p1, :cond_1

    .line 9
    const/16 v0, 0x41

    goto :goto_0

    :cond_1
    const/16 v0, 0x48

    :goto_0
    const/16 v1, 0x61

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    sget v0, Lccsancom/san/landingpage/AdLandingPageActivity;->unifiedDownload:I

    or-int/lit8 v4, v0, 0x51

    shl-int/2addr v4, v3

    xor-int/lit8 v0, v0, 0x51

    sub-int/2addr v4, v0

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lccsancom/san/landingpage/AdLandingPageActivity;->deleteDownItem:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    .line 4
    :cond_2
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getName()Lccsansan/dt/deleteDownItem;

    move-result-object p1

    iput-object p1, p0, Lccsancom/san/landingpage/AdLandingPageActivity;->addDownloadListener:Lccsansan/dt/deleteDownItem;

    .line 9
    sget p1, Lccsancom/san/landingpage/AdLandingPageActivity;->unifiedDownload:I

    and-int/lit8 v0, p1, 0x61

    or-int/2addr p1, v1

    neg-int p1, p1

    neg-int p1, p1

    or-int v4, v0, p1

    shl-int/2addr v4, v3

    xor-int/2addr p1, v0

    sub-int/2addr v4, p1

    rem-int/lit16 p1, v4, 0x80

    sput p1, Lccsancom/san/landingpage/AdLandingPageActivity;->deleteDownItem:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    :goto_1
    packed-switch p1, :pswitch_data_1

    .line 15
    nop

    .line 5
    :goto_2
    iget-object p1, p0, Lccsancom/san/landingpage/AdLandingPageActivity;->getDownloadingList:Lccsansan/dt/removeDownloadListener;

    if-eqz p1, :cond_4

    .line 9
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    const/16 v0, 0x21

    :goto_3
    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_2

    :goto_4
    goto :goto_a

    :pswitch_2
    sget v0, Lccsancom/san/landingpage/AdLandingPageActivity;->deleteDownItem:I

    and-int/lit8 v5, v0, -0x38

    xor-int/lit8 v6, v0, -0x1

    and-int/lit8 v6, v6, 0x37

    or-int/2addr v5, v6

    and-int/lit8 v0, v0, 0x37

    shl-int/2addr v0, v3

    add-int/2addr v5, v0

    rem-int/lit16 v0, v5, 0x80

    sput v0, Lccsancom/san/landingpage/AdLandingPageActivity;->unifiedDownload:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_5

    const/4 v0, 0x0

    goto :goto_5

    :cond_5
    const/4 v0, 0x1

    :goto_5
    packed-switch v0, :pswitch_data_3

    .line 5
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object p1

    if-eqz p1, :cond_7

    goto :goto_7

    .line 9
    :pswitch_3
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object p1

    :try_start_0
    array-length v0, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_6

    const/16 p1, 0x15

    goto :goto_6

    :cond_6
    const/16 p1, 0x20

    :goto_6
    packed-switch p1, :pswitch_data_4

    goto :goto_4

    :catchall_0
    move-exception p1

    throw p1

    :goto_7
    const/4 p1, 0x0

    goto :goto_8

    :cond_7
    const/4 p1, 0x1

    :goto_8
    packed-switch p1, :pswitch_data_5

    goto :goto_4

    .line 6
    :pswitch_4
    iget-object p1, p0, Lccsancom/san/landingpage/AdLandingPageActivity;->getDownloadingList:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    .line 9
    sget p1, Lccsancom/san/landingpage/AdLandingPageActivity;->unifiedDownload:I

    xor-int/lit8 v0, p1, 0x71

    and-int/lit8 p1, p1, 0x71

    shl-int/2addr p1, v3

    neg-int p1, p1

    neg-int p1, p1

    and-int v5, v0, p1

    or-int/2addr p1, v0

    add-int/2addr v5, p1

    rem-int/lit16 p1, v5, 0x80

    sput p1, Lccsancom/san/landingpage/AdLandingPageActivity;->deleteDownItem:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_8

    const/16 p1, 0x2c

    goto :goto_9

    :cond_8
    const/16 p1, 0x39

    :goto_9
    packed-switch p1, :pswitch_data_6

    goto :goto_4

    .line 15
    :pswitch_5
    nop

    .line 6
    :goto_a
    nop

    .line 8
    const-string p1, "ad_landing_page_test"

    invoke-static {p1}, Lccsansan/bw/setErrorMessage;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 9
    const/4 v0, 0x0

    goto :goto_b

    :cond_9
    const/4 v0, 0x1

    :goto_b
    packed-switch v0, :pswitch_data_7

    .line 15
    sget v0, Lccsancom/san/landingpage/AdLandingPageActivity;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lccsancom/san/landingpage/AdLandingPageActivity;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_a

    .line 9
    goto :goto_c

    :cond_a
    const/4 v2, 0x1

    :goto_c
    packed-switch v2, :pswitch_data_8

    .line 8
    nop

    .line 9
    invoke-static {p1}, Lccsansan/bw/setErrorMessage;->unifiedDownload(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsansan/dt/deleteDownItem;

    iput-object p1, p0, Lccsancom/san/landingpage/AdLandingPageActivity;->addDownloadListener:Lccsansan/dt/deleteDownItem;

    goto :goto_d

    .line 15
    :pswitch_6
    nop

    .line 9
    invoke-static {p1}, Lccsansan/bw/setErrorMessage;->unifiedDownload(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsansan/dt/deleteDownItem;

    iput-object p1, p0, Lccsancom/san/landingpage/AdLandingPageActivity;->addDownloadListener:Lccsansan/dt/deleteDownItem;

    :try_start_1
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_d

    .line 15
    :catchall_1
    move-exception p1

    throw p1

    :goto_d
    nop

    .line 11
    :pswitch_7
    iget-object p1, p0, Lccsancom/san/landingpage/AdLandingPageActivity;->addDownloadListener:Lccsansan/dt/deleteDownItem;

    if-nez p1, :cond_b

    .line 9
    const/16 v1, 0x57

    goto :goto_e

    :cond_b
    nop

    :goto_e
    packed-switch v1, :pswitch_data_9

    sget p1, Lccsancom/san/landingpage/AdLandingPageActivity;->deleteDownItem:I

    or-int/lit8 v0, p1, 0x5f

    shl-int/2addr v0, v3

    xor-int/lit8 p1, p1, 0x5f

    neg-int p1, p1

    or-int v1, v0, p1

    shl-int/2addr v1, v3

    xor-int/2addr p1, v0

    sub-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/AdLandingPageActivity;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_c

    goto :goto_f

    .line 15
    :pswitch_8
    iget-object v0, p0, Lccsancom/san/landingpage/AdLandingPageActivity;->removeDownloadListener:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    iget-object v1, p0, Lccsancom/san/landingpage/AdLandingPageActivity;->getDownloadingList:Lccsansan/dt/removeDownloadListener;

    iget-boolean v2, p0, Lccsancom/san/landingpage/BaseLandingPageActivity;->isAutoOpenGpPage:Z

    invoke-virtual {v0, v1, p1, v2}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;Lccsansan/dt/deleteDownItem;Z)V

    .line 9
    sget p1, Lccsancom/san/landingpage/AdLandingPageActivity;->deleteDownItem:I

    and-int/lit8 v0, p1, 0x7e

    or-int/lit8 p1, p1, 0x7e

    add-int/2addr v0, p1

    or-int/lit8 p1, v0, -0x1

    shl-int/2addr p1, v3

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr p1, v0

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/landingpage/AdLandingPageActivity;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    .line 15
    return-void

    .line 12
    :cond_c
    :goto_f
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->finish()V

    .line 9
    sget p1, Lccsancom/san/landingpage/AdLandingPageActivity;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x16

    sub-int/2addr p1, v3

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/landingpage/AdLandingPageActivity;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    .line 15
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x15
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x39
        :pswitch_5
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x61
        :pswitch_8
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 3

    .line 2
    sget v0, Lccsancom/san/landingpage/AdLandingPageActivity;->unifiedDownload:I

    and-int/lit8 v1, v0, 0x23

    or-int/lit8 v0, v0, 0x23

    neg-int v0, v0

    neg-int v0, v0

    or-int v2, v1, v0

    shl-int/lit8 v2, v2, 0x1

    xor-int/2addr v0, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/AdLandingPageActivity;->deleteDownItem:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsancom/san/landingpage/AdLandingPageActivity;->removeDownloadListener:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->removeDownloadListener()V

    .line 2
    invoke-super {p0}, Lccsancom/san/landingpage/BaseLandingPageActivity;->onDestroy()V

    sget v0, Lccsancom/san/landingpage/AdLandingPageActivity;->unifiedDownload:I

    xor-int/lit8 v1, v0, 0x3b

    and-int/lit8 v2, v0, 0x3b

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    and-int/lit8 v2, v0, -0x3c

    xor-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, 0x3b

    or-int/2addr v0, v2

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/AdLandingPageActivity;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method
