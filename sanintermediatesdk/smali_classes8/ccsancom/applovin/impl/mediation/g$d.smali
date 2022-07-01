.class Lccsancom/applovin/impl/mediation/g$d;
.super Lccsancom/applovin/impl/sdk/e/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/mediation/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/g;

.field private final c:Lccsancom/applovin/impl/mediation/g$b;


# direct methods
.method private constructor <init>(Lccsancom/applovin/impl/mediation/g;Lccsancom/applovin/impl/mediation/g$b;)V
    .locals 1

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/g$d;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {p1}, Lccsancom/applovin/impl/mediation/g;->d(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/k;

    move-result-object p1

    const-string v0, "TaskTimeoutSignalCollection"

    invoke-direct {p0, v0, p1}, Lccsancom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/g$d;->c:Lccsancom/applovin/impl/mediation/g$b;

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/applovin/impl/mediation/g;Lccsancom/applovin/impl/mediation/g$b;Lccsancom/applovin/impl/mediation/g$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lccsancom/applovin/impl/mediation/g$d;-><init>(Lccsancom/applovin/impl/mediation/g;Lccsancom/applovin/impl/mediation/g$b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$d;->c:Lccsancom/applovin/impl/mediation/g$b;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g$b;->a(Lccsancom/applovin/impl/mediation/g$b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/g$d;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v1}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is timing out "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/g$d;->c:Lccsancom/applovin/impl/mediation/g$b;

    invoke-static {v1}, Lccsancom/applovin/impl/mediation/g$b;->c(Lccsancom/applovin/impl/mediation/g$b;)Lccsancom/applovin/impl/mediation/a/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/g$d;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$d;->a:Lccsancom/applovin/impl/mediation/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The adapter ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$d;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") timed out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$d;->c:Lccsancom/applovin/impl/mediation/g$b;

    invoke-static {v0, v1, v2}, Lccsancom/applovin/impl/mediation/g;->b(Lccsancom/applovin/impl/mediation/g;Ljava/lang/String;Lccsancom/applovin/impl/mediation/g$b;)V

    :cond_0
    return-void
.end method
