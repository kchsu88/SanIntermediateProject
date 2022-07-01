.class Lccsancom/applovin/impl/sdk/j$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/j;->a(Lccsanandroid/app/Activity;Lccsancom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;

.field final synthetic b:Lccsanandroid/app/Activity;

.field final synthetic c:Lccsancom/applovin/impl/sdk/j;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/j;Lccsancom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;Lccsanandroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/j$2;->c:Lccsancom/applovin/impl/sdk/j;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/j$2;->a:Lccsancom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;

    iput-object p3, p0, Lccsancom/applovin/impl/sdk/j$2;->b:Lccsanandroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/j$2;->c:Lccsancom/applovin/impl/sdk/j;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/j;->a(Lccsancom/applovin/impl/sdk/j;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/j;->a(Lccsancom/applovin/impl/sdk/j;Lccsancom/applovin/impl/sdk/k;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lccsancom/applovin/impl/sdk/j;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/j$2;->c:Lccsancom/applovin/impl/sdk/j;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/j$2;->b:Lccsanandroid/app/Activity;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/j;->a(Lccsancom/applovin/impl/sdk/j;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/j$2;->c:Lccsancom/applovin/impl/sdk/j;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/j$2;->a:Lccsancom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/j;->a(Lccsancom/applovin/impl/sdk/j;Lccsancom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;)Lccsancom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/j$2;->c:Lccsancom/applovin/impl/sdk/j;

    new-instance v1, Lccsancom/applovin/impl/sdk/j$2$1;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/sdk/j$2$1;-><init>(Lccsancom/applovin/impl/sdk/j$2;)V

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/j;->a(Lccsancom/applovin/impl/sdk/j;Lccsancom/applovin/impl/sdk/utils/a;)Lccsancom/applovin/impl/sdk/utils/a;

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/j$2;->c:Lccsancom/applovin/impl/sdk/j;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/j;->a(Lccsancom/applovin/impl/sdk/j;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->ad()Lccsancom/applovin/impl/sdk/a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/j$2;->c:Lccsancom/applovin/impl/sdk/j;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/j;->b(Lccsancom/applovin/impl/sdk/j;)Lccsancom/applovin/impl/sdk/utils/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/a;->a(Lccsancom/applovin/impl/sdk/utils/a;)V

    new-instance v0, Lccsanandroid/content/Intent;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/j$2;->b:Lccsanandroid/app/Activity;

    const-class v2, Lccsancom/applovin/sdk/AppLovinWebViewActivity;

    invoke-direct {v0, v1, v2}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/j$2;->c:Lccsancom/applovin/impl/sdk/j;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/j;->a(Lccsancom/applovin/impl/sdk/j;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->x()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sdk_key"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/j$2;->c:Lccsancom/applovin/impl/sdk/j;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/j;->a(Lccsancom/applovin/impl/sdk/j;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v1

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->aq:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    const-string v2, "immersive_mode_on"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Lccsanandroid/content/Intent;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/j$2;->b:Lccsanandroid/app/Activity;

    invoke-virtual {v1, v0}, Lccsanandroid/app/Activity;->startActivity(Lccsanandroid/content/Intent;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/j$2;->a:Lccsancom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lccsancom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;->onDismiss()V

    :cond_2
    return-void
.end method
