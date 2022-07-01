.class Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;->callBackOnUIThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static removeDownloadListener:I

.field private static unifiedDownload:I


# instance fields
.field final synthetic addDownloadListener:Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload$IncentiveDownloadUtils;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload$IncentiveDownloadUtils;->addDownloadListener:Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 4

    .line 4
    nop

    .line 2
    sget p1, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener:I

    xor-int/lit8 v0, p1, 0x2f

    and-int/lit8 v1, p1, 0x2f

    or-int/2addr v0, v1

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    xor-int/lit8 v1, v1, -0x1

    or-int/lit8 p1, p1, 0x2f

    and-int/2addr p1, v1

    neg-int p1, p1

    xor-int/lit8 p1, p1, -0x1

    sub-int/2addr v0, p1

    sub-int/2addr v0, v2

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload$IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    iget-object p1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload$IncentiveDownloadUtils;->addDownloadListener:Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;

    iget-object p1, p1, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;->unifiedDownload:Lccsancom/san/landingpage/BaseLandingPageActivity;

    invoke-virtual {p1}, Lccsanandroidx/fragment/app/FragmentActivity;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    const-string v0, "san_no_net_guide_network_dialog_connect"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload$IncentiveDownloadUtils;->addDownloadListener:Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;

    iget-object v0, v0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;->unifiedDownload:Lccsancom/san/landingpage/BaseLandingPageActivity;

    invoke-static {v0}, Lccsancom/san/landingpage/BaseLandingPageActivity;->access$200(Lccsancom/san/landingpage/BaseLandingPageActivity;)Lccsanandroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x5a

    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 4
    sget p1, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload$IncentiveDownloadUtils;->unifiedDownload:I

    xor-int/lit8 v1, p1, 0xf

    and-int/lit8 v3, p1, 0xf

    or-int/2addr v1, v3

    shl-int/2addr v1, v2

    xor-int/lit8 v3, v3, -0x1

    or-int/lit8 p1, p1, 0xf

    and-int/2addr p1, v3

    neg-int p1, p1

    or-int v3, v1, p1

    shl-int/2addr v3, v2

    xor-int/2addr p1, v1

    sub-int/2addr v3, p1

    rem-int/lit16 p1, v3, 0x80

    sput p1, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload$IncentiveDownloadUtils;->addDownloadListener:Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;

    iget-object p1, p1, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;->unifiedDownload:Lccsancom/san/landingpage/BaseLandingPageActivity;

    invoke-static {p1}, Lccsancom/san/landingpage/BaseLandingPageActivity;->access$300(Lccsancom/san/landingpage/BaseLandingPageActivity;)V

    sget p1, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload$IncentiveDownloadUtils;->unifiedDownload:I

    xor-int/lit8 v0, p1, 0x55

    and-int/lit8 p1, p1, 0x55

    or-int/2addr p1, v0

    shl-int/2addr p1, v2

    sub-int/2addr p1, v0

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    goto :goto_5

    .line 2
    :goto_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    const/4 p1, 0x1

    :goto_2
    packed-switch p1, :pswitch_data_1

    iget-object p1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload$IncentiveDownloadUtils;->addDownloadListener:Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;

    iget-object p1, p1, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;->unifiedDownload:Lccsancom/san/landingpage/BaseLandingPageActivity;

    invoke-static {p1}, Lccsansan/bw/getDownloadedList;->unifiedDownload(Lccsanandroid/content/Context;)V

    goto :goto_3

    :pswitch_1
    iget-object p1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload$IncentiveDownloadUtils;->addDownloadListener:Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;

    iget-object p1, p1, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload;->unifiedDownload:Lccsancom/san/landingpage/BaseLandingPageActivity;

    invoke-static {p1}, Lccsansan/bw/getDownloadedList;->unifiedDownload(Lccsanandroid/content/Context;)V

    goto :goto_4

    :goto_3
    const/16 p1, 0x48

    :try_start_0
    div-int/2addr p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :goto_4
    sget p1, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload$IncentiveDownloadUtils;->unifiedDownload:I

    and-int/lit8 v0, p1, 0x6f

    xor-int/lit8 p1, p1, 0x6f

    or-int/2addr p1, v0

    xor-int v1, v0, p1

    and-int/2addr p1, v0

    shl-int/2addr p1, v2

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    .line 2
    :cond_3
    :goto_5
    sget p1, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload$IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 p1, p1, 0x7c

    xor-int/lit8 v0, p1, -0x1

    and-int/lit8 p1, p1, -0x1

    shl-int/2addr p1, v2

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/BaseLandingPageActivity$unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    const/16 p1, 0x5c

    goto :goto_6

    :cond_4
    const/16 p1, 0x43

    :goto_6
    packed-switch p1, :pswitch_data_2

    .line 4
    return-void

    .line 2
    :pswitch_2
    const/4 p1, 0x0

    :try_start_1
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    .line 4
    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5c
        :pswitch_2
    .end packed-switch
.end method
