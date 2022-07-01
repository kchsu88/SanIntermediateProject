.class Lccsancom/applovin/impl/adview/p$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/p;->m()V
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

    iput-object p1, p0, Lccsancom/applovin/impl/adview/p$8;->a:Lccsancom/applovin/impl/adview/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p$8;->a:Lccsancom/applovin/impl/adview/p;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/p;->s(Lccsancom/applovin/impl/adview/p;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p$8;->a:Lccsancom/applovin/impl/adview/p;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/p;->q(Lccsancom/applovin/impl/adview/p;)Lccsancom/applovin/impl/adview/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/j;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p$8;->a:Lccsancom/applovin/impl/adview/p;

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lccsancom/applovin/impl/adview/p;->a(Lccsancom/applovin/impl/adview/p;J)J

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p$8;->a:Lccsancom/applovin/impl/adview/p;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lccsancom/applovin/impl/adview/p;->a(Lccsancom/applovin/impl/adview/p;Z)Z

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p$8;->a:Lccsancom/applovin/impl/adview/p;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/p;->t(Lccsancom/applovin/impl/adview/p;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p$8;->a:Lccsancom/applovin/impl/adview/p;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/p;->u(Lccsancom/applovin/impl/adview/p;)Lccsanandroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p$8;->a:Lccsancom/applovin/impl/adview/p;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/p;->u(Lccsancom/applovin/impl/adview/p;)Lccsanandroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p$8;->a:Lccsancom/applovin/impl/adview/p;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/p;->u(Lccsancom/applovin/impl/adview/p;)Lccsanandroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/View;->bringToFront()V

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p$8;->a:Lccsancom/applovin/impl/adview/p;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/p;->q(Lccsancom/applovin/impl/adview/p;)Lccsancom/applovin/impl/adview/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/j;->setVisibility(I)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p$8;->a:Lccsancom/applovin/impl/adview/p;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/p;->q(Lccsancom/applovin/impl/adview/p;)Lccsancom/applovin/impl/adview/j;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/j;->bringToFront()V

    new-instance v0, Lccsanandroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Lccsanandroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Lccsanandroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, v1}, Lccsanandroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p$8;->a:Lccsancom/applovin/impl/adview/p;

    invoke-static {v1}, Lccsancom/applovin/impl/adview/p;->q(Lccsancom/applovin/impl/adview/p;)Lccsancom/applovin/impl/adview/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsancom/applovin/impl/adview/j;->startAnimation(Lccsanandroid/view/animation/Animation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p$8;->a:Lccsancom/applovin/impl/adview/p;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/p;->dismiss()V

    :goto_0
    return-void
.end method
