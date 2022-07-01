.class Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$a;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;

.field private final b:Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;


# direct methods
.method private constructor <init>(Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$a;->a:Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$a;->b:Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$a;-><init>(Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;)V

    return-void
.end method


# virtual methods
.method public adReceived(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 4

    move-object v0, p1

    check-cast v0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getAdZone()Lccsancom/applovin/impl/sdk/a/d;

    move-result-object v1

    instance-of v2, p1, Lccsancom/applovin/impl/sdk/a/h;

    if-nez v2, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$a;->a:Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;)Lccsancom/applovin/impl/sdk/k;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->X()Lccsancom/applovin/impl/sdk/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/c;->a(Lccsancom/applovin/impl/sdk/AppLovinAdBase;)V

    new-instance p1, Lccsancom/applovin/impl/sdk/a/h;

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$a;->a:Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lccsancom/applovin/impl/sdk/a/h;-><init>(Lccsancom/applovin/impl/sdk/a/d;Lccsancom/applovin/impl/sdk/k;)V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$a;->b:Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;

    iget-object v0, v0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$a;->b:Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;

    iget-object v2, v2, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;->c:Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$a;->b:Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;

    iget-object v2, v2, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$a;->b:Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;->b:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$a;->a:Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;

    invoke-static {v2, p1, v1}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public failedToReceiveAd(I)V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$a;->b:Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;

    iget-object v0, v0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$a;->b:Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;

    iget-object v2, v2, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;->c:Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$a;->b:Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;

    iget-object v2, v2, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$a;->b:Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;->b:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$a;->a:Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;

    invoke-static {v2, p1, v1}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;ILccsancom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
