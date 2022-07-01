.class Lccsancom/applovin/impl/sdk/e/x$1;
.super Lccsancom/applovin/impl/sdk/e/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/e/x;->a(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/network/b$c;)V
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
.field final synthetic a:Lccsancom/applovin/impl/sdk/network/b$c;

.field final synthetic c:Lccsancom/applovin/impl/sdk/e/x;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/e/x;Lccsancom/applovin/impl/sdk/network/c;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/sdk/network/b$c;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/e/x$1;->c:Lccsancom/applovin/impl/sdk/e/x;

    iput-object p4, p0, Lccsancom/applovin/impl/sdk/e/x$1;->a:Lccsancom/applovin/impl/sdk/network/b$c;

    invoke-direct {p0, p2, p3}, Lccsancom/applovin/impl/sdk/e/t;-><init>(Lccsancom/applovin/impl/sdk/network/c;Lccsancom/applovin/impl/sdk/k;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lccsanorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/applovin/impl/sdk/e/x$1;->a(ILjava/lang/String;Lccsanorg/json/JSONObject;)V

    return-void
.end method

.method public a(ILjava/lang/String;Lccsanorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/x$1;->a:Lccsancom/applovin/impl/sdk/network/b$c;

    invoke-interface {v0, p1, p2, p3}, Lccsancom/applovin/impl/sdk/network/b$c;->a(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lccsanorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lccsancom/applovin/impl/sdk/e/x$1;->a(Lccsanorg/json/JSONObject;I)V

    return-void
.end method

.method public a(Lccsanorg/json/JSONObject;I)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/x$1;->a:Lccsancom/applovin/impl/sdk/network/b$c;

    invoke-interface {v0, p1, p2}, Lccsancom/applovin/impl/sdk/network/b$c;->a(Ljava/lang/Object;I)V

    return-void
.end method
