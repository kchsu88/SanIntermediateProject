.class Lccsancom/applovin/impl/adview/p$14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/p;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/u;

.field final synthetic b:Lccsancom/applovin/impl/adview/p;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/p;Lccsancom/applovin/impl/adview/u;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/p$14;->b:Lccsancom/applovin/impl/adview/p;

    iput-object p2, p0, Lccsancom/applovin/impl/adview/p$14;->a:Lccsancom/applovin/impl/adview/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p$14;->a:Lccsancom/applovin/impl/adview/u;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/u;->g()J

    move-result-wide v0

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p$14;->b:Lccsancom/applovin/impl/adview/p;

    invoke-static {v2}, Lccsancom/applovin/impl/adview/p;->C(Lccsancom/applovin/impl/adview/p;)Lccsancom/applovin/impl/adview/v;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v0, v1}, Lccsancom/applovin/impl/adview/p;->a(Lccsancom/applovin/impl/adview/p;Lccsanandroid/view/View;ZJ)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p$14;->b:Lccsancom/applovin/impl/adview/p;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/p;->C(Lccsancom/applovin/impl/adview/p;)Lccsancom/applovin/impl/adview/v;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/v;->bringToFront()V

    return-void
.end method
