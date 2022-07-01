.class Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$2;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "WindowInsetsAnimationCompat.java"


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

.field final synthetic val$v:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;Lccsanandroidx/core/view/WindowInsetsAnimationCompat;Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$anim",
            "val$v"
        }
    .end annotation

    .line 786
    iput-object p1, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$2;->this$0:Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;

    iput-object p2, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$2;->val$anim:Lccsanandroidx/core/view/WindowInsetsAnimationCompat;

    iput-object p3, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$2;->val$v:Lccsanandroid/view/View;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Lccsanandroid/animation/Animator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animator"
        }
    .end annotation

    .line 790
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$2;->val$anim:Lccsanandroidx/core/view/WindowInsetsAnimationCompat;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat;->setFraction(F)V

    .line 791
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$2;->val$v:Lccsanandroid/view/View;

    iget-object v1, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$2;->val$anim:Lccsanandroidx/core/view/WindowInsetsAnimationCompat;

    invoke-static {v0, v1}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl21;->dispatchOnEnd(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsAnimationCompat;)V

    .line 792
    return-void
.end method
