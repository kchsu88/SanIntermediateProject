.class Lccsancom/applovin/impl/adview/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/b;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/b;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/b;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/b$2;->a:Lccsancom/applovin/impl/adview/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$2;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->b(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/m;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$2;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->c(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detaching expanded ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/applovin/impl/adview/b$2;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v2}, Lccsancom/applovin/impl/adview/b;->b(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/m;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/applovin/impl/adview/m;->a()Lccsancom/applovin/impl/sdk/a/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinAdView"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$2;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->b(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/m;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/impl/adview/b;Lccsancom/applovin/impl/adview/m;)Lccsancom/applovin/impl/adview/m;

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$2;->a:Lccsancom/applovin/impl/adview/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/applovin/impl/adview/b;->b(Lccsancom/applovin/impl/adview/b;Lccsancom/applovin/impl/adview/m;)Lccsancom/applovin/impl/adview/m;

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$2;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->d(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/sdk/AppLovinAdSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/sdk/AppLovinAdSize;)V

    :cond_0
    return-void
.end method
