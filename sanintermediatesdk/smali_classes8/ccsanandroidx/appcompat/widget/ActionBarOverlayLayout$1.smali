.class Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$1;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "ActionBarOverlayLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 114
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$1;->this$0:Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 123
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$1;->this$0:Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    iput-object v1, v0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Lccsanandroid/view/ViewPropertyAnimator;

    .line 124
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$1;->this$0:Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    .line 125
    return-void
.end method

.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 117
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$1;->this$0:Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    iput-object v1, v0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Lccsanandroid/view/ViewPropertyAnimator;

    .line 118
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$1;->this$0:Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    .line 119
    return-void
.end method
