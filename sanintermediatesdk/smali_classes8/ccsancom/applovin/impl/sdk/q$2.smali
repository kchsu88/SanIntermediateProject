.class Lccsancom/applovin/impl/sdk/q$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/q;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lccsancom/applovin/impl/sdk/q;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/q;JLjava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/q$2;->c:Lccsancom/applovin/impl/sdk/q;

    iput-wide p2, p0, Lccsancom/applovin/impl/sdk/q$2;->a:J

    iput-object p4, p0, Lccsancom/applovin/impl/sdk/q$2;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/q$2;->c:Lccsancom/applovin/impl/sdk/q;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/q;->d(Lccsancom/applovin/impl/sdk/q;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/q$2;->c:Lccsancom/applovin/impl/sdk/q;

    invoke-static {v2}, Lccsancom/applovin/impl/sdk/q;->e(Lccsancom/applovin/impl/sdk/q;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lccsancom/applovin/impl/sdk/q$2;->a:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/q$2;->c:Lccsancom/applovin/impl/sdk/q;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/q;->b(Lccsancom/applovin/impl/sdk/q;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    const-string v1, "FullScreenAdTracker"

    const-string v2, "Resetting \"display\" state..."

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/q$2;->c:Lccsancom/applovin/impl/sdk/q;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/q$2;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/q;->b(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
