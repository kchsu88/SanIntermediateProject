.class public Lccsancom/google/android/material/shape/ShapePath$PathLineOperation;
.super Lccsancom/google/android/material/shape/ShapePath$PathOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathLineOperation"
.end annotation


# instance fields
.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 446
    invoke-direct {p0}, Lccsancom/google/android/material/shape/ShapePath$PathOperation;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lccsancom/google/android/material/shape/ShapePath$PathLineOperation;)F
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/shape/ShapePath$PathLineOperation;

    .line 446
    iget v0, p0, Lccsancom/google/android/material/shape/ShapePath$PathLineOperation;->x:F

    return v0
.end method

.method static synthetic access$002(Lccsancom/google/android/material/shape/ShapePath$PathLineOperation;F)F
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/shape/ShapePath$PathLineOperation;
    .param p1, "x1"    # F

    .line 446
    iput p1, p0, Lccsancom/google/android/material/shape/ShapePath$PathLineOperation;->x:F

    return p1
.end method

.method static synthetic access$100(Lccsancom/google/android/material/shape/ShapePath$PathLineOperation;)F
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/shape/ShapePath$PathLineOperation;

    .line 446
    iget v0, p0, Lccsancom/google/android/material/shape/ShapePath$PathLineOperation;->y:F

    return v0
.end method

.method static synthetic access$102(Lccsancom/google/android/material/shape/ShapePath$PathLineOperation;F)F
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/shape/ShapePath$PathLineOperation;
    .param p1, "x1"    # F

    .line 446
    iput p1, p0, Lccsancom/google/android/material/shape/ShapePath$PathLineOperation;->y:F

    return p1
.end method


# virtual methods
.method public applyToPath(Lccsanandroid/graphics/Matrix;Lccsanandroid/graphics/Path;)V
    .locals 3
    .param p1, "transform"    # Lccsanandroid/graphics/Matrix;
    .param p2, "path"    # Lccsanandroid/graphics/Path;

    .line 452
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapePath$PathLineOperation;->matrix:Lccsanandroid/graphics/Matrix;

    .line 453
    .local v0, "inverse":Lccsanandroid/graphics/Matrix;
    invoke-virtual {p1, v0}, Lccsanandroid/graphics/Matrix;->invert(Lccsanandroid/graphics/Matrix;)Z

    .line 454
    invoke-virtual {p2, v0}, Lccsanandroid/graphics/Path;->transform(Lccsanandroid/graphics/Matrix;)V

    .line 455
    iget v1, p0, Lccsancom/google/android/material/shape/ShapePath$PathLineOperation;->x:F

    iget v2, p0, Lccsancom/google/android/material/shape/ShapePath$PathLineOperation;->y:F

    invoke-virtual {p2, v1, v2}, Lccsanandroid/graphics/Path;->lineTo(FF)V

    .line 456
    invoke-virtual {p2, p1}, Lccsanandroid/graphics/Path;->transform(Lccsanandroid/graphics/Matrix;)V

    .line 457
    return-void
.end method
