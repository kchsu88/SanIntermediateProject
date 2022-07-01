.class final Lccsancom/applovin/impl/sdk/utils/o$2;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/utils/o;->b(Lccsanandroid/view/View;JLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroid/view/View;

.field final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lccsanandroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/utils/o$2;->a:Lccsanandroid/view/View;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/utils/o$2;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/utils/o$2;->a:Lccsanandroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/utils/o$2;->b:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Lccsanandroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lccsanandroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/utils/o$2;->a:Lccsanandroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setVisibility(I)V

    return-void
.end method
