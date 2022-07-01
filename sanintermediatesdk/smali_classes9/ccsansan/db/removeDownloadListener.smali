.class public Lccsansan/db/removeDownloadListener;
.super Lccsansan/db/getDownloadingList;
.source ""


# instance fields
.field private addDownloadListener:Lccsanandroid/widget/FrameLayout;

.field private deleteDownItem:Lccsanandroid/widget/TextView;

.field private deleteDownList:Lccsanandroid/widget/ImageView;

.field private getDownloadStatusByUrl:Lccsanandroid/widget/ImageView;

.field private getDownloadedList:Lccsanandroid/widget/ImageView;

.field private getDownloadedRecordByUrl:Lccsanandroid/widget/TextView;

.field private getDownloadingCount:Lccsansan/j/unifiedDownload;

.field private getDownloadingList:Lccsanandroid/view/View;

.field private getDownloadingRecordByUrl:Lccsanandroid/widget/TextView;

.field private pause:Lccsanandroid/view/View;

.field private removeDownloadListener:Lccsanandroid/widget/ImageView;


# direct methods
.method public static synthetic $r8$lambda$3gKXv3niYND-uFc1D9Tp6uwTreE(Lccsansan/db/removeDownloadListener;Lccsanandroid/content/Context;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lccsansan/db/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jg_JFAWTki35lkI1i-VJ6XRvc2U(Lccsansan/db/removeDownloadListener;Lccsanandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsansan/db/removeDownloadListener;->removeDownloadListener(Lccsanandroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R1VYYQKgLJHHmRb3eIh6uItnpbM(Lccsansan/db/removeDownloadListener;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lccsansan/db/removeDownloadListener;->getDownloadingList(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$UH780Q1BXrNDUNYbj0NhOa4MSpw(Lccsansan/db/removeDownloadListener;Lccsanandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsansan/db/removeDownloadListener;->addDownloadListener(Lccsanandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mI8_cd6sKl2oCWNvTAowgLjXaZs(Lccsansan/db/removeDownloadListener;Lccsanandroid/content/Context;Lccsanandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lccsansan/db/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pEx1uQ7XDw66RwGL-15zlOA9J20(Lccsansan/db/removeDownloadListener;)V
    .locals 0

    invoke-direct {p0}, Lccsansan/db/removeDownloadListener;->deleteDownItem()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/db/getDownloadingList;-><init>()V

    return-void
.end method

.method private IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/dt/getDownloadStatusByUrl;)V
    .locals 4

    .line 2
    invoke-static {p2}, Lccsansan/dt/getDownloadedList;->addDownloadListener(Lccsansan/dt/getDownloadStatusByUrl;)Z

    move-result v0

    .line 3
    iget-object v1, p0, Lccsansan/db/removeDownloadListener;->getDownloadedRecordByUrl:Lccsanandroid/widget/TextView;

    invoke-virtual {p2}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, p0, Lccsansan/db/removeDownloadListener;->getDownloadingRecordByUrl:Lccsanandroid/widget/TextView;

    invoke-virtual {p2}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, p0, Lccsansan/db/removeDownloadListener;->getDownloadingCount:Lccsansan/j/unifiedDownload;

    invoke-virtual {p2}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadedCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsansan/j/unifiedDownload;->setText(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lccsancom/san/ads/SanImageLoader;->getInstance()Lccsancom/san/ads/SanImageLoader;

    move-result-object v1

    invoke-virtual {p2}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsansan/db/removeDownloadListener;->getDownloadedList:Lccsanandroid/widget/ImageView;

    invoke-virtual {v1, p1, v2, v3}, Lccsancom/san/ads/SanImageLoader;->loadUri(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;)V

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lccsansan/db/removeDownloadListener;->addDownloadListener:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lccsansan/db/removeDownloadListener;->getDownloadingList(Lccsanandroid/widget/FrameLayout;Lccsanandroid/content/Context;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lccsansan/db/removeDownloadListener;->addDownloadListener:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lccsansan/db/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/widget/FrameLayout;Lccsanandroid/content/Context;)V

    .line 14
    :goto_0
    iget-object v0, p0, Lccsansan/db/removeDownloadListener;->removeDownloadListener:Lccsanandroid/widget/ImageView;

    if-nez v0, :cond_1

    return-void

    .line 16
    :cond_1
    invoke-static {}, Lccsancom/san/ads/SanImageLoader;->getInstance()Lccsancom/san/ads/SanImageLoader;

    move-result-object v0

    invoke-virtual {p2}, Lccsansan/dt/getDownloadStatusByUrl;->deleteDownList()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lccsansan/db/removeDownloadListener;->removeDownloadListener:Lccsanandroid/widget/ImageView;

    new-instance v2, Lccsansan/db/removeDownloadListener$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lccsansan/db/removeDownloadListener$$ExternalSyntheticLambda2;-><init>(Lccsansan/db/removeDownloadListener;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lccsancom/san/ads/SanImageLoader;->loadUri(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;Lccsancom/san/ads/SanImageLoader$OnLoadedListener;)V

    return-void
.end method

.method private synthetic IncentiveDownloadUtils(Lccsanandroid/content/Context;ZZ)V
    .locals 0

    .line 26
    invoke-static {p2, p3}, Lccsansan/ck/getDownloadingRecordByUrl;->removeDownloadListener(ZZ)I

    move-result p2

    .line 27
    const-string p3, "cardbutton"

    invoke-virtual {p0, p1, p3, p2}, Lccsansan/db/getDownloadingList;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private IncentiveDownloadUtils(Lccsanandroid/widget/FrameLayout;Lccsanandroid/content/Context;)V
    .locals 3

    .line 20
    new-instance v0, Lccsanandroid/widget/ImageView;

    invoke-direct {v0, p2}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;)V

    .line 21
    sget-object v1, Lccsanandroid/widget/ImageView$ScaleType;->CENTER_CROP:Lccsanandroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setScaleType(Lccsanandroid/widget/ImageView$ScaleType;)V

    .line 22
    invoke-static {}, Lccsancom/san/ads/SanImageLoader;->getInstance()Lccsancom/san/ads/SanImageLoader;

    move-result-object v1

    invoke-virtual {p2}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lccsansan/db/getDownloadingList;->addDownloadListener()Lccsansan/dt/removeDownloadListener;

    move-result-object v2

    invoke-virtual {v2}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v2

    invoke-virtual {v2}, Lccsansan/dt/getDownloadStatusByUrl;->deleteDownList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2, v0}, Lccsancom/san/ads/SanImageLoader;->loadUri(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;)V

    .line 23
    new-instance p2, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p2, v1, v1}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 24
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;ILccsanandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic addDownloadListener(Lccsanandroid/view/View;)V
    .locals 0

    .line 39
    iget-object p1, p0, Lccsansan/db/getDownloadingList;->IncentiveDownloadUtils:Lccsansan/db/getDownloadingList$getDownloadingList;

    if-eqz p1, :cond_0

    .line 40
    invoke-interface {p1}, Lccsansan/db/getDownloadingList$getDownloadingList;->onClick()V

    :cond_0
    return-void
.end method

.method private synthetic deleteDownItem()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/db/removeDownloadListener;->removeDownloadListener:Lccsanandroid/widget/ImageView;

    new-instance v1, Lccsansan/db/removeDownloadListener$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lccsansan/db/removeDownloadListener$$ExternalSyntheticLambda4;-><init>(Lccsansan/db/removeDownloadListener;)V

    invoke-static {v0, v1}, Lccsansan/bw/performAction;->addDownloadListener(Lccsanandroid/view/View;Lccsansan/bw/performAction$IncentiveDownloadUtils;)V

    return-void
.end method

.method static synthetic getDownloadingList(Lccsansan/db/removeDownloadListener;)Lccsanandroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/db/removeDownloadListener;->deleteDownList:Lccsanandroid/widget/ImageView;

    return-object p0
.end method

.method private getDownloadingList(Lccsanandroid/widget/FrameLayout;Lccsanandroid/content/Context;)V
    .locals 2

    .line 47
    new-instance v0, Lccsansan/i/deleteDownItem;

    invoke-direct {v0, p2}, Lccsansan/i/deleteDownItem;-><init>(Lccsanandroid/content/Context;)V

    .line 48
    iget-object p2, p0, Lccsansan/db/removeDownloadListener;->pause:Lccsanandroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 49
    iget-object p2, p0, Lccsansan/db/removeDownloadListener;->deleteDownList:Lccsanandroid/widget/ImageView;

    invoke-virtual {p2, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 50
    invoke-virtual {p0}, Lccsansan/db/getDownloadingList;->addDownloadListener()Lccsansan/dt/removeDownloadListener;

    move-result-object p2

    invoke-virtual {v0, p2}, Lccsansan/i/deleteDownItem;->setAdData(Lccsansan/dt/removeDownloadListener;)V

    .line 51
    sget-object p2, Lccsanandroid/widget/ImageView$ScaleType;->FIT_CENTER:Lccsanandroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p2}, Lccsansan/i/deleteDownItem;->setScaleType(Lccsanandroid/widget/ImageView$ScaleType;)V

    .line 52
    invoke-virtual {v0, v1}, Lccsansan/i/addDownloadListener;->setCheckWindowFocus(Z)V

    .line 53
    new-instance p2, Lccsansan/db/removeDownloadListener$getDownloadingList;

    invoke-direct {p2, p0, v0}, Lccsansan/db/removeDownloadListener$getDownloadingList;-><init>(Lccsansan/db/removeDownloadListener;Lccsansan/i/deleteDownItem;)V

    invoke-virtual {v0, p2}, Lccsansan/i/deleteDownItem;->setMediaViewListener(Lccsansan/i/getDownloadedList;)V

    .line 66
    iget-object p2, p0, Lccsansan/db/removeDownloadListener;->deleteDownList:Lccsanandroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lccsansan/i/deleteDownItem;->addDownloadListener(Lccsanandroid/widget/ImageView;Z)V

    .line 68
    invoke-virtual {p1, v0}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;)V

    return-void
.end method

.method private synthetic getDownloadingList(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 37
    iget-object p1, p0, Lccsansan/db/removeDownloadListener;->removeDownloadListener:Lccsanandroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 38
    new-instance v0, Lccsansan/db/removeDownloadListener$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lccsansan/db/removeDownloadListener$$ExternalSyntheticLambda3;-><init>(Lccsansan/db/removeDownloadListener;)V

    invoke-virtual {p1, v0}, Lccsanandroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 46
    :cond_0
    iget-object p1, p0, Lccsansan/db/removeDownloadListener;->addDownloadListener:Lccsanandroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsanandroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic removeDownloadListener(Lccsansan/db/removeDownloadListener;)Lccsanandroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/db/removeDownloadListener;->pause:Lccsanandroid/view/View;

    return-object p0
.end method

.method private synthetic removeDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/view/View;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lccsansan/db/getDownloadingList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)V

    return-void
.end method

.method private synthetic removeDownloadListener(Lccsanandroid/graphics/Bitmap;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lccsansan/db/removeDownloadListener;->removeDownloadListener:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0, p1}, Lccsanandroid/widget/ImageView;->setImageBitmap(Lccsanandroid/graphics/Bitmap;)V

    .line 19
    iget-object p1, p0, Lccsansan/db/removeDownloadListener;->removeDownloadListener:Lccsanandroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private unifiedDownload(Lccsanandroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Lccsansan/db/removeDownloadListener$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lccsansan/db/removeDownloadListener$$ExternalSyntheticLambda1;-><init>(Lccsansan/db/removeDownloadListener;Lccsanandroid/content/Context;)V

    .line 2
    iget-object v1, p0, Lccsansan/db/removeDownloadListener;->getDownloadedList:Lccsanandroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 3
    iget-object v1, p0, Lccsansan/db/removeDownloadListener;->getDownloadedRecordByUrl:Lccsanandroid/widget/TextView;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 4
    iget-object v1, p0, Lccsansan/db/removeDownloadListener;->getDownloadingRecordByUrl:Lccsanandroid/widget/TextView;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 5
    iget-object v1, p0, Lccsansan/db/removeDownloadListener;->addDownloadListener:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/FrameLayout;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 6
    iget-object v1, p0, Lccsansan/db/removeDownloadListener;->removeDownloadListener:Lccsanandroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 8
    iget-object v1, p0, Lccsansan/db/removeDownloadListener;->getDownloadingCount:Lccsansan/j/unifiedDownload;

    invoke-virtual {p0}, Lccsansan/db/getDownloadingList;->addDownloadListener()Lccsansan/dt/removeDownloadListener;

    move-result-object v2

    new-instance v3, Lccsansan/db/removeDownloadListener$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p1}, Lccsansan/db/removeDownloadListener$$ExternalSyntheticLambda5;-><init>(Lccsansan/db/removeDownloadListener;Lccsanandroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Lccsansan/j/unifiedDownload;->registerClick(Lccsansan/dt/removeDownloadListener;Lccsansan/j/unifiedDownload$IncentiveDownloadUtils;)V

    .line 14
    invoke-static {}, Lccsansan/cz/unifiedDownload;->addDownloadListener()I

    move-result p1

    if-nez p1, :cond_0

    .line 15
    iget-object p1, p0, Lccsansan/db/removeDownloadListener;->getDownloadingList:Lccsanandroid/view/View;

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lccsansan/db/removeDownloadListener;->getDownloadStatusByUrl:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 70
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 72
    :cond_0
    iget-object v0, p0, Lccsansan/db/removeDownloadListener;->deleteDownItem:Lccsanandroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lccsansan/db/removeDownloadListener;->deleteDownItem:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public addDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/view/View;
    .locals 5

    .line 2
    const-string v0, "FullScreen.Native"

    const-string v1, "#initView"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lccsansan/db/getDownloadingList;->addDownloadListener()Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lccsansan/db/getDownloadingList;->addDownloadListener()Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lccsansan/db/removeDownloadListener;->getDownloadedList()I

    move-result v0

    invoke-static {p1, v0, v1}, Lccsanandroid/view/View;->inflate(Lccsanandroid/content/Context;ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object v0

    .line 9
    const-string v1, "san_ll_bg"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lccsansan/db/removeDownloadListener;->getDownloadingList:Lccsanandroid/view/View;

    .line 10
    const-string v1, "san_fl_foreground"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/FrameLayout;

    iput-object v1, p0, Lccsansan/db/removeDownloadListener;->addDownloadListener:Lccsanandroid/widget/FrameLayout;

    .line 11
    const-string v1, "san_iv_background"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/ImageView;

    iput-object v1, p0, Lccsansan/db/removeDownloadListener;->removeDownloadListener:Lccsanandroid/widget/ImageView;

    .line 12
    const-string v1, "san_iv_icon"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/ImageView;

    iput-object v1, p0, Lccsansan/db/removeDownloadListener;->getDownloadedList:Lccsanandroid/widget/ImageView;

    .line 13
    const-string v1, "san_tv_title"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, p0, Lccsansan/db/removeDownloadListener;->getDownloadedRecordByUrl:Lccsanandroid/widget/TextView;

    .line 14
    const-string v1, "san_tv_sub_title"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, p0, Lccsansan/db/removeDownloadListener;->getDownloadingRecordByUrl:Lccsanandroid/widget/TextView;

    .line 15
    const-string v1, "san_iv_close"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/ImageView;

    iput-object v1, p0, Lccsansan/db/removeDownloadListener;->getDownloadStatusByUrl:Lccsanandroid/widget/ImageView;

    .line 16
    const-string v1, "san_tv_count"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, p0, Lccsansan/db/removeDownloadListener;->deleteDownItem:Lccsanandroid/widget/TextView;

    .line 17
    const-string v1, "san_tp_button"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsansan/j/unifiedDownload;

    iput-object v1, p0, Lccsansan/db/removeDownloadListener;->getDownloadingCount:Lccsansan/j/unifiedDownload;

    .line 18
    const-string v1, "san_divider"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lccsansan/db/removeDownloadListener;->pause:Lccsanandroid/view/View;

    .line 19
    const-string v1, "san_iv_volume"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/ImageView;

    iput-object v1, p0, Lccsansan/db/removeDownloadListener;->deleteDownList:Lccsanandroid/widget/ImageView;

    .line 21
    iget-object v1, p0, Lccsansan/db/removeDownloadListener;->removeDownloadListener:Lccsanandroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lccsanandroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 23
    invoke-virtual {p0}, Lccsansan/db/getDownloadingList;->addDownloadListener()Lccsansan/dt/removeDownloadListener;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadingCount()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, p1, v2}, Lccsansan/db/getDownloadingList;->getDownloadingList(Lccsanandroid/content/Context;I)V

    .line 26
    new-instance v2, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lccsansan/db/getDownloadingList;->getDownloadedRecordByUrl()Lccsanandroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Lccsanandroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lccsansan/db/getDownloadingList;->getDownloadedRecordByUrl()Lccsanandroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Lccsanandroid/graphics/Point;->y:I

    invoke-direct {v2, v3, v4}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    .line 27
    invoke-virtual {v2, v3}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 28
    iget-object v3, p0, Lccsansan/db/removeDownloadListener;->addDownloadListener:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Lccsanandroid/widget/FrameLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 30
    iget-object v2, p0, Lccsansan/db/removeDownloadListener;->addDownloadListener:Lccsanandroid/widget/FrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lccsanandroid/widget/FrameLayout;->setVisibility(I)V

    .line 31
    iget-object v2, p0, Lccsansan/db/removeDownloadListener;->removeDownloadListener:Lccsanandroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 32
    iget-object v2, p0, Lccsansan/db/removeDownloadListener;->addDownloadListener:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v2}, Lccsanandroid/widget/FrameLayout;->removeAllViews()V

    .line 34
    invoke-direct {p0, p1, v1}, Lccsansan/db/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/dt/getDownloadStatusByUrl;)V

    .line 36
    invoke-direct {p0, p1}, Lccsansan/db/removeDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;)V

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public addDownloadListener(Ljava/lang/String;)V
    .locals 4

    .line 31
    iget-object v0, p0, Lccsansan/db/removeDownloadListener;->deleteDownItem:Lccsanandroid/widget/TextView;

    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lccsansan/db/getDownloadingList;->unifiedDownload:Lccsancom/san/ads/AdFormat;

    sget-object v2, Lccsancom/san/ads/AdFormat;->REWARDED_AD:Lccsancom/san/ads/AdFormat;

    if-ne v1, v2, :cond_0

    const-string v1, "san_countdown_rewarded"

    goto :goto_0

    :cond_0
    const-string v1, "san_countdown_skip"

    .line 33
    :goto_0
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 34
    iget-object v0, p0, Lccsansan/db/removeDownloadListener;->deleteDownItem:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getDownloadedList()I
    .locals 2

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "san_full_screen_native_layout_ex"

    invoke-static {v0, v1}, Lccsancom/san/bridge/getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    const-string v0, "san_full_screen_native_layout"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method protected getDownloadingList(I)Lccsanandroid/graphics/Point;
    .locals 2

    const/16 v0, 0x294

    const/16 v1, 0xad

    if-ne p1, v1, :cond_0

    .line 28
    new-instance p1, Lccsanandroid/graphics/Point;

    const/16 v1, 0x15a

    invoke-direct {p1, v0, v1}, Lccsanandroid/graphics/Point;-><init>(II)V

    return-object p1

    .line 30
    :cond_0
    new-instance p1, Lccsanandroid/graphics/Point;

    const/16 v1, 0x173

    invoke-direct {p1, v0, v1}, Lccsanandroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method public removeDownloadListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/db/removeDownloadListener;->getDownloadingCount:Lccsansan/j/unifiedDownload;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lccsansan/j/unifiedDownload;->destroy()V

    .line 3
    :cond_0
    iget-object v0, p0, Lccsansan/db/removeDownloadListener;->removeDownloadListener:Lccsanandroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setBackground(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 5
    iput-object v1, p0, Lccsansan/db/removeDownloadListener;->removeDownloadListener:Lccsanandroid/widget/ImageView;

    .line 7
    :cond_1
    iget-object v0, p0, Lccsansan/db/removeDownloadListener;->getDownloadStatusByUrl:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setBackground(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 9
    iput-object v1, p0, Lccsansan/db/removeDownloadListener;->getDownloadStatusByUrl:Lccsanandroid/widget/ImageView;

    :cond_2
    return-void
.end method

.method public unifiedDownload()V
    .locals 2

    .line 35
    iget-object v0, p0, Lccsansan/db/removeDownloadListener;->deleteDownItem:Lccsanandroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 36
    iget-object v0, p0, Lccsansan/db/removeDownloadListener;->getDownloadStatusByUrl:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lccsansan/db/removeDownloadListener;->getDownloadStatusByUrl:Lccsanandroid/widget/ImageView;

    new-instance v1, Lccsansan/db/removeDownloadListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lccsansan/db/removeDownloadListener$$ExternalSyntheticLambda0;-><init>(Lccsansan/db/removeDownloadListener;)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
