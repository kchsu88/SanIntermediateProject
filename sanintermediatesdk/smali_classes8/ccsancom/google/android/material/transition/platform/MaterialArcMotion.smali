.class public final Lccsancom/google/android/material/transition/platform/MaterialArcMotion;
.super Lccsanandroid/transition/PathMotion;
.source "MaterialArcMotion.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lccsanandroid/transition/PathMotion;-><init>()V

    return-void
.end method

.method private static getControlPoint(FFFF)Lccsanandroid/graphics/PointF;
    .locals 1
    .param p0, "startX"    # F
    .param p1, "startY"    # F
    .param p2, "endX"    # F
    .param p3, "endY"    # F

    .line 51
    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    .line 52
    new-instance v0, Lccsanandroid/graphics/PointF;

    invoke-direct {v0, p2, p1}, Lccsanandroid/graphics/PointF;-><init>(FF)V

    return-object v0

    .line 54
    :cond_0
    new-instance v0, Lccsanandroid/graphics/PointF;

    invoke-direct {v0, p0, p3}, Lccsanandroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public getPath(FFFF)Lccsanandroid/graphics/Path;
    .locals 4
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "endX"    # F
    .param p4, "endY"    # F

    .line 42
    new-instance v0, Lccsanandroid/graphics/Path;

    invoke-direct {v0}, Lccsanandroid/graphics/Path;-><init>()V

    .line 43
    .local v0, "path":Lccsanandroid/graphics/Path;
    invoke-virtual {v0, p1, p2}, Lccsanandroid/graphics/Path;->moveTo(FF)V

    .line 45
    invoke-static {p1, p2, p3, p4}, Lccsancom/google/android/material/transition/platform/MaterialArcMotion;->getControlPoint(FFFF)Lccsanandroid/graphics/PointF;

    move-result-object v1

    .line 46
    .local v1, "controlPoint":Lccsanandroid/graphics/PointF;
    iget v2, v1, Lccsanandroid/graphics/PointF;->x:F

    iget v3, v1, Lccsanandroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v3, p3, p4}, Lccsanandroid/graphics/Path;->quadTo(FFFF)V

    .line 47
    return-object v0
.end method
