.class final Lccsancom/mbridge/msdk/video/dynview/g/b$3;
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

    .line 154
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/g/b$3;->b:Lccsancom/mbridge/msdk/video/dynview/g/b;

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/g/b$3;->a:Lccsanandroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Lccsanandroid/animation/ValueAnimator;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/g/b$3;->a:Lccsanandroid/view/View;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Lccsanandroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lccsanandroid/view/ViewGroup$LayoutParams;->width:I

    .line 159
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/g/b$3;->a:Lccsanandroid/view/View;

    invoke-virtual {p1}, Lccsanandroid/view/View;->requestLayout()V

    .line 161
    :cond_0
    return-void
.end method
