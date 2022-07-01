.class Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$3;
.super Ljava/lang/Object;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 137
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$3;->this$0:Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 140
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$3;->this$0:Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 141
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$3;->this$0:Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-object v1, v0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/widget/ActionBarContainer;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$3;->this$0:Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-object v2, v2, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    .line 142
    invoke-virtual {v2}, Lccsanandroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lccsanandroid/view/ViewPropertyAnimator;->translationY(F)Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$3;->this$0:Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-object v2, v2, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Lccsanandroid/animation/AnimatorListenerAdapter;

    .line 143
    invoke-virtual {v1, v2}, Lccsanandroid/view/ViewPropertyAnimator;->setListener(Lccsanandroid/animation/Animator$AnimatorListener;)Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v1

    iput-object v1, v0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Lccsanandroid/view/ViewPropertyAnimator;

    .line 144
    return-void
.end method
