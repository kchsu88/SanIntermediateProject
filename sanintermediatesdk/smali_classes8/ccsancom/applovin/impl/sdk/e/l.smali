.class public Lccsancom/applovin/impl/sdk/e/l;
.super Lccsancom/applovin/impl/sdk/e/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/sdk/e/l$a;
    }
.end annotation


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/e/l$a;


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/sdk/e/l$a;)V
    .locals 1

    const-string v0, "TaskFetchVariables"

    invoke-direct {p0, v0, p1}, Lccsancom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/e/l;->a:Lccsancom/applovin/impl/sdk/e/l$a;

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/e/l;)Lccsancom/applovin/impl/sdk/e/l$a;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/e/l;->a:Lccsancom/applovin/impl/sdk/e/l$a;

    return-object p0
.end method

.method private a()Ljava/util/Map;
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

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/l;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->T()Lccsancom/applovin/impl/sdk/m;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lccsancom/applovin/impl/sdk/m;->a(Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/Utils;->stringifyObjectMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/e/l;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/l;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/network/c;->a(Lccsancom/applovin/impl/sdk/k;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/e/l;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v2}, Lccsancom/applovin/impl/sdk/utils/g;->i(Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/network/c$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/e/l;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v2}, Lccsancom/applovin/impl/sdk/utils/g;->j(Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/network/c$a;->c(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsancom/applovin/impl/sdk/network/c$a;->a(Ljava/util/Map;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/c$a;->b(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/c$a;->a(Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/l;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->df:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/c$a;->b(I)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/network/c$a;->a()Lccsancom/applovin/impl/sdk/network/c;

    move-result-object v0

    new-instance v1, Lccsancom/applovin/impl/sdk/e/l$1;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/e/l;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {v1, p0, v0, v2}, Lccsancom/applovin/impl/sdk/e/l$1;-><init>(Lccsancom/applovin/impl/sdk/e/l;Lccsancom/applovin/impl/sdk/network/c;Lccsancom/applovin/impl/sdk/k;)V

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->aU:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v0}, Lccsancom/applovin/impl/sdk/e/t;->a(Lccsancom/applovin/impl/sdk/c/b;)V

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->aV:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v0}, Lccsancom/applovin/impl/sdk/e/t;->b(Lccsancom/applovin/impl/sdk/c/b;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/l;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;)V

    return-void
.end method
