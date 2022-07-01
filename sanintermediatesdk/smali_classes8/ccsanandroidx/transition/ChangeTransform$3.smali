.class Lccsanandroidx/transition/ChangeTransform$3;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/transition/ChangeTransform;->createTransformAnimator(Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;Z)Lccsanandroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCanceled:Z

.field private mTempMatrix:Lccsanandroid/graphics/Matrix;

.field final synthetic this$0:Lccsanandroidx/transition/ChangeTransform;

.field final synthetic val$finalEndMatrix:Lccsanandroid/graphics/Matrix;

.field final synthetic val$handleParentChange:Z

.field final synthetic val$pathAnimatorMatrix:Lccsanandroidx/transition/ChangeTransform$PathAnimatorMatrix;

.field final synthetic val$transforms:Lccsanandroidx/transition/ChangeTransform$Transforms;

.field final synthetic val$view:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsanandroidx/transition/ChangeTransform;ZLccsanandroid/graphics/Matrix;Lccsanandroid/view/View;Lccsanandroidx/transition/ChangeTransform$Transforms;Lccsanandroidx/transition/ChangeTransform$PathAnimatorMatrix;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/transition/ChangeTransform;

    .line 327
    iput-object p1, p0, Lccsanandroidx/transition/ChangeTransform$3;->this$0:Lccsanandroidx/transition/ChangeTransform;

    iput-boolean p2, p0, Lccsanandroidx/transition/ChangeTransform$3;->val$handleParentChange:Z

    iput-object p3, p0, Lccsanandroidx/transition/ChangeTransform$3;->val$finalEndMatrix:Lccsanandroid/graphics/Matrix;

    iput-object p4, p0, Lccsanandroidx/transition/ChangeTransform$3;->val$view:Lccsanandroid/view/View;

    iput-object p5, p0, Lccsanandroidx/transition/ChangeTransform$3;->val$transforms:Lccsanandroidx/transition/ChangeTransform$Transforms;

    iput-object p6, p0, Lccsanandroidx/transition/ChangeTransform$3;->val$pathAnimatorMatrix:Lccsanandroidx/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 329
    new-instance p2, Lccsanandroid/graphics/Matrix;

    invoke-direct {p2}, Lccsanandroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lccsanandroidx/transition/ChangeTransform$3;->mTempMatrix:Lccsanandroid/graphics/Matrix;

    return-void
.end method

.method private setCurrentMatrix(Lccsanandroid/graphics/Matrix;)V
    .locals 3
    .param p1, "currentMatrix"    # Lccsanandroid/graphics/Matrix;

    .line 362
    iget-object v0, p0, Lccsanandroidx/transition/ChangeTransform$3;->mTempMatrix:Lccsanandroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/Matrix;->set(Lccsanandroid/graphics/Matrix;)V

    .line 363
    iget-object v0, p0, Lccsanandroidx/transition/ChangeTransform$3;->val$view:Lccsanandroid/view/View;

    sget v1, Lccsanandroidx/transition/R$id;->transition_transform:I

    iget-object v2, p0, Lccsanandroidx/transition/ChangeTransform$3;->mTempMatrix:Lccsanandroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2}, Lccsanandroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 364
    iget-object v0, p0, Lccsanandroidx/transition/ChangeTransform$3;->val$transforms:Lccsanandroidx/transition/ChangeTransform$Transforms;

    iget-object v1, p0, Lccsanandroidx/transition/ChangeTransform$3;->val$view:Lccsanandroid/view/View;

    invoke-virtual {v0, v1}, Lccsanandroidx/transition/ChangeTransform$Transforms;->restore(Lccsanandroid/view/View;)V

    .line 365
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lccsanandroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/transition/ChangeTransform$3;->mIsCanceled:Z

    .line 334
    return-void
.end method

.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 338
    iget-boolean v0, p0, Lccsanandroidx/transition/ChangeTransform$3;->mIsCanceled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 339
    iget-boolean v0, p0, Lccsanandroidx/transition/ChangeTransform$3;->val$handleParentChange:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/transition/ChangeTransform$3;->this$0:Lccsanandroidx/transition/ChangeTransform;

    iget-boolean v0, v0, Lccsanandroidx/transition/ChangeTransform;->mUseOverlay:Z

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lccsanandroidx/transition/ChangeTransform$3;->val$finalEndMatrix:Lccsanandroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lccsanandroidx/transition/ChangeTransform$3;->setCurrentMatrix(Lccsanandroid/graphics/Matrix;)V

    goto :goto_0

    .line 342
    :cond_0
    iget-object v0, p0, Lccsanandroidx/transition/ChangeTransform$3;->val$view:Lccsanandroid/view/View;

    sget v2, Lccsanandroidx/transition/R$id;->transition_transform:I

    invoke-virtual {v0, v2, v1}, Lccsanandroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 343
    iget-object v0, p0, Lccsanandroidx/transition/ChangeTransform$3;->val$view:Lccsanandroid/view/View;

    sget v2, Lccsanandroidx/transition/R$id;->parent_matrix:I

    invoke-virtual {v0, v2, v1}, Lccsanandroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 346
    :cond_1
    :goto_0
    iget-object v0, p0, Lccsanandroidx/transition/ChangeTransform$3;->val$view:Lccsanandroid/view/View;

    invoke-static {v0, v1}, Lccsanandroidx/transition/ViewUtils;->setAnimationMatrix(Lccsanandroid/view/View;Lccsanandroid/graphics/Matrix;)V

    .line 347
    iget-object v0, p0, Lccsanandroidx/transition/ChangeTransform$3;->val$transforms:Lccsanandroidx/transition/ChangeTransform$Transforms;

    iget-object v1, p0, Lccsanandroidx/transition/ChangeTransform$3;->val$view:Lccsanandroid/view/View;

    invoke-virtual {v0, v1}, Lccsanandroidx/transition/ChangeTransform$Transforms;->restore(Lccsanandroid/view/View;)V

    .line 348
    return-void
.end method

.method public onAnimationPause(Lccsanandroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 352
    iget-object v0, p0, Lccsanandroidx/transition/ChangeTransform$3;->val$pathAnimatorMatrix:Lccsanandroidx/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-virtual {v0}, Lccsanandroidx/transition/ChangeTransform$PathAnimatorMatrix;->getMatrix()Lccsanandroid/graphics/Matrix;

    move-result-object v0

    .line 353
    .local v0, "currentMatrix":Lccsanandroid/graphics/Matrix;
    invoke-direct {p0, v0}, Lccsanandroidx/transition/ChangeTransform$3;->setCurrentMatrix(Lccsanandroid/graphics/Matrix;)V

    .line 354
    return-void
.end method

.method public onAnimationResume(Lccsanandroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 358
    iget-object v0, p0, Lccsanandroidx/transition/ChangeTransform$3;->val$view:Lccsanandroid/view/View;

    invoke-static {v0}, Lccsanandroidx/transition/ChangeTransform;->setIdentityTransforms(Lccsanandroid/view/View;)V

    .line 359
    return-void
.end method
