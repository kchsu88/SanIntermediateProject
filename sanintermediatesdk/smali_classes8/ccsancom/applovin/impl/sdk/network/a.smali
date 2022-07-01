.class public Lccsancom/applovin/impl/sdk/network/a;
.super Lccsancom/applovin/impl/sdk/e/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Lccsancom/applovin/impl/sdk/network/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/applovin/impl/sdk/network/c<",
            "Lccsanorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/network/c;Lccsancom/applovin/impl/sdk/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lccsancom/applovin/impl/sdk/network/c<",
            "Lccsanorg/json/JSONObject;",
            ">;",
            "Lccsancom/applovin/impl/sdk/k;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CommunicatorRequestTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lccsancom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/network/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/network/a;->c:Lccsancom/applovin/impl/sdk/network/c;

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/network/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/network/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lccsancom/applovin/impl/sdk/network/a;)Lccsancom/applovin/impl/sdk/network/c;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/network/a;->c:Lccsancom/applovin/impl/sdk/network/c;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/network/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object v0

    new-instance v1, Lccsancom/applovin/impl/sdk/network/a$1;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/network/a;->c:Lccsancom/applovin/impl/sdk/network/c;

    iget-object v3, p0, Lccsancom/applovin/impl/sdk/network/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/network/a;->g()Z

    move-result v4

    invoke-direct {v1, p0, v2, v3, v4}, Lccsancom/applovin/impl/sdk/network/a$1;-><init>(Lccsancom/applovin/impl/sdk/network/a;Lccsancom/applovin/impl/sdk/network/c;Lccsancom/applovin/impl/sdk/k;Z)V

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;)V

    return-void
.end method
