.class final Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView$4;
.super Ljava/lang/Object;
.source "MBridgeBTWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->onDestory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView$4;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 405
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView$4;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->c(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;)Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView$4;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->c(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;)Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->clearWebView()V

    .line 407
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView$4;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->c(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;)Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->release()V

    .line 409
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView$4;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->a(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 410
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView$4;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->b(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 411
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView$4;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->c(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 412
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView$4;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->b(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;)Lccsanandroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView$4;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->a(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;Lccsanandroid/webkit/WebView;)Lccsanandroid/webkit/WebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    :cond_1
    goto :goto_0

    .line 415
    :catchall_0
    move-exception v0

    .line 416
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTBaseView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :goto_0
    return-void
.end method
