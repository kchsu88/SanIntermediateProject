.class final Lccsancom/google/android/material/transition/platform/TransitionUtils$1;
.super Ljava/lang/Object;
.source "TransitionUtils.java"

# interfaces
.implements Lccsancom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/transition/platform/TransitionUtils;->convertToRelativeCornerSizes(Lccsancom/google/android/material/shape/ShapeAppearanceModel;Lccsanandroid/graphics/RectF;)Lccsancom/google/android/material/shape/ShapeAppearanceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bounds:Lccsanandroid/graphics/RectF;


# direct methods
.method constructor <init>(Lccsanandroid/graphics/RectF;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lccsancom/google/android/material/transition/platform/TransitionUtils$1;->val$bounds:Lccsanandroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/CornerSize;
    .locals 3
    .param p1, "cornerSize"    # Lccsancom/google/android/material/shape/CornerSize;

    .line 57
    instance-of v0, p1, Lccsancom/google/android/material/shape/RelativeCornerSize;

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Lccsancom/google/android/material/shape/RelativeCornerSize;

    iget-object v1, p0, Lccsancom/google/android/material/transition/platform/TransitionUtils$1;->val$bounds:Lccsanandroid/graphics/RectF;

    .line 59
    invoke-interface {p1, v1}, Lccsancom/google/android/material/shape/CornerSize;->getCornerSize(Lccsanandroid/graphics/RectF;)F

    move-result v1

    iget-object v2, p0, Lccsancom/google/android/material/transition/platform/TransitionUtils$1;->val$bounds:Lccsanandroid/graphics/RectF;

    invoke-virtual {v2}, Lccsanandroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    invoke-direct {v0, v1}, Lccsancom/google/android/material/shape/RelativeCornerSize;-><init>(F)V

    .line 57
    :goto_0
    return-object v0
.end method
