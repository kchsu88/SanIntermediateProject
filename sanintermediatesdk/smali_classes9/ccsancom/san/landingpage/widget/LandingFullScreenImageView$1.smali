.class Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/ads/SanImageLoader$OnLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->loadImageView(Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:I


# instance fields
.field final synthetic this$0:Lccsancom/san/landingpage/widget/LandingFullScreenImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;->addDownloadListener:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/landingpage/widget/LandingFullScreenImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;->this$0:Lccsancom/san/landingpage/widget/LandingFullScreenImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoadResult(Z)V
    .locals 6
    .param p1, "isSuccess"    # Z

    .line 20
    .end local p1    # "isSuccess":Z
    sget v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    or-int/2addr v0, v2

    neg-int v0, v0

    neg-int v0, v0

    or-int v3, v1, v0

    shl-int/2addr v3, v2

    xor-int/2addr v0, v1

    sub-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;->addDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;->this$0:Lccsancom/san/landingpage/widget/LandingFullScreenImageView;

    invoke-static {v0}, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->access$000(Lccsancom/san/landingpage/widget/LandingFullScreenImageView;)Lccsanandroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 20
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string v3, "Ad.LandingFullScreenImageView"

    packed-switch p1, :pswitch_data_0

    .line 6
    nop

    .line 9
    const-string p1, "LandingFullScreenImageView load failed "

    invoke-static {v3, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;->this$0:Lccsancom/san/landingpage/widget/LandingFullScreenImageView;

    invoke-static {p1}, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->access$500(Lccsancom/san/landingpage/widget/LandingFullScreenImageView;)Lccsanandroid/widget/RelativeLayout;

    move-result-object p1

    iget-object v1, p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;->this$0:Lccsancom/san/landingpage/widget/LandingFullScreenImageView;

    invoke-static {v1}, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->access$400(Lccsancom/san/landingpage/widget/LandingFullScreenImageView;)Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    const-string v3, "san_black_transparent_70"

    invoke-static {v3}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lccsanandroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 11
    iget-object p1, p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;->this$0:Lccsancom/san/landingpage/widget/LandingFullScreenImageView;

    invoke-static {p1}, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->access$100(Lccsancom/san/landingpage/widget/LandingFullScreenImageView;)Lccsanandroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;->this$0:Lccsancom/san/landingpage/widget/LandingFullScreenImageView;

    invoke-static {p1}, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->access$200(Lccsancom/san/landingpage/widget/LandingFullScreenImageView;)Lccsanandroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;->this$0:Lccsancom/san/landingpage/widget/LandingFullScreenImageView;

    invoke-static {p1}, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->access$200(Lccsancom/san/landingpage/widget/LandingFullScreenImageView;)Lccsanandroid/widget/ImageView;

    move-result-object p1

    new-instance v1, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1$1;

    invoke-direct {v1, p0}, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1$1;-><init>(Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;)V

    invoke-virtual {p1, v1}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 20
    iget-object p1, p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;->this$0:Lccsancom/san/landingpage/widget/LandingFullScreenImageView;

    invoke-static {p1}, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->access$300(Lccsancom/san/landingpage/widget/LandingFullScreenImageView;)Lccsanandroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lccsanandroid/widget/ImageView;->setClickable(Z)V

    goto :goto_1

    :pswitch_0
    sget p1, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;->IncentiveDownloadUtils:I

    xor-int/lit8 v4, p1, 0x63

    and-int/lit8 v5, p1, 0x63

    or-int/2addr v4, v5

    shl-int/2addr v4, v2

    xor-int/lit8 v5, v5, -0x1

    or-int/lit8 p1, p1, 0x63

    and-int/2addr p1, v5

    neg-int p1, p1

    or-int v5, v4, p1

    shl-int/2addr v5, v2

    xor-int/2addr p1, v4

    sub-int/2addr v5, p1

    rem-int/lit16 p1, v5, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;->addDownloadListener:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_2

    .line 1
    :cond_2
    nop

    .line 3
    const-string p1, "LandingFullScreenImageView load success "

    invoke-static {v3, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;->this$0:Lccsancom/san/landingpage/widget/LandingFullScreenImageView;

    invoke-static {p1}, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->access$100(Lccsancom/san/landingpage/widget/LandingFullScreenImageView;)Lccsanandroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;->this$0:Lccsancom/san/landingpage/widget/LandingFullScreenImageView;

    invoke-static {p1}, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->access$200(Lccsancom/san/landingpage/widget/LandingFullScreenImageView;)Lccsanandroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;->this$0:Lccsancom/san/landingpage/widget/LandingFullScreenImageView;

    invoke-static {p1}, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->access$300(Lccsancom/san/landingpage/widget/LandingFullScreenImageView;)Lccsanandroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lccsanandroid/widget/ImageView;->setClickable(Z)V

    .line 20
    sget p1, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;->addDownloadListener:I

    xor-int/lit8 v1, p1, 0x13

    and-int/lit8 v3, p1, 0x13

    or-int/2addr v1, v3

    shl-int/2addr v1, v2

    xor-int/lit8 v3, v3, -0x1

    or-int/lit8 p1, p1, 0x13

    and-int/2addr p1, v3

    neg-int p1, p1

    xor-int v3, v1, p1

    and-int/2addr p1, v1

    shl-int/2addr p1, v2

    add-int/2addr v3, p1

    rem-int/lit16 p1, v3, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;->IncentiveDownloadUtils:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    goto :goto_2

    :goto_1
    sget p1, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;->IncentiveDownloadUtils:I

    and-int/lit8 v1, p1, 0x6f

    xor-int/lit8 v3, v1, -0x1

    or-int/lit8 p1, p1, 0x6f

    and-int/2addr p1, v3

    shl-int/2addr v1, v2

    add-int/2addr p1, v1

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    :cond_3
    :goto_2
    sget p1, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;->addDownloadListener:I

    and-int/lit8 v1, p1, -0x6c

    xor-int/lit8 v3, p1, -0x1

    and-int/lit8 v3, v3, 0x6b

    or-int/2addr v1, v3

    and-int/lit8 p1, p1, 0x6b

    shl-int/2addr p1, v2

    or-int v3, v1, p1

    shl-int/2addr v3, v2

    xor-int/2addr p1, v1

    sub-int/2addr v3, p1

    rem-int/lit16 p1, v3, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;->IncentiveDownloadUtils:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    :cond_4
    packed-switch v2, :pswitch_data_1

    return-void

    :pswitch_1
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
