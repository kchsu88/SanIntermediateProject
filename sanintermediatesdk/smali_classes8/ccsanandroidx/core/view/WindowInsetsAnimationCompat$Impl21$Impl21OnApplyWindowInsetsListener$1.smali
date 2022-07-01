.class Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;
.super Ljava/lang/Object;
.source "WindowInsetsAnimationCompat.java"

# interfaces
.implements Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;->onApplyWindowInsets(Lccsanandroid/view/View;Lccsanandroid/view/WindowInsets;)Lccsanandroid/view/WindowInsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;

.field final synthetic val$anim:Lccsanandroidx/core/view/WindowInsetsAnimationCompat;

.field final synthetic val$animationMask:I

.field final synthetic val$startingInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

.field final synthetic val$targetInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

.field final synthetic val$v:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;Lccsanandroidx/core/view/WindowInsetsAnimationCompat;Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroidx/core/view/WindowInsetsCompat;ILccsanandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$anim",
            "val$targetInsets",
            "val$startingInsets",
            "val$animationMask",
            "val$v"
        }
    .end annotation

    .line 772
    iput-object p1, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->this$0:Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;

    iput-object p2, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->val$anim:Lccsanandroidx/core/view/WindowInsetsAnimationCompat;

    iput-object p3, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->val$targetInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    iput-object p4, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->val$startingInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    iput p5, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->val$animationMask:I

    iput-object p6, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->val$v:Lccsanandroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lccsanandroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animator"    # Lccsanandroid/animation/ValueAnimator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animator"
        }
    .end annotation

    .line 775
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->val$anim:Lccsanandroidx/core/view/WindowInsetsAnimationCompat;

    invoke-virtual {p1}, Lccsanandroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat;->setFraction(F)V

    .line 776
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->val$targetInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    iget-object v1, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->val$startingInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    iget-object v2, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->val$anim:Lccsanandroidx/core/view/WindowInsetsAnimationCompat;

    .line 779
    invoke-virtual {v2}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat;->getInterpolatedFraction()F

    move-result v2

    iget v3, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->val$animationMask:I

    .line 776
    invoke-static {v0, v1, v2, v3}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21;->interpolateInsets(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroidx/core/view/WindowInsetsCompat;FI)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 780
    .local v0, "interpolateInsets":Lccsanandroidx/core/view/WindowInsetsCompat;
    iget-object v1, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->val$anim:Lccsanandroidx/core/view/WindowInsetsAnimationCompat;

    .line 781
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 782
    .local v1, "runningAnimations":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/view/WindowInsetsAnimationCompat;>;"
    iget-object v2, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->val$v:Lccsanandroid/view/View;

    invoke-static {v2, v0, v1}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21;->dispatchOnProgress(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsCompat;Ljava/util/List;)V

    .line 783
    return-void
.end method
