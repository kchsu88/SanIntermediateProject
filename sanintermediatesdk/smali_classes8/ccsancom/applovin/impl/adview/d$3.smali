.class final Lccsancom/applovin/impl/adview/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/d;->a(Lccsancom/applovin/impl/sdk/network/h;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/sdk/AppLovinPostbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/network/h;

.field final synthetic b:Lccsancom/applovin/sdk/AppLovinPostbackListener;

.field final synthetic c:Lccsancom/applovin/impl/sdk/k;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/network/h;Lccsancom/applovin/sdk/AppLovinPostbackListener;Lccsancom/applovin/impl/sdk/k;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/d$3;->a:Lccsancom/applovin/impl/sdk/network/h;

    iput-object p2, p0, Lccsancom/applovin/impl/adview/d$3;->b:Lccsancom/applovin/sdk/AppLovinPostbackListener;

    iput-object p3, p0, Lccsancom/applovin/impl/adview/d$3;->c:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lccsancom/applovin/impl/adview/d$3;->a:Lccsancom/applovin/impl/sdk/network/h;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/network/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lccsancom/applovin/impl/adview/d;->a()V

    invoke-static {}, Lccsancom/applovin/impl/adview/d;->b()Lccsanandroid/webkit/WebView;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/d$3;->b:Lccsancom/applovin/sdk/AppLovinPostbackListener;

    const/4 v2, -0x1

    invoke-interface {v1, v0, v2}, Lccsancom/applovin/sdk/AppLovinPostbackListener;->onPostbackFailure(Ljava/lang/String;I)V

    return-void

    :cond_0
    iget-object v1, p0, Lccsancom/applovin/impl/adview/d$3;->a:Lccsancom/applovin/impl/sdk/network/h;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/network/h;->c()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lccsancom/applovin/impl/adview/d$3;->a:Lccsancom/applovin/impl/sdk/network/h;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/network/h;->c()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/adview/d$3;->c:Lccsancom/applovin/impl/sdk/k;

    sget-object v3, Lccsancom/applovin/impl/sdk/c/b;->di:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->appendQueryParameters(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "al_firePostback(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/f;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lccsancom/applovin/impl/adview/d;->b()Lccsanandroid/webkit/WebView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lccsanandroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Lccsanandroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lccsancom/applovin/impl/adview/d;->b()Lccsanandroid/webkit/WebView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lccsancom/applovin/impl/adview/d$3;->b:Lccsancom/applovin/sdk/AppLovinPostbackListener;

    invoke-interface {v1, v0}, Lccsancom/applovin/sdk/AppLovinPostbackListener;->onPostbackSuccess(Ljava/lang/String;)V

    return-void
.end method
