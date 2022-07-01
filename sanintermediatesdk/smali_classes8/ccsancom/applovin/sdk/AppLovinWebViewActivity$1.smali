.class Lccsancom/applovin/sdk/AppLovinWebViewActivity$1;
.super Lccsanandroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/sdk/AppLovinWebViewActivity;->onCreate(Lccsanandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/k;

.field final synthetic b:Lccsancom/applovin/sdk/AppLovinWebViewActivity;


# direct methods
.method constructor <init>(Lccsancom/applovin/sdk/AppLovinWebViewActivity;Lccsancom/applovin/impl/sdk/k;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/sdk/AppLovinWebViewActivity$1;->b:Lccsancom/applovin/sdk/AppLovinWebViewActivity;

    iput-object p2, p0, Lccsancom/applovin/sdk/AppLovinWebViewActivity$1;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {p0}, Lccsanandroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    invoke-static {p2}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lccsanandroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lccsanandroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lccsancom/applovin/sdk/AppLovinWebViewActivity$1;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v4}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handling url load: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AppLovinWebViewActivity"

    invoke-virtual {v4, v6, v5}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "applovin"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "com.applovin.sdk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lccsancom/applovin/sdk/AppLovinWebViewActivity$1;->b:Lccsancom/applovin/sdk/AppLovinWebViewActivity;

    invoke-static {v1}, Lccsancom/applovin/sdk/AppLovinWebViewActivity;->a(Lccsancom/applovin/sdk/AppLovinWebViewActivity;)Lccsancom/applovin/sdk/AppLovinWebViewActivity$EventListener;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo p1, "webview_event"

    invoke-virtual {v3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lccsanandroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    check-cast p1, Ljava/lang/String;

    :goto_0
    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v0, p1}, Lccsanandroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lccsancom/applovin/sdk/AppLovinWebViewActivity$1;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsed WebView event parameter name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and value: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v6, p1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/sdk/AppLovinWebViewActivity$1;->b:Lccsancom/applovin/sdk/AppLovinWebViewActivity;

    invoke-static {p1}, Lccsancom/applovin/sdk/AppLovinWebViewActivity;->a(Lccsancom/applovin/sdk/AppLovinWebViewActivity;)Lccsancom/applovin/sdk/AppLovinWebViewActivity$EventListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lccsancom/applovin/sdk/AppLovinWebViewActivity$EventListener;->onReceivedEvent(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lccsancom/applovin/sdk/AppLovinWebViewActivity$1;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object p1

    const-string p2, "Failed to parse WebView event parameter"

    invoke-virtual {p1, v6, p2}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_3
    invoke-super {p0, p1, p2}, Lccsanandroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
