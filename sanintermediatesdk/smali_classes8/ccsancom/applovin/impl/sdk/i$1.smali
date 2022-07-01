.class Lccsancom/applovin/impl/sdk/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/i;->a(JLccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/sdk/i$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/k;

.field final synthetic b:Lccsancom/applovin/impl/sdk/i$a;

.field final synthetic c:Lccsancom/applovin/impl/sdk/i;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/i;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/sdk/i$a;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/i$1;->c:Lccsancom/applovin/impl/sdk/i;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/i$1;->a:Lccsancom/applovin/impl/sdk/k;

    iput-object p3, p0, Lccsancom/applovin/impl/sdk/i$1;->b:Lccsancom/applovin/impl/sdk/i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/i$1;->c:Lccsancom/applovin/impl/sdk/i;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/i;->a(Lccsancom/applovin/impl/sdk/i;)Lccsancom/applovin/impl/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/j;->c()Z

    move-result v0

    const-string v1, "ConsentAlertManager"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/i$1;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    const-string v2, "Consent dialog already showing, skip showing of consent alert"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/i$1;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->ad()Lccsancom/applovin/impl/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a;->a()Lccsanandroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/i$1;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/k;->J()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsancom/applovin/impl/sdk/utils/g;->a(Lccsanandroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lccsancom/applovin/impl/sdk/i$1$1;

    invoke-direct {v0, p0}, Lccsancom/applovin/impl/sdk/i$1$1;-><init>(Lccsancom/applovin/impl/sdk/i$1;)V

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/i$1;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    const-string v2, "No parent Activity found - rescheduling consent alert..."

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/i$1;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    const-string v2, "No internet available - rescheduling consent alert..."

    :goto_1
    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lccsancom/applovin/impl/sdk/i;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/i$1;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->aB:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/i$1;->c:Lccsancom/applovin/impl/sdk/i;

    iget-object v3, p0, Lccsancom/applovin/impl/sdk/i$1;->a:Lccsancom/applovin/impl/sdk/k;

    iget-object v4, p0, Lccsancom/applovin/impl/sdk/i$1;->b:Lccsancom/applovin/impl/sdk/i$a;

    invoke-virtual {v2, v0, v1, v3, v4}, Lccsancom/applovin/impl/sdk/i;->a(JLccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/sdk/i$a;)V

    return-void
.end method
