.class public Lccsancom/applovin/impl/sdk/EventServiceImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/sdk/AppLovinEventService;


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/k;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/k;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->ba:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v1, "{}"

    if-eqz v0, :cond_0

    sget-object v0, Lccsancom/applovin/impl/sdk/c/d;->r:Lccsancom/applovin/impl/sdk/c/d;

    invoke-virtual {p1, v0, v1}, Lccsancom/applovin/impl/sdk/k;->b(Lccsancom/applovin/impl/sdk/c/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, v0}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->toStringObjectMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl;->b:Ljava/util/Map;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl;->b:Ljava/util/Map;

    sget-object v0, Lccsancom/applovin/impl/sdk/c/d;->r:Lccsancom/applovin/impl/sdk/c/d;

    invoke-virtual {p1, v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/EventServiceImpl;)Lccsancom/applovin/impl/sdk/k;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    return-object p0
.end method

.method private a()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->aS:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "4.0/pix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/EventServiceImpl;Lccsancom/applovin/impl/sdk/o;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1, p2}, Lccsancom/applovin/impl/sdk/EventServiceImpl;->a(Lccsancom/applovin/impl/sdk/o;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/EventServiceImpl;Lccsancom/applovin/impl/sdk/o;Z)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1, p2}, Lccsancom/applovin/impl/sdk/EventServiceImpl;->a(Lccsancom/applovin/impl/sdk/o;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private a(Lccsancom/applovin/impl/sdk/o;Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/applovin/impl/sdk/o;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object p2, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->aY:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p2, v1}, Lccsancom/applovin/impl/sdk/k;->b(Lccsancom/applovin/impl/sdk/c/b;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/o;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "postinstall"

    :goto_0
    const-string v2, "AppLovin-Event"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/o;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppLovin-Sub-Event"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method private a(Lccsancom/applovin/impl/sdk/o;Z)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/applovin/impl/sdk/o;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->aY:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->b(Lccsancom/applovin/impl/sdk/c/b;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->T()Lccsancom/applovin/impl/sdk/m;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Lccsancom/applovin/impl/sdk/m;->a(Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object p2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/o;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "postinstall"

    :goto_0
    const-string v2, "event"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/o;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "event_id"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/o;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ts"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/o;->a()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "sub_event"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {p2}, Lccsancom/applovin/impl/sdk/utils/Utils;->stringifyObjectMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private b()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->aT:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "4.0/pix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lccsancom/applovin/impl/sdk/EventServiceImpl;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/EventServiceImpl;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lccsancom/applovin/impl/sdk/EventServiceImpl;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/EventServiceImpl;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->ba:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl;->b:Ljava/util/Map;

    const-string/jumbo v1, "{}"

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/utils/CollectionUtils;->toJsonString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/d;->r:Lccsancom/applovin/impl/sdk/c/d;

    invoke-virtual {v1, v2, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getSuperProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl;->b:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public maybeTrackAppOpenEvent()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->u()Lccsancom/applovin/sdk/AppLovinEventService;

    move-result-object v0

    const-string v1, "landing"

    invoke-interface {v0, v1}, Lccsancom/applovin/sdk/AppLovinEventService;->trackEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSuperProperty(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "AppLovinEventService"

    if-eqz v0, :cond_0

    const-string p1, "Super property key cannot be null or empty"

    invoke-static {v1, p1}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl;->b:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/EventServiceImpl;->c()V

    return-void

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->aZ:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v2}, Lccsancom/applovin/impl/sdk/k;->b(Lccsancom/applovin/impl/sdk/c/b;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1, v0, v2}, Lccsancom/applovin/impl/sdk/utils/Utils;->objectIsOfType(Ljava/lang/Object;Ljava/util/List;Lccsancom/applovin/impl/sdk/k;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set super property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' for key \'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' - valid super property types include: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl;->b:Ljava/util/Map;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1, v1}, Lccsancom/applovin/impl/sdk/utils/Utils;->sanitizeSuperProperty(Ljava/lang/Object;Lccsancom/applovin/impl/sdk/k;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/EventServiceImpl;->c()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EventService{}"

    return-object v0
.end method

.method public trackCheckout(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    if-eqz p2, :cond_0

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(I)V

    :goto_0
    const-string/jumbo p2, "transaction_id"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "checkout"

    invoke-virtual {p0, p1, v0}, Lccsancom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackEvent(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0}, Lccsancom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lccsancom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tracking event: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" with parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinEventService"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lccsancom/applovin/impl/sdk/o;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl;->b:Ljava/util/Map;

    invoke-direct {v0, p1, p2, v1}, Lccsancom/applovin/impl/sdk/o;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :try_start_0
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object p1

    new-instance p2, Lccsancom/applovin/impl/sdk/e/y;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    new-instance v3, Lccsancom/applovin/impl/sdk/EventServiceImpl$1;

    invoke-direct {v3, p0, v0, p3}, Lccsancom/applovin/impl/sdk/EventServiceImpl$1;-><init>(Lccsancom/applovin/impl/sdk/EventServiceImpl;Lccsancom/applovin/impl/sdk/o;Ljava/util/Map;)V

    invoke-direct {p2, v1, v3}, Lccsancom/applovin/impl/sdk/e/y;-><init>(Lccsancom/applovin/impl/sdk/k;Ljava/lang/Runnable;)V

    sget-object p3, Lccsancom/applovin/impl/sdk/e/o$a;->c:Lccsancom/applovin/impl/sdk/e/o$a;

    invoke-virtual {p1, p2, p3}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;Lccsancom/applovin/impl/sdk/e/o$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to track event: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v2, p3, p1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public trackEventSynchronously(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tracking event: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" synchronously"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinEventService"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lccsancom/applovin/impl/sdk/o;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl;->b:Ljava/util/Map;

    invoke-direct {v0, p1, v1, v2}, Lccsancom/applovin/impl/sdk/o;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {}, Lccsancom/applovin/impl/sdk/network/g;->o()Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object p1

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/EventServiceImpl;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lccsancom/applovin/impl/sdk/network/g$a;->c(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object p1

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/EventServiceImpl;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lccsancom/applovin/impl/sdk/network/g$a;->d(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lccsancom/applovin/impl/sdk/EventServiceImpl;->a(Lccsancom/applovin/impl/sdk/o;Z)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v1}, Lccsancom/applovin/impl/sdk/network/g$a;->a(Ljava/util/Map;)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lccsancom/applovin/impl/sdk/EventServiceImpl;->a(Lccsancom/applovin/impl/sdk/o;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v1}, Lccsancom/applovin/impl/sdk/network/g$a;->b(Ljava/util/Map;)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object p1

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/o;->b()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/network/g$a;->c(Ljava/util/Map;)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object p1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->ew:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/network/g$a;->b(Z)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object p1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->en:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/network/g$a;->a(Z)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/network/g$a;->a()Lccsancom/applovin/impl/sdk/network/g;

    move-result-object p1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->S()Lccsancom/applovin/impl/sdk/network/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/sdk/network/f;->a(Lccsancom/applovin/impl/sdk/network/g;)V

    return-void
.end method

.method public trackInAppPurchase(Lccsanandroid/content/Intent;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    if-eqz p2, :cond_0

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    :try_start_0
    const-string p2, "receipt_data"

    const-string v1, "INAPP_PURCHASE_DATA"

    invoke-virtual {p1, v1}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "receipt_data_signature"

    const-string v1, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p1, v1}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string p2, "AppLovinEventService"

    const-string v1, "Unable to track in app purchase - invalid purchase intent"

    invoke-static {p2, v1, p1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const-string p1, "iap"

    invoke-virtual {p0, p1, v0}, Lccsancom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
