.class Lccsancom/applovin/impl/adview/q$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/q;->b(Lccsancom/applovin/sdk/AppLovinAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/sdk/AppLovinAd;

.field final synthetic b:Lccsancom/applovin/impl/adview/q;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/q;Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/q$5;->b:Lccsancom/applovin/impl/adview/q;

    iput-object p2, p0, Lccsancom/applovin/impl/adview/q$5;->a:Lccsancom/applovin/sdk/AppLovinAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/q$5;->b:Lccsancom/applovin/impl/adview/q;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/q;->a(Lccsancom/applovin/impl/adview/q;)Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/q$5;->b:Lccsancom/applovin/impl/adview/q;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/q;->a(Lccsancom/applovin/impl/adview/q;)Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/q$5;->a:Lccsancom/applovin/sdk/AppLovinAd;

    invoke-interface {v0, v1}, Lccsancom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lccsancom/applovin/sdk/AppLovinAd;)V

    :cond_0
    return-void
.end method
