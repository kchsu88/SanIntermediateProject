.class final enum Lccsancom/san/landingpage/widget/AdItemWeight$2;
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
.field private static getDownloadingList:I

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/AdItemWeight$2;->getDownloadingList:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/AdItemWeight$2;->unifiedDownload:I

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
    .locals 6
    .param p1, "parent"    # Lccsanandroid/view/ViewGroup;
    .param p2, "item"    # Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    .line 21
    .end local p1    # "parent":Lccsanandroid/view/ViewGroup;
    .end local p2    # "item":Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;
    nop

    .line 1
    new-instance v0, Lccsanandroid/widget/TextView;

    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/widget/TextView;-><init>(Lccsanandroid/content/Context;)V

    .line 2
    new-instance v1, Lccsanandroid/view/ViewGroup$LayoutParams;

    iget v2, p2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadingList:I

    invoke-static {v2}, Lccsancom/san/landingpage/widget/AdItemWeight;->getWidthPixels(I)I

    move-result v2

    iget v3, p2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->unifiedDownload:I

    invoke-static {v3}, Lccsancom/san/landingpage/widget/AdItemWeight;->getHeightPixels(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lccsanandroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3
    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget v1, p2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setTextSize(F)V

    .line 5
    const-string v1, "#191919"

    invoke-static {v1}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41c80000    # 25.0f

    .line 6
    invoke-static {v1}, Lccsansan/bw/values;->addDownloadListener(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanandroid/widget/TextView;->setLineSpacing(FF)V

    .line 7
    sget-object v1, Lccsanandroid/text/TextUtils$TruncateAt;->END:Lccsanandroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setEllipsize(Lccsanandroid/text/TextUtils$TruncateAt;)V

    .line 8
    iget v1, p2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 10
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v4, -0x1

    packed-switch v1, :pswitch_data_0

    const p1, 0x800003

    .line 12
    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setGravity(I)V

    goto :goto_4

    .line 21
    :pswitch_0
    sget v1, Lccsancom/san/landingpage/widget/AdItemWeight$2;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x73

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lccsancom/san/landingpage/widget/AdItemWeight$2;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 10
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    const-string v5, "san_landingpage_title_bg"

    packed-switch v1, :pswitch_data_1

    .line 9
    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    invoke-static {v5}, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/content/res/Resources;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setBackground(Lccsanandroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x11

    goto :goto_2

    :pswitch_1
    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    invoke-static {v5}, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/content/res/Resources;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setBackground(Lccsanandroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x7c

    .line 10
    :goto_2
    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setGravity(I)V

    .line 21
    :cond_2
    :goto_3
    goto :goto_7

    .line 15
    :goto_4
    :try_start_0
    iget-object p1, p2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->resume:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    sget v1, Lccsancom/san/landingpage/widget/AdItemWeight$2;->unifiedDownload:I

    add-int/lit8 v1, v1, 0xb

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lccsancom/san/landingpage/widget/AdItemWeight$2;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    const/16 v1, 0x57

    goto :goto_5

    :cond_3
    const/16 v1, 0x5a

    :goto_5
    packed-switch v1, :pswitch_data_2

    goto :goto_6

    .line 21
    :pswitch_2
    goto :goto_6

    .line 15
    :catch_0
    move-exception p1

    const/4 p1, -0x1

    .line 19
    :goto_6
    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setBackgroundColor(I)V

    .line 21
    sget p1, Lccsancom/san/landingpage/widget/AdItemWeight$2;->getDownloadingList:I

    and-int/lit8 v1, p1, 0x67

    xor-int/lit8 v5, v1, -0x1

    or-int/lit8 p1, p1, 0x67

    and-int/2addr p1, v5

    shl-int/2addr v1, v3

    neg-int v1, v1

    neg-int v1, v1

    xor-int/2addr v1, v4

    sub-int/2addr p1, v1

    sub-int/2addr p1, v3

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsancom/san/landingpage/widget/AdItemWeight$2;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    goto :goto_3

    :goto_7
    iget-object p1, p2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/Html;->fromHtml(Ljava/lang/String;)Lccsanandroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    sget p1, Lccsancom/san/landingpage/widget/AdItemWeight$2;->unifiedDownload:I

    and-int/lit8 p2, p1, 0x3

    xor-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    xor-int/2addr p1, v4

    sub-int/2addr p2, p1

    sub-int/2addr p2, v3

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsancom/san/landingpage/widget/AdItemWeight$2;->getDownloadingList:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_4

    const/4 v3, 0x0

    :cond_4
    packed-switch v3, :pswitch_data_3

    goto :goto_8

    .line 21
    :pswitch_3
    return-object v0

    .line 10
    :goto_8
    const/16 p1, 0x55

    :try_start_1
    div-int/2addr p1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_a

    :goto_9
    throw p1

    :goto_a
    goto :goto_9

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5a
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method
