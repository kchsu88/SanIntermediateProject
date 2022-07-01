.class public Lccsancom/applovin/impl/sdk/e/k;
.super Lccsancom/applovin/impl/sdk/e/j;


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/a/c;


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/a/c;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Lccsancom/applovin/impl/sdk/k;)V
    .locals 2

    const-string v0, "adtoken_zone"

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/a/d;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/a/d;

    move-result-object v0

    const-string v1, "TaskFetchTokenAd"

    invoke-direct {p0, v0, p2, v1, p3}, Lccsancom/applovin/impl/sdk/e/j;-><init>(Lccsancom/applovin/impl/sdk/a/d;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/e/k;->a:Lccsancom/applovin/impl/sdk/a/c;

    return-void
.end method


# virtual methods
.method a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/k;->a:Lccsancom/applovin/impl/sdk/a/c;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/c;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adtoken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/k;->a:Lccsancom/applovin/impl/sdk/a/c;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/c;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adtoken_prefix"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected b()Lccsancom/applovin/impl/sdk/a/b;
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/sdk/a/b;->e:Lccsancom/applovin/impl/sdk/a/b;

    return-object v0
.end method
