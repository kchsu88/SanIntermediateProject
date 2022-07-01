.class final enum Lccsancom/san/landingpage/widget/AdItemWeight$8;
.super Lccsancom/san/landingpage/widget/AdItemWeight;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/landingpage/widget/AdItemWeight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/AdItemWeight$8;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/AdItemWeight$8;->unifiedDownload:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lccsancom/san/landingpage/widget/AdItemWeight;-><init>(Ljava/lang/String;ILjava/lang/String;Lccsancom/san/landingpage/widget/AdItemWeight$1;)V

    return-void
.end method


# virtual methods
.method public render(Lccsanandroid/view/ViewGroup;Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)Lccsanandroid/view/View;
    .locals 3
    .param p1, "parent"    # Lccsanandroid/view/ViewGroup;
    .param p2, "item"    # Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    .line 4
    .end local p1    # "parent":Lccsanandroid/view/ViewGroup;
    .end local p2    # "item":Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;
    nop

    .line 1
    new-instance v0, Lccsancom/san/landingpage/widget/LandingExpandTextView;

    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lccsancom/san/landingpage/widget/LandingExpandTextView;-><init>(Lccsanandroid/content/Context;)V

    .line 2
    new-instance p1, Lccsanandroid/view/ViewGroup$LayoutParams;

    iget v1, p2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadingList:I

    invoke-static {v1}, Lccsancom/san/landingpage/widget/AdItemWeight;->getWidthPixels(I)I

    move-result v1

    iget v2, p2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->unifiedDownload:I

    invoke-static {v2}, Lccsancom/san/landingpage/widget/AdItemWeight;->getHeightPixels(I)I

    move-result v2

    invoke-direct {p1, v1, v2}, Lccsanandroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3
    invoke-virtual {v0, p1}, Lccsanandroid/widget/FrameLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 4
    invoke-virtual {v0, p2}, Lccsancom/san/landingpage/widget/LandingExpandTextView;->setLandingPageData(Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)V

    sget p1, Lccsancom/san/landingpage/widget/AdItemWeight$8;->unifiedDownload:I

    add-int/lit8 p1, p1, 0x5c

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsancom/san/landingpage/widget/AdItemWeight$8;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v0

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
