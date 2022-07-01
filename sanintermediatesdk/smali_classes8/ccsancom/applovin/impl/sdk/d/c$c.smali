.class Lccsancom/applovin/impl/sdk/d/c$c;
.super Ljava/util/LinkedHashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/sdk/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Lccsancom/applovin/impl/sdk/d/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/d/c;


# direct methods
.method private constructor <init>(Lccsancom/applovin/impl/sdk/d/c;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/d/c$c;->a:Lccsancom/applovin/impl/sdk/d/c;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/applovin/impl/sdk/d/c;Lccsancom/applovin/impl/sdk/d/c$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/sdk/d/c$c;-><init>(Lccsancom/applovin/impl/sdk/d/c;)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lccsancom/applovin/impl/sdk/d/c$a;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/d/c$c;->size()I

    move-result p1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/c$c;->a:Lccsancom/applovin/impl/sdk/d/c;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/d/c;->d(Lccsancom/applovin/impl/sdk/d/c;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->ea:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
