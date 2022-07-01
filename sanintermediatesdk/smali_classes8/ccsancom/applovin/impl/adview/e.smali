.class Lccsancom/applovin/impl/adview/e;
.super Lccsanandroid/webkit/WebViewClient;


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/k;

.field private final b:Lccsancom/applovin/impl/sdk/r;

.field private final c:Lccsancom/applovin/impl/adview/b;


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/adview/b;Lccsancom/applovin/impl/sdk/k;)V
    .locals 0

    invoke-direct {p0}, Lccsanandroid/webkit/WebViewClient;-><init>()V

    iput-object p2, p0, Lccsancom/applovin/impl/adview/e;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object p2

    iput-object p2, p0, Lccsancom/applovin/impl/adview/e;->b:Lccsancom/applovin/impl/sdk/r;

    iput-object p1, p0, Lccsancom/applovin/impl/adview/e;->c:Lccsancom/applovin/impl/adview/b;

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/adview/e;)Lccsancom/applovin/impl/adview/b;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/e;->c:Lccsancom/applovin/impl/adview/b;

    return-object p0
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/e;->c:Lccsancom/applovin/impl/adview/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/b;->l()V

    return-void
.end method

.method private a(Lccsanandroid/graphics/PointF;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/e;->c:Lccsancom/applovin/impl/adview/b;

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/adview/b;->a(Lccsanandroid/graphics/PointF;)V

    return-void
.end method

.method private a(Lccsanandroid/net/Uri;Lccsancom/applovin/impl/adview/d;)V
    .locals 5

    const-string v0, "n"

    invoke-virtual {p1, v0}, Lccsanandroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "AdWebView"

    if-eqz v1, :cond_3

    const-string v1, "load_type"

    invoke-virtual {p1, v1}, Lccsanandroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "external"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/adview/e;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading new page externally: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lccsancom/applovin/impl/adview/d;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {v0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/e;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1, p2, v0}, Lccsancom/applovin/impl/sdk/utils/Utils;->openUri(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;Lccsancom/applovin/impl/sdk/k;)Z

    iget-object p1, p0, Lccsancom/applovin/impl/adview/e;->c:Lccsancom/applovin/impl/adview/b;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/b;->g()Lccsancom/applovin/adview/AppLovinAdViewEventListener;

    move-result-object p1

    iget-object p2, p0, Lccsancom/applovin/impl/adview/e;->c:Lccsancom/applovin/impl/adview/b;

    invoke-virtual {p2}, Lccsancom/applovin/impl/adview/b;->p()Lccsancom/applovin/impl/sdk/a/g;

    move-result-object p2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/e;->c:Lccsancom/applovin/impl/adview/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/b;->r()Lccsancom/applovin/adview/AppLovinAdView;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lccsancom/applovin/impl/sdk/utils/i;->c(Lccsancom/applovin/adview/AppLovinAdViewEventListener;Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/adview/AppLovinAdView;)V

    goto/16 :goto_1

    :cond_0
    const-string v3, "internal"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lccsancom/applovin/impl/adview/e;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading new page in WebView: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lccsancom/applovin/impl/adview/d;->loadUrl(Ljava/lang/String;)V

    const-string v0, "bg_color"

    invoke-virtual {p1, v0}, Lccsanandroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lccsancom/applovin/impl/adview/d;->setBackgroundColor(I)V

    goto :goto_1

    :cond_1
    const-string p1, "in_app"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lccsancom/applovin/impl/adview/e;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading new page in slide-up webview: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/e;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->ad()Lccsancom/applovin/impl/sdk/a;

    move-result-object p1

    new-instance p2, Lccsancom/applovin/impl/adview/e$1;

    invoke-direct {p2, p0, v0}, Lccsancom/applovin/impl/adview/e$1;-><init>(Lccsancom/applovin/impl/adview/e;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/sdk/a;->a(Lccsancom/applovin/impl/sdk/utils/a;)V

    new-instance p1, Lccsanandroid/content/Intent;

    iget-object p2, p0, Lccsancom/applovin/impl/adview/e;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/k;->J()Lccsanandroid/content/Context;

    move-result-object p2

    const-class v0, Lccsancom/applovin/sdk/AppLovinWebViewActivity;

    invoke-direct {p1, p2, v0}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    iget-object p2, p0, Lccsancom/applovin/impl/adview/e;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/k;->x()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "sdk_key"

    invoke-virtual {p1, v0, p2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Lccsanandroid/content/Intent;->setFlags(I)Lccsanandroid/content/Intent;

    iget-object p2, p0, Lccsancom/applovin/impl/adview/e;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/k;->J()Lccsanandroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lccsancom/applovin/impl/adview/e;->b:Lccsancom/applovin/impl/sdk/r;

    const-string p2, "Could not find load type in original uri"

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lccsancom/applovin/impl/adview/e;->b:Lccsancom/applovin/impl/sdk/r;

    const-string p2, "Could not find url to load from query in original uri"

    :goto_0
    invoke-virtual {p1, v2, p2}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private a(Lccsancom/applovin/impl/a/a;Lccsancom/applovin/impl/adview/d;)V
    .locals 2

    invoke-virtual {p1}, Lccsancom/applovin/impl/a/a;->n()Lccsancom/applovin/impl/a/b;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lccsancom/applovin/impl/a/b;->c()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/e;->c:Lccsancom/applovin/impl/adview/b;

    invoke-virtual {v1}, Lccsancom/applovin/impl/adview/b;->q()Lccsancom/applovin/impl/sdk/k;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/applovin/impl/a/i;->a(Ljava/util/Set;Lccsancom/applovin/impl/sdk/k;)V

    invoke-virtual {p1}, Lccsancom/applovin/impl/a/b;->a()Lccsanandroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lccsancom/applovin/impl/adview/e;->a(Lccsancom/applovin/impl/adview/d;Lccsanandroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method private a(Lccsancom/applovin/impl/adview/d;Lccsanandroid/net/Uri;)V
    .locals 3

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/d;->getCurrentAd()Lccsancom/applovin/impl/sdk/a/g;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/e;->c:Lccsancom/applovin/impl/adview/b;

    invoke-virtual {v1}, Lccsancom/applovin/impl/adview/b;->r()Lccsancom/applovin/adview/AppLovinAdView;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/d;->getStatsManagerHelper()Lccsancom/applovin/impl/sdk/d/d;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/d/d;->b()V

    :cond_0
    iget-object v2, p0, Lccsancom/applovin/impl/adview/e;->c:Lccsancom/applovin/impl/adview/b;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/d;->getAndClearLastClickLocation()Lccsanandroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v2, v0, v1, p2, p1}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinAdView;Lccsanandroid/net/Uri;Lccsanandroid/graphics/PointF;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lccsancom/applovin/impl/adview/e;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to track click that is null or not an ApplovinAdView instance for clickedUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AdWebView"

    invoke-virtual {p1, v0, p2}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Z)Z
    .locals 8

    iget-object v0, p0, Lccsancom/applovin/impl/adview/e;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing click on ad URL \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdWebView"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_13

    instance-of v1, p1, Lccsancom/applovin/impl/adview/d;

    if-eqz v1, :cond_13

    invoke-static {p2}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v1

    check-cast p1, Lccsancom/applovin/impl/adview/d;

    invoke-virtual {v1}, Lccsanandroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lccsanandroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lccsanandroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lccsancom/applovin/impl/adview/e;->c:Lccsancom/applovin/impl/adview/b;

    invoke-virtual {v6}, Lccsancom/applovin/impl/adview/b;->p()Lccsancom/applovin/impl/sdk/a/g;

    move-result-object v6

    if-nez v6, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/adview/e;->b:Lccsancom/applovin/impl/sdk/r;

    const-string p2, "Unable to process click, ad not found!"

    invoke-virtual {p1, v2, p2}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const-string v7, "applovin"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "com.applovin.sdk"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string p3, "/adservice/close_ad"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/e;->a()V

    goto/16 :goto_2

    :cond_1
    const-string p3, "/adservice/expand_ad"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/d;->getAndClearLastClickLocation()Lccsanandroid/graphics/PointF;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/e;->a(Lccsanandroid/graphics/PointF;)V

    goto/16 :goto_2

    :cond_2
    const-string p3, "/adservice/contract_ad"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/e;->b()V

    goto/16 :goto_2

    :cond_3
    const-string p3, "/adservice/no_op"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    return v0

    :cond_4
    const-string p3, "/adservice/load_url"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-direct {p0, v1, p1}, Lccsancom/applovin/impl/adview/e;->a(Lccsanandroid/net/Uri;Lccsancom/applovin/impl/adview/d;)V

    goto/16 :goto_2

    :cond_5
    const-string p3, "/adservice/track_click_now"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    instance-of p2, v6, Lccsancom/applovin/impl/a/a;

    if-eqz p2, :cond_6

    check-cast v6, Lccsancom/applovin/impl/a/a;

    :goto_0
    invoke-direct {p0, v6, p1}, Lccsancom/applovin/impl/adview/e;->a(Lccsancom/applovin/impl/a/a;Lccsancom/applovin/impl/adview/d;)V

    goto/16 :goto_2

    :cond_6
    invoke-static {p3}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lccsancom/applovin/impl/adview/e;->a(Lccsancom/applovin/impl/adview/d;Lccsanandroid/net/Uri;)V

    goto/16 :goto_2

    :cond_7
    iget-object p1, p0, Lccsancom/applovin/impl/adview/e;->c:Lccsancom/applovin/impl/adview/b;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/b;->h()Lccsancom/applovin/impl/adview/g;

    move-result-object p1

    if-eqz p1, :cond_c

    const-string p1, "/video_began"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-wide/16 p2, 0x0

    if-eqz p1, :cond_8

    const-string p1, "duration"

    invoke-virtual {v1, p1}, Lccsanandroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lccsancom/applovin/impl/sdk/utils/Utils;->tryParseDouble(Ljava/lang/String;D)D

    move-result-wide p1

    iget-object p3, p0, Lccsancom/applovin/impl/adview/e;->c:Lccsancom/applovin/impl/adview/b;

    invoke-virtual {p3}, Lccsancom/applovin/impl/adview/b;->h()Lccsancom/applovin/impl/adview/g;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lccsancom/applovin/impl/adview/g;->a(D)V

    goto/16 :goto_2

    :cond_8
    const-string p1, "/video_completed"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lccsancom/applovin/impl/adview/e;->c:Lccsancom/applovin/impl/adview/b;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/b;->h()Lccsancom/applovin/impl/adview/g;

    move-result-object p1

    invoke-interface {p1}, Lccsancom/applovin/impl/adview/g;->a_()V

    goto/16 :goto_2

    :cond_9
    const-string p1, "/video_progress"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "percent_viewed"

    invoke-virtual {v1, p1}, Lccsanandroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lccsancom/applovin/impl/sdk/utils/Utils;->tryParseDouble(Ljava/lang/String;D)D

    move-result-wide p1

    iget-object p3, p0, Lccsancom/applovin/impl/adview/e;->c:Lccsancom/applovin/impl/adview/b;

    invoke-virtual {p3}, Lccsancom/applovin/impl/adview/b;->h()Lccsancom/applovin/impl/adview/g;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lccsancom/applovin/impl/adview/g;->b(D)V

    goto/16 :goto_2

    :cond_a
    const-string p1, "/video_waiting"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lccsancom/applovin/impl/adview/e;->c:Lccsancom/applovin/impl/adview/b;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/b;->h()Lccsancom/applovin/impl/adview/g;

    move-result-object p1

    invoke-interface {p1}, Lccsancom/applovin/impl/adview/g;->b_()V

    goto/16 :goto_2

    :cond_b
    const-string p1, "/video_resumed"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lccsancom/applovin/impl/adview/e;->c:Lccsancom/applovin/impl/adview/b;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/b;->h()Lccsancom/applovin/impl/adview/g;

    move-result-object p1

    invoke-interface {p1}, Lccsancom/applovin/impl/adview/g;->c()V

    goto :goto_2

    :cond_c
    iget-object p1, p0, Lccsancom/applovin/impl/adview/e;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown URL: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lccsancom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/e;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Path: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lccsancom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    if-eqz p3, :cond_12

    invoke-virtual {v6}, Lccsancom/applovin/impl/sdk/a/g;->aA()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v6}, Lccsancom/applovin/impl/sdk/a/g;->aB()Ljava/util/List;

    move-result-object p3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    :cond_e
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_10

    invoke-interface {p3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    goto :goto_1

    :cond_f
    iget-object p1, p0, Lccsancom/applovin/impl/adview/e;->b:Lccsancom/applovin/impl/sdk/r;

    const-string p2, "URL is not whitelisted - bypassing click"

    invoke-virtual {p1, v2, p2}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_10
    :goto_1
    instance-of p2, v6, Lccsancom/applovin/impl/a/a;

    if-eqz p2, :cond_11

    check-cast v6, Lccsancom/applovin/impl/a/a;

    invoke-virtual {v6}, Lccsancom/applovin/impl/a/a;->o()Z

    move-result p2

    if-eqz p2, :cond_11

    goto/16 :goto_0

    :cond_11
    invoke-direct {p0, p1, v1}, Lccsancom/applovin/impl/adview/e;->a(Lccsancom/applovin/impl/adview/d;Lccsanandroid/net/Uri;)V

    goto :goto_2

    :cond_12
    const/4 p1, 0x0

    return p1

    :cond_13
    :goto_2
    return v0
.end method

.method static synthetic b(Lccsancom/applovin/impl/adview/e;)Lccsancom/applovin/impl/sdk/k;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/e;->a:Lccsancom/applovin/impl/sdk/k;

    return-object p0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/e;->c:Lccsancom/applovin/impl/adview/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/b;->k()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lccsanandroid/webkit/WebViewClient;->onLoadResource(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/e;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loaded resource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AdWebView"

    invoke-virtual {p1, v0, p2}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lccsanandroid/webkit/WebViewClient;->onPageFinished(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p2, p0, Lccsancom/applovin/impl/adview/e;->c:Lccsancom/applovin/impl/adview/b;

    invoke-virtual {p2, p1}, Lccsancom/applovin/impl/adview/b;->a(Lccsanandroid/webkit/WebView;)V

    return-void
.end method

.method public onReceivedError(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroid/webkit/WebViewClient;->onReceivedError(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/e;->c:Lccsancom/applovin/impl/adview/b;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/b;->p()Lccsancom/applovin/impl/sdk/a/g;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received error with error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " with description \\\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\\\' for URL: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_0

    iget-object p3, p0, Lccsancom/applovin/impl/adview/e;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p3}, Lccsancom/applovin/impl/sdk/k;->aa()Lccsancom/applovin/impl/sdk/d/c;

    move-result-object p3

    invoke-virtual {p3, p1}, Lccsancom/applovin/impl/sdk/d/c;->a(Lccsancom/applovin/impl/sdk/AppLovinAdBase;)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object p3

    sget-object p4, Lccsancom/applovin/impl/sdk/d/b;->z:Lccsancom/applovin/impl/sdk/d/b;

    invoke-virtual {p3, p4, p2}, Lccsancom/applovin/impl/sdk/d/c$b;->a(Lccsancom/applovin/impl/sdk/d/b;Ljava/lang/String;)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object p3

    invoke-virtual {p3}, Lccsancom/applovin/impl/sdk/d/c$b;->a()V

    :cond_0
    iget-object p3, p0, Lccsancom/applovin/impl/adview/e;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for ad: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdWebView"

    invoke-virtual {p3, p2, p1}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebResourceRequest;Lccsanandroid/webkit/WebResourceError;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lccsanandroid/webkit/WebViewClient;->onReceivedError(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebResourceRequest;Lccsanandroid/webkit/WebResourceError;)V

    invoke-virtual {p3}, Lccsanandroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    invoke-virtual {p3}, Lccsanandroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2}, Lccsanandroid/webkit/WebResourceRequest;->getUrl()Lccsanandroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p3, p2}, Lccsancom/applovin/impl/adview/e;->onReceivedError(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpError(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebResourceRequest;Lccsanandroid/webkit/WebResourceResponse;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lccsanandroid/webkit/WebViewClient;->onReceivedHttpError(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebResourceRequest;Lccsanandroid/webkit/WebResourceResponse;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/e;->c:Lccsancom/applovin/impl/adview/b;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/b;->p()Lccsancom/applovin/impl/sdk/a/g;

    move-result-object p1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/e;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->aa()Lccsancom/applovin/impl/sdk/d/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/sdk/d/c;->a(Lccsancom/applovin/impl/sdk/AppLovinAdBase;)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/impl/sdk/d/b;->A:Lccsancom/applovin/impl/sdk/d/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/d/c$b;->a(Lccsancom/applovin/impl/sdk/d/b;)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/d/c$b;->a()V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/e;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received HTTP error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "for url: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lccsanandroid/webkit/WebResourceRequest;->getUrl()Lccsanandroid/net/Uri;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " and ad: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdWebView"

    invoke-virtual {v0, p2, p1}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/SslErrorHandler;Lccsanandroid/net/http/SslError;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lccsanandroid/webkit/WebViewClient;->onReceivedSslError(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/SslErrorHandler;Lccsanandroid/net/http/SslError;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/e;->c:Lccsancom/applovin/impl/adview/b;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/b;->p()Lccsancom/applovin/impl/sdk/a/g;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received SSL error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lccsancom/applovin/impl/adview/e;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p3}, Lccsancom/applovin/impl/sdk/k;->aa()Lccsancom/applovin/impl/sdk/d/c;

    move-result-object p3

    invoke-virtual {p3, p1}, Lccsancom/applovin/impl/sdk/d/c;->a(Lccsancom/applovin/impl/sdk/AppLovinAdBase;)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object p3

    sget-object v0, Lccsancom/applovin/impl/sdk/d/b;->C:Lccsancom/applovin/impl/sdk/d/b;

    invoke-virtual {p3, v0, p2}, Lccsancom/applovin/impl/sdk/d/c$b;->a(Lccsancom/applovin/impl/sdk/d/b;Ljava/lang/String;)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object p3

    invoke-virtual {p3}, Lccsancom/applovin/impl/sdk/d/c$b;->a()V

    iget-object p3, p0, Lccsancom/applovin/impl/adview/e;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for ad: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdWebView"

    invoke-virtual {p3, p2, p1}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRenderProcessGone(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/RenderProcessGoneDetail;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Render process gone for ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/e;->c:Lccsancom/applovin/impl/adview/b;

    invoke-virtual {v1}, Lccsancom/applovin/impl/adview/b;->p()Lccsancom/applovin/impl/sdk/a/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Process did crash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsanandroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdWebView"

    invoke-static {v1, v0}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/e;->c:Lccsancom/applovin/impl/adview/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/b;->p()Lccsancom/applovin/impl/sdk/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/e;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->aa()Lccsancom/applovin/impl/sdk/d/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsancom/applovin/impl/sdk/d/c;->a(Lccsancom/applovin/impl/sdk/AppLovinAdBase;)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object v1

    sget-object v2, Lccsancom/applovin/impl/sdk/d/b;->B:Lccsancom/applovin/impl/sdk/d/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/d/c$b;->a(Lccsancom/applovin/impl/sdk/d/b;)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/d/c$b;->a()V

    :cond_0
    iget-object v1, p0, Lccsancom/applovin/impl/adview/e;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->eE:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lccsanandroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lccsancom/applovin/impl/adview/e;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->eH:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p2, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->getAdIdNumber()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "null"

    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Render process crashed. This is likely caused by a crash in an AppLovin ad with ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    if-eqz p1, :cond_3

    iget-object p2, p0, Lccsancom/applovin/impl/adview/e;->c:Lccsancom/applovin/impl/adview/b;

    invoke-virtual {p2}, Lccsancom/applovin/impl/adview/b;->s()Lccsancom/applovin/impl/adview/d;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lccsancom/applovin/impl/adview/e;->c:Lccsancom/applovin/impl/adview/b;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/b;->f()V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/e;->c:Lccsancom/applovin/impl/adview/b;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/b;->b()Lccsancom/applovin/sdk/AppLovinAdSize;

    move-result-object p1

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/Utils;->isBML(Lccsancom/applovin/sdk/AppLovinAdSize;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lccsancom/applovin/impl/adview/e;->c:Lccsancom/applovin/impl/adview/b;

    invoke-virtual {p2, p1}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/sdk/AppLovinAdSize;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/e;->c:Lccsancom/applovin/impl/adview/b;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/b;->e()V

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    invoke-super {p0, p1, p2}, Lccsanandroid/webkit/WebViewClient;->onRenderProcessGone(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/RenderProcessGoneDetail;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebResourceRequest;)Z
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/e;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->bz:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lccsanandroid/webkit/WebResourceRequest;->hasGesture()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-interface {p2}, Lccsanandroid/webkit/WebResourceRequest;->getUrl()Lccsanandroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0}, Lccsancom/applovin/impl/adview/e;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_1
    iget-object p1, p0, Lccsancom/applovin/impl/adview/e;->b:Lccsancom/applovin/impl/sdk/r;

    const-string p2, "AdWebView"

    const-string v0, "No url found for request"

    invoke-virtual {p1, p2, v0}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public shouldOverrideUrlLoading(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lccsancom/applovin/impl/adview/e;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
