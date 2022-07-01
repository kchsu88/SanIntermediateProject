.class final Lccsancom/mbridge/msdk/video/dynview/g/b$4;
.super Ljava/lang/Object;
.source "MBridgeUIAnim.java"

# interfaces
.implements Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/dynview/g/b;->a(Lccsanandroid/view/View;IIIIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroid/view/View;

.field final synthetic b:Lccsancom/mbridge/msdk/video/dynview/g/b;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/dynview/g/b;Lccsanandroid/view/View;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/g/b$4;->b:Lccsancom/mbridge/msdk/video/dynview/g/b;

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/g/b$4;->a:Lccsanandroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Lccsanandroid/animation/ValueAnimator;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/g/b$4;->a:Lccsanandroid/view/View;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Lccsanandroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lccsanandroid/view/ViewGroup$LayoutParams;->height:I

    .line 169
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/g/b$4;->a:Lccsanandroid/view/View;

    invoke-virtual {p1}, Lccsanandroid/view/View;->requestLayout()V

    .line 170
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/g/b$4;->a:Lccsanandroid/view/View;

    invoke-virtual {p1}, Lccsanandroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/g/b$4;->a:Lccsanandroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 174
    :cond_0
    return-void
.end method
