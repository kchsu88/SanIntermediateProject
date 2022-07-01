.class Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/landingpage/BaseLandingPageActivity;->onCreate(Lccsanandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static getDownloadingList:I


# instance fields
.field final synthetic unifiedDownload:Lccsancom/san/landingpage/BaseLandingPageActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;->getDownloadingList:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/landingpage/BaseLandingPageActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;->unifiedDownload:Lccsancom/san/landingpage/BaseLandingPageActivity;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 4

    .line 15
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;->addDownloadListener:I

    xor-int/lit8 v1, v0, 0x33

    and-int/lit8 v2, v0, 0x33

    or-int/2addr v1, v2

    const/4 v3, 0x1

    shl-int/2addr v1, v3

    xor-int/lit8 v2, v2, -0x1

    or-int/lit8 v0, v0, 0x33

    and-int/2addr v0, v2

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    if-nez v1, :cond_0

    .line 1
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;->unifiedDownload:Lccsancom/san/landingpage/BaseLandingPageActivity;

    invoke-static {v1}, Lccsancom/san/landingpage/BaseLandingPageActivity;->access$000(Lccsancom/san/landingpage/BaseLandingPageActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :pswitch_0
    iget-object v1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;->unifiedDownload:Lccsancom/san/landingpage/BaseLandingPageActivity;

    invoke-static {v1}, Lccsancom/san/landingpage/BaseLandingPageActivity;->access$000(Lccsancom/san/landingpage/BaseLandingPageActivity;)Z

    move-result v1

    const/4 v2, 0x0

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_5

    .line 15
    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    :goto_3
    packed-switch v1, :pswitch_data_2

    :pswitch_1
    iget-object v1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;->unifiedDownload:Lccsancom/san/landingpage/BaseLandingPageActivity;

    invoke-virtual {v1}, Lccsancom/san/landingpage/BaseLandingPageActivity;->isNotOfflineAd()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2
    iget-object v1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;->unifiedDownload:Lccsancom/san/landingpage/BaseLandingPageActivity;

    invoke-static {v1}, Lccsancom/san/landingpage/BaseLandingPageActivity;->access$100(Lccsancom/san/landingpage/BaseLandingPageActivity;)Lccsanandroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;->unifiedDownload:Lccsancom/san/landingpage/BaseLandingPageActivity;

    const-string v1, "san_tv_connect_network"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroidx/fragment/app/FragmentActivity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    invoke-static {v0, v1}, Lccsancom/san/landingpage/BaseLandingPageActivity;->access$202(Lccsancom/san/landingpage/BaseLandingPageActivity;Lccsanandroid/widget/TextView;)Lccsanandroid/widget/TextView;

    .line 4
    iget-object v0, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;->unifiedDownload:Lccsancom/san/landingpage/BaseLandingPageActivity;

    invoke-static {v0}, Lccsancom/san/landingpage/BaseLandingPageActivity;->access$200(Lccsancom/san/landingpage/BaseLandingPageActivity;)Lccsanandroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload$IncentiveDownloadUtils;

    invoke-direct {v1, p0}, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload$IncentiveDownloadUtils;-><init>(Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 1
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;->addDownloadListener:I

    or-int/lit8 v1, v0, 0xf

    shl-int/2addr v1, v3

    xor-int/lit8 v0, v0, 0xf

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    .line 15
    :cond_3
    :goto_4
    goto :goto_7

    :cond_4
    :goto_5
    :pswitch_2
    iget-object v0, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;->unifiedDownload:Lccsancom/san/landingpage/BaseLandingPageActivity;

    invoke-static {v0}, Lccsancom/san/landingpage/BaseLandingPageActivity;->access$300(Lccsancom/san/landingpage/BaseLandingPageActivity;)V

    .line 1
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;->getDownloadingList:I

    xor-int/lit8 v1, v0, 0x70

    and-int/lit8 v0, v0, 0x70

    shl-int/2addr v0, v3

    add-int/2addr v1, v0

    and-int/lit8 v0, v1, -0x1

    or-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    const/16 v0, 0x9

    goto :goto_6

    :cond_5
    const/16 v0, 0x58

    :goto_6
    packed-switch v0, :pswitch_data_3

    .line 15
    goto :goto_4

    :goto_7
    :pswitch_3
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x39

    sub-int/2addr v0, v3

    and-int/lit8 v1, v0, -0x1

    or-int/lit8 v0, v0, -0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x9
        :pswitch_3
    .end packed-switch
.end method

.method public execute()V
    .locals 3

    .line 1
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;->addDownloadListener:I

    and-int/lit8 v1, v0, 0xd

    xor-int/lit8 v0, v0, 0xd

    or-int/2addr v0, v1

    or-int v2, v1, v0

    shl-int/lit8 v2, v2, 0x1

    xor-int/2addr v0, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    :cond_0
    iget-object v0, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;->unifiedDownload:Lccsancom/san/landingpage/BaseLandingPageActivity;

    invoke-static {v0}, Lccsansan/bw/getDownloadedList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lccsancom/san/landingpage/BaseLandingPageActivity;->access$002(Lccsancom/san/landingpage/BaseLandingPageActivity;Z)Z

    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;->addDownloadListener:I

    or-int/lit8 v1, v0, 0x75

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v0, v0, 0x75

    neg-int v0, v0

    xor-int v2, v1, v0

    and-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    return-void
.end method
