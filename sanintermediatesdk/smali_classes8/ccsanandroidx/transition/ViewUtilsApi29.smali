.class Lccsanandroidx/transition/ViewUtilsApi29;
.super Lccsanandroidx/transition/ViewUtilsApi23;
.source "ViewUtilsApi29.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lccsanandroidx/transition/ViewUtilsApi23;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransitionAlpha(Lccsanandroid/view/View;)F
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 36
    invoke-virtual {p1}, Lccsanandroid/view/View;->getTransitionAlpha()F

    move-result v0

    return v0
.end method

.method public setAnimationMatrix(Lccsanandroid/view/View;Lccsanandroid/graphics/Matrix;)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "matrix"    # Lccsanandroid/graphics/Matrix;

    .line 61
    invoke-virtual {p1, p2}, Lccsanandroid/view/View;->setAnimationMatrix(Lccsanandroid/graphics/Matrix;)V

    .line 62
    return-void
.end method

.method public setLeftTopRightBottom(Lccsanandroid/view/View;IIII)V
    .locals 0
    .param p1, "v"    # Lccsanandroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 46
    invoke-virtual {p1, p2, p3, p4, p5}, Lccsanandroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 47
    return-void
.end method

.method public setTransitionAlpha(Lccsanandroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "alpha"    # F

    .line 31
    invoke-virtual {p1, p2}, Lccsanandroid/view/View;->setTransitionAlpha(F)V

    .line 32
    return-void
.end method

.method public setTransitionVisibility(Lccsanandroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "visibility"    # I

    .line 41
    invoke-virtual {p1, p2}, Lccsanandroid/view/View;->setTransitionVisibility(I)V

    .line 42
    return-void
.end method

.method public transformMatrixToGlobal(Lccsanandroid/view/View;Lccsanandroid/graphics/Matrix;)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "matrix"    # Lccsanandroid/graphics/Matrix;

    .line 51
    invoke-virtual {p1, p2}, Lccsanandroid/view/View;->transformMatrixToGlobal(Lccsanandroid/graphics/Matrix;)V

    .line 52
    return-void
.end method

.method public transformMatrixToLocal(Lccsanandroid/view/View;Lccsanandroid/graphics/Matrix;)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "matrix"    # Lccsanandroid/graphics/Matrix;

    .line 56
    invoke-virtual {p1, p2}, Lccsanandroid/view/View;->transformMatrixToLocal(Lccsanandroid/graphics/Matrix;)V

    .line 57
    return-void
.end method
