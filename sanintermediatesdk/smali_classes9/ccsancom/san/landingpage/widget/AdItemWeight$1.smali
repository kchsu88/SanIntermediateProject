.class final enum Lccsancom/san/landingpage/widget/AdItemWeight$1;
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
.field private static IncentiveDownloadUtils:I

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/AdItemWeight$1;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/AdItemWeight$1;->unifiedDownload:I

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
    .locals 2
    .param p1, "parent"    # Lccsanandroid/view/ViewGroup;
    .param p2, "item"    # Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    .line 3
    .end local p1    # "parent":Lccsanandroid/view/ViewGroup;
    .end local p2    # "item":Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;
    nop

    .line 1
    new-instance v0, Lccsanandroid/widget/TextView;

    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lccsanandroid/widget/TextView;-><init>(Lccsanandroid/content/Context;)V

    .line 2
    new-instance p1, Lccsanandroid/view/ViewGroup$LayoutParams;

    iget v1, p2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadingList:I

    invoke-static {v1}, Lccsancom/san/landingpage/widget/AdItemWeight;->getWidthPixels(I)I

    move-result v1

    iget p2, p2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->unifiedDownload:I

    invoke-static {p2}, Lccsancom/san/landingpage/widget/AdItemWeight;->getHeightPixels(I)I

    move-result p2

    invoke-direct {p1, v1, p2}, Lccsanandroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3
    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    sget p1, Lccsancom/san/landingpage/widget/AdItemWeight$1;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x24

    add-int/lit8 p1, p1, -0x1

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/landingpage/widget/AdItemWeight$1;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    return-object v0
.end method
