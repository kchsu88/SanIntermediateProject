.class final Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview$1;
.super Lccsancom/mbridge/msdk/mbsignalcommon/b/b;
.source "MBridgeAlertWebview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->preLoadData(Lccsancom/mbridge/msdk/video/signal/factory/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview$1;->a:Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lccsanandroid/webkit/WebView;I)V
    .locals 6

    .line 77
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/b/b;->a(Lccsanandroid/webkit/WebView;I)V

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "readyState  :  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBridgeAlertWebview"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview$1;->a:Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;

    iget-boolean p1, p1, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->q:Z

    if-nez p1, :cond_2

    .line 80
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview$1;->a:Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->p:Z

    .line 81
    nop

    .line 82
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview$1;->a:Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;

    iget-boolean p1, p1, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->p:Z

    if-eqz p1, :cond_1

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "readyState state is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    goto :goto_1

    .line 82
    :cond_1
    const-string p1, ""

    move-object v5, p1

    .line 85
    :goto_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview$1;->a:Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;

    iget-object v0, p1, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->a:Lccsanandroid/content/Context;

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview$1;->a:Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;

    iget-object v1, p1, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview$1;->a:Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->a(Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview$1;->a:Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;

    iget-object v3, p1, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->r:Ljava/lang/String;

    move v4, p2

    invoke-static/range {v0 .. v5}, Lccsancom/mbridge/msdk/foundation/same/report/d;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 87
    :cond_2
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/mbsignalcommon/b/b;->a(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string p1, "MBridgeAlertWebview"

    const-string p2, "onReceivedError"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview$1;->a:Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;

    iget-boolean p1, p1, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->q:Z

    if-nez p1, :cond_0

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onReceivedError,url:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MBridgeBaseView"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview$1;->a:Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;

    iget-object v0, p1, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->a:Lccsanandroid/content/Context;

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview$1;->a:Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;

    iget-object v1, p1, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview$1;->a:Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->a(Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview$1;->a:Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;

    iget-object v3, p1, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->r:Ljava/lang/String;

    const/4 v4, 0x2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lccsancom/mbridge/msdk/foundation/same/report/d;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 71
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview$1;->a:Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->q:Z

    .line 73
    :cond_0
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 59
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/b/b;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finish+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MBridgeAlertWebview"

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    const-string v0, "onSignalCommunication"

    const-string v1, ""

    invoke-virtual {p2, p1, v0, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method
