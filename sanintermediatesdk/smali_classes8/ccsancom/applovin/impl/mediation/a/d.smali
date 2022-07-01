.class public Lccsancom/applovin/impl/mediation/a/d;
.super Lccsancom/applovin/impl/mediation/a/a;


# direct methods
.method private constructor <init>(Lccsancom/applovin/impl/mediation/a/d;Lccsancom/applovin/impl/mediation/g;)V
    .locals 2

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/d;->I()Lccsanorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/d;->H()Lccsanorg/json/JSONObject;

    move-result-object v1

    iget-object p1, p1, Lccsancom/applovin/impl/mediation/a/d;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {p0, v0, v1, p2, p1}, Lccsancom/applovin/impl/mediation/a/a;-><init>(Lccsanorg/json/JSONObject;Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/mediation/g;Lccsancom/applovin/impl/sdk/k;)V

    return-void
.end method

.method public constructor <init>(Lccsanorg/json/JSONObject;Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lccsancom/applovin/impl/mediation/a/a;-><init>(Lccsanorg/json/JSONObject;Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/mediation/g;Lccsancom/applovin/impl/sdk/k;)V

    return-void
.end method


# virtual methods
.method public a(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/mediation/a/a;
    .locals 1

    new-instance v0, Lccsancom/applovin/impl/mediation/a/d;

    invoke-direct {v0, p0, p1}, Lccsancom/applovin/impl/mediation/a/d;-><init>(Lccsancom/applovin/impl/mediation/a/d;Lccsancom/applovin/impl/mediation/g;)V

    return-object v0
.end method
