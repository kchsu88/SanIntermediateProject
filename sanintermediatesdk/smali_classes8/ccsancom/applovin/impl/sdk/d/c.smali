.class public Lccsancom/applovin/impl/sdk/d/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/sdk/d/c$a;,
        Lccsancom/applovin/impl/sdk/d/c$c;,
        Lccsancom/applovin/impl/sdk/d/c$b;
    }
.end annotation


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/k;

.field private final b:Lccsancom/applovin/impl/sdk/r;

.field private final c:Ljava/lang/Object;

.field private final d:Lccsancom/applovin/impl/sdk/d/c$c;


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/k;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/d/c;->c:Ljava/lang/Object;

    new-instance v0, Lccsancom/applovin/impl/sdk/d/c$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsancom/applovin/impl/sdk/d/c$c;-><init>(Lccsancom/applovin/impl/sdk/d/c;Lccsancom/applovin/impl/sdk/d/c$1;)V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/d/c;->d:Lccsancom/applovin/impl/sdk/d/c$c;

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/d/c;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/d/c;->b:Lccsancom/applovin/impl/sdk/r;

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/d/c;)Lccsancom/applovin/impl/sdk/r;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/d/c;->b:Lccsancom/applovin/impl/sdk/r;

    return-object p0
.end method

.method private a(Lccsancom/applovin/impl/sdk/d/b;JLccsancom/applovin/impl/sdk/AppLovinAdBase;)V
    .locals 3

    if-eqz p4, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/c;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->dX:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d/c;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->eb:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/d/b;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/d/b;->a()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p4}, Lccsancom/applovin/impl/sdk/d/c;->b(Lccsancom/applovin/impl/sdk/AppLovinAdBase;)Lccsancom/applovin/impl/sdk/d/c$a;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Lccsancom/applovin/impl/sdk/d/c$a;->a(Ljava/lang/String;J)V

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method private a(Lccsancom/applovin/impl/sdk/d/b;Ljava/lang/String;Lccsancom/applovin/impl/sdk/AppLovinAdBase;)V
    .locals 3

    if-eqz p3, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/c;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->dX:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/c;->d:Lccsancom/applovin/impl/sdk/d/c$c;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d/c;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->eb:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/d/b;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/d/b;->a()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p3}, Lccsancom/applovin/impl/sdk/d/c;->b(Lccsancom/applovin/impl/sdk/AppLovinAdBase;)Lccsancom/applovin/impl/sdk/d/c$a;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lccsancom/applovin/impl/sdk/d/c$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/d/c;Lccsancom/applovin/impl/sdk/d/b;JLccsancom/applovin/impl/sdk/AppLovinAdBase;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/applovin/impl/sdk/d/c;->a(Lccsancom/applovin/impl/sdk/d/b;JLccsancom/applovin/impl/sdk/AppLovinAdBase;)V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/d/c;Lccsancom/applovin/impl/sdk/d/b;Ljava/lang/String;Lccsancom/applovin/impl/sdk/AppLovinAdBase;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lccsancom/applovin/impl/sdk/d/c;->a(Lccsancom/applovin/impl/sdk/d/b;Ljava/lang/String;Lccsancom/applovin/impl/sdk/AppLovinAdBase;)V

    return-void
.end method

.method private a(Lccsanorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/c;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/network/c;->a(Lccsancom/applovin/impl/sdk/k;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/d/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/c$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/d/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/c$a;->c(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d/c;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/g;->e(Lccsancom/applovin/impl/sdk/k;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/c$a;->a(Ljava/util/Map;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/c$a;->b(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/sdk/network/c$a;->a(Lccsanorg/json/JSONObject;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object p1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/c;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->ex:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/network/c$a;->d(Z)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object p1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/c;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->dY:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/network/c$a;->b(I)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object p1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/c;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->dZ:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/network/c$a;->a(I)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/network/c$a;->a()Lccsancom/applovin/impl/sdk/network/c;

    move-result-object p1

    new-instance v0, Lccsancom/applovin/impl/sdk/d/c$1;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d/c;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {v0, p0, p1, v1}, Lccsancom/applovin/impl/sdk/d/c$1;-><init>(Lccsancom/applovin/impl/sdk/d/c;Lccsancom/applovin/impl/sdk/network/c;Lccsancom/applovin/impl/sdk/k;)V

    sget-object p1, Lccsancom/applovin/impl/sdk/c/b;->aQ:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/sdk/e/t;->a(Lccsancom/applovin/impl/sdk/c/b;)V

    sget-object p1, Lccsancom/applovin/impl/sdk/c/b;->aR:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/sdk/e/t;->b(Lccsancom/applovin/impl/sdk/c/b;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/d/c;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object p1

    sget-object v1, Lccsancom/applovin/impl/sdk/e/o$a;->c:Lccsancom/applovin/impl/sdk/e/o$a;

    invoke-virtual {p1, v0, v1}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;Lccsancom/applovin/impl/sdk/e/o$a;)V

    return-void
.end method

.method private b(Lccsancom/applovin/impl/sdk/AppLovinAdBase;)Lccsancom/applovin/impl/sdk/d/c$a;
    .locals 9

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getPrimaryKey()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d/c;->d:Lccsancom/applovin/impl/sdk/d/c$c;

    invoke-virtual {v1, v7}, Lccsancom/applovin/impl/sdk/d/c$c;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/applovin/impl/sdk/d/c$a;

    if-nez v1, :cond_0

    new-instance v8, Lccsancom/applovin/impl/sdk/d/c$a;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getSecondaryKey1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getSecondaryKey2()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lccsancom/applovin/impl/sdk/d/c;->a:Lccsancom/applovin/impl/sdk/k;

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Lccsancom/applovin/impl/sdk/d/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/sdk/d/c$1;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/d/c;->d:Lccsancom/applovin/impl/sdk/d/c$c;

    invoke-virtual {p1, v7, v8}, Lccsancom/applovin/impl/sdk/d/c$c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v8

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic b(Lccsancom/applovin/impl/sdk/d/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/d/c;->c:Ljava/lang/Object;

    return-object p0
.end method

.method private b(Lccsancom/applovin/impl/sdk/d/b;JLccsancom/applovin/impl/sdk/AppLovinAdBase;)V
    .locals 3

    if-eqz p4, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/c;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->dX:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d/c;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->eb:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/d/b;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/d/b;->a()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p4}, Lccsancom/applovin/impl/sdk/d/c;->b(Lccsancom/applovin/impl/sdk/AppLovinAdBase;)Lccsancom/applovin/impl/sdk/d/c$a;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Lccsancom/applovin/impl/sdk/d/c$a;->b(Ljava/lang/String;J)V

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic b(Lccsancom/applovin/impl/sdk/d/c;Lccsancom/applovin/impl/sdk/d/b;JLccsancom/applovin/impl/sdk/AppLovinAdBase;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/applovin/impl/sdk/d/c;->b(Lccsancom/applovin/impl/sdk/d/b;JLccsancom/applovin/impl/sdk/AppLovinAdBase;)V

    return-void
.end method

.method static synthetic c(Lccsancom/applovin/impl/sdk/d/c;)Lccsancom/applovin/impl/sdk/d/c$c;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/d/c;->d:Lccsancom/applovin/impl/sdk/d/c$c;

    return-object p0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/c;->a:Lccsancom/applovin/impl/sdk/k;

    const-string v1, "2.0/s"

    invoke-static {v1, v0}, Lccsancom/applovin/impl/sdk/utils/g;->a(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lccsancom/applovin/impl/sdk/d/c;)Lccsancom/applovin/impl/sdk/k;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/d/c;->a:Lccsancom/applovin/impl/sdk/k;

    return-object p0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/c;->a:Lccsancom/applovin/impl/sdk/k;

    const-string v1, "2.0/s"

    invoke-static {v1, v0}, Lccsancom/applovin/impl/sdk/utils/g;->b(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/c;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->dX:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/c;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/e/o;->b()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lccsancom/applovin/impl/sdk/d/c$2;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/sdk/d/c$2;-><init>(Lccsancom/applovin/impl/sdk/d/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic e(Lccsancom/applovin/impl/sdk/d/c;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/d/c;->e()V

    return-void
.end method


# virtual methods
.method public a(Lccsancom/applovin/impl/sdk/AppLovinAdBase;)Lccsancom/applovin/impl/sdk/d/c$b;
    .locals 1

    new-instance v0, Lccsancom/applovin/impl/sdk/d/c$b;

    invoke-direct {v0, p0, p1, p0}, Lccsancom/applovin/impl/sdk/d/c$b;-><init>(Lccsancom/applovin/impl/sdk/d/c;Lccsancom/applovin/impl/sdk/AppLovinAdBase;Lccsancom/applovin/impl/sdk/d/c;)V

    return-object v0
.end method

.method public a()V
    .locals 8

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/c;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->dX:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/c;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/d;->t:Lccsancom/applovin/impl/sdk/c/d;

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/k;->b(Lccsancom/applovin/impl/sdk/c/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d/c;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/d;->t:Lccsancom/applovin/impl/sdk/c/d;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->b(Lccsancom/applovin/impl/sdk/c/d;)V

    const-string v1, "AdEventStatsManager"

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/d/c;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "De-serializing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " stat ad events"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lccsanorg/json/JSONArray;

    invoke-direct {v2}, Lccsanorg/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :try_start_0
    new-instance v4, Lccsanorg/json/JSONObject;

    invoke-direct {v4, v3}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    iget-object v5, p0, Lccsancom/applovin/impl/sdk/d/c;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to parse: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3, v4}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "stats"

    invoke-virtual {v0, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/sdk/d/c;->a(Lccsanorg/json/JSONObject;)V
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/d/c;->b:Lccsancom/applovin/impl/sdk/r;

    const-string v3, "Failed to create stats to submit"

    invoke-virtual {v2, v1, v3, v0}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/c;->b:Lccsancom/applovin/impl/sdk/r;

    const-string v2, "No serialized ad events found"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d/c;->b:Lccsancom/applovin/impl/sdk/r;

    const-string v2, "AdEventStatsManager"

    const-string v3, "Clearing ad stats..."

    invoke-virtual {v1, v2, v3}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d/c;->d:Lccsancom/applovin/impl/sdk/d/c$c;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/d/c$c;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
