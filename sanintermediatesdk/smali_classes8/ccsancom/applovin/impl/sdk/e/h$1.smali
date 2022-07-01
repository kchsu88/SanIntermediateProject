.class Lccsancom/applovin/impl/sdk/e/h$1;
.super Lccsancom/applovin/impl/sdk/e/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/e/h;->run()V
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
.field final synthetic a:Lccsancom/applovin/impl/sdk/e/h;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/e/h;Lccsancom/applovin/impl/sdk/network/c;Lccsancom/applovin/impl/sdk/k;Z)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/e/h$1;->a:Lccsancom/applovin/impl/sdk/e/h;

    invoke-direct {p0, p2, p3, p4}, Lccsancom/applovin/impl/sdk/e/t;-><init>(Lccsancom/applovin/impl/sdk/network/c;Lccsancom/applovin/impl/sdk/k;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lccsanorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/applovin/impl/sdk/e/h$1;->a(ILjava/lang/String;Lccsanorg/json/JSONObject;)V

    return-void
.end method

.method public a(ILjava/lang/String;Lccsanorg/json/JSONObject;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to fetch basic SDK settings: server returned "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/sdk/e/h$1;->d(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Lccsanorg/json/JSONObject;

    invoke-direct {p3}, Lccsanorg/json/JSONObject;-><init>()V

    :goto_0
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/e/h$1;->a:Lccsancom/applovin/impl/sdk/e/h;

    invoke-static {p1, p3}, Lccsancom/applovin/impl/sdk/e/h;->a(Lccsancom/applovin/impl/sdk/e/h;Lccsanorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lccsanorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lccsancom/applovin/impl/sdk/e/h$1;->a(Lccsanorg/json/JSONObject;I)V

    return-void
.end method

.method public a(Lccsanorg/json/JSONObject;I)V
    .locals 0

    iget-object p2, p0, Lccsancom/applovin/impl/sdk/e/h$1;->a:Lccsancom/applovin/impl/sdk/e/h;

    invoke-static {p2, p1}, Lccsancom/applovin/impl/sdk/e/h;->a(Lccsancom/applovin/impl/sdk/e/h;Lccsanorg/json/JSONObject;)V

    return-void
.end method
