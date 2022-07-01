.class Lccsancom/applovin/impl/sdk/e/v$1;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/sdk/network/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/e/v;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/applovin/impl/sdk/network/b$c<",
        "Lccsanorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/e/v;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/e/v;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/e/v$1;->a:Lccsancom/applovin/impl/sdk/e/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lccsanorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/applovin/impl/sdk/e/v$1;->a(ILjava/lang/String;Lccsanorg/json/JSONObject;)V

    return-void
.end method

.method public a(ILjava/lang/String;Lccsanorg/json/JSONObject;)V
    .locals 0

    iget-object p2, p0, Lccsancom/applovin/impl/sdk/e/v$1;->a:Lccsancom/applovin/impl/sdk/e/v;

    invoke-virtual {p2, p1}, Lccsancom/applovin/impl/sdk/e/v;->a(I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lccsanorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lccsancom/applovin/impl/sdk/e/v$1;->a(Lccsanorg/json/JSONObject;I)V

    return-void
.end method

.method public a(Lccsanorg/json/JSONObject;I)V
    .locals 0

    iget-object p2, p0, Lccsancom/applovin/impl/sdk/e/v$1;->a:Lccsancom/applovin/impl/sdk/e/v;

    invoke-virtual {p2, p1}, Lccsancom/applovin/impl/sdk/e/v;->b(Lccsanorg/json/JSONObject;)V

    return-void
.end method
