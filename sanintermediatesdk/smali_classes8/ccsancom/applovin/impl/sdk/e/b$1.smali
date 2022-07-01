.class Lccsancom/applovin/impl/sdk/e/b$1;
.super Lccsancom/applovin/impl/sdk/e/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/e/b;->d(Lccsanorg/json/JSONObject;)V
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
.field final synthetic a:Lccsancom/applovin/impl/sdk/e/b;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/e/b;Lccsancom/applovin/impl/sdk/network/c;Lccsancom/applovin/impl/sdk/k;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/e/b$1;->a:Lccsancom/applovin/impl/sdk/e/b;

    invoke-direct {p0, p2, p3}, Lccsancom/applovin/impl/sdk/e/t;-><init>(Lccsancom/applovin/impl/sdk/network/c;Lccsancom/applovin/impl/sdk/k;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lccsanorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/applovin/impl/sdk/e/b$1;->a(ILjava/lang/String;Lccsanorg/json/JSONObject;)V

    return-void
.end method

.method public a(ILjava/lang/String;Lccsanorg/json/JSONObject;)V
    .locals 0

    iget-object p2, p0, Lccsancom/applovin/impl/sdk/e/b$1;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1, p2}, Lccsancom/applovin/impl/sdk/utils/g;->a(ILccsancom/applovin/impl/sdk/k;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lccsanorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lccsancom/applovin/impl/sdk/e/b$1;->a(Lccsanorg/json/JSONObject;I)V

    return-void
.end method

.method public a(Lccsanorg/json/JSONObject;I)V
    .locals 0

    iget-object p2, p0, Lccsancom/applovin/impl/sdk/e/b$1;->a:Lccsancom/applovin/impl/sdk/e/b;

    invoke-static {p2, p1}, Lccsancom/applovin/impl/sdk/e/b;->a(Lccsancom/applovin/impl/sdk/e/b;Lccsanorg/json/JSONObject;)V

    return-void
.end method
