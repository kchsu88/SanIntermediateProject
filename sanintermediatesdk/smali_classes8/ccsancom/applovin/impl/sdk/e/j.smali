.class public Lccsancom/applovin/impl/sdk/e/j;
.super Lccsancom/applovin/impl/sdk/e/a;


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/a/d;

.field private final c:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

.field private final d:Lccsancom/applovin/impl/sdk/network/i;


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/a/d;Lccsancom/applovin/impl/sdk/network/i;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Lccsancom/applovin/impl/sdk/k;)V
    .locals 6

    const-string v4, "TaskFetchNextAd"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lccsancom/applovin/impl/sdk/e/j;-><init>(Lccsancom/applovin/impl/sdk/a/d;Lccsancom/applovin/impl/sdk/network/i;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V

    return-void
.end method

.method constructor <init>(Lccsancom/applovin/impl/sdk/a/d;Lccsancom/applovin/impl/sdk/network/i;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V
    .locals 0

    invoke-direct {p0, p4, p5}, Lccsancom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/e/j;->a:Lccsancom/applovin/impl/sdk/a/d;

    iput-object p3, p0, Lccsancom/applovin/impl/sdk/e/j;->c:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/e/j;->d:Lccsancom/applovin/impl/sdk/network/i;

    return-void
.end method

.method constructor <init>(Lccsancom/applovin/impl/sdk/a/d;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lccsancom/applovin/impl/sdk/e/j;-><init>(Lccsancom/applovin/impl/sdk/a/d;Lccsancom/applovin/impl/sdk/network/i;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V

    return-void
.end method

.method private a(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to fetch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/j;->a:Lccsancom/applovin/impl/sdk/a/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ad: server returned "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/e/j;->d(Ljava/lang/String;)V

    const/16 v0, -0x320

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/j;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->R()Lccsancom/applovin/impl/sdk/d/g;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/impl/sdk/d/f;->h:Lccsancom/applovin/impl/sdk/d/f;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/d/g;->a(Lccsancom/applovin/impl/sdk/d/f;)J

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/j;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->Z()Lccsancom/applovin/impl/sdk/a/e;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/j;->a:Lccsancom/applovin/impl/sdk/a/d;

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/e/j;->j()Z

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lccsancom/applovin/impl/sdk/a/e;->a(Lccsancom/applovin/impl/sdk/a/d;ZI)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/j;->c:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    invoke-interface {v0, p1}, Lccsancom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    return-void
.end method

.method private a(Lccsancom/applovin/impl/sdk/d/g;)V
    .locals 7

    sget-object v0, Lccsancom/applovin/impl/sdk/d/f;->c:Lccsancom/applovin/impl/sdk/d/f;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/d/g;->b(Lccsancom/applovin/impl/sdk/d/f;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lccsancom/applovin/impl/sdk/e/j;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v6, Lccsancom/applovin/impl/sdk/c/b;->dm:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v5, v6}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    sget-object v0, Lccsancom/applovin/impl/sdk/d/f;->c:Lccsancom/applovin/impl/sdk/d/f;

    invoke-virtual {p1, v0, v2, v3}, Lccsancom/applovin/impl/sdk/d/g;->b(Lccsancom/applovin/impl/sdk/d/f;J)V

    sget-object v0, Lccsancom/applovin/impl/sdk/d/f;->d:Lccsancom/applovin/impl/sdk/d/f;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/d/g;->c(Lccsancom/applovin/impl/sdk/d/f;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/e/j;I)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/sdk/e/j;->a(I)V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/e/j;Lccsanorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/sdk/e/j;->a(Lccsanorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lccsanorg/json/JSONObject;)V
    .locals 7

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/j;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1, v0}, Lccsancom/applovin/impl/sdk/utils/g;->d(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/j;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1, v0}, Lccsancom/applovin/impl/sdk/utils/g;->c(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/j;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1, v0}, Lccsancom/applovin/impl/sdk/utils/g;->g(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/j;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1, v0}, Lccsancom/applovin/impl/sdk/utils/g;->e(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/a/d;->a(Lccsanorg/json/JSONObject;)V

    new-instance v5, Lccsancom/applovin/impl/sdk/a/f$a;

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/j;->a:Lccsancom/applovin/impl/sdk/a/d;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/j;->c:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/e/j;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {v5, v0, v1, v2}, Lccsancom/applovin/impl/sdk/a/f$a;-><init>(Lccsancom/applovin/impl/sdk/a/d;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Lccsancom/applovin/impl/sdk/k;)V

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/e/j;->j()Z

    move-result v0

    invoke-virtual {v5, v0}, Lccsancom/applovin/impl/sdk/a/f$a;->a(Z)V

    new-instance v0, Lccsancom/applovin/impl/sdk/e/p;

    iget-object v3, p0, Lccsancom/applovin/impl/sdk/e/j;->a:Lccsancom/applovin/impl/sdk/a/d;

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/e/j;->b()Lccsancom/applovin/impl/sdk/a/b;

    move-result-object v4

    iget-object v6, p0, Lccsancom/applovin/impl/sdk/e/j;->b:Lccsancom/applovin/impl/sdk/k;

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lccsancom/applovin/impl/sdk/e/p;-><init>(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/a/d;Lccsancom/applovin/impl/sdk/a/b;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Lccsancom/applovin/impl/sdk/k;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/e/j;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object p1

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;)V

    return-void
.end method

.method private i()Ljava/util/Map;
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

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/j;->a:Lccsancom/applovin/impl/sdk/a/d;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/d;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovin-Zone-Id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/j;->a:Lccsancom/applovin/impl/sdk/a/d;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/d;->c()Lccsancom/applovin/sdk/AppLovinAdSize;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/j;->a:Lccsancom/applovin/impl/sdk/a/d;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/d;->c()Lccsancom/applovin/sdk/AppLovinAdSize;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovin-Ad-Size"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/j;->a:Lccsancom/applovin/impl/sdk/a/d;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/d;->d()Lccsancom/applovin/sdk/AppLovinAdType;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/j;->a:Lccsancom/applovin/impl/sdk/a/d;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/d;->d()Lccsancom/applovin/sdk/AppLovinAdType;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/sdk/AppLovinAdType;->getLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovin-Ad-Type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private j()Z
    .locals 1

    instance-of v0, p0, Lccsancom/applovin/impl/sdk/e/k;

    if-nez v0, :cond_1

    instance-of v0, p0, Lccsancom/applovin/impl/sdk/e/i;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
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

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/j;->a:Lccsancom/applovin/impl/sdk/a/d;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/d;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "zone_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/j;->a:Lccsancom/applovin/impl/sdk/a/d;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/d;->c()Lccsancom/applovin/sdk/AppLovinAdSize;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/j;->a:Lccsancom/applovin/impl/sdk/a/d;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/d;->c()Lccsancom/applovin/sdk/AppLovinAdSize;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "size"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/j;->a:Lccsancom/applovin/impl/sdk/a/d;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/d;->d()Lccsancom/applovin/sdk/AppLovinAdType;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/j;->a:Lccsancom/applovin/impl/sdk/a/d;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/d;->d()Lccsancom/applovin/sdk/AppLovinAdType;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/sdk/AppLovinAdType;->getLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "require"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/j;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->ae()Lccsancom/applovin/impl/sdk/u;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/e/j;->a:Lccsancom/applovin/impl/sdk/a/d;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/a/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/u;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "n"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/j;->d:Lccsancom/applovin/impl/sdk/network/i;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/network/i;->a()Lccsanandroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/BundleUtils;->toStringMap(Lccsanandroid/os/Bundle;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    return-object v0
.end method

.method protected b()Lccsancom/applovin/impl/sdk/a/b;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/j;->a:Lccsancom/applovin/impl/sdk/a/d;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lccsancom/applovin/impl/sdk/a/b;->b:Lccsancom/applovin/impl/sdk/a/b;

    goto :goto_0

    :cond_0
    sget-object v0, Lccsancom/applovin/impl/sdk/a/b;->c:Lccsancom/applovin/impl/sdk/a/b;

    :goto_0
    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/j;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/g;->g(Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/j;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/g;->h(Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetching next ad of zone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/j;->a:Lccsancom/applovin/impl/sdk/a/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/e/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/j;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->dF:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/Utils;->isVPNConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "User is connected to a VPN"

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/e/j;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/j;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->R()Lccsancom/applovin/impl/sdk/d/g;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/impl/sdk/d/f;->a:Lccsancom/applovin/impl/sdk/d/f;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/d/g;->a(Lccsancom/applovin/impl/sdk/d/f;)J

    sget-object v1, Lccsancom/applovin/impl/sdk/d/f;->c:Lccsancom/applovin/impl/sdk/d/f;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/d/g;->b(Lccsancom/applovin/impl/sdk/d/f;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    sget-object v1, Lccsancom/applovin/impl/sdk/d/f;->c:Lccsancom/applovin/impl/sdk/d/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/applovin/impl/sdk/d/g;->b(Lccsancom/applovin/impl/sdk/d/f;J)V

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lccsancom/applovin/impl/sdk/e/j;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v4, Lccsancom/applovin/impl/sdk/c/b;->dh:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v3, v4}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    const-string v1, "POST"

    iget-object v3, p0, Lccsancom/applovin/impl/sdk/e/j;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v3}, Lccsancom/applovin/impl/sdk/k;->T()Lccsancom/applovin/impl/sdk/m;

    move-result-object v3

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/e/j;->a()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v3, v5, v2, v4}, Lccsancom/applovin/impl/sdk/m;->a(Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v3

    new-instance v5, Lccsanorg/json/JSONObject;

    invoke-direct {v5, v3}, Lccsanorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v6, "rid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lccsancom/applovin/impl/sdk/e/j;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v7, Lccsancom/applovin/impl/sdk/c/b;->en:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v6, v7}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "sdk_key"

    iget-object v7, p0, Lccsancom/applovin/impl/sdk/e/j;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v7}, Lccsancom/applovin/impl/sdk/k;->x()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v3, "GET"

    iget-object v5, p0, Lccsancom/applovin/impl/sdk/e/j;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v5}, Lccsancom/applovin/impl/sdk/k;->T()Lccsancom/applovin/impl/sdk/m;

    move-result-object v5

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/e/j;->a()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6, v2, v2}, Lccsancom/applovin/impl/sdk/m;->a(Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Lccsancom/applovin/impl/sdk/utils/Utils;->stringifyObjectMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    move-object v8, v5

    move-object v5, v1

    move-object v1, v3

    move-object v3, v8

    :cond_3
    :goto_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lccsancom/applovin/impl/sdk/y;->b()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/e/j;->i()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/sdk/e/j;->a(Lccsancom/applovin/impl/sdk/d/g;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/j;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/network/c;->a(Lccsancom/applovin/impl/sdk/k;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/e/j;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lccsancom/applovin/impl/sdk/network/c$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lccsancom/applovin/impl/sdk/network/c$a;->a(Ljava/util/Map;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/e/j;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lccsancom/applovin/impl/sdk/network/c$a;->c(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/c$a;->b(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    invoke-virtual {v0, v6}, Lccsancom/applovin/impl/sdk/network/c$a;->b(Ljava/util/Map;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/c$a;->a(Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/j;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v3, Lccsancom/applovin/impl/sdk/c/b;->cV:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/c$a;->a(I)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/j;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v3, Lccsancom/applovin/impl/sdk/c/b;->cW:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/c$a;->a(Z)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/j;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v3, Lccsancom/applovin/impl/sdk/c/b;->cX:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/c$a;->b(Z)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/j;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v3, Lccsancom/applovin/impl/sdk/c/b;->cU:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/c$a;->b(I)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lccsancom/applovin/impl/sdk/network/c$a;->e(Z)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    if-eqz v5, :cond_4

    invoke-virtual {v0, v5}, Lccsancom/applovin/impl/sdk/network/c$a;->a(Lccsanorg/json/JSONObject;)Lccsancom/applovin/impl/sdk/network/c$a;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/j;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v3, Lccsancom/applovin/impl/sdk/c/b;->ev:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/c$a;->d(Z)Lccsancom/applovin/impl/sdk/network/c$a;

    :cond_4
    new-instance v1, Lccsancom/applovin/impl/sdk/e/j$1;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/network/c$a;->a()Lccsancom/applovin/impl/sdk/network/c;

    move-result-object v0

    iget-object v3, p0, Lccsancom/applovin/impl/sdk/e/j;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {v1, p0, v0, v3}, Lccsancom/applovin/impl/sdk/e/j$1;-><init>(Lccsancom/applovin/impl/sdk/e/j;Lccsancom/applovin/impl/sdk/network/c;Lccsancom/applovin/impl/sdk/k;)V

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->aO:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v0}, Lccsancom/applovin/impl/sdk/e/t;->a(Lccsancom/applovin/impl/sdk/c/b;)V

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->aP:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v0}, Lccsancom/applovin/impl/sdk/e/t;->b(Lccsancom/applovin/impl/sdk/c/b;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/j;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to fetch ad "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/applovin/impl/sdk/e/j;->a:Lccsancom/applovin/impl/sdk/a/d;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lccsancom/applovin/impl/sdk/e/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v2}, Lccsancom/applovin/impl/sdk/e/j;->a(I)V

    :goto_1
    return-void
.end method
