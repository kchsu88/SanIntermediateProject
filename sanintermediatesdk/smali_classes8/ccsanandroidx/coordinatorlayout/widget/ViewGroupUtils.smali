.class public Lccsanandroidx/coordinatorlayout/widget/ViewGroupUtils;
.super Ljava/lang/Object;
.source "ViewGroupUtils.java"


# static fields
.field private static final sMatrix:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lccsanandroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRectF:Ljava/lang/ThreadLocal;
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

    .line 35
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lccsanandroidx/coordinatorlayout/widget/ViewGroupUtils;->sMatrix:Ljava/lang/ThreadLocal;

    .line 36
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lccsanandroidx/coordinatorlayout/widget/ViewGroupUtils;->sRectF:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method public static getDescendantRect(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;)V
    .locals 3
    .param p0, "parent"    # Lccsanandroid/view/ViewGroup;
    .param p1, "descendant"    # Lccsanandroid/view/View;
    .param p2, "out"    # Lccsanandroid/graphics/Rect;

    .line 77
    invoke-virtual {p1}, Lccsanandroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lccsanandroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 78
    invoke-static {p0, p1, p2}, Lccsanandroidx/coordinatorlayout/widget/ViewGroupUtils;->offsetDescendantRect(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;)V

    .line 79
    return-void
.end method

.method private static offsetDescendantMatrix(Lccsanandroid/view/ViewParent;Lccsanandroid/view/View;Lccsanandroid/graphics/Matrix;)V
    .locals 4
    .param p0, "target"    # Lccsanandroid/view/ViewParent;
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "m"    # Lccsanandroid/graphics/Matrix;

    .line 82
    invoke-virtual {p1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    .line 83
    .local v0, "parent":Lccsanandroid/view/ViewParent;
    instance-of v1, v0, Lccsanandroid/view/View;

    if-eqz v1, :cond_0

    if-eq v0, p0, :cond_0

    .line 84
    move-object v1, v0

    check-cast v1, Lccsanandroid/view/View;

    .line 85
    .local v1, "vp":Lccsanandroid/view/View;
    invoke-static {p0, v1, p2}, Lccsanandroidx/coordinatorlayout/widget/ViewGroupUtils;->offsetDescendantMatrix(Lccsanandroid/view/ViewParent;Lccsanandroid/view/View;Lccsanandroid/graphics/Matrix;)V

    .line 86
    invoke-virtual {v1}, Lccsanandroid/view/View;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1}, Lccsanandroid/view/View;->getScrollY()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p2, v2, v3}, Lccsanandroid/graphics/Matrix;->preTranslate(FF)Z

    .line 89
    .end local v1    # "vp":Lccsanandroid/view/View;
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lccsanandroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Lccsanandroid/graphics/Matrix;->preTranslate(FF)Z

    .line 91
    invoke-virtual {p1}, Lccsanandroid/view/View;->getMatrix()Lccsanandroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    invoke-virtual {p1}, Lccsanandroid/view/View;->getMatrix()Lccsanandroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p2, v1}, Lccsanandroid/graphics/Matrix;->preConcat(Lccsanandroid/graphics/Matrix;)Z

    .line 94
    :cond_1
    return-void
.end method

.method static offsetDescendantRect(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;)V
    .locals 7
    .param p0, "parent"    # Lccsanandroid/view/ViewGroup;
    .param p1, "descendant"    # Lccsanandroid/view/View;
    .param p2, "rect"    # Lccsanandroid/graphics/Rect;

    .line 48
    sget-object v0, Lccsanandroidx/coordinatorlayout/widget/ViewGroupUtils;->sMatrix:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/graphics/Matrix;

    .line 49
    .local v1, "m":Lccsanandroid/graphics/Matrix;
    if-nez v1, :cond_0

    .line 50
    new-instance v2, Lccsanandroid/graphics/Matrix;

    invoke-direct {v2}, Lccsanandroid/graphics/Matrix;-><init>()V

    move-object v1, v2

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v1}, Lccsanandroid/graphics/Matrix;->reset()V

    .line 56
    :goto_0
    invoke-static {p0, p1, v1}, Lccsanandroidx/coordinatorlayout/widget/ViewGroupUtils;->offsetDescendantMatrix(Lccsanandroid/view/ViewParent;Lccsanandroid/view/View;Lccsanandroid/graphics/Matrix;)V

    .line 58
    sget-object v0, Lccsanandroidx/coordinatorlayout/widget/ViewGroupUtils;->sRectF:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/graphics/RectF;

    .line 59
    .local v2, "rectF":Lccsanandroid/graphics/RectF;
    if-nez v2, :cond_1

    .line 60
    new-instance v3, Lccsanandroid/graphics/RectF;

    invoke-direct {v3}, Lccsanandroid/graphics/RectF;-><init>()V

    move-object v2, v3

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 63
    :cond_1
    invoke-virtual {v2, p2}, Lccsanandroid/graphics/RectF;->set(Lccsanandroid/graphics/Rect;)V

    .line 64
    invoke-virtual {v1, v2}, Lccsanandroid/graphics/Matrix;->mapRect(Lccsanandroid/graphics/RectF;)Z

    .line 65
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

    .line 67
    return-void
.end method
