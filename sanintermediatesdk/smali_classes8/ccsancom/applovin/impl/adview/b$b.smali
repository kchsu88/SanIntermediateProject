.class Lccsancom/applovin/impl/adview/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/adview/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/b;


# direct methods
.method private constructor <init>(Lccsancom/applovin/impl/adview/b;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/b$b;->a:Lccsancom/applovin/impl/adview/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/applovin/impl/adview/b;Lccsancom/applovin/impl/adview/b$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/b$b;-><init>(Lccsancom/applovin/impl/adview/b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$b;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->e(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/sdk/a/g;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$b;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/d;

    move-result-object v0

    const-string v1, "AppLovinAdView"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$b;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->q(Lccsancom/applovin/impl/adview/b;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$b;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->c(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rendering advertisement ad for #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/applovin/impl/adview/b$b;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v3}, Lccsancom/applovin/impl/adview/b;->e(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/sdk/a/g;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/applovin/impl/sdk/a/g;->getAdIdNumber()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$b;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/d;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/b$b;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v1}, Lccsancom/applovin/impl/adview/b;->e(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/sdk/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/g;->getSize()Lccsancom/applovin/sdk/AppLovinAdSize;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/applovin/impl/adview/b;->a(Lccsanandroid/view/View;Lccsancom/applovin/sdk/AppLovinAdSize;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$b;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/d;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/b$b;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v1}, Lccsancom/applovin/impl/adview/b;->e(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/sdk/a/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/d;->a(Lccsancom/applovin/impl/sdk/a/g;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$b;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->e(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/sdk/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->getSize()Lccsancom/applovin/sdk/AppLovinAdSize;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lccsancom/applovin/sdk/AppLovinAdSize;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$b;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->r(Lccsancom/applovin/impl/adview/b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$b;->a:Lccsancom/applovin/impl/adview/b;

    new-instance v1, Lccsancom/applovin/impl/sdk/d/d;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->e(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/sdk/a/g;

    move-result-object v2

    iget-object v3, p0, Lccsancom/applovin/impl/adview/b$b;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v3}, Lccsancom/applovin/impl/adview/b;->g(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lccsancom/applovin/impl/sdk/d/d;-><init>(Lccsancom/applovin/impl/sdk/AppLovinAdBase;Lccsancom/applovin/impl/sdk/k;)V

    invoke-static {v0, v1}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/impl/adview/b;Lccsancom/applovin/impl/sdk/d/d;)Lccsancom/applovin/impl/sdk/d/d;

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$b;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->j(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/sdk/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/d/d;->a()V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$b;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/d;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/b$b;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v1}, Lccsancom/applovin/impl/adview/b;->j(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/sdk/d/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/d;->setStatsManagerHelper(Lccsancom/applovin/impl/sdk/d/d;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$b;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->e(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/sdk/a/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/a/g;->setHasShown(Z)V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$b;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/d;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/d;->getStatsManagerHelper()Lccsancom/applovin/impl/sdk/d/d;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$b;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->e(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/sdk/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x1

    :goto_0
    iget-object v2, p0, Lccsancom/applovin/impl/adview/b$b;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v2}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/d;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/applovin/impl/adview/d;->getStatsManagerHelper()Lccsancom/applovin/impl/sdk/d/d;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lccsancom/applovin/impl/sdk/d/d;->a(J)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to render advertisement for ad #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/applovin/impl/adview/b$b;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v2}, Lccsancom/applovin/impl/adview/b;->e(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/sdk/a/g;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/a/g;->getAdIdNumber()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ". Please make sure you are not calling AppLovinAdView.destroy() prematurely."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$b;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->i(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/adview/AppLovinAdViewEventListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/b$b;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v1}, Lccsancom/applovin/impl/adview/b;->e(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/sdk/a/g;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lccsancom/applovin/adview/AppLovinAdViewDisplayErrorCode;->WEBVIEW_NOT_FOUND:Lccsancom/applovin/adview/AppLovinAdViewDisplayErrorCode;

    invoke-static {v0, v1, v2, v3}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/adview/AppLovinAdViewEventListener;Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/adview/AppLovinAdView;Lccsancom/applovin/adview/AppLovinAdViewDisplayErrorCode;)V

    :cond_3
    :goto_1
    return-void
.end method
