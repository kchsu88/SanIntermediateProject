.class public Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;
.super Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;
.source "MBridgeAlertWebview.java"


# instance fields
.field private u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;-><init>(Lccsanandroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->u:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 4

    .line 36
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->r:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->r:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lccsancom/mbridge/msdk/videocommon/d/c;

    .line 38
    nop

    .line 1394
    sget-object v0, Lccsancom/mbridge/msdk/videocommon/d/c;->a:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->u:Ljava/lang/String;

    .line 39
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/g;->a()Lccsancom/mbridge/msdk/videocommon/download/g;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/videocommon/download/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 43
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method protected final b()Lccsanandroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 120
    new-instance v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 121
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 122
    return-object v0
.end method

.method public preLoadData(Lccsancom/mbridge/msdk/video/signal/factory/b;)V
    .locals 6

    .line 48
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->a()Ljava/lang/String;

    move-result-object v1

    .line 49
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$MBDownloadListener;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {v0, v2}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$MBDownloadListener;-><init>(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 51
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$MBDownloadListener;->setTitle(Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v2, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setDownloadListener(Lccsanandroid/webkit/DownloadListener;)V

    .line 53
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setCampaignId(Ljava/lang/String;)V

    .line 54
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->setCloseVisible(I)V

    .line 55
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setApiManagerJSFactory(Ljava/lang/Object;)V

    .line 56
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    new-instance v0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview$1;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview$1;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;)V

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;)V

    .line 90
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/h;->a()Lccsancom/mbridge/msdk/videocommon/download/h;

    move-result-object p1

    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/videocommon/download/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->setHtmlSource(Ljava/lang/String;)V

    .line 93
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->p:Z

    .line 94
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->o:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "MBridgeBaseView"

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load url:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_0
    const-string v0, "load html..."

    invoke-static {v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->o:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual/range {v0 .. v5}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setBackgroundColor(I)V

    .line 102
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->setBackgroundColor(I)V

    .line 103
    goto :goto_1

    .line 104
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v0, 0x65

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 106
    :goto_1
    return-void
.end method

.method public webviewshow()V
    .locals 5

    .line 110
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->k:Lccsanandroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->k:Lccsanandroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 113
    :cond_0
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->webviewshow()V

    .line 114
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->a:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->u:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->r:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/same/report/d;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    return-void
.end method
