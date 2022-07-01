.class Lccsancom/applovin/impl/mediation/debugger/a$1;
.super Lccsancom/applovin/impl/sdk/utils/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/debugger/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/debugger/a;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/debugger/a;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/a$1;->a:Lccsancom/applovin/impl/mediation/debugger/a;

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityDestroyed(Lccsanandroid/app/Activity;)V
    .locals 1

    instance-of p1, p1, Lccsancom/applovin/mediation/MaxDebuggerActivity;

    if-eqz p1, :cond_0

    const-string p1, "AppLovinSdk"

    const-string v0, "Mediation debugger destroyed"

    invoke-static {p1, v0}, Lccsancom/applovin/impl/sdk/r;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/a$1;->a:Lccsancom/applovin/impl/mediation/debugger/a;

    invoke-static {p1}, Lccsancom/applovin/impl/mediation/debugger/a;->c(Lccsancom/applovin/impl/mediation/debugger/a;)Lccsancom/applovin/impl/sdk/k;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->ad()Lccsancom/applovin/impl/sdk/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lccsancom/applovin/impl/sdk/a;->b(Lccsancom/applovin/impl/sdk/utils/a;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lccsancom/applovin/impl/mediation/debugger/a;->a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public onActivityStarted(Lccsanandroid/app/Activity;)V
    .locals 2

    instance-of v0, p1, Lccsancom/applovin/mediation/MaxDebuggerActivity;

    if-eqz v0, :cond_2

    const-string v0, "AppLovinSdk"

    const-string v1, "Started mediation debugger"

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/r;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/a$1;->a:Lccsancom/applovin/impl/mediation/debugger/a;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/debugger/a;->a(Lccsancom/applovin/impl/mediation/debugger/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lccsancom/applovin/impl/mediation/debugger/a;->d()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    :cond_0
    check-cast p1, Lccsancom/applovin/mediation/MaxDebuggerActivity;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/debugger/a;->a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/a$1;->a:Lccsancom/applovin/impl/mediation/debugger/a;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/debugger/a;->b(Lccsancom/applovin/impl/mediation/debugger/a;)Lccsancom/applovin/impl/mediation/debugger/ui/b/b;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/a$1;->a:Lccsancom/applovin/impl/mediation/debugger/a;

    invoke-static {v1}, Lccsancom/applovin/impl/mediation/debugger/a;->c(Lccsancom/applovin/impl/mediation/debugger/a;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->ad()Lccsancom/applovin/impl/sdk/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lccsancom/applovin/mediation/MaxDebuggerActivity;->setListAdapter(Lccsancom/applovin/impl/mediation/debugger/ui/b/b;Lccsancom/applovin/impl/sdk/a;)V

    :cond_1
    invoke-static {}, Lccsancom/applovin/impl/mediation/debugger/a;->e()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    return-void
.end method
