.class Lccsancom/applovin/impl/sdk/i$1$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/i$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/i$1$1;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/i$1$1;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/i$1$1$1;->a:Lccsancom/applovin/impl/sdk/i$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/content/DialogInterface;I)V
    .locals 3

    iget-object p2, p0, Lccsancom/applovin/impl/sdk/i$1$1$1;->a:Lccsancom/applovin/impl/sdk/i$1$1;

    iget-object p2, p2, Lccsancom/applovin/impl/sdk/i$1$1;->a:Lccsancom/applovin/impl/sdk/i$1;

    iget-object p2, p2, Lccsancom/applovin/impl/sdk/i$1;->b:Lccsancom/applovin/impl/sdk/i$a;

    invoke-interface {p2}, Lccsancom/applovin/impl/sdk/i$a;->b()V

    invoke-interface {p1}, Lccsanandroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lccsancom/applovin/impl/sdk/i;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/i$1$1$1;->a:Lccsancom/applovin/impl/sdk/i$1$1;

    iget-object p1, p1, Lccsancom/applovin/impl/sdk/i$1$1;->a:Lccsancom/applovin/impl/sdk/i$1;

    iget-object p1, p1, Lccsancom/applovin/impl/sdk/i$1;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object p2, Lccsancom/applovin/impl/sdk/c/b;->aA:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/i$1$1$1;->a:Lccsancom/applovin/impl/sdk/i$1$1;

    iget-object v0, v0, Lccsancom/applovin/impl/sdk/i$1$1;->a:Lccsancom/applovin/impl/sdk/i$1;

    iget-object v0, v0, Lccsancom/applovin/impl/sdk/i$1;->c:Lccsancom/applovin/impl/sdk/i;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/i$1$1$1;->a:Lccsancom/applovin/impl/sdk/i$1$1;

    iget-object v1, v1, Lccsancom/applovin/impl/sdk/i$1$1;->a:Lccsancom/applovin/impl/sdk/i$1;

    iget-object v1, v1, Lccsancom/applovin/impl/sdk/i$1;->a:Lccsancom/applovin/impl/sdk/k;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/i$1$1$1;->a:Lccsancom/applovin/impl/sdk/i$1$1;

    iget-object v2, v2, Lccsancom/applovin/impl/sdk/i$1$1;->a:Lccsancom/applovin/impl/sdk/i$1;

    iget-object v2, v2, Lccsancom/applovin/impl/sdk/i$1;->b:Lccsancom/applovin/impl/sdk/i$a;

    invoke-virtual {v0, p1, p2, v1, v2}, Lccsancom/applovin/impl/sdk/i;->a(JLccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/sdk/i$a;)V

    return-void
.end method
