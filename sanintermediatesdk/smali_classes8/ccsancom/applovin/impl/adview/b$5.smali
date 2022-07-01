.class Lccsancom/applovin/impl/adview/b$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/b;->k()V
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

    iput-object p1, p0, Lccsancom/applovin/impl/adview/b$5;->a:Lccsancom/applovin/impl/adview/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$5;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->m(Lccsancom/applovin/impl/adview/b;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$5;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->h(Lccsancom/applovin/impl/adview/b;)Lccsanandroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$5;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$5;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/d;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/d;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$5;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->h(Lccsancom/applovin/impl/adview/b;)Lccsanandroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/b$5;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v1}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$5;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/d;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/b$5;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v1}, Lccsancom/applovin/impl/adview/b;->e(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/sdk/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/g;->getSize()Lccsancom/applovin/sdk/AppLovinAdSize;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/applovin/impl/adview/b;->a(Lccsanandroid/view/View;Lccsancom/applovin/sdk/AppLovinAdSize;)V

    :cond_0
    return-void
.end method
