.class Lccsancom/applovin/impl/sdk/m$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/m;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/m;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/m;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/m$3;->a:Lccsancom/applovin/impl/sdk/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/m$3;->a:Lccsancom/applovin/impl/sdk/m;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/m;->b(Lccsancom/applovin/impl/sdk/m;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m$3;->a:Lccsancom/applovin/impl/sdk/m;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/m;->a(Lccsancom/applovin/impl/sdk/m;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
