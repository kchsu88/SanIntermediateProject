.class public Lccsancom/san/landingpage/widget/LandingExpandTextView;
.super Lccsanandroid/widget/FrameLayout;
.source ""


# static fields
.field private static IncentiveDownloadUtils:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Ad.ExpandTextView"

.field private static addDownloadListener:I


# instance fields
.field private mExpandableView:Lccsancom/san/landingpage/widget/ExpandableTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/LandingExpandTextView;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/LandingExpandTextView;->addDownloadListener:I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lccsancom/san/landingpage/widget/LandingExpandTextView;->initView(Lccsanandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lccsancom/san/landingpage/widget/LandingExpandTextView;->initView(Lccsanandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1}, Lccsancom/san/landingpage/widget/LandingExpandTextView;->initView(Lccsanandroid/content/Context;)V

    return-void
.end method

.method private initView(Lccsanandroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Lccsanandroid/content/Context;

    .line 2
    .end local p1    # "ctx":Lccsanandroid/content/Context;
    sget v0, Lccsancom/san/landingpage/widget/LandingExpandTextView;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x11

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingExpandTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    const-string v0, "ccsan_san_expand_view"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0, p0}, Lccsanandroid/view/View;->inflate(Lccsanandroid/content/Context;ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    .line 2
    const-string p1, "san_expand_text_view"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsancom/san/landingpage/widget/ExpandableTextView;

    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingExpandTextView;->mExpandableView:Lccsancom/san/landingpage/widget/ExpandableTextView;

    sget p1, Lccsancom/san/landingpage/widget/LandingExpandTextView;->addDownloadListener:I

    and-int/lit8 v0, p1, 0x7d

    xor-int/lit8 v1, v0, -0x1

    or-int/lit8 p1, p1, 0x7d

    and-int/2addr p1, v1

    shl-int/lit8 v0, v0, 0x1

    and-int v1, p1, v0

    or-int/2addr p1, v0

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingExpandTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 p1, 0xa

    goto :goto_0

    :cond_1
    const/16 p1, 0x19

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public setLandingPageData(Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)V
    .locals 6
    .param p1, "item"    # Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    .line 1
    .end local p1    # "item":Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;
    sget v0, Lccsancom/san/landingpage/widget/LandingExpandTextView;->addDownloadListener:I

    or-int/lit8 v1, v0, 0x18

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x18

    sub-int/2addr v1, v0

    and-int/lit8 v0, v1, -0x1

    or-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingExpandTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 0
    if-nez p1, :cond_2

    goto :goto_1

    .line 1
    :pswitch_0
    const/16 v0, 0x1a

    :try_start_0
    div-int/2addr v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    const/16 p1, 0x51

    xor-int/lit8 v0, v1, 0x51

    and-int/lit8 v3, v1, 0x51

    or-int/2addr v0, v3

    shl-int/2addr v0, v2

    and-int/lit8 v2, v1, -0x52

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr p1, v1

    or-int/2addr p1, v2

    sub-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingExpandTextView;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 p1, 0x1e

    goto :goto_2

    :cond_1
    const/16 p1, 0x40

    :goto_2
    packed-switch p1, :pswitch_data_1

    return-void

    :pswitch_1
    :try_start_1
    array-length p1, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    :cond_2
    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingExpandTextView;->mExpandableView:Lccsancom/san/landingpage/widget/ExpandableTextView;

    iget-object v1, p1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    goto :goto_3

    :cond_3
    const/16 v1, 0x23

    :goto_3
    packed-switch v1, :pswitch_data_2

    sget p1, Lccsancom/san/landingpage/widget/LandingExpandTextView;->IncentiveDownloadUtils:I

    const/16 v1, 0x75

    and-int/lit8 v3, p1, -0x76

    xor-int/lit8 v5, p1, -0x1

    and-int/2addr v1, v5

    or-int/2addr v1, v3

    and-int/lit8 v3, p1, 0x75

    shl-int/2addr v3, v2

    neg-int v3, v3

    neg-int v3, v3

    and-int v5, v1, v3

    or-int/2addr v1, v3

    add-int/2addr v5, v1

    rem-int/lit16 v1, v5, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingExpandTextView;->addDownloadListener:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_5

    goto :goto_5

    :pswitch_2
    iget-object p1, p1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadStatusByUrl:Ljava/lang/String;

    sget v1, Lccsancom/san/landingpage/widget/LandingExpandTextView;->addDownloadListener:I

    and-int/lit8 v3, v1, 0x2b

    or-int/lit8 v1, v1, 0x2b

    add-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingExpandTextView;->IncentiveDownloadUtils:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    const/16 v1, 0x48

    goto :goto_4

    :cond_4
    const/16 v1, 0x45

    :goto_4
    packed-switch v1, :pswitch_data_3

    :pswitch_3
    goto :goto_9

    :goto_5
    const/16 v1, 0x20

    goto :goto_6

    :cond_5
    const/16 v1, 0x62

    :goto_6
    packed-switch v1, :pswitch_data_4

    :goto_7
    goto :goto_8

    :pswitch_4
    :try_start_2
    array-length v1, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception p1

    throw p1

    :goto_8
    add-int/lit8 p1, p1, 0x5f

    sub-int/2addr p1, v2

    or-int/lit8 v1, p1, -0x1

    shl-int/2addr v1, v2

    xor-int/lit8 p1, p1, -0x1

    sub-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingExpandTextView;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_6

    :cond_6
    const-string p1, ""

    :goto_9
    invoke-virtual {v0, p1}, Lccsancom/san/landingpage/widget/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lccsancom/san/landingpage/widget/LandingExpandTextView;->IncentiveDownloadUtils:I

    and-int/lit8 v0, p1, 0x2b

    xor-int/lit8 p1, p1, 0x2b

    or-int/2addr p1, v0

    or-int v1, v0, p1

    shl-int/2addr v1, v2

    xor-int/2addr p1, v0

    sub-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingExpandTextView;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1e
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x23
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x45
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x20
        :pswitch_4
    .end packed-switch
.end method
