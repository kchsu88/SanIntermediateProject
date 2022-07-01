.class final Lccsancom/applovin/impl/sdk/e/q$a;
.super Lccsancom/applovin/impl/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/sdk/e/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Lccsanorg/json/JSONObject;Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/a/b;Lccsancom/applovin/impl/sdk/k;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/applovin/impl/a/c;-><init>(Lccsanorg/json/JSONObject;Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/a/b;Lccsancom/applovin/impl/sdk/k;)V

    return-void
.end method


# virtual methods
.method a(Lccsancom/applovin/impl/sdk/utils/p;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/q$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No aggregated vast response specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
