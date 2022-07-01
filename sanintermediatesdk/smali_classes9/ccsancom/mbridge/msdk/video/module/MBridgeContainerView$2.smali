.class final Lccsancom/mbridge/msdk/video/module/MBridgeContainerView$2;
.super Lccsancom/mbridge/msdk/video/module/a/a/i;
.source "MBridgeContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;Lccsancom/mbridge/msdk/video/module/a/a;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView$2;->a:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/video/module/a/a/i;-><init>(Lccsancom/mbridge/msdk/video/module/a/a;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 1

    .line 662
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/module/a/a/i;->a(ILjava/lang/Object;)V

    .line 663
    const/16 p2, 0x64

    if-ne p1, p2, :cond_1

    .line 664
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView$2;->a:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->webviewshow()V

    .line 665
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView$2;->a:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 666
    new-instance p1, Lccsancom/mbridge/msdk/foundation/entity/m;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>()V

    .line 667
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView$2;->a:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object p2, p2, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 668
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView$2;->a:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object p2, p2, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 669
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView$2;->a:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object p2, p2, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 670
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView$2;->a:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object p2, p2, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lccsancom/mbridge/msdk/foundation/entity/m;->a:I

    goto :goto_0

    :cond_0
    sget p2, Lccsancom/mbridge/msdk/foundation/entity/m;->b:I

    :goto_0
    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/entity/m;->a(I)V

    .line 671
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView$2;->a:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object p2, p2, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->a:Lccsanandroid/content/Context;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView$2;->a:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->a(Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lccsancom/mbridge/msdk/foundation/same/report/b;->a(Lccsancom/mbridge/msdk/foundation/entity/m;Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 673
    :cond_1
    return-void
.end method
