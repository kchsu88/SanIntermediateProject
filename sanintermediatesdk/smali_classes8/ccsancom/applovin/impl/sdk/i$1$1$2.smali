.class Lccsancom/applovin/impl/sdk/i$1$1$2;
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

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/i$1$1$2;->a:Lccsancom/applovin/impl/sdk/i$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/content/DialogInterface;I)V
    .locals 0

    iget-object p2, p0, Lccsancom/applovin/impl/sdk/i$1$1$2;->a:Lccsancom/applovin/impl/sdk/i$1$1;

    iget-object p2, p2, Lccsancom/applovin/impl/sdk/i$1$1;->a:Lccsancom/applovin/impl/sdk/i$1;

    iget-object p2, p2, Lccsancom/applovin/impl/sdk/i$1;->b:Lccsancom/applovin/impl/sdk/i$a;

    invoke-interface {p2}, Lccsancom/applovin/impl/sdk/i$a;->a()V

    invoke-interface {p1}, Lccsanandroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lccsancom/applovin/impl/sdk/i;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
