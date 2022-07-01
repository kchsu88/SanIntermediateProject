.class Lccsancom/applovin/impl/adview/activity/b/f$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/activity/b/f;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/activity/b/f;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/activity/b/f;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f$7;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f$7;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/activity/b/f;->e(Lccsancom/applovin/impl/adview/activity/b/f;)Lccsancom/applovin/impl/adview/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f$7;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/activity/b/f;->e(Lccsancom/applovin/impl/adview/activity/b/f;)Lccsancom/applovin/impl/adview/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/a;->a()V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f$7;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    new-instance v1, Lccsancom/applovin/impl/adview/activity/b/f$7$1;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/adview/activity/b/f$7$1;-><init>(Lccsancom/applovin/impl/adview/activity/b/f$7;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/applovin/impl/adview/activity/b/f;->a(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
