.class final Lccsancom/mbridge/msdk/video/dynview/g/b$2;
.super Ljava/lang/Object;
.source "MBridgeUIAnim.java"

# interfaces
.implements Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/dynview/g/b;->a(Lccsanandroid/view/View;IIJ)V
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

    .line 141
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/g/b$2;->b:Lccsancom/mbridge/msdk/video/dynview/g/b;

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/g/b$2;->a:Lccsanandroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Lccsanandroid/animation/ValueAnimator;)V
    .locals 2

    .line 144
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/g/b$2;->a:Lccsanandroid/view/View;

    invoke-virtual {p1}, Lccsanandroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, p1}, Lccsanandroid/view/View;->setPadding(IIII)V

    .line 145
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/g/b$2;->a:Lccsanandroid/view/View;

    invoke-virtual {p1}, Lccsanandroid/view/View;->requestLayout()V

    .line 146
    return-void
.end method
