.class Lccsancom/applovin/impl/adview/p$16;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/adview/w$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/p;->w()Lccsancom/applovin/impl/adview/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/p;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/p;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/p$16;->a:Lccsancom/applovin/impl/adview/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lccsancom/applovin/impl/adview/v;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p$16;->a:Lccsancom/applovin/impl/adview/p;

    iget-object v0, v0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "InterActivity"

    const-string v2, "Clicking through from video button..."

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p$16;->a:Lccsancom/applovin/impl/adview/p;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/v;->getAndClearLastClickLocation()Lccsanandroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/adview/p;->clickThroughFromVideo(Lccsanandroid/graphics/PointF;)V

    return-void
.end method

.method public b(Lccsancom/applovin/impl/adview/v;)V
    .locals 2

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p$16;->a:Lccsancom/applovin/impl/adview/p;

    iget-object p1, p1, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    const-string v0, "InterActivity"

    const-string v1, "Closing ad from video button..."

    invoke-virtual {p1, v0, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p$16;->a:Lccsancom/applovin/impl/adview/p;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/p;->dismiss()V

    return-void
.end method

.method public c(Lccsancom/applovin/impl/adview/v;)V
    .locals 2

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p$16;->a:Lccsancom/applovin/impl/adview/p;

    iget-object p1, p1, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    const-string v0, "InterActivity"

    const-string v1, "Skipping video from video button..."

    invoke-virtual {p1, v0, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p$16;->a:Lccsancom/applovin/impl/adview/p;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/p;->skipVideo()V

    return-void
.end method
