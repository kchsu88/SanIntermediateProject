.class public Lccsansan/db/deleteDownItem;
.super Lccsansan/db/getDownloadingList;
.source ""


# instance fields
.field private addDownloadListener:Lccsanandroid/widget/TextView;

.field private getDownloadingList:Lccsanandroid/widget/ImageView;


# direct methods
.method public static synthetic $r8$lambda$TEMH12Xb6yMFECERppO_3xJv4IQ(Lccsanandroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lccsansan/db/deleteDownItem;->addDownloadListener(Lccsanandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_ZlITHYeuFDpTu1Rfk-Jon5NPXg(Lccsansan/db/deleteDownItem;Lccsanandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsansan/db/deleteDownItem;->removeDownloadListener(Lccsanandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yWLHg0YE-aQoadrpDX3MqNy6GH4(Lccsansan/db/deleteDownItem;Lccsanandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsansan/db/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/db/getDownloadingList;-><init>()V

    return-void
.end method

.method private synthetic IncentiveDownloadUtils(Lccsanandroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsansan/db/getDownloadingList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)V

    return-void
.end method

.method private static synthetic addDownloadListener(Lccsanandroid/view/View;)V
    .locals 1

    .line 28
    const-string p0, "FullScreen.SingleImage"

    const-string v0, "click countView"

    invoke-static {p0, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getDownloadingList(Lccsanandroid/widget/FrameLayout;Lccsanandroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lccsanandroid/widget/ImageView;

    invoke-direct {v0, p2}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;)V

    .line 2
    sget-object v1, Lccsanandroid/widget/ImageView$ScaleType;->CENTER_CROP:Lccsanandroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setScaleType(Lccsanandroid/widget/ImageView$ScaleType;)V

    .line 3
    invoke-static {}, Lccsancom/san/ads/SanImageLoader;->getInstance()Lccsancom/san/ads/SanImageLoader;

    move-result-object v1

    invoke-virtual {p0}, Lccsansan/db/getDownloadingList;->addDownloadListener()Lccsansan/dt/removeDownloadListener;

    move-result-object v2

    invoke-virtual {v2}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v2

    invoke-virtual {v2}, Lccsansan/dt/getDownloadStatusByUrl;->deleteDownList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2, v0}, Lccsancom/san/ads/SanImageLoader;->loadUri(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;)V

    .line 4
    new-instance p2, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p2, v1, v1}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 5
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;ILccsanandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic removeDownloadListener(Lccsanandroid/view/View;)V
    .locals 0

    .line 15
    iget-object p1, p0, Lccsansan/db/getDownloadingList;->IncentiveDownloadUtils:Lccsansan/db/getDownloadingList$getDownloadingList;

    if-eqz p1, :cond_0

    .line 16
    invoke-interface {p1}, Lccsansan/db/getDownloadingList$getDownloadingList;->onClick()V

    :cond_0
    return-void
.end method

.method private unifiedDownload(Lccsansan/dt/getDownloadStatusByUrl;)Z
    .locals 1

    .line 6
    invoke-virtual {p1}, Lccsansan/dt/getDownloadStatusByUrl;->removeDownloadListener()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lccsansan/db/deleteDownItem;->getDownloadingList:Lccsanandroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 30
    iget-object v0, p0, Lccsansan/db/deleteDownItem;->addDownloadListener:Lccsanandroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 31
    iget-object v0, p0, Lccsansan/db/deleteDownItem;->addDownloadListener:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public addDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/view/View;
    .locals 5

    .line 1
    const-string v0, "FullScreen.SingleImage"

    const-string v1, "#initView"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lccsansan/db/getDownloadingList;->addDownloadListener()Lccsansan/dt/removeDownloadListener;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lccsansan/db/getDownloadingList;->addDownloadListener()Lccsansan/dt/removeDownloadListener;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lccsansan/db/deleteDownItem;->deleteDownItem()I

    move-result v1

    invoke-static {p1, v1, v2}, Lccsanandroid/view/View;->inflate(Lccsanandroid/content/Context;ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object v1

    .line 6
    const-string v2, "san_fl_foreground"

    invoke-static {v2}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsanandroid/widget/FrameLayout;

    .line 7
    const-string v3, "san_iv_close"

    invoke-static {v3}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v3

    check-cast v3, Lccsanandroid/widget/ImageView;

    iput-object v3, p0, Lccsansan/db/deleteDownItem;->getDownloadingList:Lccsanandroid/widget/ImageView;

    .line 8
    const-string v3, "san_tv_count"

    invoke-static {v3}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v3

    check-cast v3, Lccsanandroid/widget/TextView;

    iput-object v3, p0, Lccsansan/db/deleteDownItem;->addDownloadListener:Lccsanandroid/widget/TextView;

    .line 9
    sget-object v4, Lccsansan/db/deleteDownItem$$ExternalSyntheticLambda2;->INSTANCE:Lccsansan/db/deleteDownItem$$ExternalSyntheticLambda2;

    invoke-virtual {v3, v4}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {p0}, Lccsansan/db/getDownloadingList;->addDownloadListener()Lccsansan/dt/removeDownloadListener;

    move-result-object v3

    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v3

    .line 12
    invoke-virtual {v3}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadingCount()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, p1, v4}, Lccsansan/db/getDownloadingList;->getDownloadingList(Lccsanandroid/content/Context;I)V

    .line 15
    invoke-direct {p0, v3}, Lccsansan/db/deleteDownItem;->unifiedDownload(Lccsansan/dt/getDownloadStatusByUrl;)Z

    move-result p1

    const/4 v3, -0x1

    if-eqz p1, :cond_1

    .line 16
    new-instance p1, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "layoutParams : x = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/db/getDownloadingList;->getDownloadedRecordByUrl()Lccsanandroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Lccsanandroid/graphics/Point;->x:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  y = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/db/getDownloadingList;->getDownloadedRecordByUrl()Lccsanandroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Lccsanandroid/graphics/Point;->y:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance p1, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lccsansan/db/getDownloadingList;->getDownloadedRecordByUrl()Lccsanandroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Lccsanandroid/graphics/Point;->y:I

    invoke-direct {p1, v3, v0}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_0
    const/16 v0, 0xd

    .line 22
    invoke-virtual {p1, v0}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 23
    invoke-virtual {v2, p1}, Lccsanandroid/widget/FrameLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 25
    new-instance p1, Lccsansan/db/deleteDownItem$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lccsansan/db/deleteDownItem$$ExternalSyntheticLambda1;-><init>(Lccsansan/db/deleteDownItem;)V

    invoke-virtual {v2, p1}, Lccsanandroid/widget/FrameLayout;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 27
    invoke-virtual {v2}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lccsansan/db/deleteDownItem;->getDownloadingList(Lccsanandroid/widget/FrameLayout;Lccsanandroid/content/Context;)V

    return-object v1

    :cond_2
    :goto_1
    return-object v2
.end method

.method public addDownloadListener(Ljava/lang/String;)V
    .locals 4

    .line 8
    iget-object v0, p0, Lccsansan/db/deleteDownItem;->addDownloadListener:Lccsanandroid/widget/TextView;

    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lccsansan/db/getDownloadingList;->unifiedDownload:Lccsancom/san/ads/AdFormat;

    sget-object v2, Lccsancom/san/ads/AdFormat;->REWARDED_AD:Lccsancom/san/ads/AdFormat;

    if-ne v1, v2, :cond_0

    const-string v1, "san_countdown_rewarded"

    goto :goto_0

    :cond_0
    const-string v1, "san_countdown_skip"

    .line 10
    :goto_0
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lccsansan/db/deleteDownItem;->addDownloadListener:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public deleteDownItem()I
    .locals 1

    .line 1
    const-string v0, "san_full_screen_layout"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getDownloadingList(I)Lccsanandroid/graphics/Point;
    .locals 2

    .line 7
    new-instance p1, Lccsanandroid/graphics/Point;

    const/16 v0, 0x2d0

    const/16 v1, 0x42b

    invoke-direct {p1, v0, v1}, Lccsanandroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method public removeDownloadListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/db/deleteDownItem;->getDownloadingList:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setBackground(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 3
    iput-object v1, p0, Lccsansan/db/deleteDownItem;->getDownloadingList:Lccsanandroid/widget/ImageView;

    :cond_0
    return-void
.end method

.method public unifiedDownload()V
    .locals 2

    .line 12
    iget-object v0, p0, Lccsansan/db/deleteDownItem;->getDownloadingList:Lccsanandroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lccsansan/db/deleteDownItem;->addDownloadListener:Lccsanandroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lccsansan/db/deleteDownItem;->getDownloadingList:Lccsanandroid/widget/ImageView;

    new-instance v1, Lccsansan/db/deleteDownItem$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lccsansan/db/deleteDownItem$$ExternalSyntheticLambda0;-><init>(Lccsansan/db/deleteDownItem;)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    return-void
.end method
