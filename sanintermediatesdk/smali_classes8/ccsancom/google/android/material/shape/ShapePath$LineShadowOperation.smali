.class Lccsancom/google/android/material/shape/ShapePath$LineShadowOperation;
.super Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LineShadowOperation"
.end annotation


# instance fields
.field private final operation:Lccsancom/google/android/material/shape/ShapePath$PathLineOperation;

.field private final startX:F

.field private final startY:F


# direct methods
.method public constructor <init>(Lccsancom/google/android/material/shape/ShapePath$PathLineOperation;FF)V
    .locals 0
    .param p1, "operation"    # Lccsancom/google/android/material/shape/ShapePath$PathLineOperation;
    .param p2, "startX"    # F
    .param p3, "startY"    # F

    .line 383
    invoke-direct {p0}, Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;-><init>()V

    .line 384
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapePath$LineShadowOperation;->operation:Lccsancom/google/android/material/shape/ShapePath$PathLineOperation;

    .line 385
    iput p2, p0, Lccsancom/google/android/material/shape/ShapePath$LineShadowOperation;->startX:F

    .line 386
    iput p3, p0, Lccsancom/google/android/material/shape/ShapePath$LineShadowOperation;->startY:F

    .line 387
    return-void
.end method


# virtual methods
.method public draw(Lccsanandroid/graphics/Matrix;Lccsancom/google/android/material/shadow/ShadowRenderer;ILccsanandroid/graphics/Canvas;)V
    .locals 7
    .param p1, "transform"    # Lccsanandroid/graphics/Matrix;
    .param p2, "shadowRenderer"    # Lccsancom/google/android/material/shadow/ShadowRenderer;
    .param p3, "shadowElevation"    # I
    .param p4, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 395
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapePath$LineShadowOperation;->operation:Lccsancom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v0}, Lccsancom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lccsancom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v0

    iget v1, p0, Lccsancom/google/android/material/shape/ShapePath$LineShadowOperation;->startY:F

    sub-float/2addr v0, v1

    .line 396
    .local v0, "height":F
    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapePath$LineShadowOperation;->operation:Lccsancom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v1}, Lccsancom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lccsancom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v1

    iget v2, p0, Lccsancom/google/android/material/shape/ShapePath$LineShadowOperation;->startX:F

    sub-float/2addr v1, v2

    .line 397
    .local v1, "width":F
    new-instance v2, Lccsanandroid/graphics/RectF;

    float-to-double v3, v0

    float-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, v4}, Lccsanandroid/graphics/RectF;-><init>(FFFF)V

    .line 398
    .local v2, "rect":Lccsanandroid/graphics/RectF;
    new-instance v3, Lccsanandroid/graphics/Matrix;

    invoke-direct {v3, p1}, Lccsanandroid/graphics/Matrix;-><init>(Lccsanandroid/graphics/Matrix;)V

    .line 400
    .local v3, "edgeTransform":Lccsanandroid/graphics/Matrix;
    iget v4, p0, Lccsancom/google/android/material/shape/ShapePath$LineShadowOperation;->startX:F

    iget v5, p0, Lccsancom/google/android/material/shape/ShapePath$LineShadowOperation;->startY:F

    invoke-virtual {v3, v4, v5}, Lccsanandroid/graphics/Matrix;->preTranslate(FF)Z

    .line 401
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/ShapePath$LineShadowOperation;->getAngle()F

    move-result v4

    invoke-virtual {v3, v4}, Lccsanandroid/graphics/Matrix;->preRotate(F)Z

    .line 402
    invoke-virtual {p2, p4, v3, v2, p3}, Lccsancom/google/android/material/shadow/ShadowRenderer;->drawEdgeShadow(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Matrix;Lccsanandroid/graphics/RectF;I)V

    .line 403
    return-void
.end method

.method getAngle()F
    .locals 3

    .line 406
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapePath$LineShadowOperation;->operation:Lccsancom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v0}, Lccsancom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lccsancom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v0

    iget v1, p0, Lccsancom/google/android/material/shape/ShapePath$LineShadowOperation;->startY:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapePath$LineShadowOperation;->operation:Lccsancom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v1}, Lccsancom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lccsancom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v1

    iget v2, p0, Lccsancom/google/android/material/shape/ShapePath$LineShadowOperation;->startX:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
