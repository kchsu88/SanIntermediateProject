.class Lccsancom/applovin/impl/adview/q$1;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/q;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/q;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/q;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/q$1;->a:Lccsancom/applovin/impl/adview/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/q$1;->a:Lccsancom/applovin/impl/adview/q;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/adview/q;->a(Lccsancom/applovin/impl/adview/q;Lccsancom/applovin/sdk/AppLovinAd;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/q$1;->a:Lccsancom/applovin/impl/adview/q;

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/adview/q;->showAndRender(Lccsancom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/q$1;->a:Lccsancom/applovin/impl/adview/q;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/adview/q;->a(Lccsancom/applovin/impl/adview/q;I)V

    return-void
.end method
