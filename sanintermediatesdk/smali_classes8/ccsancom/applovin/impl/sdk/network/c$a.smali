.class public Lccsancom/applovin/impl/sdk/network/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/sdk/network/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field f:Lccsanorg/json/JSONObject;

.field g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field h:I

.field i:I

.field j:I

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field o:Z


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lccsancom/applovin/impl/sdk/network/c$a;->h:I

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->cR:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lccsancom/applovin/impl/sdk/network/c$a;->i:I

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->cQ:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lccsancom/applovin/impl/sdk/network/c$a;->j:I

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->cP:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/applovin/impl/sdk/network/c$a;->l:Z

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->en:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/applovin/impl/sdk/network/c$a;->m:Z

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->es:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lccsancom/applovin/impl/sdk/network/c$a;->n:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/network/c$a;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(I)Lccsancom/applovin/impl/sdk/network/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/applovin/impl/sdk/network/c$a<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lccsancom/applovin/impl/sdk/network/c$a;->h:I

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/network/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lccsancom/applovin/impl/sdk/network/c$a<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/network/c$a;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/applovin/impl/sdk/network/c$a<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/network/c$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lccsancom/applovin/impl/sdk/network/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lccsancom/applovin/impl/sdk/network/c$a<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/network/c$a;->d:Ljava/util/Map;

    return-object p0
.end method

.method public a(Lccsanorg/json/JSONObject;)Lccsancom/applovin/impl/sdk/network/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanorg/json/JSONObject;",
            ")",
            "Lccsancom/applovin/impl/sdk/network/c$a<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/network/c$a;->f:Lccsanorg/json/JSONObject;

    return-object p0
.end method

.method public a(Z)Lccsancom/applovin/impl/sdk/network/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lccsancom/applovin/impl/sdk/network/c$a<",
            "TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lccsancom/applovin/impl/sdk/network/c$a;->k:Z

    return-object p0
.end method

.method public a()Lccsancom/applovin/impl/sdk/network/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/applovin/impl/sdk/network/c<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lccsancom/applovin/impl/sdk/network/c;

    invoke-direct {v0, p0}, Lccsancom/applovin/impl/sdk/network/c;-><init>(Lccsancom/applovin/impl/sdk/network/c$a;)V

    return-object v0
.end method

.method public b(I)Lccsancom/applovin/impl/sdk/network/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/applovin/impl/sdk/network/c$a<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lccsancom/applovin/impl/sdk/network/c$a;->i:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/applovin/impl/sdk/network/c$a<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/network/c$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/Map;)Lccsancom/applovin/impl/sdk/network/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lccsancom/applovin/impl/sdk/network/c$a<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/network/c$a;->e:Ljava/util/Map;

    return-object p0
.end method

.method public b(Z)Lccsancom/applovin/impl/sdk/network/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lccsancom/applovin/impl/sdk/network/c$a<",
            "TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lccsancom/applovin/impl/sdk/network/c$a;->l:Z

    return-object p0
.end method

.method public c(I)Lccsancom/applovin/impl/sdk/network/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/applovin/impl/sdk/network/c$a<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lccsancom/applovin/impl/sdk/network/c$a;->j:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/applovin/impl/sdk/network/c$a<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/network/c$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lccsancom/applovin/impl/sdk/network/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lccsancom/applovin/impl/sdk/network/c$a<",
            "TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lccsancom/applovin/impl/sdk/network/c$a;->m:Z

    return-object p0
.end method

.method public d(Z)Lccsancom/applovin/impl/sdk/network/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lccsancom/applovin/impl/sdk/network/c$a<",
            "TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lccsancom/applovin/impl/sdk/network/c$a;->n:Z

    return-object p0
.end method

.method public e(Z)Lccsancom/applovin/impl/sdk/network/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lccsancom/applovin/impl/sdk/network/c$a<",
            "TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lccsancom/applovin/impl/sdk/network/c$a;->o:Z

    return-object p0
.end method
