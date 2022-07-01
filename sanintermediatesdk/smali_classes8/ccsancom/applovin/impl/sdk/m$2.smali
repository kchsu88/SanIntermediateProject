.class Lccsancom/applovin/impl/sdk/m$2;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/sdk/e/f$a;


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

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/m$2;->a:Lccsancom/applovin/impl/sdk/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lccsancom/applovin/impl/sdk/m$a;)V
    .locals 1

    invoke-static {}, Lccsancom/applovin/impl/sdk/m;->m()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
