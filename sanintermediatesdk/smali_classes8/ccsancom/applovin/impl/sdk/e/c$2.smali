.class Lccsancom/applovin/impl/sdk/e/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/e/c;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/e/c;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/e/c;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/e/c$2;->a:Lccsancom/applovin/impl/sdk/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/c$2;->a:Lccsancom/applovin/impl/sdk/e/c;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/e/c;->a(Lccsancom/applovin/impl/sdk/e/c;)Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/c$2;->a:Lccsancom/applovin/impl/sdk/e/c;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/e/c;->a(Lccsancom/applovin/impl/sdk/e/c;)Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/c$2;->a:Lccsancom/applovin/impl/sdk/e/c;

    iget-object v1, v1, Lccsancom/applovin/impl/sdk/e/c;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-interface {v0, v1}, Lccsancom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lccsancom/applovin/sdk/AppLovinAd;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/c$2;->a:Lccsancom/applovin/impl/sdk/e/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/e/c;->a(Lccsancom/applovin/impl/sdk/e/c;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    :cond_0
    return-void
.end method
