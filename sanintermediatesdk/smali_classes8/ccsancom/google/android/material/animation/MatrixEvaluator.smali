.class public Lccsancom/google/android/material/animation/MatrixEvaluator;
.super Ljava/lang/Object;
.source "MatrixEvaluator.java"

# interfaces
.implements Lccsanandroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/animation/TypeEvaluator<",
        "Lccsanandroid/graphics/Matrix;",
        ">;"
    }
.end annotation


# instance fields
.field private final tempEndValues:[F

.field private final tempMatrix:Lccsanandroid/graphics/Matrix;

.field private final tempStartValues:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x9

    new-array v1, v0, [F

    iput-object v1, p0, Lccsancom/google/android/material/animation/MatrixEvaluator;->tempStartValues:[F

    .line 28
    new-array v0, v0, [F

    iput-object v0, p0, Lccsancom/google/android/material/animation/MatrixEvaluator;->tempEndValues:[F

    .line 29
    new-instance v0, Lccsanandroid/graphics/Matrix;

    invoke-direct {v0}, Lccsanandroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/animation/MatrixEvaluator;->tempMatrix:Lccsanandroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public evaluate(FLccsanandroid/graphics/Matrix;Lccsanandroid/graphics/Matrix;)Lccsanandroid/graphics/Matrix;
    .locals 5
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Lccsanandroid/graphics/Matrix;
    .param p3, "endValue"    # Lccsanandroid/graphics/Matrix;

    .line 34
    iget-object v0, p0, Lccsancom/google/android/material/animation/MatrixEvaluator;->tempStartValues:[F

    invoke-virtual {p2, v0}, Lccsanandroid/graphics/Matrix;->getValues([F)V

    .line 35
    iget-object v0, p0, Lccsancom/google/android/material/animation/MatrixEvaluator;->tempEndValues:[F

    invoke-virtual {p3, v0}, Lccsanandroid/graphics/Matrix;->getValues([F)V

    .line 36
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 37
    iget-object v1, p0, Lccsancom/google/android/material/animation/MatrixEvaluator;->tempEndValues:[F

    aget v2, v1, v0

    iget-object v3, p0, Lccsancom/google/android/material/animation/MatrixEvaluator;->tempStartValues:[F

    aget v4, v3, v0

    sub-float/2addr v2, v4

    .line 38
    .local v2, "diff":F
    aget v3, v3, v0

    mul-float v4, p1, v2

    add-float/2addr v3, v4

    aput v3, v1, v0

    .line 36
    .end local v2    # "diff":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/animation/MatrixEvaluator;->tempMatrix:Lccsanandroid/graphics/Matrix;

    iget-object v1, p0, Lccsancom/google/android/material/animation/MatrixEvaluator;->tempEndValues:[F

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Matrix;->setValues([F)V

    .line 41
    iget-object v0, p0, Lccsancom/google/android/material/animation/MatrixEvaluator;->tempMatrix:Lccsanandroid/graphics/Matrix;

    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p2, Lccsanandroid/graphics/Matrix;

    check-cast p3, Lccsanandroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/android/material/animation/MatrixEvaluator;->evaluate(FLccsanandroid/graphics/Matrix;Lccsanandroid/graphics/Matrix;)Lccsanandroid/graphics/Matrix;

    move-result-object p1

    return-object p1
.end method
