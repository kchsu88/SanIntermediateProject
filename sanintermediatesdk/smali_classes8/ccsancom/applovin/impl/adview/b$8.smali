.class Lccsancom/applovin/impl/adview/b$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/b;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/b;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/b;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/b$8;->a:Lccsancom/applovin/impl/adview/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$8;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->p(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/m;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$8;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->b(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/m;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$8;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->p(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/m;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$8;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->p(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/m;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/m;->a()Lccsancom/applovin/impl/sdk/a/a;

    move-result-object v0

    iget-object v2, p0, Lccsancom/applovin/impl/adview/b$8;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v2}, Lccsancom/applovin/impl/adview/b;->p(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/m;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/applovin/impl/adview/m;->dismiss()V

    iget-object v2, p0, Lccsancom/applovin/impl/adview/b$8;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v2, v1}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/impl/adview/b;Lccsancom/applovin/impl/adview/m;)Lccsancom/applovin/impl/adview/m;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$8;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->b(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/m;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/m;->a()Lccsancom/applovin/impl/sdk/a/a;

    move-result-object v0

    iget-object v2, p0, Lccsancom/applovin/impl/adview/b$8;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v2}, Lccsancom/applovin/impl/adview/b;->b(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/m;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/applovin/impl/adview/m;->dismiss()V

    iget-object v2, p0, Lccsancom/applovin/impl/adview/b$8;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v2, v1}, Lccsancom/applovin/impl/adview/b;->b(Lccsancom/applovin/impl/adview/b;Lccsancom/applovin/impl/adview/m;)Lccsancom/applovin/impl/adview/m;

    :goto_0
    iget-object v1, p0, Lccsancom/applovin/impl/adview/b$8;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v1}, Lccsancom/applovin/impl/adview/b;->i(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/adview/AppLovinAdViewEventListener;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/adview/b$8;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v2}, Lccsancom/applovin/impl/adview/b;->h(Lccsancom/applovin/impl/adview/b;)Lccsanandroid/view/ViewGroup;

    move-result-object v2

    check-cast v2, Lccsancom/applovin/adview/AppLovinAdView;

    invoke-static {v1, v0, v2}, Lccsancom/applovin/impl/sdk/utils/i;->b(Lccsancom/applovin/adview/AppLovinAdViewEventListener;Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/adview/AppLovinAdView;)V

    :cond_2
    return-void
.end method
