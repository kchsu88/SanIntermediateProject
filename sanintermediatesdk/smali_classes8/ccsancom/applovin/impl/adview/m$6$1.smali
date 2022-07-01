.class Lccsancom/applovin/impl/adview/m$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/m$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/m$6;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/m$6;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/m$6$1;->a:Lccsancom/applovin/impl/adview/m$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lccsancom/applovin/impl/adview/m$6$1;->a:Lccsancom/applovin/impl/adview/m$6;

    iget-object p1, p1, Lccsancom/applovin/impl/adview/m$6;->a:Lccsancom/applovin/impl/adview/m;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/m;->e(Lccsancom/applovin/impl/adview/m;)Lccsancom/applovin/impl/adview/j;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/adview/j;->setClickable(Z)V

    return-void
.end method

.method public onAnimationRepeat(Lccsanandroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lccsanandroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
