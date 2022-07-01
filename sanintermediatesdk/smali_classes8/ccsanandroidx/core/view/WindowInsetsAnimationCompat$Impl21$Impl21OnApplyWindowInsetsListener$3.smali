.class Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$3;
.super Ljava/lang/Object;
.source "WindowInsetsAnimationCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$animationBounds:Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

.field final synthetic val$animator:Lccsanandroid/animation/ValueAnimator;

.field final synthetic val$v:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsAnimationCompat;Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;Lccsanandroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$v",
            "val$anim",
            "val$animationBounds",
            "val$animator"
        }
    .end annotation

    .line 798
    iput-object p1, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$3;->this$0:Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;

    iput-object p2, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$3;->val$v:Lccsanandroid/view/View;

    iput-object p3, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$3;->val$anim:Lccsanandroidx/core/view/WindowInsetsAnimationCompat;

    iput-object p4, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$3;->val$animationBounds:Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    iput-object p5, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$3;->val$animator:Lccsanandroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 801
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$3;->val$v:Lccsanandroid/view/View;

    iget-object v1, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$3;->val$anim:Lccsanandroidx/core/view/WindowInsetsAnimationCompat;

    iget-object v2, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$3;->val$animationBounds:Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    invoke-static {v0, v1, v2}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21;->dispatchOnStart(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsAnimationCompat;Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)V

    .line 802
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$3;->val$animator:Lccsanandroid/animation/ValueAnimator;

    invoke-virtual {v0}, Lccsanandroid/animation/ValueAnimator;->start()V

    .line 803
    return-void
.end method
