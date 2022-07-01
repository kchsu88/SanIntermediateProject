.class Lccsancom/applovin/impl/adview/activity/b/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/sdk/AppLovinAdDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/activity/b/a;-><init>(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinFullscreenActivity;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/sdk/AppLovinAdClickListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/activity/b/a;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/activity/b/a;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a$1;->a:Lccsancom/applovin/impl/adview/activity/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adDisplayed(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 2

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a$1;->a:Lccsancom/applovin/impl/adview/activity/b/a;

    iget-object p1, p1, Lccsancom/applovin/impl/adview/activity/b/a;->c:Lccsancom/applovin/impl/sdk/r;

    const-string v0, "InterActivityV2"

    const-string v1, "Web content rendered"

    invoke-virtual {p1, v0, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public adHidden(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 2

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a$1;->a:Lccsancom/applovin/impl/adview/activity/b/a;

    iget-object p1, p1, Lccsancom/applovin/impl/adview/activity/b/a;->c:Lccsancom/applovin/impl/sdk/r;

    const-string v0, "InterActivityV2"

    const-string v1, "Closing from WebView"

    invoke-virtual {p1, v0, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a$1;->a:Lccsancom/applovin/impl/adview/activity/b/a;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/activity/b/a;->g()V

    return-void
.end method
