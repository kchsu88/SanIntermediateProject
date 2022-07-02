.class public Lccsansan/i/removeDownloadListener;
.super Lccsanandroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/i/removeDownloadListener$unifiedDownload;
    }
.end annotation


# instance fields
.field private IncentiveDownloadUtils:Lccsanandroid/widget/TextView;

.field private addDownloadListener:Lccsanandroid/widget/LinearLayout;

.field private deleteDownItem:Lccsancom/san/ads/AdFormat;

.field private getDownloadStatusByUrl:Z

.field private getDownloadedCount:Z

.field private getDownloadedList:Z

.field private getDownloadedRecordByUrl:Lccsansan/dt/removeDownloadListener;

.field private getDownloadingCount:Lccsansan/i/removeDownloadListener$unifiedDownload;

.field private getDownloadingList:Lccsanandroid/widget/ImageView;

.field private getDownloadingRecordByUrl:Lccsanandroid/widget/TextView;

.field private pause:I

.field private removeDownloadListener:Lccsanandroid/widget/FrameLayout;

.field private unifiedDownload:Lccsanandroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$woO-2kbJBSk39tCi29MsIBaz4QI(Lccsansan/i/removeDownloadListener;Lccsanandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsansan/i/removeDownloadListener;->getDownloadingList(Lccsanandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lccsansan/i/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lccsansan/i/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1}, Lccsansan/i/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)V

    return-void
.end method

.method private IncentiveDownloadUtils()V
    .locals 2

    .line 1
    new-instance v0, Lccsansan/i/removeDownloadListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lccsansan/i/removeDownloadListener$$ExternalSyntheticLambda0;-><init>(Lccsansan/i/removeDownloadListener;)V

    .line 5
    iget-object v1, p0, Lccsansan/i/removeDownloadListener;->removeDownloadListener:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/FrameLayout;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 6
    iget-object v1, p0, Lccsansan/i/removeDownloadListener;->getDownloadingList:Lccsanandroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 7
    iget-object v1, p0, Lccsansan/i/removeDownloadListener;->unifiedDownload:Lccsanandroid/widget/TextView;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private IncentiveDownloadUtils(Lccsanandroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "ccsan_san_full_vast_remain_close_layout"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0, p0}, Lccsanandroid/view/View;->inflate(Lccsanandroid/content/Context;ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    .line 2
    const-string p1, "san_rl_time_bg"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/LinearLayout;

    iput-object p1, p0, Lccsansan/i/removeDownloadListener;->addDownloadListener:Lccsanandroid/widget/LinearLayout;

    .line 3
    const-string p1, "san_tv_seconds"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/TextView;

    iput-object p1, p0, Lccsansan/i/removeDownloadListener;->unifiedDownload:Lccsanandroid/widget/TextView;

    .line 4
    const-string p1, "san_tv_divider"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/TextView;

    iput-object p1, p0, Lccsansan/i/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/widget/TextView;

    .line 5
    const-string p1, "san_fl_close"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/FrameLayout;

    iput-object p1, p0, Lccsansan/i/removeDownloadListener;->removeDownloadListener:Lccsanandroid/widget/FrameLayout;

    .line 6
    const-string p1, "san_iv_close"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/ImageView;

    iput-object p1, p0, Lccsansan/i/removeDownloadListener;->getDownloadingList:Lccsanandroid/widget/ImageView;

    .line 7
    const-string p1, "san_tv_count"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/TextView;

    iput-object p1, p0, Lccsansan/i/removeDownloadListener;->getDownloadingRecordByUrl:Lccsanandroid/widget/TextView;

    .line 9
    invoke-direct {p0}, Lccsansan/i/removeDownloadListener;->IncentiveDownloadUtils()V

    return-void
.end method

.method private getDownloadedList()V
    .locals 2

    .line 43
    iget-object v0, p0, Lccsansan/i/removeDownloadListener;->unifiedDownload:Lccsanandroid/widget/TextView;

    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsansan/i/removeDownloadListener;->getDownloadingList:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsansan/i/removeDownloadListener;->getDownloadingRecordByUrl:Lccsanandroid/widget/TextView;

    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 44
    :cond_0
    iget-object v0, p0, Lccsansan/i/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lccsansan/i/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private synthetic getDownloadingList(Lccsanandroid/view/View;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lccsansan/i/removeDownloadListener;->getDownloadingCount:Lccsansan/i/removeDownloadListener$unifiedDownload;

    if-eqz v0, :cond_0

    .line 11
    invoke-interface {v0, p1}, Lccsansan/i/removeDownloadListener$unifiedDownload;->onClick(Lccsanandroid/view/View;)V

    :cond_0
    return-void
.end method

.method private getFullAdClosePoint()I
    .locals 2

    .line 1
    invoke-static {}, Lccsansan/cz/unifiedDownload;->resolveUrl()I

    move-result v0

    .line 2
    iget-object v1, p0, Lccsansan/i/removeDownloadListener;->getDownloadedRecordByUrl:Lccsansan/dt/removeDownloadListener;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lccsansan/i/removeDownloadListener;->getDownloadedRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK()I

    move-result v0

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const v0, 0x7fffffff

    return v0

    :cond_1
    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private getFullAdSkipPoint()I
    .locals 2

    .line 1
    invoke-static {}, Lccsansan/cz/unifiedDownload;->ActionTypeDetailPage()I

    move-result v0

    .line 2
    iget-object v1, p0, Lccsansan/i/removeDownloadListener;->getDownloadedRecordByUrl:Lccsansan/dt/removeDownloadListener;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lccsansan/i/removeDownloadListener;->getDownloadedRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveSDK$1()I

    move-result v0

    :cond_0
    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private removeDownloadListener(II)V
    .locals 4

    sub-int/2addr p1, p2

    .line 37
    div-int/lit16 p1, p1, 0x3e8

    if-lez p1, :cond_0

    .line 39
    iget-object p2, p0, Lccsansan/i/removeDownloadListener;->unifiedDownload:Lccsanandroid/widget/TextView;

    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "san_countdown_skip"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lccsansan/i/removeDownloadListener;->unifiedDownload:Lccsanandroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 42
    iget-object p1, p0, Lccsansan/i/removeDownloadListener;->addDownloadListener:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Lccsanandroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private removeDownloadListener(ILccsansan/co/resolveUrl;)V
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#initSkipRemain skipPoint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lccsansan/i/removeDownloadListener;->getFullAdSkipPoint()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",ClosePoint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lccsansan/i/removeDownloadListener;->getFullAdClosePoint()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SkipOffView"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Lccsansan/i/removeDownloadListener;->getFullAdSkipPoint()I

    move-result v0

    iput v0, p0, Lccsansan/i/removeDownloadListener;->pause:I

    if-eqz p2, :cond_0

    .line 31
    invoke-virtual {p2, p1}, Lccsansan/co/resolveUrl;->IncentiveDownloadUtils(I)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 33
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lccsansan/i/removeDownloadListener;->pause:I

    .line 36
    :cond_0
    iget p2, p0, Lccsansan/i/removeDownloadListener;->pause:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lccsansan/i/removeDownloadListener;->pause:I

    return-void
.end method

.method private removeDownloadListener()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/i/removeDownloadListener;->getDownloadedRecordByUrl:Lccsansan/dt/removeDownloadListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsansan/i/removeDownloadListener;->getDownloadedRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->ActionTypeDetailPage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private unifiedDownload(II)V
    .locals 4

    sub-int/2addr p1, p2

    .line 2
    div-int/lit16 p1, p1, 0x3e8

    if-lez p1, :cond_0

    .line 4
    iget-object p2, p0, Lccsansan/i/removeDownloadListener;->unifiedDownload:Lccsanandroid/widget/TextView;

    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "san_countdown_rewarded"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lccsansan/i/removeDownloadListener;->unifiedDownload:Lccsanandroid/widget/TextView;

    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object p2

    const-string v0, "san_countdown_got_reward"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lccsanandroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;Lccsancom/san/ads/AdFormat;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lccsansan/i/removeDownloadListener;->getDownloadedRecordByUrl:Lccsansan/dt/removeDownloadListener;

    .line 13
    iput-object p2, p0, Lccsansan/i/removeDownloadListener;->deleteDownItem:Lccsancom/san/ads/AdFormat;

    return-void
.end method

.method public addDownloadListener(II)V
    .locals 5

    .line 8
    iget-object v0, p0, Lccsansan/i/removeDownloadListener;->getDownloadedRecordByUrl:Lccsansan/dt/removeDownloadListener;

    if-nez v0, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-direct {p0}, Lccsansan/i/removeDownloadListener;->getFullAdClosePoint()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le p2, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lccsansan/i/removeDownloadListener;->getDownloadedCount:Z

    .line 11
    invoke-direct {p0}, Lccsansan/i/removeDownloadListener;->removeDownloadListener()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget v0, p0, Lccsansan/i/removeDownloadListener;->pause:I

    if-le p2, v0, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lccsansan/i/removeDownloadListener;->getDownloadedList:Z

    if-eqz v3, :cond_3

    .line 14
    iget-object v0, p0, Lccsansan/i/removeDownloadListener;->getDownloadingRecordByUrl:Lccsanandroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lccsansan/i/removeDownloadListener;->getDownloadingList:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    sub-int/2addr v0, p2

    .line 17
    div-int/lit16 v0, v0, 0x3e8

    .line 18
    iget-object v3, p0, Lccsansan/i/removeDownloadListener;->getDownloadingRecordByUrl:Lccsanandroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "%ds"

    invoke-static {v4, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 20
    :cond_4
    iget-boolean v0, p0, Lccsansan/i/removeDownloadListener;->getDownloadedCount:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lccsansan/i/removeDownloadListener;->getDownloadingList:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 21
    iget-object v0, p0, Lccsansan/i/removeDownloadListener;->getDownloadingList:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lccsansan/i/removeDownloadListener;->getDownloadingRecordByUrl:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 25
    :cond_5
    :goto_2
    iget-object v0, p0, Lccsansan/i/removeDownloadListener;->deleteDownItem:Lccsancom/san/ads/AdFormat;

    sget-object v1, Lccsancom/san/ads/AdFormat;->REWARDED_AD:Lccsancom/san/ads/AdFormat;

    if-ne v0, v1, :cond_6

    .line 26
    invoke-direct {p0, p1, p2}, Lccsansan/i/removeDownloadListener;->unifiedDownload(II)V

    goto :goto_3

    .line 28
    :cond_6
    invoke-direct {p0, p1, p2}, Lccsansan/i/removeDownloadListener;->removeDownloadListener(II)V

    .line 30
    :goto_3
    invoke-direct {p0}, Lccsansan/i/removeDownloadListener;->getDownloadedList()V

    return-void
.end method

.method public addDownloadListener()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/i/removeDownloadListener;->getDownloadedCount:Z

    return v0
.end method

.method public getDownloadingList(I)V
    .locals 2

    .line 14
    iget-object v0, p0, Lccsansan/i/removeDownloadListener;->getDownloadedRecordByUrl:Lccsansan/dt/removeDownloadListener;

    if-nez v0, :cond_0

    return-void

    .line 16
    :cond_0
    invoke-static {v0}, Lccsansan/bw/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)Lccsansan/co/resolveUrl;

    move-result-object v0

    .line 17
    invoke-direct {p0, p1, v0}, Lccsansan/i/removeDownloadListener;->removeDownloadListener(ILccsansan/co/resolveUrl;)V

    .line 19
    iget-object p1, p0, Lccsansan/i/removeDownloadListener;->deleteDownItem:Lccsancom/san/ads/AdFormat;

    sget-object v0, Lccsancom/san/ads/AdFormat;->REWARDED_AD:Lccsancom/san/ads/AdFormat;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 20
    invoke-direct {p0}, Lccsansan/i/removeDownloadListener;->removeDownloadListener()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 21
    iget-object p1, p0, Lccsansan/i/removeDownloadListener;->getDownloadingRecordByUrl:Lccsanandroid/widget/TextView;

    iget v0, p0, Lccsansan/i/removeDownloadListener;->pause:I

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object p1, p0, Lccsansan/i/removeDownloadListener;->getDownloadingRecordByUrl:Lccsanandroid/widget/TextView;

    invoke-virtual {p1, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 25
    :cond_1
    invoke-direct {p0}, Lccsansan/i/removeDownloadListener;->removeDownloadListener()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lccsansan/i/removeDownloadListener;->getDownloadStatusByUrl:Z

    if-nez p1, :cond_2

    .line 26
    iget-object p1, p0, Lccsansan/i/removeDownloadListener;->getDownloadingRecordByUrl:Lccsanandroid/widget/TextView;

    iget v0, p0, Lccsansan/i/removeDownloadListener;->pause:I

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object p1, p0, Lccsansan/i/removeDownloadListener;->getDownloadingRecordByUrl:Lccsanandroid/widget/TextView;

    invoke-virtual {p1, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getDownloadingList()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/i/removeDownloadListener;->getDownloadedList:Z

    return v0
.end method

.method public setCloseClickListener(Lccsansan/i/removeDownloadListener$unifiedDownload;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/i/removeDownloadListener;->getDownloadingCount:Lccsansan/i/removeDownloadListener$unifiedDownload;

    return-void
.end method

.method public unifiedDownload()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsansan/i/removeDownloadListener;->getDownloadStatusByUrl:Z

    .line 2
    iget-object v0, p0, Lccsansan/i/removeDownloadListener;->deleteDownItem:Lccsancom/san/ads/AdFormat;

    sget-object v1, Lccsancom/san/ads/AdFormat;->REWARDED_AD:Lccsancom/san/ads/AdFormat;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lccsansan/i/removeDownloadListener;->addDownloadListener:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Lccsanandroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lccsansan/i/removeDownloadListener;->getDownloadingRecordByUrl:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, v3}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lccsansan/i/removeDownloadListener;->unifiedDownload:Lccsanandroid/widget/TextView;

    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v3, "san_countdown_got_reward"

    invoke-static {v3}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lccsanandroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lccsansan/i/removeDownloadListener;->getDownloadingRecordByUrl:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, v3}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lccsansan/i/removeDownloadListener;->unifiedDownload:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, v3}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 9
    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    const-string v1, "ccsan_ccsan_san_vast_player_reward_time_bg2"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lccsanandroidx/core/content/res/ResourcesCompat;->getDrawable(Lccsanandroid/content/res/Resources;ILccsanandroid/content/res/Resources$Theme;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lccsansan/i/removeDownloadListener;->addDownloadListener:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/LinearLayout;->setBackground(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object v0, p0, Lccsansan/i/removeDownloadListener;->addDownloadListener:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Lccsanandroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    :goto_0
    iget-object v0, p0, Lccsansan/i/removeDownloadListener;->getDownloadingList:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 14
    invoke-direct {p0}, Lccsansan/i/removeDownloadListener;->getDownloadedList()V

    return-void
.end method
