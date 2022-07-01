.class Lccsancom/applovin/impl/mediation/g$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;Lccsancom/applovin/impl/mediation/a/g;Lccsanandroid/app/Activity;Lccsancom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/mediation/adapter/MaxSignalProvider;

.field final synthetic b:Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;

.field final synthetic c:Lccsanandroid/app/Activity;

.field final synthetic d:Lccsancom/applovin/impl/mediation/g$b;

.field final synthetic e:Lccsancom/applovin/impl/mediation/a/g;

.field final synthetic f:Lccsancom/applovin/impl/mediation/g;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/g;Lccsancom/applovin/mediation/adapter/MaxSignalProvider;Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;Lccsanandroid/app/Activity;Lccsancom/applovin/impl/mediation/g$b;Lccsancom/applovin/impl/mediation/a/g;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/g$4;->f:Lccsancom/applovin/impl/mediation/g;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/g$4;->a:Lccsancom/applovin/mediation/adapter/MaxSignalProvider;

    iput-object p3, p0, Lccsancom/applovin/impl/mediation/g$4;->b:Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;

    iput-object p4, p0, Lccsancom/applovin/impl/mediation/g$4;->c:Lccsanandroid/app/Activity;

    iput-object p5, p0, Lccsancom/applovin/impl/mediation/g$4;->d:Lccsancom/applovin/impl/mediation/g$b;

    iput-object p6, p0, Lccsancom/applovin/impl/mediation/g$4;->e:Lccsancom/applovin/impl/mediation/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$4;->a:Lccsancom/applovin/mediation/adapter/MaxSignalProvider;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/g$4;->b:Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$4;->c:Lccsanandroid/app/Activity;

    new-instance v3, Lccsancom/applovin/impl/mediation/g$4$1;

    invoke-direct {v3, p0}, Lccsancom/applovin/impl/mediation/g$4$1;-><init>(Lccsancom/applovin/impl/mediation/g$4;)V

    invoke-interface {v0, v1, v2, v3}, Lccsancom/applovin/mediation/adapter/MaxSignalProvider;->collectSignal(Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;Lccsanandroid/app/Activity;Lccsancom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/g$4;->f:Lccsancom/applovin/impl/mediation/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed signal collection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/g$4;->f:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v3}, Lccsancom/applovin/impl/mediation/g;->j(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " due to exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$4;->d:Lccsancom/applovin/impl/mediation/g$b;

    invoke-static {v1, v0, v2}, Lccsancom/applovin/impl/mediation/g;->b(Lccsancom/applovin/impl/mediation/g;Ljava/lang/String;Lccsancom/applovin/impl/mediation/g$b;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$4;->f:Lccsancom/applovin/impl/mediation/g;

    const-string v1, "collect_signal"

    invoke-static {v0, v1}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$4;->f:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->d(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->A()Lccsancom/applovin/impl/mediation/f;

    move-result-object v0

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$4;->f:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->b(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/mediation/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/applovin/impl/mediation/a/e;->J()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/g$4;->f:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v3}, Lccsancom/applovin/impl/mediation/g;->g(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/mediation/a/a;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lccsancom/applovin/impl/mediation/f;->a(Ljava/lang/String;Ljava/lang/String;Lccsancom/applovin/impl/mediation/a/a;)V

    :goto_0
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$4;->d:Lccsancom/applovin/impl/mediation/g$b;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g$b;->a(Lccsancom/applovin/impl/mediation/g$b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$4;->e:Lccsancom/applovin/impl/mediation/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/a/g;->S()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-string v4, "MediationAdapterWrapper"

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$4;->f:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failing signal collection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$4;->e:Lccsancom/applovin/impl/mediation/a/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " since it has 0 timeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$4;->f:Lccsancom/applovin/impl/mediation/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The adapter ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$4;->f:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") has 0 timeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$4;->d:Lccsancom/applovin/impl/mediation/g$b;

    invoke-static {v0, v1, v2}, Lccsancom/applovin/impl/mediation/g;->b(Lccsancom/applovin/impl/mediation/g;Ljava/lang/String;Lccsancom/applovin/impl/mediation/g$b;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$4;->e:Lccsancom/applovin/impl/mediation/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/a/g;->S()J

    move-result-wide v0

    cmp-long v5, v0, v2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$4;->f:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    if-lez v5, :cond_1

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting timeout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$4;->e:Lccsancom/applovin/impl/mediation/a/g;

    invoke-virtual {v2}, Lccsancom/applovin/impl/mediation/a/g;->S()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms. for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$4;->e:Lccsancom/applovin/impl/mediation/a/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$4;->e:Lccsancom/applovin/impl/mediation/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/a/g;->S()J

    move-result-wide v0

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$4;->f:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->d(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object v2

    new-instance v3, Lccsancom/applovin/impl/mediation/g$d;

    iget-object v4, p0, Lccsancom/applovin/impl/mediation/g$4;->f:Lccsancom/applovin/impl/mediation/g;

    iget-object v5, p0, Lccsancom/applovin/impl/mediation/g$4;->d:Lccsancom/applovin/impl/mediation/g$b;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lccsancom/applovin/impl/mediation/g$d;-><init>(Lccsancom/applovin/impl/mediation/g;Lccsancom/applovin/impl/mediation/g$b;Lccsancom/applovin/impl/mediation/g$1;)V

    sget-object v4, Lccsancom/applovin/impl/sdk/e/o$a;->k:Lccsancom/applovin/impl/sdk/e/o$a;

    invoke-virtual {v2, v3, v4, v0, v1}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;Lccsancom/applovin/impl/sdk/e/o$a;J)V

    goto :goto_1

    :cond_1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative timeout set for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$4;->e:Lccsancom/applovin/impl/mediation/a/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", not scheduling a timeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
