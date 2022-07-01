.class Lccsancom/applovin/impl/sdk/EventServiceImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/o;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lccsancom/applovin/impl/sdk/EventServiceImpl;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/EventServiceImpl;Lccsancom/applovin/impl/sdk/o;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl$1;->c:Lccsancom/applovin/impl/sdk/EventServiceImpl;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl$1;->a:Lccsancom/applovin/impl/sdk/o;

    iput-object p3, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl$1;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lccsancom/applovin/impl/sdk/network/g;->o()Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl$1;->c:Lccsancom/applovin/impl/sdk/EventServiceImpl;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/EventServiceImpl;->c(Lccsancom/applovin/impl/sdk/EventServiceImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/g$a;->c(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl$1;->c:Lccsancom/applovin/impl/sdk/EventServiceImpl;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/EventServiceImpl;->b(Lccsancom/applovin/impl/sdk/EventServiceImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/g$a;->d(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl$1;->c:Lccsancom/applovin/impl/sdk/EventServiceImpl;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl$1;->a:Lccsancom/applovin/impl/sdk/o;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lccsancom/applovin/impl/sdk/EventServiceImpl;->a(Lccsancom/applovin/impl/sdk/EventServiceImpl;Lccsancom/applovin/impl/sdk/o;Z)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/g$a;->a(Ljava/util/Map;)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl$1;->c:Lccsancom/applovin/impl/sdk/EventServiceImpl;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl$1;->a:Lccsancom/applovin/impl/sdk/o;

    iget-object v3, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl$1;->b:Ljava/util/Map;

    invoke-static {v1, v2, v3}, Lccsancom/applovin/impl/sdk/EventServiceImpl;->a(Lccsancom/applovin/impl/sdk/EventServiceImpl;Lccsancom/applovin/impl/sdk/o;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/g$a;->b(Ljava/util/Map;)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl$1;->a:Lccsancom/applovin/impl/sdk/o;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/o;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/g$a;->c(Ljava/util/Map;)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl$1;->c:Lccsancom/applovin/impl/sdk/EventServiceImpl;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/EventServiceImpl;->a(Lccsancom/applovin/impl/sdk/EventServiceImpl;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v1

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->ew:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/g$a;->b(Z)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl$1;->c:Lccsancom/applovin/impl/sdk/EventServiceImpl;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/EventServiceImpl;->a(Lccsancom/applovin/impl/sdk/EventServiceImpl;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v1

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->en:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/g$a;->a(Z)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/network/g$a;->a()Lccsancom/applovin/impl/sdk/network/g;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/EventServiceImpl$1;->c:Lccsancom/applovin/impl/sdk/EventServiceImpl;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/EventServiceImpl;->a(Lccsancom/applovin/impl/sdk/EventServiceImpl;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->S()Lccsancom/applovin/impl/sdk/network/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsancom/applovin/impl/sdk/network/f;->a(Lccsancom/applovin/impl/sdk/network/g;)V

    return-void
.end method
