.class public final Lccsancom/applovin/impl/adview/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/adview/k$a;,
        Lccsancom/applovin/impl/adview/k$b;
    }
.end annotation


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/r;

.field private final b:Lccsanandroid/os/Handler;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lccsancom/applovin/impl/adview/k$b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lccsanandroid/os/Handler;Lccsancom/applovin/impl/sdk/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/adview/k;->c:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/adview/k;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/k;->b:Lccsanandroid/os/Handler;

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/adview/k;->a:Lccsancom/applovin/impl/sdk/r;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No sdk specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No handler specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lccsancom/applovin/impl/adview/k;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/k;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private a(Lccsancom/applovin/impl/adview/k$b;I)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/k;->b:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/applovin/impl/adview/k$1;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/applovin/impl/adview/k$1;-><init>(Lccsancom/applovin/impl/adview/k;Lccsancom/applovin/impl/adview/k$b;I)V

    invoke-static {p1}, Lccsancom/applovin/impl/adview/k$b;->c(Lccsancom/applovin/impl/adview/k$b;)J

    move-result-wide p1

    invoke-virtual {v0, v1, p1, p2}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/adview/k;Lccsancom/applovin/impl/adview/k$b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lccsancom/applovin/impl/adview/k;->a(Lccsancom/applovin/impl/adview/k$b;I)V

    return-void
.end method

.method static synthetic b(Lccsancom/applovin/impl/adview/k;)Lccsancom/applovin/impl/sdk/r;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/k;->a:Lccsancom/applovin/impl/sdk/r;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 7

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/k;->c:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lccsancom/applovin/impl/adview/k;->a:Lccsancom/applovin/impl/sdk/r;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " countdowns..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CountdownManager"

    invoke-virtual {v1, v3, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lccsancom/applovin/impl/adview/k;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/applovin/impl/adview/k$b;

    iget-object v4, p0, Lccsancom/applovin/impl/adview/k;->a:Lccsancom/applovin/impl/sdk/r;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting countdown: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lccsancom/applovin/impl/adview/k$b;->a(Lccsancom/applovin/impl/adview/k$b;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for generation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, v1}, Lccsancom/applovin/impl/adview/k;->a(Lccsancom/applovin/impl/adview/k$b;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;JLccsancom/applovin/impl/adview/k$a;)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/k;->b:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/k;->a:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding countdown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CountdownManager"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lccsancom/applovin/impl/adview/k$b;

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v3 .. v8}, Lccsancom/applovin/impl/adview/k$b;-><init>(Ljava/lang/String;JLccsancom/applovin/impl/adview/k$a;Lccsancom/applovin/impl/adview/k$1;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/k;->c:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No handler specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid step specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/k;->a:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "CountdownManager"

    const-string v2, "Removing all countdowns..."

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/k;->c()V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/k;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/k;->a:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "CountdownManager"

    const-string v2, "Stopping countdowns..."

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/k;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lccsancom/applovin/impl/adview/k;->b:Lccsanandroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
