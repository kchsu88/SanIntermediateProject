.class Lccsanandroidx/transition/ChangeBounds$8;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/transition/ChangeBounds;->createAnimator(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCanceled:Z

.field final synthetic this$0:Lccsanandroidx/transition/ChangeBounds;

.field final synthetic val$endBottom:I

.field final synthetic val$endLeft:I

.field final synthetic val$endRight:I

.field final synthetic val$endTop:I

.field final synthetic val$finalClip:Lccsanandroid/graphics/Rect;

.field final synthetic val$view:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsanandroidx/transition/ChangeBounds;Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;IIII)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/transition/ChangeBounds;

    .line 370
    iput-object p1, p0, Lccsanandroidx/transition/ChangeBounds$8;->this$0:Lccsanandroidx/transition/ChangeBounds;

    iput-object p2, p0, Lccsanandroidx/transition/ChangeBounds$8;->val$view:Lccsanandroid/view/View;

    iput-object p3, p0, Lccsanandroidx/transition/ChangeBounds$8;->val$finalClip:Lccsanandroid/graphics/Rect;

    iput p4, p0, Lccsanandroidx/transition/ChangeBounds$8;->val$endLeft:I

    iput p5, p0, Lccsanandroidx/transition/ChangeBounds$8;->val$endTop:I

    iput p6, p0, Lccsanandroidx/transition/ChangeBounds$8;->val$endRight:I

    iput p7, p0, Lccsanandroidx/transition/ChangeBounds$8;->val$endBottom:I

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lccsanandroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/transition/ChangeBounds$8;->mIsCanceled:Z

    .line 376
    return-void
.end method

.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 380
    iget-boolean v0, p0, Lccsanandroidx/transition/ChangeBounds$8;->mIsCanceled:Z

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lccsanandroidx/transition/ChangeBounds$8;->val$view:Lccsanandroid/view/View;

    iget-object v1, p0, Lccsanandroidx/transition/ChangeBounds$8;->val$finalClip:Lccsanandroid/graphics/Rect;

    invoke-static {v0, v1}, Lccsanandroidx/core/view/ViewCompat;->setClipBounds(Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;)V

    .line 382
    iget-object v0, p0, Lccsanandroidx/transition/ChangeBounds$8;->val$view:Lccsanandroid/view/View;

    iget v1, p0, Lccsanandroidx/transition/ChangeBounds$8;->val$endLeft:I

    iget v2, p0, Lccsanandroidx/transition/ChangeBounds$8;->val$endTop:I

    iget v3, p0, Lccsanandroidx/transition/ChangeBounds$8;->val$endRight:I

    iget v4, p0, Lccsanandroidx/transition/ChangeBounds$8;->val$endBottom:I

    invoke-static {v0, v1, v2, v3, v4}, Lccsanandroidx/transition/ViewUtils;->setLeftTopRightBottom(Lccsanandroid/view/View;IIII)V

    .line 385
    :cond_0
    return-void
.end method
