.class Lccsancom/google/android/material/shape/ShapePath$ArcShadowOperation;
.super Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArcShadowOperation"
.end annotation


# instance fields
.field private final operation:Lccsancom/google/android/material/shape/ShapePath$PathArcOperation;


# direct methods
.method public constructor <init>(Lccsancom/google/android/material/shape/ShapePath$PathArcOperation;)V
    .locals 0
    .param p1, "operation"    # Lccsancom/google/android/material/shape/ShapePath$PathArcOperation;

    .line 415
    invoke-direct {p0}, Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;-><init>()V

    .line 416
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapePath$ArcShadowOperation;->operation:Lccsancom/google/android/material/shape/ShapePath$PathArcOperation;

    .line 417
    return-void
.end method


# virtual methods
.method public draw(Lccsanandroid/graphics/Matrix;Lccsancom/google/android/material/shadow/ShadowRenderer;ILccsanandroid/graphics/Canvas;)V
    .locals 9
    .param p1, "transform"    # Lccsanandroid/graphics/Matrix;
    .param p2, "shadowRenderer"    # Lccsancom/google/android/material/shadow/ShadowRenderer;
    .param p3, "shadowElevation"    # I
    .param p4, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 425
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapePath$ArcShadowOperation;->operation:Lccsancom/google/android/material/shape/ShapePath$PathArcOperation;

    invoke-static {v0}, Lccsancom/google/android/material/shape/ShapePath$PathArcOperation;->access$800(Lccsancom/google/android/material/shape/ShapePath$PathArcOperation;)F

    move-result v0

    .line 426
    .local v0, "startAngle":F
    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapePath$ArcShadowOperation;->operation:Lccsancom/google/android/material/shape/ShapePath$PathArcOperation;

    invoke-static {v1}, Lccsancom/google/android/material/shape/ShapePath$PathArcOperation;->access$900(Lccsancom/google/android/material/shape/ShapePath$PathArcOperation;)F

    move-result v8

    .line 427
    .local v8, "sweepAngle":F
    new-instance v4, Lccsanandroid/graphics/RectF;

    iget-object v1, p0, Lccsancom/google/android/material/shape/ShapePath$ArcShadowOperation;->operation:Lccsancom/google/android/material/shape/ShapePath$PathArcOperation;

    .line 429
    invoke-static {v1}, Lccsancom/google/android/material/shape/ShapePath$PathArcOperation;->access$1000(Lccsancom/google/android/material/shape/ShapePath$PathArcOperation;)F

    move-result v1

    iget-object v2, p0, Lccsancom/google/android/material/shape/ShapePath$ArcShadowOperation;->operation:Lccsancom/google/android/material/shape/ShapePath$PathArcOperation;

    invoke-static {v2}, Lccsancom/google/android/material/shape/ShapePath$PathArcOperation;->access$1100(Lccsancom/google/android/material/shape/ShapePath$PathArcOperation;)F

    move-result v2

    iget-object v3, p0, Lccsancom/google/android/material/shape/ShapePath$ArcShadowOperation;->operation:Lccsancom/google/android/material/shape/ShapePath$PathArcOperation;

    invoke-static {v3}, Lccsancom/google/android/material/shape/ShapePath$PathArcOperation;->access$1200(Lccsancom/google/android/material/shape/ShapePath$PathArcOperation;)F

    move-result v3

    iget-object v5, p0, Lccsancom/google/android/material/shape/ShapePath$ArcShadowOperation;->operation:Lccsancom/google/android/material/shape/ShapePath$PathArcOperation;

    invoke-static {v5}, Lccsancom/google/android/material/shape/ShapePath$PathArcOperation;->access$1300(Lccsancom/google/android/material/shape/ShapePath$PathArcOperation;)F

    move-result v5

    invoke-direct {v4, v1, v2, v3, v5}, Lccsanandroid/graphics/RectF;-><init>(FFFF)V

    .line 430
    .local v4, "rect":Lccsanandroid/graphics/RectF;
    move-object v1, p2

    move-object v2, p4

    move-object v3, p1

    move v5, p3

    move v6, v0

    move v7, v8

    invoke-virtual/range {v1 .. v7}, Lccsancom/google/android/material/shadow/ShadowRenderer;->drawCornerShadow(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Matrix;Lccsanandroid/graphics/RectF;IFF)V

    .line 432
    return-void
.end method
