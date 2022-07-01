.class Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;->onImageLoadResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static removeDownloadListener:I


# instance fields
.field final synthetic this$1:Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1$1;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1$1;->IncentiveDownloadUtils:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1$1;->this$1:Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 2
    .end local p1    # "v":Lccsanandroid/view/View;
    sget p1, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1$1;->removeDownloadListener:I

    or-int/lit8 v0, p1, 0x62

    shl-int/lit8 v0, v0, 0x1

    xor-int/lit8 p1, p1, 0x62

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1$1;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 p1, 0x57

    goto :goto_0

    :cond_0
    const/16 p1, 0x53

    :goto_0
    const-string v0, "LandingFullScreenImageView refresh clicked "

    const-string v1, "Ad.LandingFullScreenImageView"

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1$1;->this$1:Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;

    iget-object p1, p1, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;->this$0:Lccsancom/san/landingpage/widget/LandingFullScreenImageView;

    invoke-static {p1}, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->access$600(Lccsancom/san/landingpage/widget/LandingFullScreenImageView;)Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->access$700(Lccsancom/san/landingpage/widget/LandingFullScreenImageView;Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)V

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1$1;->this$1:Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;

    iget-object p1, p1, Lccsancom/san/landingpage/widget/LandingFullScreenImageView$1;->this$0:Lccsancom/san/landingpage/widget/LandingFullScreenImageView;

    invoke-static {p1}, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->access$600(Lccsancom/san/landingpage/widget/LandingFullScreenImageView;)Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/san/landingpage/widget/LandingFullScreenImageView;->access$700(Lccsancom/san/landingpage/widget/LandingFullScreenImageView;Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_0
    .end packed-switch
.end method
