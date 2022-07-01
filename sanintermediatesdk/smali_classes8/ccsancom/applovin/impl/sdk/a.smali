.class public Lccsancom/applovin/impl/sdk/a;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/sdk/utils/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/a;->a:Ljava/util/List;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/a;->b:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/a;->c:Ljava/lang/ref/WeakReference;

    instance-of v0, p1, Lccsanandroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lccsanandroid/app/Activity;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lccsancom/applovin/impl/sdk/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Lccsanandroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/a;->b:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/a;->c:Ljava/lang/ref/WeakReference;

    :cond_0
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    check-cast p1, Lccsanandroid/app/Application;

    invoke-virtual {p1, p0}, Lccsanandroid/app/Application;->registerActivityLifecycleCallbacks(Lccsanandroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method


# virtual methods
.method public a()Lccsanandroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/Activity;

    return-object v0
.end method

.method public a(Lccsancom/applovin/impl/sdk/utils/a;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Lccsanandroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/Activity;

    return-object v0
.end method

.method public b(Lccsancom/applovin/impl/sdk/utils/a;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityCreated(Lccsanandroid/app/Activity;Lccsanandroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/a;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/applovin/impl/sdk/utils/a;

    invoke-virtual {v1, p1, p2}, Lccsancom/applovin/impl/sdk/utils/a;->onActivityCreated(Lccsanandroid/app/Activity;Lccsanandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Lccsanandroid/app/Activity;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/a;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/applovin/impl/sdk/utils/a;

    invoke-virtual {v1, p1}, Lccsancom/applovin/impl/sdk/utils/a;->onActivityDestroyed(Lccsanandroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityPaused(Lccsanandroid/app/Activity;)V
    .locals 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/a;->c:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/a;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/applovin/impl/sdk/utils/a;

    invoke-virtual {v1, p1}, Lccsancom/applovin/impl/sdk/utils/a;->onActivityPaused(Lccsanandroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityResumed(Lccsanandroid/app/Activity;)V
    .locals 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/a;->b:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/a;->c:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/a;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/applovin/impl/sdk/utils/a;

    invoke-virtual {v1, p1}, Lccsancom/applovin/impl/sdk/utils/a;->onActivityResumed(Lccsanandroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Lccsanandroid/app/Activity;Lccsanandroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/a;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/applovin/impl/sdk/utils/a;

    invoke-virtual {v1, p1, p2}, Lccsancom/applovin/impl/sdk/utils/a;->onActivitySaveInstanceState(Lccsanandroid/app/Activity;Lccsanandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityStarted(Lccsanandroid/app/Activity;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/a;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/applovin/impl/sdk/utils/a;

    invoke-virtual {v1, p1}, Lccsancom/applovin/impl/sdk/utils/a;->onActivityStarted(Lccsanandroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityStopped(Lccsanandroid/app/Activity;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/a;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/applovin/impl/sdk/utils/a;

    invoke-virtual {v1, p1}, Lccsancom/applovin/impl/sdk/utils/a;->onActivityStopped(Lccsanandroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method
