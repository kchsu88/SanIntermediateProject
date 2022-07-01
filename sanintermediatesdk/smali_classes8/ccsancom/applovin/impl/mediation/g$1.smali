.class Lccsancom/applovin/impl/mediation/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterInitializationParameters;Lccsanandroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterInitializationParameters;

.field final synthetic b:Lccsanandroid/app/Activity;

.field final synthetic c:Lccsancom/applovin/impl/mediation/g;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/g;Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterInitializationParameters;Lccsanandroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/g$1;->c:Lccsancom/applovin/impl/mediation/g;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/g$1;->a:Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterInitializationParameters;

    iput-object p3, p0, Lccsancom/applovin/impl/mediation/g$1;->b:Lccsanandroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$1;->c:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initializing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccsancom/applovin/impl/mediation/g$1;->c:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v4}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " on thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with \'run_on_ui_thread\' value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccsancom/applovin/impl/mediation/g$1;->c:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v4}, Lccsancom/applovin/impl/mediation/g;->b(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/mediation/a/e;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/applovin/impl/mediation/a/e;->Q()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediationAdapterWrapper"

    invoke-virtual {v2, v4, v3}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$1;->c:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->e(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/mediation/adapter/MaxAdapter;

    move-result-object v2

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/g$1;->a:Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterInitializationParameters;

    iget-object v4, p0, Lccsancom/applovin/impl/mediation/g$1;->b:Lccsanandroid/app/Activity;

    new-instance v5, Lccsancom/applovin/impl/mediation/g$1$1;

    invoke-direct {v5, p0, v0, v1}, Lccsancom/applovin/impl/mediation/g$1$1;-><init>(Lccsancom/applovin/impl/mediation/g$1;J)V

    invoke-interface {v2, v3, v4, v5}, Lccsancom/applovin/mediation/adapter/MaxAdapter;->initialize(Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterInitializationParameters;Lccsanandroid/app/Activity;Lccsancom/applovin/mediation/adapter/MaxAdapter$OnCompletionListener;)V

    return-void
.end method
