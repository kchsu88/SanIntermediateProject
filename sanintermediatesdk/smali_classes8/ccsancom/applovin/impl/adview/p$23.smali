.class Lccsancom/applovin/impl/adview/p$23;
.super Lccsancom/applovin/impl/sdk/utils/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/p;->onCreate(Lccsanandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/p;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/p;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/p$23;->a:Lccsancom/applovin/impl/adview/p;

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Lccsanandroid/app/Activity;Lccsanandroid/os/Bundle;)V
    .locals 1

    iget-object p2, p0, Lccsancom/applovin/impl/adview/p$23;->a:Lccsancom/applovin/impl/adview/p;

    iget-object p2, p2, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lccsancom/applovin/impl/adview/p$23;->a:Lccsancom/applovin/impl/adview/p;

    iget-object p2, p2, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->eB:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p2, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lccsancom/applovin/impl/adview/p$23;->a:Lccsancom/applovin/impl/adview/p;

    invoke-static {p2}, Lccsancom/applovin/impl/adview/p;->a(Lccsancom/applovin/impl/adview/p;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lccsancom/applovin/impl/adview/p$23;->a:Lccsancom/applovin/impl/adview/p;

    invoke-virtual {p2}, Lccsancom/applovin/impl/adview/p;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lccsancom/applovin/impl/sdk/utils/Utils;->retrieveLauncherActivityFullyQualifiedName(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lccsancom/applovin/impl/sdk/e/y;

    iget-object p2, p0, Lccsancom/applovin/impl/adview/p$23;->a:Lccsancom/applovin/impl/adview/p;

    iget-object p2, p2, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    new-instance v0, Lccsancom/applovin/impl/adview/p$23$1;

    invoke-direct {v0, p0}, Lccsancom/applovin/impl/adview/p$23$1;-><init>(Lccsancom/applovin/impl/adview/p$23;)V

    invoke-direct {p1, p2, v0}, Lccsancom/applovin/impl/sdk/e/y;-><init>(Lccsancom/applovin/impl/sdk/k;Ljava/lang/Runnable;)V

    iget-object p2, p0, Lccsancom/applovin/impl/adview/p$23;->a:Lccsancom/applovin/impl/adview/p;

    iget-object p2, p2, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object p2

    sget-object v0, Lccsancom/applovin/impl/sdk/e/o$a;->a:Lccsancom/applovin/impl/sdk/e/o$a;

    invoke-virtual {p2, p1, v0}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;Lccsancom/applovin/impl/sdk/e/o$a;)V

    :cond_0
    return-void
.end method
