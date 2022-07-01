.class final Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$3;
.super Ljava/lang/Object;
.source "BannerExpandDialog.java"

# interfaces
.implements Lccsanandroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$3;->a:Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Lccsanandroid/content/DialogInterface;)V
    .locals 6

    .line 150
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$3;->a:Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->b(Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;)Lccsancom/mbridge/msdk/mbbanner/common/b/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 151
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$3;->a:Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->b(Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;)Lccsancom/mbridge/msdk/mbbanner/common/b/a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lccsancom/mbridge/msdk/mbbanner/common/b/a;->a(Z)V

    .line 153
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$3;->a:Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->c(Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;)Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const-string v2, ""

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$3;->a:Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->d(Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;)Lccsanandroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$3;->a:Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->c(Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;)Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/widget/FrameLayout;->removeView(Lccsanandroid/view/View;)V

    .line 155
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$3;->a:Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->c(Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;)Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->release()V

    .line 156
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$3;->a:Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->a(Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 157
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$3;->a:Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->a(Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;Lccsancom/mbridge/msdk/mbbanner/common/b/a;)Lccsancom/mbridge/msdk/mbbanner/common/b/a;

    .line 158
    return-void
.end method
