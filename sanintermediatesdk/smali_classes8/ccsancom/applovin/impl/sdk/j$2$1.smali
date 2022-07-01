.class Lccsancom/applovin/impl/sdk/j$2$1;
.super Lccsancom/applovin/impl/sdk/utils/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/j$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/j$2;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/j$2;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/j$2$1;->a:Lccsancom/applovin/impl/sdk/j$2;

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityStarted(Lccsanandroid/app/Activity;)V
    .locals 2

    instance-of v0, p1, Lccsancom/applovin/sdk/AppLovinWebViewActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/j$2$1;->a:Lccsancom/applovin/impl/sdk/j$2;

    iget-object v0, v0, Lccsancom/applovin/impl/sdk/j$2;->c:Lccsancom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lccsancom/applovin/impl/sdk/j;->e()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    :cond_0
    check-cast p1, Lccsancom/applovin/sdk/AppLovinWebViewActivity;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/j;->a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/j$2$1;->a:Lccsancom/applovin/impl/sdk/j$2;

    iget-object v0, v0, Lccsancom/applovin/impl/sdk/j$2;->c:Lccsancom/applovin/impl/sdk/j;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/j;->a(Lccsancom/applovin/impl/sdk/j;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->ap:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/j$2$1;->a:Lccsancom/applovin/impl/sdk/j$2;

    iget-object v1, v1, Lccsancom/applovin/impl/sdk/j$2;->c:Lccsancom/applovin/impl/sdk/j;

    invoke-virtual {p1, v0, v1}, Lccsancom/applovin/sdk/AppLovinWebViewActivity;->loadUrl(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinWebViewActivity$EventListener;)V

    :cond_1
    invoke-static {}, Lccsancom/applovin/impl/sdk/j;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    return-void
.end method
