.class Lccsancom/applovin/impl/adview/p$18;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/sdk/AppLovinAdDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/p;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/p;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/p;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/p$18;->a:Lccsancom/applovin/impl/adview/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adDisplayed(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p$18;->a:Lccsancom/applovin/impl/adview/p;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/p;->D(Lccsancom/applovin/impl/adview/p;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p$18;->a:Lccsancom/applovin/impl/adview/p;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/adview/p;->b(Lccsancom/applovin/impl/adview/p;Lccsancom/applovin/sdk/AppLovinAd;)V

    :cond_0
    return-void
.end method

.method public adHidden(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p$18;->a:Lccsancom/applovin/impl/adview/p;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/adview/p;->a(Lccsancom/applovin/impl/adview/p;Lccsancom/applovin/sdk/AppLovinAd;)V

    return-void
.end method
