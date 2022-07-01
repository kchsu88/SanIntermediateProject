.class public Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;
.super Ljava/lang/Object;
.source "ShapeAppearancePathProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;,
        Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;,
        Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$Lazy;
    }
.end annotation


# instance fields
.field private final boundsPath:Lccsanandroid/graphics/Path;

.field private final cornerPath:Lccsanandroid/graphics/Path;

.field private final cornerPaths:[Lccsancom/google/android/material/shape/ShapePath;

.field private final cornerTransforms:[Lccsanandroid/graphics/Matrix;

.field private edgeIntersectionCheckEnabled:Z

.field private final edgePath:Lccsanandroid/graphics/Path;

.field private final edgeTransforms:[Lccsanandroid/graphics/Matrix;

.field private final overlappedEdgePath:Lccsanandroid/graphics/Path;

.field private final pointF:Lccsanandroid/graphics/PointF;

.field private final scratch:[F

.field private final scratch2:[F

.field private final shapePath:Lccsancom/google/android/material/shape/ShapePath;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x4

    new-array v1, v0, [Lccsancom/google/android/material/shape/ShapePath;

    iput-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lccsancom/google/android/material/shape/ShapePath;

    .line 56
    new-array v1, v0, [Lccsanandroid/graphics/Matrix;

    iput-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Lccsanandroid/graphics/Matrix;

    .line 57
    new-array v1, v0, [Lccsanandroid/graphics/Matrix;

    iput-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Lccsanandroid/graphics/Matrix;

    .line 60
    new-instance v1, Lccsanandroid/graphics/PointF;

    invoke-direct {v1}, Lccsanandroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->pointF:Lccsanandroid/graphics/PointF;

    .line 61
    new-instance v1, Lccsanandroid/graphics/Path;

    invoke-direct {v1}, Lccsanandroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Lccsanandroid/graphics/Path;

    .line 62
    new-instance v1, Lccsanandroid/graphics/Path;

    invoke-direct {v1}, Lccsanandroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->boundsPath:Lccsanandroid/graphics/Path;

    .line 63
    new-instance v1, Lccsancom/google/android/material/shape/ShapePath;

    invoke-direct {v1}, Lccsancom/google/android/material/shape/ShapePath;-><init>()V

    iput-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lccsancom/google/android/material/shape/ShapePath;

    .line 64
    const/4 v1, 0x2

    new-array v2, v1, [F

    iput-object v2, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    .line 65
    new-array v1, v1, [F

    iput-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    .line 66
    new-instance v1, Lccsanandroid/graphics/Path;

    invoke-direct {v1}, Lccsanandroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Lccsanandroid/graphics/Path;

    .line 67
    new-instance v1, Lccsanandroid/graphics/Path;

    invoke-direct {v1}, Lccsanandroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPath:Lccsanandroid/graphics/Path;

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->edgeIntersectionCheckEnabled:Z

    .line 72
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 73
    iget-object v2, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lccsancom/google/android/material/shape/ShapePath;

    new-instance v3, Lccsancom/google/android/material/shape/ShapePath;

    invoke-direct {v3}, Lccsancom/google/android/material/shape/ShapePath;-><init>()V

    aput-object v3, v2, v1

    .line 74
    iget-object v2, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Lccsanandroid/graphics/Matrix;

    new-instance v3, Lccsanandroid/graphics/Matrix;

    invoke-direct {v3}, Lccsanandroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    .line 75
    iget-object v2, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Lccsanandroid/graphics/Matrix;

    new-instance v3, Lccsanandroid/graphics/Matrix;

    invoke-direct {v3}, Lccsanandroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private angleOfEdge(I)F
    .locals 1
    .param p1, "index"    # I

    .line 325
    add-int/lit8 v0, p1, 0x1

    mul-int/lit8 v0, v0, 0x5a

    int-to-float v0, v0

    return v0
.end method

.method private appendCornerPath(Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;I)V
    .locals 4
    .param p1, "spec"    # Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;
    .param p2, "index"    # I

    .line 170
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lccsancom/google/android/material/shape/ShapePath;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lccsancom/google/android/material/shape/ShapePath;->getStartX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 171
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lccsancom/google/android/material/shape/ShapePath;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lccsancom/google/android/material/shape/ShapePath;->getStartY()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 172
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Lccsanandroid/graphics/Matrix;

    aget-object v0, v0, p2

    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Matrix;->mapPoints([F)V

    .line 173
    if-nez p2, :cond_0

    .line 174
    iget-object v0, p1, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->path:Lccsanandroid/graphics/Path;

    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    aget v2, v1, v2

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Lccsanandroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p1, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->path:Lccsanandroid/graphics/Path;

    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    aget v2, v1, v2

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Lccsanandroid/graphics/Path;->lineTo(FF)V

    .line 178
    :goto_0
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lccsancom/google/android/material/shape/ShapePath;

    aget-object v0, v0, p2

    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Lccsanandroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p1, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->path:Lccsanandroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Lccsancom/google/android/material/shape/ShapePath;->applyToPath(Lccsanandroid/graphics/Matrix;Lccsanandroid/graphics/Path;)V

    .line 179
    iget-object v0, p1, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->pathListener:Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p1, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->pathListener:Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lccsancom/google/android/material/shape/ShapePath;

    aget-object v1, v1, p2

    iget-object v2, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Lccsanandroid/graphics/Matrix;

    aget-object v2, v2, p2

    invoke-interface {v0, v1, v2, p2}, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;->onCornerPathCreated(Lccsancom/google/android/material/shape/ShapePath;Lccsanandroid/graphics/Matrix;I)V

    .line 182
    :cond_1
    return-void
.end method

.method private appendEdgePath(Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;I)V
    .locals 9
    .param p1, "spec"    # Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;
    .param p2, "index"    # I

    .line 185
    add-int/lit8 v0, p2, 0x1

    rem-int/lit8 v0, v0, 0x4

    .line 186
    .local v0, "nextIndex":I
    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    iget-object v2, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lccsancom/google/android/material/shape/ShapePath;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Lccsancom/google/android/material/shape/ShapePath;->getEndX()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 187
    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    iget-object v2, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lccsancom/google/android/material/shape/ShapePath;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Lccsancom/google/android/material/shape/ShapePath;->getEndY()F

    move-result v2

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 188
    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Lccsanandroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    invoke-virtual {v1, v2}, Lccsanandroid/graphics/Matrix;->mapPoints([F)V

    .line 190
    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    iget-object v2, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lccsancom/google/android/material/shape/ShapePath;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lccsancom/google/android/material/shape/ShapePath;->getStartX()F

    move-result v2

    aput v2, v1, v3

    .line 191
    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    iget-object v2, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lccsancom/google/android/material/shape/ShapePath;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lccsancom/google/android/material/shape/ShapePath;->getStartY()F

    move-result v2

    aput v2, v1, v4

    .line 192
    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Lccsanandroid/graphics/Matrix;

    aget-object v1, v1, v0

    iget-object v2, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    invoke-virtual {v1, v2}, Lccsanandroid/graphics/Matrix;->mapPoints([F)V

    .line 194
    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    aget v2, v1, v3

    iget-object v5, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    aget v6, v5, v3

    sub-float/2addr v2, v6

    float-to-double v6, v2

    aget v1, v1, v4

    aget v2, v5, v4

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 196
    .local v1, "edgeLength":F
    const v2, 0x3a83126f    # 0.001f

    sub-float v2, v1, v2

    const/4 v5, 0x0

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 197
    iget-object v2, p1, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->bounds:Lccsanandroid/graphics/RectF;

    invoke-direct {p0, v2, p2}, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->getEdgeCenterForIndex(Lccsanandroid/graphics/RectF;I)F

    move-result v2

    .line 198
    .local v2, "center":F
    iget-object v6, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lccsancom/google/android/material/shape/ShapePath;

    invoke-virtual {v6, v5, v5}, Lccsancom/google/android/material/shape/ShapePath;->reset(FF)V

    .line 199
    iget-object v5, p1, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {p0, p2, v5}, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->getEdgeTreatmentForIndex(ILccsancom/google/android/material/shape/ShapeAppearanceModel;)Lccsancom/google/android/material/shape/EdgeTreatment;

    move-result-object v5

    .line 200
    .local v5, "edgeTreatment":Lccsancom/google/android/material/shape/EdgeTreatment;
    iget v6, p1, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->interpolation:F

    iget-object v7, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lccsancom/google/android/material/shape/ShapePath;

    invoke-virtual {v5, v1, v2, v6, v7}, Lccsancom/google/android/material/shape/EdgeTreatment;->getEdgePath(FFFLccsancom/google/android/material/shape/ShapePath;)V

    .line 201
    iget-object v6, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Lccsanandroid/graphics/Path;

    invoke-virtual {v6}, Lccsanandroid/graphics/Path;->reset()V

    .line 202
    iget-object v6, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lccsancom/google/android/material/shape/ShapePath;

    iget-object v7, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Lccsanandroid/graphics/Matrix;

    aget-object v7, v7, p2

    iget-object v8, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Lccsanandroid/graphics/Path;

    invoke-virtual {v6, v7, v8}, Lccsancom/google/android/material/shape/ShapePath;->applyToPath(Lccsanandroid/graphics/Matrix;Lccsanandroid/graphics/Path;)V

    .line 204
    iget-boolean v6, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->edgeIntersectionCheckEnabled:Z

    if-eqz v6, :cond_1

    sget v6, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v6, v7, :cond_1

    .line 206
    invoke-virtual {v5}, Lccsancom/google/android/material/shape/EdgeTreatment;->forceIntersection()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Lccsanandroid/graphics/Path;

    .line 207
    invoke-direct {p0, v6, p2}, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->pathOverlapsCorner(Lccsanandroid/graphics/Path;I)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Lccsanandroid/graphics/Path;

    .line 208
    invoke-direct {p0, v6, v0}, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->pathOverlapsCorner(Lccsanandroid/graphics/Path;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 212
    :cond_0
    iget-object v6, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Lccsanandroid/graphics/Path;

    iget-object v7, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->boundsPath:Lccsanandroid/graphics/Path;

    sget-object v8, Lccsanandroid/graphics/Path$Op;->DIFFERENCE:Lccsanandroid/graphics/Path$Op;

    invoke-virtual {v6, v6, v7, v8}, Lccsanandroid/graphics/Path;->op(Lccsanandroid/graphics/Path;Lccsanandroid/graphics/Path;Lccsanandroid/graphics/Path$Op;)Z

    .line 216
    iget-object v6, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    iget-object v7, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lccsancom/google/android/material/shape/ShapePath;

    invoke-virtual {v7}, Lccsancom/google/android/material/shape/ShapePath;->getStartX()F

    move-result v7

    aput v7, v6, v3

    .line 217
    iget-object v6, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    iget-object v7, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lccsancom/google/android/material/shape/ShapePath;

    invoke-virtual {v7}, Lccsancom/google/android/material/shape/ShapePath;->getStartY()F

    move-result v7

    aput v7, v6, v4

    .line 218
    iget-object v6, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Lccsanandroid/graphics/Matrix;

    aget-object v6, v6, p2

    iget-object v7, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    invoke-virtual {v6, v7}, Lccsanandroid/graphics/Matrix;->mapPoints([F)V

    .line 219
    iget-object v6, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Lccsanandroid/graphics/Path;

    iget-object v7, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    aget v3, v7, v3

    aget v4, v7, v4

    invoke-virtual {v6, v3, v4}, Lccsanandroid/graphics/Path;->moveTo(FF)V

    .line 222
    iget-object v3, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lccsancom/google/android/material/shape/ShapePath;

    iget-object v4, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Lccsanandroid/graphics/Matrix;

    aget-object v4, v4, p2

    iget-object v6, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Lccsanandroid/graphics/Path;

    invoke-virtual {v3, v4, v6}, Lccsancom/google/android/material/shape/ShapePath;->applyToPath(Lccsanandroid/graphics/Matrix;Lccsanandroid/graphics/Path;)V

    goto :goto_0

    .line 224
    :cond_1
    iget-object v3, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lccsancom/google/android/material/shape/ShapePath;

    iget-object v4, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Lccsanandroid/graphics/Matrix;

    aget-object v4, v4, p2

    iget-object v6, p1, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->path:Lccsanandroid/graphics/Path;

    invoke-virtual {v3, v4, v6}, Lccsancom/google/android/material/shape/ShapePath;->applyToPath(Lccsanandroid/graphics/Matrix;Lccsanandroid/graphics/Path;)V

    .line 227
    :goto_0
    iget-object v3, p1, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->pathListener:Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    if-eqz v3, :cond_2

    .line 228
    iget-object v3, p1, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->pathListener:Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    iget-object v4, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lccsancom/google/android/material/shape/ShapePath;

    iget-object v6, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Lccsanandroid/graphics/Matrix;

    aget-object v6, v6, p2

    invoke-interface {v3, v4, v6, p2}, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;->onEdgePathCreated(Lccsancom/google/android/material/shape/ShapePath;Lccsanandroid/graphics/Matrix;I)V

    .line 230
    :cond_2
    return-void
.end method

.method private getCoordinatesOfCorner(ILccsanandroid/graphics/RectF;Lccsanandroid/graphics/PointF;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "bounds"    # Lccsanandroid/graphics/RectF;
    .param p3, "pointF"    # Lccsanandroid/graphics/PointF;

    .line 307
    packed-switch p1, :pswitch_data_0

    .line 319
    iget v0, p2, Lccsanandroid/graphics/RectF;->right:F

    iget v1, p2, Lccsanandroid/graphics/RectF;->top:F

    invoke-virtual {p3, v0, v1}, Lccsanandroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 315
    :pswitch_0
    iget v0, p2, Lccsanandroid/graphics/RectF;->left:F

    iget v1, p2, Lccsanandroid/graphics/RectF;->top:F

    invoke-virtual {p3, v0, v1}, Lccsanandroid/graphics/PointF;->set(FF)V

    .line 316
    goto :goto_0

    .line 312
    :pswitch_1
    iget v0, p2, Lccsanandroid/graphics/RectF;->left:F

    iget v1, p2, Lccsanandroid/graphics/RectF;->bottom:F

    invoke-virtual {p3, v0, v1}, Lccsanandroid/graphics/PointF;->set(FF)V

    .line 313
    goto :goto_0

    .line 309
    :pswitch_2
    iget v0, p2, Lccsanandroid/graphics/RectF;->right:F

    iget v1, p2, Lccsanandroid/graphics/RectF;->bottom:F

    invoke-virtual {p3, v0, v1}, Lccsanandroid/graphics/PointF;->set(FF)V

    .line 310
    nop

    .line 322
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCornerSizeForIndex(ILccsancom/google/android/material/shape/ShapeAppearanceModel;)Lccsancom/google/android/material/shape/CornerSize;
    .locals 1
    .param p1, "index"    # I
    .param p2, "shapeAppearanceModel"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 278
    packed-switch p1, :pswitch_data_0

    .line 287
    invoke-virtual {p2}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v0

    return-object v0

    .line 284
    :pswitch_0
    invoke-virtual {p2}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v0

    return-object v0

    .line 282
    :pswitch_1
    invoke-virtual {p2}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v0

    return-object v0

    .line 280
    :pswitch_2
    invoke-virtual {p2}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCornerTreatmentForIndex(ILccsancom/google/android/material/shape/ShapeAppearanceModel;)Lccsancom/google/android/material/shape/CornerTreatment;
    .locals 1
    .param p1, "index"    # I
    .param p2, "shapeAppearanceModel"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 263
    packed-switch p1, :pswitch_data_0

    .line 272
    invoke-virtual {p2}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCorner()Lccsancom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    return-object v0

    .line 269
    :pswitch_0
    invoke-virtual {p2}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCorner()Lccsancom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    return-object v0

    .line 267
    :pswitch_1
    invoke-virtual {p2}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCorner()Lccsancom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    return-object v0

    .line 265
    :pswitch_2
    invoke-virtual {p2}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCorner()Lccsancom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getEdgeCenterForIndex(Lccsanandroid/graphics/RectF;I)F
    .locals 4
    .param p1, "bounds"    # Lccsanandroid/graphics/RectF;
    .param p2, "index"    # I

    .line 247
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lccsancom/google/android/material/shape/ShapePath;

    aget-object v1, v1, p2

    iget v1, v1, Lccsancom/google/android/material/shape/ShapePath;->endX:F

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 248
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lccsancom/google/android/material/shape/ShapePath;

    aget-object v1, v1, p2

    iget v1, v1, Lccsancom/google/android/material/shape/ShapePath;->endY:F

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 249
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Lccsanandroid/graphics/Matrix;

    aget-object v0, v0, p2

    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Matrix;->mapPoints([F)V

    .line 250
    packed-switch p2, :pswitch_data_0

    .line 257
    :pswitch_0
    invoke-virtual {p1}, Lccsanandroid/graphics/RectF;->centerY()F

    move-result v0

    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    aget v1, v1, v3

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    .line 253
    :pswitch_1
    invoke-virtual {p1}, Lccsanandroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    aget v1, v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getEdgeTreatmentForIndex(ILccsancom/google/android/material/shape/ShapeAppearanceModel;)Lccsancom/google/android/material/shape/EdgeTreatment;
    .locals 1
    .param p1, "index"    # I
    .param p2, "shapeAppearanceModel"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 293
    packed-switch p1, :pswitch_data_0

    .line 302
    invoke-virtual {p2}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getRightEdge()Lccsancom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    return-object v0

    .line 299
    :pswitch_0
    invoke-virtual {p2}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getTopEdge()Lccsancom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    return-object v0

    .line 297
    :pswitch_1
    invoke-virtual {p2}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getLeftEdge()Lccsancom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    return-object v0

    .line 295
    :pswitch_2
    invoke-virtual {p2}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getBottomEdge()Lccsancom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;
    .locals 1

    .line 83
    sget-object v0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$Lazy;->INSTANCE:Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;

    return-object v0
.end method

.method private pathOverlapsCorner(Lccsanandroid/graphics/Path;I)Z
    .locals 4
    .param p1, "edgePath"    # Lccsanandroid/graphics/Path;
    .param p2, "index"    # I

    .line 234
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPath:Lccsanandroid/graphics/Path;

    invoke-virtual {v0}, Lccsanandroid/graphics/Path;->reset()V

    .line 235
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lccsancom/google/android/material/shape/ShapePath;

    aget-object v0, v0, p2

    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Lccsanandroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPath:Lccsanandroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Lccsancom/google/android/material/shape/ShapePath;->applyToPath(Lccsanandroid/graphics/Matrix;Lccsanandroid/graphics/Path;)V

    .line 237
    new-instance v0, Lccsanandroid/graphics/RectF;

    invoke-direct {v0}, Lccsanandroid/graphics/RectF;-><init>()V

    .line 238
    .local v0, "bounds":Lccsanandroid/graphics/RectF;
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lccsanandroid/graphics/Path;->computeBounds(Lccsanandroid/graphics/RectF;Z)V

    .line 239
    iget-object v2, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPath:Lccsanandroid/graphics/Path;

    invoke-virtual {v2, v0, v1}, Lccsanandroid/graphics/Path;->computeBounds(Lccsanandroid/graphics/RectF;Z)V

    .line 240
    iget-object v2, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPath:Lccsanandroid/graphics/Path;

    sget-object v3, Lccsanandroid/graphics/Path$Op;->INTERSECT:Lccsanandroid/graphics/Path$Op;

    invoke-virtual {p1, v2, v3}, Lccsanandroid/graphics/Path;->op(Lccsanandroid/graphics/Path;Lccsanandroid/graphics/Path$Op;)Z

    .line 241
    invoke-virtual {p1, v0, v1}, Lccsanandroid/graphics/Path;->computeBounds(Lccsanandroid/graphics/RectF;Z)V

    .line 243
    invoke-virtual {v0}, Lccsanandroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lccsanandroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {v0}, Lccsanandroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private setCornerPathAndTransform(Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;I)V
    .locals 7
    .param p1, "spec"    # Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;
    .param p2, "index"    # I

    .line 148
    iget-object v0, p1, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {p0, p2, v0}, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->getCornerSizeForIndex(ILccsancom/google/android/material/shape/ShapeAppearanceModel;)Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v0

    .line 149
    .local v0, "size":Lccsancom/google/android/material/shape/CornerSize;
    iget-object v1, p1, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {p0, p2, v1}, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->getCornerTreatmentForIndex(ILccsancom/google/android/material/shape/ShapeAppearanceModel;)Lccsancom/google/android/material/shape/CornerTreatment;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lccsancom/google/android/material/shape/ShapePath;

    aget-object v2, v2, p2

    iget v4, p1, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->interpolation:F

    iget-object v5, p1, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->bounds:Lccsanandroid/graphics/RectF;

    .line 150
    const/high16 v3, 0x42b40000    # 90.0f

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lccsancom/google/android/material/shape/CornerTreatment;->getCornerPath(Lccsancom/google/android/material/shape/ShapePath;FFLccsanandroid/graphics/RectF;Lccsancom/google/android/material/shape/CornerSize;)V

    .line 152
    invoke-direct {p0, p2}, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->angleOfEdge(I)F

    move-result v1

    .line 153
    .local v1, "edgeAngle":F
    iget-object v2, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Lccsanandroid/graphics/Matrix;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Lccsanandroid/graphics/Matrix;->reset()V

    .line 154
    iget-object v2, p1, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->bounds:Lccsanandroid/graphics/RectF;

    iget-object v3, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->pointF:Lccsanandroid/graphics/PointF;

    invoke-direct {p0, p2, v2, v3}, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->getCoordinatesOfCorner(ILccsanandroid/graphics/RectF;Lccsanandroid/graphics/PointF;)V

    .line 155
    iget-object v2, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Lccsanandroid/graphics/Matrix;

    aget-object v2, v2, p2

    iget-object v3, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->pointF:Lccsanandroid/graphics/PointF;

    iget v3, v3, Lccsanandroid/graphics/PointF;->x:F

    iget-object v4, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->pointF:Lccsanandroid/graphics/PointF;

    iget v4, v4, Lccsanandroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Lccsanandroid/graphics/Matrix;->setTranslate(FF)V

    .line 156
    iget-object v2, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Lccsanandroid/graphics/Matrix;

    aget-object v2, v2, p2

    invoke-virtual {v2, v1}, Lccsanandroid/graphics/Matrix;->preRotate(F)Z

    .line 157
    return-void
.end method

.method private setEdgePathAndTransform(I)V
    .locals 5
    .param p1, "index"    # I

    .line 160
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lccsancom/google/android/material/shape/ShapePath;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lccsancom/google/android/material/shape/ShapePath;->getEndX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 161
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lccsancom/google/android/material/shape/ShapePath;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lccsancom/google/android/material/shape/ShapePath;->getEndY()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 162
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Lccsanandroid/graphics/Matrix;

    aget-object v0, v0, p1

    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Matrix;->mapPoints([F)V

    .line 163
    invoke-direct {p0, p1}, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->angleOfEdge(I)F

    move-result v0

    .line 164
    .local v0, "edgeAngle":F
    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Lccsanandroid/graphics/Matrix;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lccsanandroid/graphics/Matrix;->reset()V

    .line 165
    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Lccsanandroid/graphics/Matrix;

    aget-object v1, v1, p1

    iget-object v4, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    aget v2, v4, v2

    aget v3, v4, v3

    invoke-virtual {v1, v2, v3}, Lccsanandroid/graphics/Matrix;->setTranslate(FF)V

    .line 166
    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Lccsanandroid/graphics/Matrix;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Lccsanandroid/graphics/Matrix;->preRotate(F)Z

    .line 167
    return-void
.end method


# virtual methods
.method public calculatePath(Lccsancom/google/android/material/shape/ShapeAppearanceModel;FLccsanandroid/graphics/RectF;Lccsanandroid/graphics/Path;)V
    .locals 6
    .param p1, "shapeAppearanceModel"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .param p2, "interpolation"    # F
    .param p3, "bounds"    # Lccsanandroid/graphics/RectF;
    .param p4, "path"    # Lccsanandroid/graphics/Path;

    .line 99
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lccsancom/google/android/material/shape/ShapeAppearanceModel;FLccsanandroid/graphics/RectF;Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Lccsanandroid/graphics/Path;)V

    .line 100
    return-void
.end method

.method public calculatePath(Lccsancom/google/android/material/shape/ShapeAppearanceModel;FLccsanandroid/graphics/RectF;Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Lccsanandroid/graphics/Path;)V
    .locals 8
    .param p1, "shapeAppearanceModel"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .param p2, "interpolation"    # F
    .param p3, "bounds"    # Lccsanandroid/graphics/RectF;
    .param p4, "pathListener"    # Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;
    .param p5, "path"    # Lccsanandroid/graphics/Path;

    .line 118
    invoke-virtual {p5}, Lccsanandroid/graphics/Path;->rewind()V

    .line 119
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Lccsanandroid/graphics/Path;

    invoke-virtual {v0}, Lccsanandroid/graphics/Path;->rewind()V

    .line 120
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->boundsPath:Lccsanandroid/graphics/Path;

    invoke-virtual {v0}, Lccsanandroid/graphics/Path;->rewind()V

    .line 121
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->boundsPath:Lccsanandroid/graphics/Path;

    sget-object v1, Lccsanandroid/graphics/Path$Direction;->CW:Lccsanandroid/graphics/Path$Direction;

    invoke-virtual {v0, p3, v1}, Lccsanandroid/graphics/Path;->addRect(Lccsanandroid/graphics/RectF;Lccsanandroid/graphics/Path$Direction;)V

    .line 122
    new-instance v0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;-><init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;FLccsanandroid/graphics/RectF;Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Lccsanandroid/graphics/Path;)V

    .line 128
    .local v0, "spec":Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 129
    invoke-direct {p0, v0, v1}, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->setCornerPathAndTransform(Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;I)V

    .line 130
    invoke-direct {p0, v1}, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->setEdgePathAndTransform(I)V

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v1    # "index":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "index":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 134
    invoke-direct {p0, v0, v1}, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->appendCornerPath(Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;I)V

    .line 135
    invoke-direct {p0, v0, v1}, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->appendEdgePath(Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;I)V

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 138
    .end local v1    # "index":I
    :cond_1
    invoke-virtual {p5}, Lccsanandroid/graphics/Path;->close()V

    .line 139
    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Lccsanandroid/graphics/Path;

    invoke-virtual {v1}, Lccsanandroid/graphics/Path;->close()V

    .line 142
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Lccsanandroid/graphics/Path;

    invoke-virtual {v1}, Lccsanandroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 143
    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Lccsanandroid/graphics/Path;

    sget-object v2, Lccsanandroid/graphics/Path$Op;->UNION:Lccsanandroid/graphics/Path$Op;

    invoke-virtual {p5, v1, v2}, Lccsanandroid/graphics/Path;->op(Lccsanandroid/graphics/Path;Lccsanandroid/graphics/Path$Op;)Z

    .line 145
    :cond_2
    return-void
.end method

.method setEdgeIntersectionCheckEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 329
    iput-boolean p1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->edgeIntersectionCheckEnabled:Z

    .line 330
    return-void
.end method
