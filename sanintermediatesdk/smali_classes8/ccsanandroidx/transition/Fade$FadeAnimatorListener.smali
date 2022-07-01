.class Lccsanandroidx/transition/Fade$FadeAnimatorListener;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/transition/Fade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FadeAnimatorListener"
.end annotation


# instance fields
.field private mLayerTypeChanged:Z

.field private final mView:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 186
    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    .line 187
    iput-object p1, p0, Lccsanandroidx/transition/Fade$FadeAnimatorListener;->mView:Lccsanandroid/view/View;

    .line 188
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 201
    iget-object v0, p0, Lccsanandroidx/transition/Fade$FadeAnimatorListener;->mView:Lccsanandroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lccsanandroidx/transition/ViewUtils;->setTransitionAlpha(Lccsanandroid/view/View;F)V

    .line 202
    iget-boolean v0, p0, Lccsanandroidx/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lccsanandroidx/transition/Fade$FadeAnimatorListener;->mView:Lccsanandroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanandroid/view/View;->setLayerType(ILccsanandroid/graphics/Paint;)V

    .line 205
    :cond_0
    return-void
.end method

.method public onAnimationStart(Lccsanandroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 192
    iget-object v0, p0, Lccsanandroidx/transition/Fade$FadeAnimatorListener;->mView:Lccsanandroid/view/View;

    invoke-static {v0}, Lccsanandroidx/core/view/ViewCompat;->hasOverlappingRendering(Lccsanandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/transition/Fade$FadeAnimatorListener;->mView:Lccsanandroid/view/View;

    .line 193
    invoke-virtual {v0}, Lccsanandroid/view/View;->getLayerType()I

    move-result v0

    if-nez v0, :cond_0

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    .line 195
    iget-object v0, p0, Lccsanandroidx/transition/Fade$FadeAnimatorListener;->mView:Lccsanandroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanandroid/view/View;->setLayerType(ILccsanandroid/graphics/Paint;)V

    .line 197
    :cond_0
    return-void
.end method
