.class Lccsancom/applovin/impl/sdk/network/a$1;
.super Lccsancom/applovin/impl/sdk/e/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/network/a;->run()V
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
.field final synthetic a:Lccsancom/applovin/impl/sdk/network/a;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/network/a;Lccsancom/applovin/impl/sdk/network/c;Lccsancom/applovin/impl/sdk/k;Z)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/network/a$1;->a:Lccsancom/applovin/impl/sdk/network/a;

    invoke-direct {p0, p2, p3, p4}, Lccsancom/applovin/impl/sdk/e/t;-><init>(Lccsancom/applovin/impl/sdk/network/c;Lccsancom/applovin/impl/sdk/k;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lccsanorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/applovin/impl/sdk/network/a$1;->a(ILjava/lang/String;Lccsanorg/json/JSONObject;)V

    return-void
.end method

.method public a(ILjava/lang/String;Lccsanorg/json/JSONObject;)V
    .locals 8

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/network/a$1;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->af()Lccsancom/applovin/impl/sdk/g;

    move-result-object v1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/network/a$1;->a:Lccsancom/applovin/impl/sdk/network/a;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/network/a;->a(Lccsancom/applovin/impl/sdk/network/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/network/a$1;->a:Lccsancom/applovin/impl/sdk/network/a;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/network/a;->b(Lccsancom/applovin/impl/sdk/network/a;)Lccsancom/applovin/impl/sdk/network/c;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/network/c;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    move v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-virtual/range {v1 .. v7}, Lccsancom/applovin/impl/sdk/g;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lccsanorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lccsancom/applovin/impl/sdk/network/a$1;->a(Lccsanorg/json/JSONObject;I)V

    return-void
.end method

.method public a(Lccsanorg/json/JSONObject;I)V
    .locals 8

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/network/a$1;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->af()Lccsancom/applovin/impl/sdk/g;

    move-result-object v1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/network/a$1;->a:Lccsancom/applovin/impl/sdk/network/a;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/network/a;->a(Lccsancom/applovin/impl/sdk/network/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/network/a$1;->a:Lccsancom/applovin/impl/sdk/network/a;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/network/a;->b(Lccsancom/applovin/impl/sdk/network/a;)Lccsancom/applovin/impl/sdk/network/c;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/network/c;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v4, p2

    move-object v5, p1

    invoke-virtual/range {v1 .. v7}, Lccsancom/applovin/impl/sdk/g;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method
