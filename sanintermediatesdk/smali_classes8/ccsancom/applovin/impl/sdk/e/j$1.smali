.class Lccsancom/applovin/impl/sdk/e/j$1;
.super Lccsancom/applovin/impl/sdk/e/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/e/j;->run()V
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
.field final synthetic a:Lccsancom/applovin/impl/sdk/e/j;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/e/j;Lccsancom/applovin/impl/sdk/network/c;Lccsancom/applovin/impl/sdk/k;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/e/j$1;->a:Lccsancom/applovin/impl/sdk/e/j;

    invoke-direct {p0, p2, p3}, Lccsancom/applovin/impl/sdk/e/t;-><init>(Lccsancom/applovin/impl/sdk/network/c;Lccsancom/applovin/impl/sdk/k;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lccsanorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/applovin/impl/sdk/e/j$1;->a(ILjava/lang/String;Lccsanorg/json/JSONObject;)V

    return-void
.end method

.method public a(ILjava/lang/String;Lccsanorg/json/JSONObject;)V
    .locals 0

    iget-object p2, p0, Lccsancom/applovin/impl/sdk/e/j$1;->a:Lccsancom/applovin/impl/sdk/e/j;

    invoke-static {p2, p1}, Lccsancom/applovin/impl/sdk/e/j;->a(Lccsancom/applovin/impl/sdk/e/j;I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lccsanorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lccsancom/applovin/impl/sdk/e/j$1;->a(Lccsanorg/json/JSONObject;I)V

    return-void
.end method

.method public a(Lccsanorg/json/JSONObject;I)V
    .locals 2

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lccsancom/applovin/impl/sdk/e/j$1;->d:Lccsancom/applovin/impl/sdk/network/b$a;

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/network/b$a;->a()J

    move-result-wide v0

    const-string p2, "ad_fetch_latency_millis"

    invoke-static {p1, p2, v0, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putLong(Lccsanorg/json/JSONObject;Ljava/lang/String;J)V

    iget-object p2, p0, Lccsancom/applovin/impl/sdk/e/j$1;->d:Lccsancom/applovin/impl/sdk/network/b$a;

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/network/b$a;->b()J

    move-result-wide v0

    const-string p2, "ad_fetch_response_size"

    invoke-static {p1, p2, v0, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putLong(Lccsanorg/json/JSONObject;Ljava/lang/String;J)V

    iget-object p2, p0, Lccsancom/applovin/impl/sdk/e/j$1;->a:Lccsancom/applovin/impl/sdk/e/j;

    invoke-static {p2, p1}, Lccsancom/applovin/impl/sdk/e/j;->a(Lccsancom/applovin/impl/sdk/e/j;Lccsanorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/e/j$1;->a:Lccsancom/applovin/impl/sdk/e/j;

    invoke-static {p1, p2}, Lccsancom/applovin/impl/sdk/e/j;->a(Lccsancom/applovin/impl/sdk/e/j;I)V

    :goto_0
    return-void
.end method
