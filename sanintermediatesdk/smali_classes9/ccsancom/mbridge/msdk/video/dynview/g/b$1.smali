.class final Lccsancom/mbridge/msdk/video/dynview/g/b$1;
.super Ljava/lang/Object;
.source "MBridgeUIAnim.java"

# interfaces
.implements Lccsanandroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/dynview/g/b;->b(Lccsanandroid/view/View;J)V
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

    .line 97
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/g/b$1;->b:Lccsancom/mbridge/msdk/video/dynview/g/b;

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/g/b$1;->a:Lccsanandroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Lccsanandroid/animation/Animator;)V
    .locals 1

    .line 111
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/g/b$1;->a:Lccsanandroid/view/View;

    if-eqz p1, :cond_0

    instance-of v0, p1, Lccsanandroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 112
    check-cast p1, Lccsanandroid/view/ViewGroup;

    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->removeAllViews()V

    .line 114
    :cond_0
    return-void
.end method

.method public final onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 1

    .line 104
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/g/b$1;->a:Lccsanandroid/view/View;

    if-eqz p1, :cond_0

    instance-of v0, p1, Lccsanandroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 105
    check-cast p1, Lccsanandroid/view/ViewGroup;

    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->removeAllViews()V

    .line 107
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Lccsanandroid/animation/Animator;)V
    .locals 0

    .line 119
    return-void
.end method

.method public final onAnimationStart(Lccsanandroid/animation/Animator;)V
    .locals 0

    .line 100
    return-void
.end method
