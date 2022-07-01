.class Lccsancom/applovin/impl/adview/m$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/m;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/m;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/m;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/m$6;->a:Lccsancom/applovin/impl/adview/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/m$6;->a:Lccsancom/applovin/impl/adview/m;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/m;->e(Lccsancom/applovin/impl/adview/m;)Lccsancom/applovin/impl/adview/j;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/m$6;->a:Lccsancom/applovin/impl/adview/m;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/m;->d(Lccsancom/applovin/impl/adview/m;)V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/m$6;->a:Lccsancom/applovin/impl/adview/m;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/m;->e(Lccsancom/applovin/impl/adview/m;)Lccsancom/applovin/impl/adview/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/j;->setVisibility(I)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/m$6;->a:Lccsancom/applovin/impl/adview/m;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/m;->e(Lccsancom/applovin/impl/adview/m;)Lccsancom/applovin/impl/adview/j;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/j;->bringToFront()V

    new-instance v0, Lccsanandroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Lccsanandroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lccsanandroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lccsancom/applovin/impl/adview/m$6$1;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/adview/m$6$1;-><init>(Lccsancom/applovin/impl/adview/m$6;)V

    invoke-virtual {v0, v1}, Lccsanandroid/view/animation/AlphaAnimation;->setAnimationListener(Lccsanandroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lccsancom/applovin/impl/adview/m$6;->a:Lccsancom/applovin/impl/adview/m;

    invoke-static {v1}, Lccsancom/applovin/impl/adview/m;->e(Lccsancom/applovin/impl/adview/m;)Lccsancom/applovin/impl/adview/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsancom/applovin/impl/adview/j;->startAnimation(Lccsanandroid/view/animation/Animation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/m$6;->a:Lccsancom/applovin/impl/adview/m;

    invoke-static {v1}, Lccsancom/applovin/impl/adview/m;->f(Lccsancom/applovin/impl/adview/m;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v1

    const-string v2, "ExpandedAdDialog"

    const-string v3, "Unable to fade in close button"

    invoke-virtual {v1, v2, v3, v0}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/m$6;->a:Lccsancom/applovin/impl/adview/m;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/m;->d(Lccsancom/applovin/impl/adview/m;)V

    :goto_0
    return-void
.end method
