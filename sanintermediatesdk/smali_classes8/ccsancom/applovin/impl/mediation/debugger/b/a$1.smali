.class Lccsancom/applovin/impl/mediation/debugger/b/a$1;
.super Lccsancom/applovin/impl/sdk/e/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/debugger/b/a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/applovin/impl/sdk/e/t<",
        "Lccsanorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/debugger/b/a;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/debugger/b/a;Lccsancom/applovin/impl/sdk/network/c;Lccsancom/applovin/impl/sdk/k;Z)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/b/a$1;->a:Lccsancom/applovin/impl/mediation/debugger/b/a;

    invoke-direct {p0, p2, p3, p4}, Lccsancom/applovin/impl/sdk/e/t;-><init>(Lccsancom/applovin/impl/sdk/network/c;Lccsancom/applovin/impl/sdk/k;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lccsanorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/applovin/impl/mediation/debugger/b/a$1;->a(ILjava/lang/String;Lccsanorg/json/JSONObject;)V

    return-void
.end method

.method public a(ILjava/lang/String;Lccsanorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/b/a$1;->a:Lccsancom/applovin/impl/mediation/debugger/b/a;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/debugger/b/a;->a(Lccsancom/applovin/impl/mediation/debugger/b/a;)Lccsancom/applovin/impl/sdk/network/b$c;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lccsancom/applovin/impl/sdk/network/b$c;->a(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lccsanorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lccsancom/applovin/impl/mediation/debugger/b/a$1;->a(Lccsanorg/json/JSONObject;I)V

    return-void
.end method

.method public a(Lccsanorg/json/JSONObject;I)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/b/a$1;->a:Lccsancom/applovin/impl/mediation/debugger/b/a;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/debugger/b/a;->a(Lccsancom/applovin/impl/mediation/debugger/b/a;)Lccsancom/applovin/impl/sdk/network/b$c;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lccsancom/applovin/impl/sdk/network/b$c;->a(Ljava/lang/Object;I)V

    return-void
.end method
