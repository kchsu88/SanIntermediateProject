.class public Lccsansan/at/unifiedDownload;
.super Lccsanandroid/widget/PopupWindow;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/at/unifiedDownload$addDownloadListener;
    }
.end annotation


# static fields
.field private static addDownloadListener:I


# instance fields
.field private IncentiveDownloadUtils:Lccsansan/at/unifiedDownload;

.field private getDownloadStatusByUrl:Lccsanandroid/widget/Switch;

.field private getDownloadedRecordByUrl:I

.field private getDownloadingList:Lccsansan/aj/getDownloadingList;

.field private removeDownloadListener:Lccsanandroid/view/View;

.field private unifiedDownload:Lccsanandroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "san_reserve_popup_layout"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lccsansan/at/unifiedDownload;-><init>(Lccsanandroid/content/Context;I)V

    return-void
.end method

.method private constructor <init>(Lccsanandroid/content/Context;I)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lccsanandroid/widget/PopupWindow;-><init>(Lccsanandroid/content/Context;)V

    .line 3
    const/16 v0, 0x7530

    iput v0, p0, Lccsansan/at/unifiedDownload;->getDownloadedRecordByUrl:I

    .line 11
    iput-object p1, p0, Lccsansan/at/unifiedDownload;->unifiedDownload:Lccsanandroid/content/Context;

    .line 12
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lccsanandroid/widget/PopupWindow;->setWidth(I)V

    .line 13
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lccsanandroid/widget/PopupWindow;->setHeight(I)V

    .line 15
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsanandroid/widget/PopupWindow;->setFocusable(Z)V

    .line 16
    invoke-virtual {p0, v0}, Lccsanandroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 17
    invoke-virtual {p0, v0}, Lccsanandroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 19
    new-instance v1, Lccsanandroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Lccsanandroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 20
    invoke-virtual {p0, v1}, Lccsanandroid/widget/PopupWindow;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 22
    invoke-static {p1}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lccsansan/at/unifiedDownload;->removeDownloadListener:Lccsanandroid/view/View;

    .line 23
    invoke-virtual {p0, p1}, Lccsanandroid/widget/PopupWindow;->setContentView(Lccsanandroid/view/View;)V

    .line 24
    iput-object p0, p0, Lccsansan/at/unifiedDownload;->IncentiveDownloadUtils:Lccsansan/at/unifiedDownload;

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(I)I
    .locals 0

    .line 1
    sput p0, Lccsansan/at/unifiedDownload;->addDownloadListener:I

    return p0
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/at/unifiedDownload;)Lccsanandroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/at/unifiedDownload;->unifiedDownload:Lccsanandroid/content/Context;

    return-object p0
.end method

.method static synthetic removeDownloadListener(Lccsansan/at/unifiedDownload;)Lccsansan/at/unifiedDownload;
    .locals 0

    .line 2
    iget-object p0, p0, Lccsansan/at/unifiedDownload;->IncentiveDownloadUtils:Lccsansan/at/unifiedDownload;

    return-object p0
.end method

.method static synthetic unifiedDownload(Lccsansan/at/unifiedDownload;)Lccsansan/aj/getDownloadingList;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/at/unifiedDownload;->getDownloadingList:Lccsansan/aj/getDownloadingList;

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lccsansan/at/unifiedDownload;->unifiedDownload:Lccsanandroid/content/Context;

    check-cast v0, Lccsanandroid/app/Activity;

    invoke-virtual {v0}, Lccsanandroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lccsansan/at/unifiedDownload;->removeDownloadListener:Lccsanandroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 4
    :cond_0
    invoke-super {p0}, Lccsanandroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x0

    .line 8
    sput v0, Lccsansan/at/unifiedDownload;->addDownloadListener:I

    return-void
.end method

.method public getDownloadingList(Lccsansan/aj/getDownloadingList;)V
    .locals 8

    if-eqz p1, :cond_5

    .line 3
    invoke-virtual {p0}, Lccsanandroid/widget/PopupWindow;->getContentView()Lccsanandroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lccsansan/at/unifiedDownload;->removeDownloadListener:Lccsanandroid/view/View;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 7
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_1

    return-void

    .line 11
    :cond_1
    iget v0, p0, Lccsansan/at/unifiedDownload;->getDownloadedRecordByUrl:I

    if-gtz v0, :cond_2

    return-void

    .line 14
    :cond_2
    iput-object p1, p0, Lccsansan/at/unifiedDownload;->getDownloadingList:Lccsansan/aj/getDownloadingList;

    .line 15
    new-instance v0, Lccsansan/at/unifiedDownload$addDownloadListener;

    iget v1, p0, Lccsansan/at/unifiedDownload;->getDownloadedRecordByUrl:I

    int-to-long v3, v1

    const-wide/16 v5, 0x64

    move-object v1, v0

    move-object v2, p0

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lccsansan/at/unifiedDownload$addDownloadListener;-><init>(Lccsansan/at/unifiedDownload;JJLccsanandroid/widget/PopupWindow;)V

    .line 16
    invoke-virtual {v0}, Lccsanandroid/os/CountDownTimer;->start()Lccsanandroid/os/CountDownTimer;

    if-eqz p1, :cond_3

    .line 20
    iget-object v0, p0, Lccsansan/at/unifiedDownload;->removeDownloadListener:Lccsanandroid/view/View;

    const-string v1, "san_tip_text"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/TextView;

    .line 21
    iget-object v1, p1, Lccsansan/aj/getDownloadingList;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p0, Lccsansan/at/unifiedDownload;->removeDownloadListener:Lccsanandroid/view/View;

    const-string v1, "san_tip_icon"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lccsanandroid/widget/ImageView;

    .line 24
    invoke-static {}, Lccsancom/san/ads/SanImageLoader;->getInstance()Lccsancom/san/ads/SanImageLoader;

    move-result-object v1

    iget-object v2, p0, Lccsansan/at/unifiedDownload;->unifiedDownload:Lccsanandroid/content/Context;

    iget-object v3, p1, Lccsansan/aj/getDownloadingList;->pause:Ljava/lang/String;

    .line 25
    const-string v0, "san_common_background_color"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;)I

    move-result v5

    iget-object v0, p0, Lccsansan/at/unifiedDownload;->unifiedDownload:Lccsanandroid/content/Context;

    .line 26
    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    const-string v6, "san_common_dimens_10dp"

    invoke-static {v6}, Lccsansan/bw/shouldTryHandlingAction;->unifiedDownload(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 27
    invoke-virtual/range {v1 .. v6}, Lccsancom/san/ads/SanImageLoader;->loadLandingRoundCornerUrl(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;II)V

    .line 31
    iget-object v0, p0, Lccsansan/at/unifiedDownload;->removeDownloadListener:Lccsanandroid/view/View;

    const-string v1, "san_tip_close"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    .line 32
    new-instance v1, Lccsansan/at/unifiedDownload$getDownloadingList;

    invoke-direct {v1, p0}, Lccsansan/at/unifiedDownload$getDownloadingList;-><init>(Lccsansan/at/unifiedDownload;)V

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lccsansan/at/unifiedDownload;->removeDownloadListener:Lccsanandroid/view/View;

    const-string v1, "san_reserve_switch"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/Switch;

    iput-object v0, p0, Lccsansan/at/unifiedDownload;->getDownloadStatusByUrl:Lccsanandroid/widget/Switch;

    .line 43
    iget-object v0, p0, Lccsansan/at/unifiedDownload;->removeDownloadListener:Lccsanandroid/view/View;

    const-string v1, "san_switch_on_text"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/TextView;

    .line 44
    iget-object v1, p0, Lccsansan/at/unifiedDownload;->removeDownloadListener:Lccsanandroid/view/View;

    const-string v2, "san_switch_off_text"

    invoke-static {v2}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    .line 46
    iget-object v2, p0, Lccsansan/at/unifiedDownload;->getDownloadStatusByUrl:Lccsanandroid/widget/Switch;

    new-instance v3, Lccsansan/at/unifiedDownload$IncentiveDownloadUtils;

    invoke-direct {v3, p0, v0, v1, p1}, Lccsansan/at/unifiedDownload$IncentiveDownloadUtils;-><init>(Lccsansan/at/unifiedDownload;Lccsanandroid/widget/TextView;Lccsanandroid/widget/TextView;Lccsansan/aj/getDownloadingList;)V

    invoke-virtual {v2, v3}, Lccsanandroid/widget/Switch;->setOnCheckedChangeListener(Lccsanandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 93
    :cond_3
    iget-object p1, p0, Lccsansan/at/unifiedDownload;->unifiedDownload:Lccsanandroid/content/Context;

    instance-of v0, p1, Lccsanandroid/app/Activity;

    if-eqz v0, :cond_4

    check-cast p1, Lccsanandroid/app/Activity;

    invoke-virtual {p1}, Lccsanandroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_4

    .line 94
    const-string p1, "san_reserve_popup_anim"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->IncentiveDownloadUtils(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 95
    iget-object p1, p0, Lccsansan/at/unifiedDownload;->unifiedDownload:Lccsanandroid/content/Context;

    check-cast p1, Lccsanandroid/app/Activity;

    invoke-virtual {p1}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object p1

    const/16 v0, 0x50

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-virtual {p0, p1, v0, v1, v2}, Lccsanandroid/widget/PopupWindow;->showAtLocation(Lccsanandroid/view/View;III)V

    .line 97
    :cond_4
    sget p1, Lccsansan/at/unifiedDownload;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lccsansan/at/unifiedDownload;->addDownloadListener:I

    :cond_5
    :goto_0
    return-void
.end method
