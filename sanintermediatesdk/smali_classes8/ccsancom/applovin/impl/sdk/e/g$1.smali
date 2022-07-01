.class Lccsancom/applovin/impl/sdk/e/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/sdk/AppLovinPostbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/e/g;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/e/g;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/e/g;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/e/g$1;->a:Lccsancom/applovin/impl/sdk/e/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostbackFailure(Ljava/lang/String;I)V
    .locals 0

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/e/g$1;->a:Lccsancom/applovin/impl/sdk/e/g;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/e/g;->c(Lccsancom/applovin/impl/sdk/e/g;)V

    return-void
.end method

.method public onPostbackSuccess(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/e/g$1;->a:Lccsancom/applovin/impl/sdk/e/g;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/e/g;->a(Lccsancom/applovin/impl/sdk/e/g;)Lccsancom/applovin/sdk/AppLovinPostbackListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/e/g$1;->a:Lccsancom/applovin/impl/sdk/e/g;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/e/g;->a(Lccsancom/applovin/impl/sdk/e/g;)Lccsancom/applovin/sdk/AppLovinPostbackListener;

    move-result-object p1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/g$1;->a:Lccsancom/applovin/impl/sdk/e/g;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/e/g;->b(Lccsancom/applovin/impl/sdk/e/g;)Lccsancom/applovin/impl/sdk/network/h;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/network/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lccsancom/applovin/sdk/AppLovinPostbackListener;->onPostbackSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
