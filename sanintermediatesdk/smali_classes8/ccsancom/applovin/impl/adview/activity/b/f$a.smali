.class Lccsancom/applovin/impl/adview/activity/b/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/adview/w$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/adview/activity/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/activity/b/f;


# direct methods
.method private constructor <init>(Lccsancom/applovin/impl/adview/activity/b/f;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f$a;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/applovin/impl/adview/activity/b/f;Lccsancom/applovin/impl/adview/activity/b/f$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/activity/b/f$a;-><init>(Lccsancom/applovin/impl/adview/activity/b/f;)V

    return-void
.end method


# virtual methods
.method public a(Lccsancom/applovin/impl/adview/v;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f$a;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    iget-object v0, v0, Lccsancom/applovin/impl/adview/activity/b/f;->c:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "InterActivityV2"

    const-string v2, "Clicking through from video button..."

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f$a;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/v;->getAndClearLastClickLocation()Lccsanandroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/adview/activity/b/f;->a(Lccsanandroid/graphics/PointF;)V

    return-void
.end method

.method public b(Lccsancom/applovin/impl/adview/v;)V
    .locals 2

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f$a;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    iget-object p1, p1, Lccsancom/applovin/impl/adview/activity/b/f;->c:Lccsancom/applovin/impl/sdk/r;

    const-string v0, "InterActivityV2"

    const-string v1, "Closing ad from video button..."

    invoke-virtual {p1, v0, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f$a;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/activity/b/f;->g()V

    return-void
.end method

.method public c(Lccsancom/applovin/impl/adview/v;)V
    .locals 2

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f$a;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    iget-object p1, p1, Lccsancom/applovin/impl/adview/activity/b/f;->c:Lccsancom/applovin/impl/sdk/r;

    const-string v0, "InterActivityV2"

    const-string v1, "Skipping video from video button..."

    invoke-virtual {p1, v0, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f$a;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/activity/b/f;->u()V

    return-void
.end method
