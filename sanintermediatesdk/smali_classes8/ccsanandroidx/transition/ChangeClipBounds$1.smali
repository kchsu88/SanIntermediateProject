.class Lccsanandroidx/transition/ChangeClipBounds$1;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "ChangeClipBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/transition/ChangeClipBounds;->createAnimator(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/transition/ChangeClipBounds;

.field final synthetic val$endView:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsanandroidx/transition/ChangeClipBounds;Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/transition/ChangeClipBounds;

    .line 112
    iput-object p1, p0, Lccsanandroidx/transition/ChangeClipBounds$1;->this$0:Lccsanandroidx/transition/ChangeClipBounds;

    iput-object p2, p0, Lccsanandroidx/transition/ChangeClipBounds$1;->val$endView:Lccsanandroid/view/View;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 115
    iget-object v0, p0, Lccsanandroidx/transition/ChangeClipBounds$1;->val$endView:Lccsanandroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsanandroidx/core/view/ViewCompat;->setClipBounds(Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;)V

    .line 116
    return-void
.end method
