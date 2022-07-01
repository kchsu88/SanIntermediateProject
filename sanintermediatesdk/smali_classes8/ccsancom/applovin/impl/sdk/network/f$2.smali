.class Lccsancom/applovin/impl/sdk/network/f$2;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/sdk/AppLovinPostbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/network/f;->a(Lccsancom/applovin/impl/sdk/network/g;Lccsancom/applovin/sdk/AppLovinPostbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/network/g;

.field final synthetic b:Lccsancom/applovin/sdk/AppLovinPostbackListener;

.field final synthetic c:Lccsancom/applovin/impl/sdk/network/f;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/network/f;Lccsancom/applovin/impl/sdk/network/g;Lccsancom/applovin/sdk/AppLovinPostbackListener;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/network/f$2;->c:Lccsancom/applovin/impl/sdk/network/f;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/network/f$2;->a:Lccsancom/applovin/impl/sdk/network/g;

    iput-object p3, p0, Lccsancom/applovin/impl/sdk/network/f$2;->b:Lccsancom/applovin/sdk/AppLovinPostbackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostbackFailure(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/network/f$2;->c:Lccsancom/applovin/impl/sdk/network/f;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/network/f;->b(Lccsancom/applovin/impl/sdk/network/f;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to submit postback with errorCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Will retry later...  Postback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/network/f$2;->a:Lccsancom/applovin/impl/sdk/network/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PersistentPostbackManager"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/network/f$2;->c:Lccsancom/applovin/impl/sdk/network/f;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/network/f$2;->a:Lccsancom/applovin/impl/sdk/network/g;

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/network/f;->c(Lccsancom/applovin/impl/sdk/network/f;Lccsancom/applovin/impl/sdk/network/g;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/network/f$2;->b:Lccsancom/applovin/sdk/AppLovinPostbackListener;

    invoke-static {v0, p1, p2}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinPostbackListener;Ljava/lang/String;I)V

    return-void
.end method

.method public onPostbackSuccess(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/network/f$2;->c:Lccsancom/applovin/impl/sdk/network/f;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/network/f$2;->a:Lccsancom/applovin/impl/sdk/network/g;

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/network/f;->b(Lccsancom/applovin/impl/sdk/network/f;Lccsancom/applovin/impl/sdk/network/g;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/network/f$2;->c:Lccsancom/applovin/impl/sdk/network/f;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/network/f;->b(Lccsancom/applovin/impl/sdk/network/f;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully submitted postback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/network/f$2;->a:Lccsancom/applovin/impl/sdk/network/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PersistentPostbackManager"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/network/f$2;->c:Lccsancom/applovin/impl/sdk/network/f;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/network/f;->c(Lccsancom/applovin/impl/sdk/network/f;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/network/f$2;->b:Lccsancom/applovin/sdk/AppLovinPostbackListener;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinPostbackListener;Ljava/lang/String;)V

    return-void
.end method
