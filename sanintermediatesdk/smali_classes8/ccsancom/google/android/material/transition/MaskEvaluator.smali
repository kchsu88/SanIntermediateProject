.class Lccsancom/google/android/material/transition/MaskEvaluator;
.super Ljava/lang/Object;
.source "MaskEvaluator.java"


# instance fields
.field private currentShapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

.field private final endPath:Lccsanandroid/graphics/Path;

.field private final path:Lccsanandroid/graphics/Path;

.field private final pathProvider:Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;

.field private final startPath:Lccsanandroid/graphics/Path;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lccsanandroid/graphics/Path;

    invoke-direct {v0}, Lccsanandroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/transition/MaskEvaluator;->path:Lccsanandroid/graphics/Path;

    .line 40
    new-instance v0, Lccsanandroid/graphics/Path;

    invoke-direct {v0}, Lccsanandroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/transition/MaskEvaluator;->startPath:Lccsanandroid/graphics/Path;

    .line 41
    new-instance v0, Lccsanandroid/graphics/Path;

    invoke-direct {v0}, Lccsanandroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/transition/MaskEvaluator;->endPath:Lccsanandroid/graphics/Path;

    .line 42
    nop

    .line 43
    invoke-static {}, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->getInstance()Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/transition/MaskEvaluator;->pathProvider:Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;

    .line 42
    return-void
.end method


# virtual methods
.method clip(Lccsanandroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 83
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lccsancom/google/android/material/transition/MaskEvaluator;->path:Lccsanandroid/graphics/Path;

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/Canvas;->clipPath(Lccsanandroid/graphics/Path;)Z

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/transition/MaskEvaluator;->startPath:Lccsanandroid/graphics/Path;

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/Canvas;->clipPath(Lccsanandroid/graphics/Path;)Z

    .line 87
    iget-object v0, p0, Lccsancom/google/android/material/transition/MaskEvaluator;->endPath:Lccsanandroid/graphics/Path;

    sget-object v1, Lccsanandroid/graphics/Region$Op;->UNION:Lccsanandroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Lccsanandroid/graphics/Canvas;->clipPath(Lccsanandroid/graphics/Path;Lccsanandroid/graphics/Region$Op;)Z

    .line 89
    :goto_0
    return-void
.end method

.method evaluate(FLccsancom/google/android/material/shape/ShapeAppearanceModel;Lccsancom/google/android/material/shape/ShapeAppearanceModel;Lccsanandroid/graphics/RectF;Lccsanandroid/graphics/RectF;Lccsanandroid/graphics/RectF;Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)V
    .locals 10
    .param p1, "progress"    # F
    .param p2, "startShapeAppearanceModel"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .param p3, "endShapeAppearanceModel"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .param p4, "currentStartBounds"    # Lccsanandroid/graphics/RectF;
    .param p5, "currentStartBoundsMasked"    # Lccsanandroid/graphics/RectF;
    .param p6, "currentEndBoundsMasked"    # Lccsanandroid/graphics/RectF;
    .param p7, "shapeMaskThresholds"    # Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 59
    move-object v0, p0

    invoke-virtual/range {p7 .. p7}, Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->getStart()F

    move-result v8

    .line 60
    .local v8, "shapeStartFraction":F
    invoke-virtual/range {p7 .. p7}, Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->getEnd()F

    move-result v9

    .line 61
    .local v9, "shapeEndFraction":F
    nop

    .line 62
    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p6

    move v5, v8

    move v6, v9

    move v7, p1

    invoke-static/range {v1 .. v7}, Lccsancom/google/android/material/transition/TransitionUtils;->lerp(Lccsancom/google/android/material/shape/ShapeAppearanceModel;Lccsancom/google/android/material/shape/ShapeAppearanceModel;Lccsanandroid/graphics/RectF;Lccsanandroid/graphics/RectF;FFF)Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    iput-object v1, v0, Lccsancom/google/android/material/transition/MaskEvaluator;->currentShapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 71
    iget-object v2, v0, Lccsancom/google/android/material/transition/MaskEvaluator;->pathProvider:Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;

    iget-object v3, v0, Lccsancom/google/android/material/transition/MaskEvaluator;->startPath:Lccsanandroid/graphics/Path;

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v5, p5

    invoke-virtual {v2, v1, v4, p5, v3}, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lccsancom/google/android/material/shape/ShapeAppearanceModel;FLccsanandroid/graphics/RectF;Lccsanandroid/graphics/Path;)V

    .line 72
    iget-object v1, v0, Lccsancom/google/android/material/transition/MaskEvaluator;->pathProvider:Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;

    iget-object v2, v0, Lccsancom/google/android/material/transition/MaskEvaluator;->currentShapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    iget-object v3, v0, Lccsancom/google/android/material/transition/MaskEvaluator;->endPath:Lccsanandroid/graphics/Path;

    move-object/from16 v6, p6

    invoke-virtual {v1, v2, v4, v6, v3}, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lccsancom/google/android/material/shape/ShapeAppearanceModel;FLccsanandroid/graphics/RectF;Lccsanandroid/graphics/Path;)V

    .line 76
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 77
    iget-object v1, v0, Lccsancom/google/android/material/transition/MaskEvaluator;->path:Lccsanandroid/graphics/Path;

    iget-object v2, v0, Lccsancom/google/android/material/transition/MaskEvaluator;->startPath:Lccsanandroid/graphics/Path;

    iget-object v3, v0, Lccsancom/google/android/material/transition/MaskEvaluator;->endPath:Lccsanandroid/graphics/Path;

    sget-object v4, Lccsanandroid/graphics/Path$Op;->UNION:Lccsanandroid/graphics/Path$Op;

    invoke-virtual {v1, v2, v3, v4}, Lccsanandroid/graphics/Path;->op(Lccsanandroid/graphics/Path;Lccsanandroid/graphics/Path;Lccsanandroid/graphics/Path$Op;)Z

    .line 79
    :cond_0
    return-void
.end method

.method getCurrentShapeAppearanceModel()Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1

    .line 96
    iget-object v0, p0, Lccsancom/google/android/material/transition/MaskEvaluator;->currentShapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    return-object v0
.end method

.method getPath()Lccsanandroid/graphics/Path;
    .locals 1

    .line 92
    iget-object v0, p0, Lccsancom/google/android/material/transition/MaskEvaluator;->path:Lccsanandroid/graphics/Path;

    return-object v0
.end method
