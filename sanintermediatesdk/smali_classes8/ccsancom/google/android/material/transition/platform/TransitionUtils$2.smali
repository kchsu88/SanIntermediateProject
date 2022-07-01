.class final Lccsancom/google/android/material/transition/platform/TransitionUtils$2;
.super Ljava/lang/Object;
.source "TransitionUtils.java"

# interfaces
.implements Lccsancom/google/android/material/transition/platform/TransitionUtils$CornerSizeBinaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/transition/platform/TransitionUtils;->lerp(Lccsancom/google/android/material/shape/ShapeAppearanceModel;Lccsancom/google/android/material/shape/ShapeAppearanceModel;Lccsanandroid/graphics/RectF;Lccsanandroid/graphics/RectF;FFF)Lccsancom/google/android/material/shape/ShapeAppearanceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$endBounds:Lccsanandroid/graphics/RectF;

.field final synthetic val$endFraction:F

.field final synthetic val$fraction:F

.field final synthetic val$startBounds:Lccsanandroid/graphics/RectF;

.field final synthetic val$startFraction:F


# direct methods
.method constructor <init>(Lccsanandroid/graphics/RectF;Lccsanandroid/graphics/RectF;FFF)V
    .locals 0

    .line 182
    iput-object p1, p0, Lccsancom/google/android/material/transition/platform/TransitionUtils$2;->val$startBounds:Lccsanandroid/graphics/RectF;

    iput-object p2, p0, Lccsancom/google/android/material/transition/platform/TransitionUtils$2;->val$endBounds:Lccsanandroid/graphics/RectF;

    iput p3, p0, Lccsancom/google/android/material/transition/platform/TransitionUtils$2;->val$startFraction:F

    iput p4, p0, Lccsancom/google/android/material/transition/platform/TransitionUtils$2;->val$endFraction:F

    iput p5, p0, Lccsancom/google/android/material/transition/platform/TransitionUtils$2;->val$fraction:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lccsancom/google/android/material/shape/CornerSize;Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/CornerSize;
    .locals 5
    .param p1, "cornerSize1"    # Lccsancom/google/android/material/shape/CornerSize;
    .param p2, "cornerSize2"    # Lccsancom/google/android/material/shape/CornerSize;

    .line 187
    iget-object v0, p0, Lccsancom/google/android/material/transition/platform/TransitionUtils$2;->val$startBounds:Lccsanandroid/graphics/RectF;

    invoke-interface {p1, v0}, Lccsancom/google/android/material/shape/CornerSize;->getCornerSize(Lccsanandroid/graphics/RectF;)F

    move-result v0

    .line 188
    .local v0, "startCornerSize":F
    iget-object v1, p0, Lccsancom/google/android/material/transition/platform/TransitionUtils$2;->val$endBounds:Lccsanandroid/graphics/RectF;

    invoke-interface {p2, v1}, Lccsancom/google/android/material/shape/CornerSize;->getCornerSize(Lccsanandroid/graphics/RectF;)F

    move-result v1

    .line 189
    .local v1, "endCornerSize":F
    iget v2, p0, Lccsancom/google/android/material/transition/platform/TransitionUtils$2;->val$startFraction:F

    iget v3, p0, Lccsancom/google/android/material/transition/platform/TransitionUtils$2;->val$endFraction:F

    iget v4, p0, Lccsancom/google/android/material/transition/platform/TransitionUtils$2;->val$fraction:F

    .line 190
    invoke-static {v0, v1, v2, v3, v4}, Lccsancom/google/android/material/transition/platform/TransitionUtils;->lerp(FFFFF)F

    move-result v2

    .line 192
    .local v2, "cornerSize":F
    new-instance v3, Lccsancom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v3, v2}, Lccsancom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    return-object v3
.end method
