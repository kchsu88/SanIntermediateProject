.class public final Lccsancom/applovin/communicator/AppLovinCommunicator;
.super Ljava/lang/Object;


# static fields
.field private static a:Lccsancom/applovin/communicator/AppLovinCommunicator;

.field private static final b:Ljava/lang/Object;


# instance fields
.field private c:Lccsancom/applovin/impl/sdk/k;

.field private d:Lccsancom/applovin/impl/sdk/r;

.field private final e:Lccsancom/applovin/impl/communicator/a;

.field private final f:Lccsancom/applovin/impl/communicator/MessagingServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccsancom/applovin/communicator/AppLovinCommunicator;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lccsancom/applovin/impl/communicator/a;

    invoke-direct {v0, p1}, Lccsancom/applovin/impl/communicator/a;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/applovin/communicator/AppLovinCommunicator;->e:Lccsancom/applovin/impl/communicator/a;

    new-instance v0, Lccsancom/applovin/impl/communicator/MessagingServiceImpl;

    invoke-direct {v0, p1}, Lccsancom/applovin/impl/communicator/MessagingServiceImpl;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/applovin/communicator/AppLovinCommunicator;->f:Lccsancom/applovin/impl/communicator/MessagingServiceImpl;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/communicator/AppLovinCommunicator;->d:Lccsancom/applovin/impl/sdk/r;

    if-eqz v0, :cond_0

    const-string v1, "AppLovinCommunicator"

    invoke-virtual {v0, v1, p1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getInstance(Lccsanandroid/content/Context;)Lccsancom/applovin/communicator/AppLovinCommunicator;
    .locals 2

    sget-object v0, Lccsancom/applovin/communicator/AppLovinCommunicator;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lccsancom/applovin/communicator/AppLovinCommunicator;->a:Lccsancom/applovin/communicator/AppLovinCommunicator;

    if-nez v1, :cond_0

    new-instance v1, Lccsancom/applovin/communicator/AppLovinCommunicator;

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lccsancom/applovin/communicator/AppLovinCommunicator;-><init>(Lccsanandroid/content/Context;)V

    sput-object v1, Lccsancom/applovin/communicator/AppLovinCommunicator;->a:Lccsancom/applovin/communicator/AppLovinCommunicator;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lccsancom/applovin/communicator/AppLovinCommunicator;->a:Lccsancom/applovin/communicator/AppLovinCommunicator;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(Lccsancom/applovin/impl/sdk/k;)V
    .locals 2

    iput-object p1, p0, Lccsancom/applovin/communicator/AppLovinCommunicator;->c:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/communicator/AppLovinCommunicator;->d:Lccsancom/applovin/impl/sdk/r;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attached SDK instance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsancom/applovin/communicator/AppLovinCommunicator;->a(Ljava/lang/String;)V

    return-void
.end method

.method public getMessagingService()Lccsancom/applovin/communicator/AppLovinCommunicatorMessagingService;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/communicator/AppLovinCommunicator;->f:Lccsancom/applovin/impl/communicator/MessagingServiceImpl;

    return-object v0
.end method

.method public subscribe(Lccsancom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/lang/String;)V
    .locals 0

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lccsancom/applovin/communicator/AppLovinCommunicator;->subscribe(Lccsancom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/util/List;)V

    return-void
.end method

.method public subscribe(Lccsancom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/applovin/communicator/AppLovinCommunicatorSubscriber;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lccsancom/applovin/communicator/AppLovinCommunicator;->e:Lccsancom/applovin/impl/communicator/a;

    invoke-virtual {v1, p1, v0}, Lccsancom/applovin/impl/communicator/a;->a(Lccsancom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/applovin/communicator/AppLovinCommunicator;->f:Lccsancom/applovin/impl/communicator/MessagingServiceImpl;

    invoke-virtual {v1, v0}, Lccsancom/applovin/impl/communicator/MessagingServiceImpl;->maybeFlushStickyMessages(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to subscribe "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to topic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/applovin/communicator/AppLovinCommunicator;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppLovinCommunicator{sdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/communicator/AppLovinCommunicator;->c:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribe(Lccsancom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/lang/String;)V
    .locals 0

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lccsancom/applovin/communicator/AppLovinCommunicator;->unsubscribe(Lccsancom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/util/List;)V

    return-void
.end method

.method public unsubscribe(Lccsancom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/applovin/communicator/AppLovinCommunicatorSubscriber;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsubscribing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from topic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lccsancom/applovin/communicator/AppLovinCommunicator;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lccsancom/applovin/communicator/AppLovinCommunicator;->e:Lccsancom/applovin/impl/communicator/a;

    invoke-virtual {v1, p1, v0}, Lccsancom/applovin/impl/communicator/a;->b(Lccsancom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
