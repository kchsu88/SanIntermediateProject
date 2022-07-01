.class public final Lccsancom/mbridge/msdk/mbbanner/view/a;
.super Lccsancom/mbridge/msdk/mbsignalcommon/base/b;
.source "BannerWebViewClient.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field c:Lccsancom/mbridge/msdk/mbbanner/common/b/a;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lccsancom/mbridge/msdk/mbbanner/common/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;",
            "Lccsancom/mbridge/msdk/mbbanner/common/b/a;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/base/b;-><init>()V

    .line 20
    const-string v0, "BannerWebViewClient"

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/view/a;->d:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/view/a;->a:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/view/a;->b:Ljava/util/List;

    .line 29
    iput-object p3, p0, Lccsancom/mbridge/msdk/mbbanner/view/a;->c:Lccsancom/mbridge/msdk/mbbanner/common/b/a;

    .line 30
    return-void
.end method


# virtual methods
.method public final onPageStarted(Lccsanandroid/webkit/WebView;Ljava/lang/String;Lccsanandroid/graphics/Bitmap;)V
    .locals 1

    .line 34
    invoke-super {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/mbsignalcommon/base/b;->onPageStarted(Lccsanandroid/webkit/WebView;Ljava/lang/String;Lccsanandroid/graphics/Bitmap;)V

    .line 37
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "javascript:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lccsancom/mbridge/msdk/b/b/a;->a()Lccsancom/mbridge/msdk/b/b/a;

    move-result-object p3

    invoke-virtual {p3}, Lccsancom/mbridge/msdk/b/b/a;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    sget p3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-gt p3, v0, :cond_0

    .line 41
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lccsancom/mbridge/msdk/mbbanner/view/a$1;

    invoke-direct {p3, p0}, Lccsancom/mbridge/msdk/mbbanner/view/a$1;-><init>(Lccsancom/mbridge/msdk/mbbanner/view/a;)V

    invoke-virtual {p1, p2, p3}, Lccsanandroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Lccsanandroid/webkit/ValueCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :goto_0
    goto :goto_1

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    const-string p2, "BannerWebViewClient"

    const-string p3, "onPageStarted"

    invoke-static {p2, p3, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    :goto_1
    return-void
.end method

.method public final shouldOverrideUrlLoading(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .line 57
    const/4 p1, 0x0

    .line 58
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/view/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 59
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    new-instance v3, Lccsanandroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    .line 60
    invoke-static {p2}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p2

    invoke-direct {v3, v4, p2}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;Lccsanandroid/net/Uri;)V

    invoke-virtual {v1, v3}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    move-object p2, p1

    goto :goto_0

    .line 62
    :cond_0
    nop

    .line 65
    :goto_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/view/a;->c:Lccsancom/mbridge/msdk/mbbanner/common/b/a;

    if-eqz p1, :cond_1

    .line 66
    invoke-interface {p1, v0, p2}, Lccsancom/mbridge/msdk/mbbanner/common/b/a;->a(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    return v2

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    const-string p2, "BannerWebViewClient"

    const-string v1, "shouldOverrideUrlLoading"

    invoke-static {p2, v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    return v0
.end method
