.class public Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView;
.super Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;
.source "MBridgeLandingPageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;-><init>(Lccsanandroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 2

    .line 33
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-999"

    invoke-static {v0, v1, v1}, Lccsancom/mbridge/msdk/click/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 36
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Lccsanandroid/content/Context;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->init(Lccsanandroid/content/Context;)V

    .line 29
    return-void
.end method

.method public preLoadData(Lccsancom/mbridge/msdk/video/signal/factory/b;)V
    .locals 3

    .line 41
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView;->f:Z

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    new-instance v1, Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView$a;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView$1;)V

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setFilter(Lccsancom/mbridge/msdk/mbsignalcommon/base/a;)V

    .line 44
    :cond_0
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->preLoadData(Lccsancom/mbridge/msdk/video/signal/factory/b;)V

    .line 45
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView;->setVisibility(I)V

    .line 46
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView;->setCloseVisible(I)V

    .line 47
    return-void
.end method

.method public webviewshow()V
    .locals 4

    .line 52
    const-string v0, "webviewshow"

    :try_start_0
    const-string v1, "MBridgeBaseView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    :goto_0
    return-void
.end method
