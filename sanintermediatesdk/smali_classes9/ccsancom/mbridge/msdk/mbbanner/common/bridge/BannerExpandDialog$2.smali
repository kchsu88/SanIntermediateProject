.class final Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$2;
.super Lccsancom/mbridge/msdk/mbsignalcommon/b/b;
.source "BannerExpandDialog.java"


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

    .line 123
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$2;->a:Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 127
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/b/b;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 129
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "javascript:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lccsancom/mbridge/msdk/b/b/a;->a()Lccsancom/mbridge/msdk/b/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    .line 133
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$2$1;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$2$1;-><init>(Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$2;)V

    invoke-virtual {p1, p2, v0}, Lccsanandroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Lccsanandroid/webkit/ValueCallback;)V

    .line 141
    :goto_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$2;->a:Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->a(Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;)V

    .line 142
    return-void
.end method
