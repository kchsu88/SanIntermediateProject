.class Lccsanandroidx/transition/RectEvaluator;
.super Ljava/lang/Object;
.source "RectEvaluator.java"

# interfaces
.implements Lccsanandroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/animation/TypeEvaluator<",
        "Lccsanandroid/graphics/Rect;",
        ">;"
    }
.end annotation


# instance fields
.field private mRect:Lccsanandroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method constructor <init>(Lccsanandroid/graphics/Rect;)V
    .locals 0
    .param p1, "reuseRect"    # Lccsanandroid/graphics/Rect;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lccsanandroidx/transition/RectEvaluator;->mRect:Lccsanandroid/graphics/Rect;

    .line 54
    return-void
.end method


# virtual methods
.method public evaluate(FLccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;)Lccsanandroid/graphics/Rect;
    .locals 6
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Lccsanandroid/graphics/Rect;
    .param p3, "endValue"    # Lccsanandroid/graphics/Rect;

    .line 75
    iget v0, p2, Lccsanandroid/graphics/Rect;->left:I

    iget v1, p3, Lccsanandroid/graphics/Rect;->left:I

    iget v2, p2, Lccsanandroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 76
    .local v0, "left":I
    iget v1, p2, Lccsanandroid/graphics/Rect;->top:I

    iget v2, p3, Lccsanandroid/graphics/Rect;->top:I

    iget v3, p2, Lccsanandroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 77
    .local v1, "top":I
    iget v2, p2, Lccsanandroid/graphics/Rect;->right:I

    iget v3, p3, Lccsanandroid/graphics/Rect;->right:I

    iget v4, p2, Lccsanandroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, p1

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 78
    .local v2, "right":I
    iget v3, p2, Lccsanandroid/graphics/Rect;->bottom:I

    iget v4, p3, Lccsanandroid/graphics/Rect;->bottom:I

    iget v5, p2, Lccsanandroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v4, v4, p1

    float-to-int v4, v4

    add-int/2addr v3, v4

    .line 79
    .local v3, "bottom":I
    iget-object v4, p0, Lccsanandroidx/transition/RectEvaluator;->mRect:Lccsanandroid/graphics/Rect;

    if-nez v4, :cond_0

    .line 80
    new-instance v4, Lccsanandroid/graphics/Rect;

    invoke-direct {v4, v0, v1, v2, v3}, Lccsanandroid/graphics/Rect;-><init>(IIII)V

    return-object v4

    .line 82
    :cond_0
    invoke-virtual {v4, v0, v1, v2, v3}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 83
    iget-object v4, p0, Lccsanandroidx/transition/RectEvaluator;->mRect:Lccsanandroid/graphics/Rect;

    return-object v4
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p2, Lccsanandroid/graphics/Rect;

    check-cast p3, Lccsanandroid/graphics/Rect;

    invoke-virtual {p0, p1, p2, p3}, Lccsanandroidx/transition/RectEvaluator;->evaluate(FLccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;)Lccsanandroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method
