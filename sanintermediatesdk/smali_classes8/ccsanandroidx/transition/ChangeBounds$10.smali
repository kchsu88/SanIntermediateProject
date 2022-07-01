.class Lccsanandroidx/transition/ChangeBounds$10;
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
.field final synthetic this$0:Lccsanandroidx/transition/ChangeBounds;

.field final synthetic val$drawable:Lccsanandroid/graphics/drawable/BitmapDrawable;

.field final synthetic val$sceneRoot:Lccsanandroid/view/ViewGroup;

.field final synthetic val$transitionAlpha:F

.field final synthetic val$view:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsanandroidx/transition/ChangeBounds;Lccsanandroid/view/ViewGroup;Lccsanandroid/graphics/drawable/BitmapDrawable;Lccsanandroid/view/View;F)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/transition/ChangeBounds;

    .line 448
    iput-object p1, p0, Lccsanandroidx/transition/ChangeBounds$10;->this$0:Lccsanandroidx/transition/ChangeBounds;

    iput-object p2, p0, Lccsanandroidx/transition/ChangeBounds$10;->val$sceneRoot:Lccsanandroid/view/ViewGroup;

    iput-object p3, p0, Lccsanandroidx/transition/ChangeBounds$10;->val$drawable:Lccsanandroid/graphics/drawable/BitmapDrawable;

    iput-object p4, p0, Lccsanandroidx/transition/ChangeBounds$10;->val$view:Lccsanandroid/view/View;

    iput p5, p0, Lccsanandroidx/transition/ChangeBounds$10;->val$transitionAlpha:F

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 451
    iget-object v0, p0, Lccsanandroidx/transition/ChangeBounds$10;->val$sceneRoot:Lccsanandroid/view/ViewGroup;

    invoke-static {v0}, Lccsanandroidx/transition/ViewUtils;->getOverlay(Lccsanandroid/view/View;)Lccsanandroidx/transition/ViewOverlayImpl;

    move-result-object v0

    iget-object v1, p0, Lccsanandroidx/transition/ChangeBounds$10;->val$drawable:Lccsanandroid/graphics/drawable/BitmapDrawable;

    invoke-interface {v0, v1}, Lccsanandroidx/transition/ViewOverlayImpl;->remove(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 452
    iget-object v0, p0, Lccsanandroidx/transition/ChangeBounds$10;->val$view:Lccsanandroid/view/View;

    iget v1, p0, Lccsanandroidx/transition/ChangeBounds$10;->val$transitionAlpha:F

    invoke-static {v0, v1}, Lccsanandroidx/transition/ViewUtils;->setTransitionAlpha(Lccsanandroid/view/View;F)V

    .line 453
    return-void
.end method
