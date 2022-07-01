.class public Lccsancom/google/android/material/internal/DescendantOffsetUtils;
.super Ljava/lang/Object;
.source "DescendantOffsetUtils.java"


# static fields
.field private static final matrix:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lccsanandroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static final rectF:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lccsanandroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lccsancom/google/android/material/internal/DescendantOffsetUtils;->matrix:Ljava/lang/ThreadLocal;

    .line 38
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lccsancom/google/android/material/internal/DescendantOffsetUtils;->rectF:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDescendantRect(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;)V
    .locals 3
    .param p0, "parent"    # Lccsanandroid/view/ViewGroup;
    .param p1, "descendant"    # Lccsanandroid/view/View;
    .param p2, "out"    # Lccsanandroid/graphics/Rect;

    .line 83
    invoke-virtual {p1}, Lccsanandroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lccsanandroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 84
    invoke-static {p0, p1, p2}, Lccsancom/google/android/material/internal/DescendantOffsetUtils;->offsetDescendantRect(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;)V

    .line 85
    return-void
.end method

.method private static offsetDescendantMatrix(Lccsanandroid/view/ViewParent;Lccsanandroid/view/View;Lccsanandroid/graphics/Matrix;)V
    .locals 4
    .param p0, "target"    # Lccsanandroid/view/ViewParent;
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "m"    # Lccsanandroid/graphics/Matrix;

    .line 89
    invoke-virtual {p1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    .line 90
    .local v0, "parent":Lccsanandroid/view/ViewParent;
    instance-of v1, v0, Lccsanandroid/view/View;

    if-eqz v1, :cond_0

    if-eq v0, p0, :cond_0

    .line 91
    move-object v1, v0

    check-cast v1, Lccsanandroid/view/View;

    .line 92
    .local v1, "vp":Lccsanandroid/view/View;
    invoke-static {p0, v1, p2}, Lccsancom/google/android/material/internal/DescendantOffsetUtils;->offsetDescendantMatrix(Lccsanandroid/view/ViewParent;Lccsanandroid/view/View;Lccsanandroid/graphics/Matrix;)V

    .line 93
    invoke-virtual {v1}, Lccsanandroid/view/View;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1}, Lccsanandroid/view/View;->getScrollY()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p2, v2, v3}, Lccsanandroid/graphics/Matrix;->preTranslate(FF)Z

    .line 96
    .end local v1    # "vp":Lccsanandroid/view/View;
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lccsanandroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Lccsanandroid/graphics/Matrix;->preTranslate(FF)Z

    .line 98
    invoke-virtual {p1}, Lccsanandroid/view/View;->getMatrix()Lccsanandroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    invoke-virtual {p1}, Lccsanandroid/view/View;->getMatrix()Lccsanandroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p2, v1}, Lccsanandroid/graphics/Matrix;->preConcat(Lccsanandroid/graphics/Matrix;)Z

    .line 101
    :cond_1
    return-void
.end method

.method public static offsetDescendantRect(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;)V
    .locals 7
    .param p0, "parent"    # Lccsanandroid/view/ViewGroup;
    .param p1, "descendant"    # Lccsanandroid/view/View;
    .param p2, "rect"    # Lccsanandroid/graphics/Rect;

    .line 50
    sget-object v0, Lccsancom/google/android/material/internal/DescendantOffsetUtils;->matrix:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/graphics/Matrix;

    .line 51
    .local v1, "m":Lccsanandroid/graphics/Matrix;
    if-nez v1, :cond_0

    .line 52
    new-instance v2, Lccsanandroid/graphics/Matrix;

    invoke-direct {v2}, Lccsanandroid/graphics/Matrix;-><init>()V

    move-object v1, v2

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v1}, Lccsanandroid/graphics/Matrix;->reset()V

    .line 58
    :goto_0
    invoke-static {p0, p1, v1}, Lccsancom/google/android/material/internal/DescendantOffsetUtils;->offsetDescendantMatrix(Lccsanandroid/view/ViewParent;Lccsanandroid/view/View;Lccsanandroid/graphics/Matrix;)V

    .line 60
    sget-object v0, Lccsancom/google/android/material/internal/DescendantOffsetUtils;->rectF:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/graphics/RectF;

    .line 61
    .local v2, "rectF":Lccsanandroid/graphics/RectF;
    if-nez v2, :cond_1

    .line 62
    new-instance v3, Lccsanandroid/graphics/RectF;

    invoke-direct {v3}, Lccsanandroid/graphics/RectF;-><init>()V

    move-object v2, v3

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 65
    :cond_1
    invoke-virtual {v2, p2}, Lccsanandroid/graphics/RectF;->set(Lccsanandroid/graphics/Rect;)V

    .line 66
    invoke-virtual {v1, v2}, Lccsanandroid/graphics/Matrix;->mapRect(Lccsanandroid/graphics/RectF;)Z

    .line 67
    iget v0, v2, Lccsanandroid/graphics/RectF;->left:F

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v0, v3

    float-to-int v0, v0

    iget v4, v2, Lccsanandroid/graphics/RectF;->top:F

    add-float/2addr v4, v3

    float-to-int v4, v4

    iget v5, v2, Lccsanandroid/graphics/RectF;->right:F

    add-float/2addr v5, v3

    float-to-int v5, v5

    iget v6, v2, Lccsanandroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v3

    float-to-int v3, v6

    invoke-virtual {p2, v0, v4, v5, v3}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 72
    return-void
.end method
