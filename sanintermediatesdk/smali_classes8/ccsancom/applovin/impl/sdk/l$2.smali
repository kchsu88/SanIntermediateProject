.class Lccsancom/applovin/impl/sdk/l$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/l;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/l;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/l;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/l$2;->a:Lccsancom/applovin/impl/sdk/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/l$2;->a:Lccsancom/applovin/impl/sdk/l;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/l;->a(Lccsancom/applovin/impl/sdk/l;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->af()Lccsancom/applovin/impl/sdk/g;

    move-result-object v0

    new-instance v1, Lccsanandroid/os/Bundle;

    invoke-direct {v1}, Lccsanandroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "show_creative_debugger"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/g;->a(Lccsanandroid/os/Bundle;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/l$2;->a:Lccsancom/applovin/impl/sdk/l;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/l;->b(Lccsancom/applovin/impl/sdk/l;)V

    return-void
.end method
