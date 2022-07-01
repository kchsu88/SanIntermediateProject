.class Lccsancom/applovin/impl/adview/p$25;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/p;->a(Lccsanandroid/view/View;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroid/view/View;

.field final synthetic b:Z

.field final synthetic c:Lccsancom/applovin/impl/adview/p;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/p;Lccsanandroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/p$25;->c:Lccsancom/applovin/impl/adview/p;

    iput-object p2, p0, Lccsancom/applovin/impl/adview/p$25;->a:Lccsanandroid/view/View;

    iput-boolean p3, p0, Lccsancom/applovin/impl/adview/p$25;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/view/animation/Animation;)V
    .locals 1

    iget-boolean p1, p0, Lccsancom/applovin/impl/adview/p$25;->b:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p$25;->a:Lccsanandroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Lccsanandroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lccsanandroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p$25;->a:Lccsanandroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setVisibility(I)V

    return-void
.end method
