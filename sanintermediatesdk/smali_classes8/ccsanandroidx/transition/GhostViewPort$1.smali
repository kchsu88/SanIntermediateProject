.class Lccsanandroidx/transition/GhostViewPort$1;
.super Ljava/lang/Object;
.source "GhostViewPort.java"

# interfaces
.implements Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/transition/GhostViewPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/transition/GhostViewPort;


# direct methods
.method constructor <init>(Lccsanandroidx/transition/GhostViewPort;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/transition/GhostViewPort;

    .line 52
    iput-object p1, p0, Lccsanandroidx/transition/GhostViewPort$1;->this$0:Lccsanandroidx/transition/GhostViewPort;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 56
    iget-object v0, p0, Lccsanandroidx/transition/GhostViewPort$1;->this$0:Lccsanandroidx/transition/GhostViewPort;

    invoke-static {v0}, Lccsanandroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Lccsanandroid/view/View;)V

    .line 57
    iget-object v0, p0, Lccsanandroidx/transition/GhostViewPort$1;->this$0:Lccsanandroidx/transition/GhostViewPort;

    iget-object v0, v0, Lccsanandroidx/transition/GhostViewPort;->mStartParent:Lccsanandroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/transition/GhostViewPort$1;->this$0:Lccsanandroidx/transition/GhostViewPort;

    iget-object v0, v0, Lccsanandroidx/transition/GhostViewPort;->mStartView:Lccsanandroid/view/View;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lccsanandroidx/transition/GhostViewPort$1;->this$0:Lccsanandroidx/transition/GhostViewPort;

    iget-object v0, v0, Lccsanandroidx/transition/GhostViewPort;->mStartParent:Lccsanandroid/view/ViewGroup;

    iget-object v1, p0, Lccsanandroidx/transition/GhostViewPort$1;->this$0:Lccsanandroidx/transition/GhostViewPort;

    iget-object v1, v1, Lccsanandroidx/transition/GhostViewPort;->mStartView:Lccsanandroid/view/View;

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewGroup;->endViewTransition(Lccsanandroid/view/View;)V

    .line 59
    iget-object v0, p0, Lccsanandroidx/transition/GhostViewPort$1;->this$0:Lccsanandroidx/transition/GhostViewPort;

    iget-object v0, v0, Lccsanandroidx/transition/GhostViewPort;->mStartParent:Lccsanandroid/view/ViewGroup;

    invoke-static {v0}, Lccsanandroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Lccsanandroid/view/View;)V

    .line 60
    iget-object v0, p0, Lccsanandroidx/transition/GhostViewPort$1;->this$0:Lccsanandroidx/transition/GhostViewPort;

    const/4 v1, 0x0

    iput-object v1, v0, Lccsanandroidx/transition/GhostViewPort;->mStartParent:Lccsanandroid/view/ViewGroup;

    .line 61
    iget-object v0, p0, Lccsanandroidx/transition/GhostViewPort$1;->this$0:Lccsanandroidx/transition/GhostViewPort;

    iput-object v1, v0, Lccsanandroidx/transition/GhostViewPort;->mStartView:Lccsanandroid/view/View;

    .line 63
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
