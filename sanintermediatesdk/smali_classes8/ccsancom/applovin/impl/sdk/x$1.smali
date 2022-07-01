.class Lccsancom/applovin/impl/sdk/x$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/x;-><init>(Lccsancom/applovin/mediation/ads/MaxAdView;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/sdk/x$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lccsancom/applovin/impl/sdk/x;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/x;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/x$1;->b:Lccsancom/applovin/impl/sdk/x;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/x$1;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/x$1;->b:Lccsancom/applovin/impl/sdk/x;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/x;->a(Lccsancom/applovin/impl/sdk/x;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/mediation/ads/MaxAdView;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/x$1;->b:Lccsancom/applovin/impl/sdk/x;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/x;->b(Lccsancom/applovin/impl/sdk/x;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/View;

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lccsancom/applovin/impl/sdk/x$1;->b:Lccsancom/applovin/impl/sdk/x;

    invoke-static {v2, v0, v1}, Lccsancom/applovin/impl/sdk/x;->a(Lccsancom/applovin/impl/sdk/x;Lccsanandroid/view/View;Lccsanandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/x$1;->b:Lccsancom/applovin/impl/sdk/x;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/x;->c(Lccsancom/applovin/impl/sdk/x;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    const-string v1, "VisibilityTracker"

    const-string v2, "View met visibility requirements. Logging visibility impression.."

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/x$1;->b:Lccsancom/applovin/impl/sdk/x;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/x;->a()V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/x$1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/impl/sdk/x$a;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lccsancom/applovin/impl/sdk/x$a;->onLogVisibilityImpression()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/x$1;->b:Lccsancom/applovin/impl/sdk/x;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/x;->d(Lccsancom/applovin/impl/sdk/x;)V

    :cond_2
    :goto_0
    return-void
.end method
