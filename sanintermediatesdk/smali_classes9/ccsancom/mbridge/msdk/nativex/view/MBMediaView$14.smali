.class final Lccsancom/mbridge/msdk/nativex/view/MBMediaView$14;
.super Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$a;
.source "MBMediaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/nativex/view/MBMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V
    .locals 0

    .line 1468
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$14;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$a;-><init>(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    .line 1471
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$14;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->q(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNvT2()I

    move-result v0

    .line 1472
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$14;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->c(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_8

    .line 1473
    :cond_0
    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$14;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v3}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->r(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    move-result-object v3

    .line 1474
    if-eqz v3, :cond_7

    .line 1475
    iget-object v4, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$14;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v4}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->s(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsanandroid/view/View;

    move-result-object v4

    .line 1476
    if-nez v4, :cond_1

    .line 1477
    invoke-super {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$a;->a()V

    .line 1478
    return-void

    .line 1480
    :cond_1
    if-ne v0, v2, :cond_4

    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$14;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v2}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->t(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1481
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$14;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$14;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->u(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;->a(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;)V

    .line 1482
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$14;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$14;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->q(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$14;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v2}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->q(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v2

    .line 2056
    if-eqz v1, :cond_3

    :try_start_0
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/entity/i;->l()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2057
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/entity/i;->l()[Ljava/lang/String;

    move-result-object v10

    .line 2058
    array-length v11, v10

    const/4 v4, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_3

    aget-object v7, v10, v12

    .line 2059
    invoke-static {v7}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2060
    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-static/range {v4 .. v9}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2058
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2064
    :catch_0
    move-exception v0

    .line 2065
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2066
    :cond_3
    nop

    .line 1482
    :goto_1
    goto :goto_2

    .line 1483
    :cond_4
    if-ne v0, v1, :cond_6

    .line 1484
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$14;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$14;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->u(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;->a(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;)V

    .line 1485
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$14;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->q(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v0

    .line 1486
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1487
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$14;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v4

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$14;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->q(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v5

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$14;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->v(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$14;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getAddNVT2ToNoticeURL()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1488
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$14;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->w(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->loadUrl(Ljava/lang/String;)V

    .line 1490
    :cond_5
    nop

    .line 1494
    :goto_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$14;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->q(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$14;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->v(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->webViewShow(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    .line 1495
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$14;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->x(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->orientation(Z)V

    .line 1498
    goto :goto_3

    .line 1491
    :cond_6
    invoke-super {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$a;->a()V

    .line 1492
    return-void

    .line 1499
    :cond_7
    invoke-super {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$a;->a()V

    .line 1501
    :goto_3
    goto :goto_4

    .line 1502
    :cond_8
    invoke-super {p0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$a;->a()V

    .line 1505
    :goto_4
    return-void
.end method
