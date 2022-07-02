.class public Lccsansan/dm/IncentiveDownloadUtils;
.super Lccsanandroid/app/Dialog;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/dm/IncentiveDownloadUtils$getDownloadingList;,
        Lccsansan/dm/IncentiveDownloadUtils$removeDownloadListener;,
        Lccsansan/dm/IncentiveDownloadUtils$unifiedDownload;
    }
.end annotation


# instance fields
.field private IncentiveDownloadUtils:Lccsansan/dm/IncentiveDownloadUtils$removeDownloadListener;

.field private addDownloadListener:Lccsansan/dm/IncentiveDownloadUtils$unifiedDownload;

.field private getDownloadingList:Lccsanandroid/content/Context;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "san_columbus_player_reward_dialog"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->IncentiveDownloadUtils(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lccsanandroid/app/Dialog;-><init>(Lccsanandroid/content/Context;I)V

    .line 3
    iput-object p1, p0, Lccsansan/dm/IncentiveDownloadUtils;->getDownloadingList:Lccsanandroid/content/Context;

    return-void
.end method

.method static synthetic addDownloadListener(Lccsansan/dm/IncentiveDownloadUtils;)Lccsansan/dm/IncentiveDownloadUtils$removeDownloadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/dm/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/dm/IncentiveDownloadUtils$removeDownloadListener;

    return-object p0
.end method

.method static synthetic unifiedDownload(Lccsansan/dm/IncentiveDownloadUtils;)Lccsansan/dm/IncentiveDownloadUtils$unifiedDownload;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/dm/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dm/IncentiveDownloadUtils$unifiedDownload;

    return-object p0
.end method


# virtual methods
.method addDownloadListener()V
    .locals 6

    .line 4
    iget-object v0, p0, Lccsansan/dm/IncentiveDownloadUtils;->getDownloadingList:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    .line 5
    const-string v1, "ccsan_san_reward_close_dialog"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lccsanandroid/app/Dialog;->setContentView(Lccsanandroid/view/View;)V

    .line 9
    const-string v1, "san_btn_player_close_confirm"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/Button;

    .line 10
    const-string v3, "san_btn_player_close_cancel"

    invoke-static {v3}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/Button;

    .line 12
    new-instance v3, Lccsansan/dm/IncentiveDownloadUtils$getDownloadingList;

    invoke-direct {v3, p0, v2}, Lccsansan/dm/IncentiveDownloadUtils$getDownloadingList;-><init>(Lccsansan/dm/IncentiveDownloadUtils;Lccsansan/dm/IncentiveDownloadUtils$IncentiveDownloadUtils;)V

    invoke-virtual {v1, v3}, Lccsanandroid/widget/Button;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 13
    new-instance v1, Lccsansan/dm/IncentiveDownloadUtils$getDownloadingList;

    invoke-direct {v1, p0, v2}, Lccsansan/dm/IncentiveDownloadUtils$getDownloadingList;-><init>(Lccsansan/dm/IncentiveDownloadUtils;Lccsansan/dm/IncentiveDownloadUtils$IncentiveDownloadUtils;)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/Button;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 15
    invoke-virtual {p0}, Lccsanandroid/app/Dialog;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lccsanandroid/view/Window;->getAttributes()Lccsanandroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 17
    iget-object v2, p0, Lccsansan/dm/IncentiveDownloadUtils;->getDownloadingList:Lccsanandroid/content/Context;

    invoke-static {v2}, Lccsansan/bw/getMinIntervalToReturn;->getDownloadingRecordByUrl(Lccsanandroid/content/Context;)I

    move-result v2

    .line 18
    iget-object v3, p0, Lccsansan/dm/IncentiveDownloadUtils;->getDownloadingList:Lccsanandroid/content/Context;

    invoke-static {v3}, Lccsansan/bw/getMinIntervalToReturn;->getDownloadedList(Lccsanandroid/content/Context;)I

    move-result v3

    if-le v3, v2, :cond_0

    int-to-double v2, v2

    const-wide v4, 0x3fed70a3d70a3d71L    # 0.92

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int v2, v2

    .line 21
    iput v2, v1, Lccsanandroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int v2, v2

    .line 23
    iput v2, v1, Lccsanandroid/view/WindowManager$LayoutParams;->width:I

    .line 26
    :goto_0
    invoke-virtual {v0, v1}, Lccsanandroid/view/Window;->setAttributes(Lccsanandroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lccsanandroid/app/Dialog;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Lccsansan/dm/IncentiveDownloadUtils;->addDownloadListener()V

    return-void
.end method

.method public removeDownloadListener(Lccsansan/dm/IncentiveDownloadUtils$removeDownloadListener;)Lccsansan/dm/IncentiveDownloadUtils;
    .locals 0

    .line 3
    iput-object p1, p0, Lccsansan/dm/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/dm/IncentiveDownloadUtils$removeDownloadListener;

    return-object p0
.end method

.method public unifiedDownload(Lccsansan/dm/IncentiveDownloadUtils$unifiedDownload;)Lccsansan/dm/IncentiveDownloadUtils;
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/dm/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dm/IncentiveDownloadUtils$unifiedDownload;

    return-object p0
.end method
