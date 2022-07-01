.class final Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;
.super Lccsanandroid/graphics/drawable/Drawable;
.source "MaterialContainerTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/transition/MaterialContainerTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TransitionDrawable"
.end annotation


# static fields
.field private static final COMPAT_SHADOW_COLOR:I = -0x777778

.field private static final SHADOW_COLOR:I = 0x2d000000

.field private static final SHADOW_DX_MULTIPLIER_ADJUSTMENT:F = 0.3f

.field private static final SHADOW_DY_MULTIPLIER_ADJUSTMENT:F = 1.5f


# instance fields
.field private final compatShadowDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

.field private final containerPaint:Lccsanandroid/graphics/Paint;

.field private currentElevation:F

.field private currentElevationDy:F

.field private final currentEndBounds:Lccsanandroid/graphics/RectF;

.field private final currentEndBoundsMasked:Lccsanandroid/graphics/RectF;

.field private currentMaskBounds:Lccsanandroid/graphics/RectF;

.field private final currentStartBounds:Lccsanandroid/graphics/RectF;

.field private final currentStartBoundsMasked:Lccsanandroid/graphics/RectF;

.field private final debugPaint:Lccsanandroid/graphics/Paint;

.field private final debugPath:Lccsanandroid/graphics/Path;

.field private final displayHeight:F

.field private final displayWidth:F

.field private final drawDebugEnabled:Z

.field private final elevationShadowEnabled:Z

.field private final endBounds:Lccsanandroid/graphics/RectF;

.field private final endContainerPaint:Lccsanandroid/graphics/Paint;

.field private final endElevation:F

.field private final endShapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

.field private final endView:Lccsanandroid/view/View;

.field private final entering:Z

.field private final fadeModeEvaluator:Lccsancom/google/android/material/transition/FadeModeEvaluator;

.field private fadeModeResult:Lccsancom/google/android/material/transition/FadeModeResult;

.field private final fitModeEvaluator:Lccsancom/google/android/material/transition/FitModeEvaluator;

.field private fitModeResult:Lccsancom/google/android/material/transition/FitModeResult;

.field private final maskEvaluator:Lccsancom/google/android/material/transition/MaskEvaluator;

.field private final motionPathLength:F

.field private final motionPathMeasure:Lccsanandroid/graphics/PathMeasure;

.field private final motionPathPosition:[F

.field private progress:F

.field private final progressThresholds:Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

.field private final scrimPaint:Lccsanandroid/graphics/Paint;

.field private final shadowPaint:Lccsanandroid/graphics/Paint;

.field private final startBounds:Lccsanandroid/graphics/RectF;

.field private final startContainerPaint:Lccsanandroid/graphics/Paint;

.field private final startElevation:F

.field private final startShapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

.field private final startView:Lccsanandroid/view/View;


# direct methods
.method private constructor <init>(Lccsanandroidx/transition/PathMotion;Lccsanandroid/view/View;Lccsanandroid/graphics/RectF;Lccsancom/google/android/material/shape/ShapeAppearanceModel;FLccsanandroid/view/View;Lccsanandroid/graphics/RectF;Lccsancom/google/android/material/shape/ShapeAppearanceModel;FIIIIZZLccsancom/google/android/material/transition/FadeModeEvaluator;Lccsancom/google/android/material/transition/FitModeEvaluator;Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;Z)V
    .locals 19
    .param p1, "pathMotion"    # Lccsanandroidx/transition/PathMotion;
    .param p2, "startView"    # Lccsanandroid/view/View;
    .param p3, "startBounds"    # Lccsanandroid/graphics/RectF;
    .param p4, "startShapeAppearanceModel"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .param p5, "startElevation"    # F
    .param p6, "endView"    # Lccsanandroid/view/View;
    .param p7, "endBounds"    # Lccsanandroid/graphics/RectF;
    .param p8, "endShapeAppearanceModel"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .param p9, "endElevation"    # F
    .param p10, "containerColor"    # I
    .param p11, "startContainerColor"    # I
    .param p12, "endContainerColor"    # I
    .param p13, "scrimColor"    # I
    .param p14, "entering"    # Z
    .param p15, "elevationShadowEnabled"    # Z
    .param p16, "fadeModeEvaluator"    # Lccsancom/google/android/material/transition/FadeModeEvaluator;
    .param p17, "fitModeEvaluator"    # Lccsancom/google/android/material/transition/FitModeEvaluator;
    .param p18, "progressThresholds"    # Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;
    .param p19, "drawDebugEnabled"    # Z

    .line 1117
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct/range {p0 .. p0}, Lccsanandroid/graphics/drawable/Drawable;-><init>()V

    .line 1059
    new-instance v2, Lccsanandroid/graphics/Paint;

    invoke-direct {v2}, Lccsanandroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->containerPaint:Lccsanandroid/graphics/Paint;

    .line 1060
    new-instance v3, Lccsanandroid/graphics/Paint;

    invoke-direct {v3}, Lccsanandroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->startContainerPaint:Lccsanandroid/graphics/Paint;

    .line 1061
    new-instance v4, Lccsanandroid/graphics/Paint;

    invoke-direct {v4}, Lccsanandroid/graphics/Paint;-><init>()V

    iput-object v4, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->endContainerPaint:Lccsanandroid/graphics/Paint;

    .line 1062
    new-instance v5, Lccsanandroid/graphics/Paint;

    invoke-direct {v5}, Lccsanandroid/graphics/Paint;-><init>()V

    iput-object v5, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->shadowPaint:Lccsanandroid/graphics/Paint;

    .line 1063
    new-instance v5, Lccsanandroid/graphics/Paint;

    invoke-direct {v5}, Lccsanandroid/graphics/Paint;-><init>()V

    iput-object v5, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->scrimPaint:Lccsanandroid/graphics/Paint;

    .line 1066
    new-instance v6, Lccsancom/google/android/material/transition/MaskEvaluator;

    invoke-direct {v6}, Lccsancom/google/android/material/transition/MaskEvaluator;-><init>()V

    iput-object v6, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lccsancom/google/android/material/transition/MaskEvaluator;

    .line 1069
    const/4 v6, 0x2

    new-array v7, v6, [F

    iput-object v7, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->motionPathPosition:[F

    .line 1076
    new-instance v8, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v8}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    iput-object v8, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    .line 1087
    new-instance v9, Lccsanandroid/graphics/Paint;

    invoke-direct {v9}, Lccsanandroid/graphics/Paint;-><init>()V

    iput-object v9, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->debugPaint:Lccsanandroid/graphics/Paint;

    .line 1088
    new-instance v10, Lccsanandroid/graphics/Path;

    invoke-direct {v10}, Lccsanandroid/graphics/Path;-><init>()V

    iput-object v10, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->debugPath:Lccsanandroid/graphics/Path;

    .line 1118
    move-object/from16 v10, p2

    iput-object v10, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->startView:Lccsanandroid/view/View;

    .line 1119
    iput-object v1, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->startBounds:Lccsanandroid/graphics/RectF;

    .line 1120
    move-object/from16 v11, p4

    iput-object v11, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->startShapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 1121
    move/from16 v12, p5

    iput v12, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->startElevation:F

    .line 1122
    move-object/from16 v13, p6

    iput-object v13, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->endView:Lccsanandroid/view/View;

    .line 1123
    move-object/from16 v14, p7

    iput-object v14, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->endBounds:Lccsanandroid/graphics/RectF;

    .line 1124
    move-object/from16 v15, p8

    iput-object v15, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->endShapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 1125
    move/from16 v6, p9

    iput v6, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->endElevation:F

    .line 1126
    move/from16 v6, p14

    iput-boolean v6, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->entering:Z

    .line 1127
    move/from16 v6, p15

    iput-boolean v6, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->elevationShadowEnabled:Z

    .line 1128
    move-object/from16 v6, p16

    iput-object v6, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fadeModeEvaluator:Lccsancom/google/android/material/transition/FadeModeEvaluator;

    .line 1129
    move-object/from16 v6, p17

    iput-object v6, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fitModeEvaluator:Lccsancom/google/android/material/transition/FitModeEvaluator;

    .line 1130
    move-object/from16 v6, p18

    iput-object v6, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 1131
    move/from16 v6, p19

    iput-boolean v6, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->drawDebugEnabled:Z

    .line 1133
    nop

    .line 1134
    invoke-virtual/range {p2 .. p2}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v6

    const-string/jumbo v10, "window"

    invoke-virtual {v6, v10}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsanandroid/view/WindowManager;

    .line 1135
    .local v6, "windowManager":Lccsanandroid/view/WindowManager;
    new-instance v10, Lccsanandroid/util/DisplayMetrics;

    invoke-direct {v10}, Lccsanandroid/util/DisplayMetrics;-><init>()V

    .line 1136
    .local v10, "displayMetrics":Lccsanandroid/util/DisplayMetrics;
    invoke-interface {v6}, Lccsanandroid/view/WindowManager;->getDefaultDisplay()Lccsanandroid/view/Display;

    move-result-object v11

    invoke-virtual {v11, v10}, Lccsanandroid/view/Display;->getMetrics(Lccsanandroid/util/DisplayMetrics;)V

    .line 1137
    iget v11, v10, Lccsanandroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v11, v11

    iput v11, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->displayWidth:F

    .line 1138
    iget v11, v10, Lccsanandroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v11, v11

    iput v11, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->displayHeight:F

    .line 1140
    move/from16 v11, p10

    invoke-virtual {v2, v11}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 1141
    move/from16 v2, p11

    invoke-virtual {v3, v2}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 1142
    move/from16 v3, p12

    invoke-virtual {v4, v3}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 1144
    const/4 v4, 0x0

    invoke-static {v4}, Lccsanandroid/content/res/ColorStateList;->valueOf(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v8, v2}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 1145
    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setShadowCompatibilityMode(I)V

    .line 1147
    invoke-virtual {v8, v4}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setShadowBitmapDrawingEnable(Z)V

    .line 1148
    const v2, -0x777778

    invoke-virtual {v8, v2}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setShadowColor(I)V

    .line 1150
    new-instance v2, Lccsanandroid/graphics/RectF;

    invoke-direct {v2, v1}, Lccsanandroid/graphics/RectF;-><init>(Lccsanandroid/graphics/RectF;)V

    iput-object v2, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Lccsanandroid/graphics/RectF;

    .line 1151
    new-instance v8, Lccsanandroid/graphics/RectF;

    invoke-direct {v8, v2}, Lccsanandroid/graphics/RectF;-><init>(Lccsanandroid/graphics/RectF;)V

    iput-object v8, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Lccsanandroid/graphics/RectF;

    .line 1152
    new-instance v8, Lccsanandroid/graphics/RectF;

    invoke-direct {v8, v2}, Lccsanandroid/graphics/RectF;-><init>(Lccsanandroid/graphics/RectF;)V

    iput-object v8, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentEndBounds:Lccsanandroid/graphics/RectF;

    .line 1153
    new-instance v2, Lccsanandroid/graphics/RectF;

    invoke-direct {v2, v8}, Lccsanandroid/graphics/RectF;-><init>(Lccsanandroid/graphics/RectF;)V

    iput-object v2, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Lccsanandroid/graphics/RectF;

    .line 1156
    invoke-static/range {p3 .. p3}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->getMotionPathPoint(Lccsanandroid/graphics/RectF;)Lccsanandroid/graphics/PointF;

    move-result-object v2

    .line 1157
    .local v2, "startPoint":Lccsanandroid/graphics/PointF;
    invoke-static/range {p7 .. p7}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->getMotionPathPoint(Lccsanandroid/graphics/RectF;)Lccsanandroid/graphics/PointF;

    move-result-object v8

    .line 1158
    .local v8, "endPoint":Lccsanandroid/graphics/PointF;
    iget v4, v2, Lccsanandroid/graphics/PointF;->x:F

    iget v3, v2, Lccsanandroid/graphics/PointF;->y:F

    move-object/from16 v16, v2

    .end local v2    # "startPoint":Lccsanandroid/graphics/PointF;
    .local v16, "startPoint":Lccsanandroid/graphics/PointF;
    iget v2, v8, Lccsanandroid/graphics/PointF;->x:F

    move-object/from16 v17, v6

    .end local v6    # "windowManager":Lccsanandroid/view/WindowManager;
    .local v17, "windowManager":Lccsanandroid/view/WindowManager;
    iget v6, v8, Lccsanandroid/graphics/PointF;->y:F

    move-object/from16 v18, v8

    move-object/from16 v8, p1

    .end local v8    # "endPoint":Lccsanandroid/graphics/PointF;
    .local v18, "endPoint":Lccsanandroid/graphics/PointF;
    invoke-virtual {v8, v4, v3, v2, v6}, Lccsanandroidx/transition/PathMotion;->getPath(FFFF)Lccsanandroid/graphics/Path;

    move-result-object v2

    .line 1159
    .local v2, "motionPath":Lccsanandroid/graphics/Path;
    new-instance v3, Lccsanandroid/graphics/PathMeasure;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lccsanandroid/graphics/PathMeasure;-><init>(Lccsanandroid/graphics/Path;Z)V

    iput-object v3, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->motionPathMeasure:Lccsanandroid/graphics/PathMeasure;

    .line 1160
    invoke-virtual {v3}, Lccsanandroid/graphics/PathMeasure;->getLength()F

    move-result v3

    iput v3, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->motionPathLength:F

    .line 1165
    invoke-virtual/range {p3 .. p3}, Lccsanandroid/graphics/RectF;->centerX()F

    move-result v3

    aput v3, v7, v4

    .line 1166
    iget v3, v1, Lccsanandroid/graphics/RectF;->top:F

    const/4 v4, 0x1

    aput v3, v7, v4

    .line 1168
    sget-object v3, Lccsanandroid/graphics/Paint$Style;->FILL:Lccsanandroid/graphics/Paint$Style;

    invoke-virtual {v5, v3}, Lccsanandroid/graphics/Paint;->setStyle(Lccsanandroid/graphics/Paint$Style;)V

    .line 1169
    invoke-static/range {p13 .. p13}, Lccsancom/google/android/material/transition/TransitionUtils;->createColorShader(I)Lccsanandroid/graphics/Shader;

    move-result-object v3

    invoke-virtual {v5, v3}, Lccsanandroid/graphics/Paint;->setShader(Lccsanandroid/graphics/Shader;)Lccsanandroid/graphics/Shader;

    .line 1171
    sget-object v3, Lccsanandroid/graphics/Paint$Style;->STROKE:Lccsanandroid/graphics/Paint$Style;

    invoke-virtual {v9, v3}, Lccsanandroid/graphics/Paint;->setStyle(Lccsanandroid/graphics/Paint$Style;)V

    .line 1172
    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v9, v3}, Lccsanandroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1175
    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->updateProgress(F)V

    .line 1176
    return-void
.end method

.method synthetic constructor <init>(Lccsanandroidx/transition/PathMotion;Lccsanandroid/view/View;Lccsanandroid/graphics/RectF;Lccsancom/google/android/material/shape/ShapeAppearanceModel;FLccsanandroid/view/View;Lccsanandroid/graphics/RectF;Lccsancom/google/android/material/shape/ShapeAppearanceModel;FIIIIZZLccsancom/google/android/material/transition/FadeModeEvaluator;Lccsancom/google/android/material/transition/FitModeEvaluator;Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;ZLccsancom/google/android/material/transition/MaterialContainerTransform$1;)V
    .locals 0
    .param p1, "x0"    # Lccsanandroidx/transition/PathMotion;
    .param p2, "x1"    # Lccsanandroid/view/View;
    .param p3, "x2"    # Lccsanandroid/graphics/RectF;
    .param p4, "x3"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .param p5, "x4"    # F
    .param p6, "x5"    # Lccsanandroid/view/View;
    .param p7, "x6"    # Lccsanandroid/graphics/RectF;
    .param p8, "x7"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .param p9, "x8"    # F
    .param p10, "x9"    # I
    .param p11, "x10"    # I
    .param p12, "x11"    # I
    .param p13, "x12"    # I
    .param p14, "x13"    # Z
    .param p15, "x14"    # Z
    .param p16, "x15"    # Lccsancom/google/android/material/transition/FadeModeEvaluator;
    .param p17, "x16"    # Lccsancom/google/android/material/transition/FitModeEvaluator;
    .param p18, "x17"    # Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;
    .param p19, "x18"    # Z
    .param p20, "x19"    # Lccsancom/google/android/material/transition/MaterialContainerTransform$1;

    .line 1036
    invoke-direct/range {p0 .. p19}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;-><init>(Lccsanandroidx/transition/PathMotion;Lccsanandroid/view/View;Lccsanandroid/graphics/RectF;Lccsancom/google/android/material/shape/ShapeAppearanceModel;FLccsanandroid/view/View;Lccsanandroid/graphics/RectF;Lccsancom/google/android/material/shape/ShapeAppearanceModel;FIIIIZZLccsancom/google/android/material/transition/FadeModeEvaluator;Lccsancom/google/android/material/transition/FitModeEvaluator;Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;Z)V

    return-void
.end method

.method static synthetic access$200(Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;F)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;
    .param p1, "x1"    # F

    .line 1036
    invoke-direct {p0, p1}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->setProgress(F)V

    return-void
.end method

.method static synthetic access$800(Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;)Lccsanandroid/view/View;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;

    .line 1036
    iget-object v0, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->startView:Lccsanandroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;)Lccsanandroid/view/View;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;

    .line 1036
    iget-object v0, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->endView:Lccsanandroid/view/View;

    return-object v0
.end method

.method private static calculateElevationDxMultiplier(Lccsanandroid/graphics/RectF;F)F
    .locals 2
    .param p0, "bounds"    # Lccsanandroid/graphics/RectF;
    .param p1, "displayWidth"    # F

    .line 1445
    invoke-virtual {p0}, Lccsanandroid/graphics/RectF;->centerX()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    const v1, 0x3e99999a    # 0.3f

    mul-float v0, v0, v1

    return v0
.end method

.method private static calculateElevationDyMultiplier(Lccsanandroid/graphics/RectF;F)F
    .locals 2
    .param p0, "bounds"    # Lccsanandroid/graphics/RectF;
    .param p1, "displayHeight"    # F

    .line 1457
    invoke-virtual {p0}, Lccsanandroid/graphics/RectF;->centerY()F

    move-result v0

    div-float/2addr v0, p1

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float v0, v0, v1

    return v0
.end method

.method private drawDebugCumulativePath(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/RectF;Lccsanandroid/graphics/Path;I)V
    .locals 3
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;
    .param p2, "bounds"    # Lccsanandroid/graphics/RectF;
    .param p3, "path"    # Lccsanandroid/graphics/Path;
    .param p4, "color"    # I

    .line 1462
    invoke-static {p2}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->getMotionPathPoint(Lccsanandroid/graphics/RectF;)Lccsanandroid/graphics/PointF;

    move-result-object v0

    .line 1463
    .local v0, "point":Lccsanandroid/graphics/PointF;
    iget v1, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->progress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 1464
    invoke-virtual {p3}, Lccsanandroid/graphics/Path;->reset()V

    .line 1465
    iget v1, v0, Lccsanandroid/graphics/PointF;->x:F

    iget v2, v0, Lccsanandroid/graphics/PointF;->y:F

    invoke-virtual {p3, v1, v2}, Lccsanandroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    .line 1467
    :cond_0
    iget v1, v0, Lccsanandroid/graphics/PointF;->x:F

    iget v2, v0, Lccsanandroid/graphics/PointF;->y:F

    invoke-virtual {p3, v1, v2}, Lccsanandroid/graphics/Path;->lineTo(FF)V

    .line 1468
    iget-object v1, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->debugPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v1, p4}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 1469
    iget-object v1, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->debugPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, p3, v1}, Lccsanandroid/graphics/Canvas;->drawPath(Lccsanandroid/graphics/Path;Lccsanandroid/graphics/Paint;)V

    .line 1471
    :goto_0
    return-void
.end method

.method private drawDebugRect(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/RectF;I)V
    .locals 1
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;
    .param p2, "bounds"    # Lccsanandroid/graphics/RectF;
    .param p3, "color"    # I

    .line 1474
    iget-object v0, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->debugPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0, p3}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 1475
    iget-object v0, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->debugPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Lccsanandroid/graphics/Canvas;->drawRect(Lccsanandroid/graphics/RectF;Lccsanandroid/graphics/Paint;)V

    .line 1476
    return-void
.end method

.method private drawElevationShadow(Lccsanandroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 1216
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->save()I

    .line 1217
    iget-object v0, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lccsancom/google/android/material/transition/MaskEvaluator;

    invoke-virtual {v0}, Lccsancom/google/android/material/transition/MaskEvaluator;->getPath()Lccsanandroid/graphics/Path;

    move-result-object v0

    sget-object v1, Lccsanandroid/graphics/Region$Op;->DIFFERENCE:Lccsanandroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Lccsanandroid/graphics/Canvas;->clipPath(Lccsanandroid/graphics/Path;Lccsanandroid/graphics/Region$Op;)Z

    .line 1219
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    .line 1220
    invoke-direct {p0, p1}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->drawElevationShadowWithPaintShadowLayer(Lccsanandroid/graphics/Canvas;)V

    goto :goto_0

    .line 1222
    :cond_0
    invoke-direct {p0, p1}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->drawElevationShadowWithMaterialShapeDrawable(Lccsanandroid/graphics/Canvas;)V

    .line 1225
    :goto_0
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->restore()V

    .line 1226
    return-void
.end method

.method private drawElevationShadowWithMaterialShapeDrawable(Lccsanandroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 1243
    iget-object v0, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Lccsanandroid/graphics/RectF;

    iget v1, v1, Lccsanandroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Lccsanandroid/graphics/RectF;

    iget v2, v2, Lccsanandroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Lccsanandroid/graphics/RectF;

    iget v3, v3, Lccsanandroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Lccsanandroid/graphics/RectF;

    iget v4, v4, Lccsanandroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setBounds(IIII)V

    .line 1248
    iget-object v0, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    iget v1, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentElevation:F

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 1249
    iget-object v0, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    iget v1, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentElevationDy:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setShadowVerticalOffset(I)V

    .line 1250
    iget-object v0, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lccsancom/google/android/material/transition/MaskEvaluator;

    invoke-virtual {v1}, Lccsancom/google/android/material/transition/MaskEvaluator;->getCurrentShapeAppearanceModel()Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 1251
    iget-object v0, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 1252
    return-void
.end method

.method private drawElevationShadowWithPaintShadowLayer(Lccsanandroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 1229
    iget-object v0, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lccsancom/google/android/material/transition/MaskEvaluator;

    .line 1230
    invoke-virtual {v0}, Lccsancom/google/android/material/transition/MaskEvaluator;->getCurrentShapeAppearanceModel()Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    .line 1231
    .local v0, "currentShapeAppearanceModel":Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    iget-object v1, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Lccsanandroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->isRoundRect(Lccsanandroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1233
    nop

    .line 1234
    invoke-virtual {v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Lccsanandroid/graphics/RectF;

    invoke-interface {v1, v2}, Lccsancom/google/android/material/shape/CornerSize;->getCornerSize(Lccsanandroid/graphics/RectF;)F

    move-result v1

    .line 1235
    .local v1, "radius":F
    iget-object v2, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Lccsanandroid/graphics/RectF;

    iget-object v3, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->shadowPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v1, v3}, Lccsanandroid/graphics/Canvas;->drawRoundRect(Lccsanandroid/graphics/RectF;FFLccsanandroid/graphics/Paint;)V

    .line 1236
    .end local v1    # "radius":F
    goto :goto_0

    .line 1238
    :cond_0
    iget-object v1, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lccsancom/google/android/material/transition/MaskEvaluator;

    invoke-virtual {v1}, Lccsancom/google/android/material/transition/MaskEvaluator;->getPath()Lccsanandroid/graphics/Path;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->shadowPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Lccsanandroid/graphics/Canvas;->drawPath(Lccsanandroid/graphics/Path;Lccsanandroid/graphics/Paint;)V

    .line 1240
    :goto_0
    return-void
.end method

.method private drawEndView(Lccsanandroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 1274
    iget-object v0, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->endContainerPaint:Lccsanandroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->maybeDrawContainerColor(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Paint;)V

    .line 1275
    nop

    .line 1277
    invoke-virtual {p0}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v2

    iget-object v0, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentEndBounds:Lccsanandroid/graphics/RectF;

    iget v3, v0, Lccsanandroid/graphics/RectF;->left:F

    iget-object v0, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentEndBounds:Lccsanandroid/graphics/RectF;

    iget v4, v0, Lccsanandroid/graphics/RectF;->top:F

    iget-object v0, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lccsancom/google/android/material/transition/FitModeResult;

    iget v5, v0, Lccsancom/google/android/material/transition/FitModeResult;->endScale:F

    iget-object v0, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fadeModeResult:Lccsancom/google/android/material/transition/FadeModeResult;

    iget v6, v0, Lccsancom/google/android/material/transition/FadeModeResult;->endAlpha:I

    new-instance v7, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable$2;

    invoke-direct {v7, p0}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable$2;-><init>(Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;)V

    .line 1275
    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lccsancom/google/android/material/transition/TransitionUtils;->transform(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Rect;FFFILccsancom/google/android/material/transition/TransitionUtils$CanvasOperation;)V

    .line 1288
    return-void
.end method

.method private drawStartView(Lccsanandroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 1256
    iget-object v0, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->startContainerPaint:Lccsanandroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->maybeDrawContainerColor(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Paint;)V

    .line 1257
    nop

    .line 1259
    invoke-virtual {p0}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v2

    iget-object v0, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Lccsanandroid/graphics/RectF;

    iget v3, v0, Lccsanandroid/graphics/RectF;->left:F

    iget-object v0, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Lccsanandroid/graphics/RectF;

    iget v4, v0, Lccsanandroid/graphics/RectF;->top:F

    iget-object v0, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lccsancom/google/android/material/transition/FitModeResult;

    iget v5, v0, Lccsancom/google/android/material/transition/FitModeResult;->startScale:F

    iget-object v0, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fadeModeResult:Lccsancom/google/android/material/transition/FadeModeResult;

    iget v6, v0, Lccsancom/google/android/material/transition/FadeModeResult;->startAlpha:I

    new-instance v7, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable$1;

    invoke-direct {v7, p0}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable$1;-><init>(Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;)V

    .line 1257
    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lccsancom/google/android/material/transition/TransitionUtils;->transform(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Rect;FFFILccsancom/google/android/material/transition/TransitionUtils$CanvasOperation;)V

    .line 1270
    return-void
.end method

.method private static getMotionPathPoint(Lccsanandroid/graphics/RectF;)Lccsanandroid/graphics/PointF;
    .locals 3
    .param p0, "bounds"    # Lccsanandroid/graphics/RectF;

    .line 1427
    new-instance v0, Lccsanandroid/graphics/PointF;

    invoke-virtual {p0}, Lccsanandroid/graphics/RectF;->centerX()F

    move-result v1

    iget v2, p0, Lccsanandroid/graphics/RectF;->top:F

    invoke-direct {v0, v1, v2}, Lccsanandroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private maybeDrawContainerColor(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Paint;)V
    .locals 1
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;
    .param p2, "containerPaint"    # Lccsanandroid/graphics/Paint;

    .line 1294
    invoke-virtual {p2}, Lccsanandroid/graphics/Paint;->getColor()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lccsanandroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    .line 1295
    invoke-virtual {p0}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lccsanandroid/graphics/Canvas;->drawRect(Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Paint;)V

    .line 1297
    :cond_0
    return-void
.end method

.method private setProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .line 1314
    iget v0, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->progress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1315
    invoke-direct {p0, p1}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->updateProgress(F)V

    .line 1317
    :cond_0
    return-void
.end method

.method private updateProgress(F)V
    .locals 21
    .param p1, "progress"    # F

    .line 1320
    move-object/from16 v0, p0

    move/from16 v9, p1

    iput v9, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->progress:F

    .line 1323
    iget-object v1, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->scrimPaint:Lccsanandroid/graphics/Paint;

    iget-boolean v2, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->entering:Z

    const/high16 v3, 0x437f0000    # 255.0f

    const/4 v10, 0x0

    if-eqz v2, :cond_0

    invoke-static {v10, v3, v9}, Lccsancom/google/android/material/transition/TransitionUtils;->lerp(FFF)F

    move-result v2

    goto :goto_0

    :cond_0
    invoke-static {v3, v10, v9}, Lccsancom/google/android/material/transition/TransitionUtils;->lerp(FFF)F

    move-result v2

    :goto_0
    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lccsanandroid/graphics/Paint;->setAlpha(I)V

    .line 1326
    iget-object v1, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->motionPathMeasure:Lccsanandroid/graphics/PathMeasure;

    iget v2, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->motionPathLength:F

    mul-float v2, v2, v9

    iget-object v3, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->motionPathPosition:[F

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lccsanandroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 1327
    iget-object v1, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->motionPathPosition:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    .line 1328
    .local v3, "motionPathX":F
    const/4 v5, 0x1

    aget v6, v1, v5

    .line 1331
    .local v6, "motionPathY":F
    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v7, v9, v11

    if-gtz v7, :cond_2

    cmpg-float v7, v9, v10

    if-gez v7, :cond_1

    goto :goto_1

    :cond_1
    move v12, v3

    move v13, v6

    goto :goto_3

    .line 1334
    :cond_2
    :goto_1
    cmpl-float v7, v9, v11

    if-lez v7, :cond_3

    .line 1335
    const v7, 0x3f7d70a4    # 0.99f

    .line 1336
    .local v7, "trajectoryProgress":F
    sub-float v8, v9, v11

    sub-float v12, v11, v7

    div-float/2addr v8, v12

    .local v8, "trajectoryMultiplier":F
    goto :goto_2

    .line 1338
    .end local v7    # "trajectoryProgress":F
    .end local v8    # "trajectoryMultiplier":F
    :cond_3
    const v7, 0x3c23d70a    # 0.01f

    .line 1339
    .restart local v7    # "trajectoryProgress":F
    div-float v8, v9, v7

    const/high16 v12, -0x40800000    # -1.0f

    mul-float v8, v8, v12

    .line 1342
    .restart local v8    # "trajectoryMultiplier":F
    :goto_2
    iget-object v12, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->motionPathMeasure:Lccsanandroid/graphics/PathMeasure;

    iget v13, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->motionPathLength:F

    mul-float v13, v13, v7

    invoke-virtual {v12, v13, v1, v4}, Lccsanandroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 1344
    iget-object v1, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->motionPathPosition:[F

    aget v2, v1, v2

    .line 1345
    .local v2, "trajectoryMotionPathX":F
    aget v1, v1, v5

    .line 1346
    .local v1, "trajectoryMotionPathY":F
    sub-float v4, v3, v2

    mul-float v4, v4, v8

    add-float/2addr v3, v4

    .line 1347
    sub-float v4, v6, v1

    mul-float v4, v4, v8

    add-float/2addr v6, v4

    move v12, v3

    move v13, v6

    .line 1351
    .end local v1    # "trajectoryMotionPathY":F
    .end local v2    # "trajectoryMotionPathX":F
    .end local v3    # "motionPathX":F
    .end local v6    # "motionPathY":F
    .end local v7    # "trajectoryProgress":F
    .end local v8    # "trajectoryMultiplier":F
    .local v12, "motionPathX":F
    .local v13, "motionPathY":F
    :goto_3
    iget-object v1, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    invoke-static {v1}, Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->access$500(Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;)Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->access$1000(Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v14

    .line 1352
    .local v14, "scaleStartFraction":F
    iget-object v1, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    invoke-static {v1}, Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->access$500(Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;)Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->access$1100(Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v15

    .line 1353
    .local v15, "scaleEndFraction":F
    iget-object v1, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fitModeEvaluator:Lccsancom/google/android/material/transition/FitModeEvaluator;

    iget-object v2, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->startBounds:Lccsanandroid/graphics/RectF;

    .line 1358
    invoke-virtual {v2}, Lccsanandroid/graphics/RectF;->width()F

    move-result v5

    iget-object v2, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->startBounds:Lccsanandroid/graphics/RectF;

    .line 1359
    invoke-virtual {v2}, Lccsanandroid/graphics/RectF;->height()F

    move-result v6

    iget-object v2, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->endBounds:Lccsanandroid/graphics/RectF;

    .line 1360
    invoke-virtual {v2}, Lccsanandroid/graphics/RectF;->width()F

    move-result v7

    iget-object v2, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->endBounds:Lccsanandroid/graphics/RectF;

    .line 1361
    invoke-virtual {v2}, Lccsanandroid/graphics/RectF;->height()F

    move-result v8

    .line 1354
    move/from16 v2, p1

    move v3, v14

    move v4, v15

    invoke-interface/range {v1 .. v8}, Lccsancom/google/android/material/transition/FitModeEvaluator;->evaluate(FFFFFFF)Lccsancom/google/android/material/transition/FitModeResult;

    move-result-object v1

    iput-object v1, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lccsancom/google/android/material/transition/FitModeResult;

    .line 1362
    iget-object v2, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Lccsanandroid/graphics/RectF;

    iget v1, v1, Lccsancom/google/android/material/transition/FitModeResult;->currentStartWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    sub-float v1, v12, v1

    iget-object v4, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lccsancom/google/android/material/transition/FitModeResult;

    iget v4, v4, Lccsancom/google/android/material/transition/FitModeResult;->currentStartWidth:F

    div-float/2addr v4, v3

    add-float/2addr v4, v12

    iget-object v5, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lccsancom/google/android/material/transition/FitModeResult;

    iget v5, v5, Lccsancom/google/android/material/transition/FitModeResult;->currentStartHeight:F

    add-float/2addr v5, v13

    invoke-virtual {v2, v1, v13, v4, v5}, Lccsanandroid/graphics/RectF;->set(FFFF)V

    .line 1367
    iget-object v1, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentEndBounds:Lccsanandroid/graphics/RectF;

    iget-object v2, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lccsancom/google/android/material/transition/FitModeResult;

    iget v2, v2, Lccsancom/google/android/material/transition/FitModeResult;->currentEndWidth:F

    div-float/2addr v2, v3

    sub-float v2, v12, v2

    iget-object v4, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lccsancom/google/android/material/transition/FitModeResult;

    iget v4, v4, Lccsancom/google/android/material/transition/FitModeResult;->currentEndWidth:F

    div-float/2addr v4, v3

    add-float/2addr v4, v12

    iget-object v3, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lccsancom/google/android/material/transition/FitModeResult;

    iget v3, v3, Lccsancom/google/android/material/transition/FitModeResult;->currentEndHeight:F

    add-float/2addr v3, v13

    invoke-virtual {v1, v2, v13, v4, v3}, Lccsanandroid/graphics/RectF;->set(FFFF)V

    .line 1374
    iget-object v1, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Lccsanandroid/graphics/RectF;

    iget-object v2, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Lccsanandroid/graphics/RectF;

    invoke-virtual {v1, v2}, Lccsanandroid/graphics/RectF;->set(Lccsanandroid/graphics/RectF;)V

    .line 1375
    iget-object v1, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Lccsanandroid/graphics/RectF;

    iget-object v2, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentEndBounds:Lccsanandroid/graphics/RectF;

    invoke-virtual {v1, v2}, Lccsanandroid/graphics/RectF;->set(Lccsanandroid/graphics/RectF;)V

    .line 1376
    iget-object v1, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    invoke-static {v1}, Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->access$600(Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;)Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->access$1000(Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 1377
    .local v8, "maskStartFraction":F
    iget-object v1, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    invoke-static {v1}, Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->access$600(Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;)Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->access$1100(Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 1378
    .local v7, "maskEndFraction":F
    iget-object v1, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fitModeEvaluator:Lccsancom/google/android/material/transition/FitModeEvaluator;

    iget-object v2, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lccsancom/google/android/material/transition/FitModeResult;

    invoke-interface {v1, v2}, Lccsancom/google/android/material/transition/FitModeEvaluator;->shouldMaskStartBounds(Lccsancom/google/android/material/transition/FitModeResult;)Z

    move-result v16

    .line 1379
    .local v16, "shouldMaskStartBounds":Z
    if-eqz v16, :cond_4

    iget-object v1, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Lccsanandroid/graphics/RectF;

    goto :goto_4

    :cond_4
    iget-object v1, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Lccsanandroid/graphics/RectF;

    :goto_4
    move-object v6, v1

    .line 1380
    .local v6, "maskBounds":Lccsanandroid/graphics/RectF;
    invoke-static {v10, v11, v8, v7, v9}, Lccsancom/google/android/material/transition/TransitionUtils;->lerp(FFFFF)F

    move-result v10

    .line 1381
    .local v10, "maskProgress":F
    if-eqz v16, :cond_5

    move v11, v10

    goto :goto_5

    :cond_5
    sub-float/2addr v11, v10

    .line 1382
    .local v11, "maskMultiplier":F
    :goto_5
    iget-object v1, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fitModeEvaluator:Lccsancom/google/android/material/transition/FitModeEvaluator;

    iget-object v2, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lccsancom/google/android/material/transition/FitModeResult;

    invoke-interface {v1, v6, v11, v2}, Lccsancom/google/android/material/transition/FitModeEvaluator;->applyMask(Lccsanandroid/graphics/RectF;FLccsancom/google/android/material/transition/FitModeResult;)V

    .line 1385
    new-instance v1, Lccsanandroid/graphics/RectF;

    iget-object v2, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Lccsanandroid/graphics/RectF;

    iget v2, v2, Lccsanandroid/graphics/RectF;->left:F

    iget-object v3, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Lccsanandroid/graphics/RectF;

    iget v3, v3, Lccsanandroid/graphics/RectF;->left:F

    .line 1387
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Lccsanandroid/graphics/RectF;

    iget v3, v3, Lccsanandroid/graphics/RectF;->top:F

    iget-object v4, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Lccsanandroid/graphics/RectF;

    iget v4, v4, Lccsanandroid/graphics/RectF;->top:F

    .line 1388
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v4, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Lccsanandroid/graphics/RectF;

    iget v4, v4, Lccsanandroid/graphics/RectF;->right:F

    iget-object v5, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Lccsanandroid/graphics/RectF;

    iget v5, v5, Lccsanandroid/graphics/RectF;->right:F

    .line 1389
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget-object v5, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Lccsanandroid/graphics/RectF;

    iget v5, v5, Lccsanandroid/graphics/RectF;->bottom:F

    move-object/from16 v17, v6

    .end local v6    # "maskBounds":Lccsanandroid/graphics/RectF;
    .local v17, "maskBounds":Lccsanandroid/graphics/RectF;
    iget-object v6, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Lccsanandroid/graphics/RectF;

    iget v6, v6, Lccsanandroid/graphics/RectF;->bottom:F

    .line 1390
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lccsanandroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Lccsanandroid/graphics/RectF;

    .line 1392
    iget-object v1, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lccsancom/google/android/material/transition/MaskEvaluator;

    iget-object v3, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->startShapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    iget-object v4, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->endShapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    iget-object v5, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Lccsanandroid/graphics/RectF;

    iget-object v6, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Lccsanandroid/graphics/RectF;

    iget-object v2, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Lccsanandroid/graphics/RectF;

    move-object/from16 v18, v2

    iget-object v2, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 1399
    invoke-static {v2}, Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->access$700(Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;)Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    move-result-object v19

    .line 1392
    move/from16 v2, p1

    move/from16 v20, v7

    .end local v7    # "maskEndFraction":F
    .local v20, "maskEndFraction":F
    move-object/from16 v7, v18

    move/from16 v18, v8

    .end local v8    # "maskStartFraction":F
    .local v18, "maskStartFraction":F
    move-object/from16 v8, v19

    invoke-virtual/range {v1 .. v8}, Lccsancom/google/android/material/transition/MaskEvaluator;->evaluate(FLccsancom/google/android/material/shape/ShapeAppearanceModel;Lccsancom/google/android/material/shape/ShapeAppearanceModel;Lccsanandroid/graphics/RectF;Lccsanandroid/graphics/RectF;Lccsanandroid/graphics/RectF;Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)V

    .line 1402
    iget v1, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->startElevation:F

    iget v2, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->endElevation:F

    invoke-static {v1, v2, v9}, Lccsancom/google/android/material/transition/TransitionUtils;->lerp(FFF)F

    move-result v1

    iput v1, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentElevation:F

    .line 1403
    iget-object v1, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Lccsanandroid/graphics/RectF;

    iget v2, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->displayWidth:F

    invoke-static {v1, v2}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->calculateElevationDxMultiplier(Lccsanandroid/graphics/RectF;F)F

    move-result v1

    .line 1404
    .local v1, "dxMultiplier":F
    iget-object v2, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Lccsanandroid/graphics/RectF;

    iget v3, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->displayHeight:F

    invoke-static {v2, v3}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->calculateElevationDyMultiplier(Lccsanandroid/graphics/RectF;F)F

    move-result v2

    .line 1405
    .local v2, "dyMultiplier":F
    iget v3, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentElevation:F

    mul-float v4, v3, v1

    float-to-int v4, v4

    int-to-float v4, v4

    .line 1406
    .local v4, "currentElevationDx":F
    mul-float v5, v3, v2

    float-to-int v5, v5

    int-to-float v5, v5

    iput v5, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentElevationDy:F

    .line 1407
    iget-object v6, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->shadowPaint:Lccsanandroid/graphics/Paint;

    const/high16 v7, 0x2d000000

    invoke-virtual {v6, v3, v4, v5, v7}, Lccsanandroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1411
    iget-object v3, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    invoke-static {v3}, Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->access$400(Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;)Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    move-result-object v3

    invoke-static {v3}, Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->access$1000(Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 1412
    .local v3, "fadeStartFraction":F
    iget-object v5, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    invoke-static {v5}, Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->access$400(Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;)Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    move-result-object v5

    invoke-static {v5}, Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->access$1100(Lccsancom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v5}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 1413
    .local v5, "fadeEndFraction":F
    iget-object v6, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fadeModeEvaluator:Lccsancom/google/android/material/transition/FadeModeEvaluator;

    invoke-interface {v6, v9, v3, v5}, Lccsancom/google/android/material/transition/FadeModeEvaluator;->evaluate(FFF)Lccsancom/google/android/material/transition/FadeModeResult;

    move-result-object v6

    iput-object v6, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fadeModeResult:Lccsancom/google/android/material/transition/FadeModeResult;

    .line 1416
    iget-object v6, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->startContainerPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v6}, Lccsanandroid/graphics/Paint;->getColor()I

    move-result v6

    if-eqz v6, :cond_6

    .line 1417
    iget-object v6, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->startContainerPaint:Lccsanandroid/graphics/Paint;

    iget-object v7, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fadeModeResult:Lccsancom/google/android/material/transition/FadeModeResult;

    iget v7, v7, Lccsancom/google/android/material/transition/FadeModeResult;->startAlpha:I

    invoke-virtual {v6, v7}, Lccsanandroid/graphics/Paint;->setAlpha(I)V

    .line 1419
    :cond_6
    iget-object v6, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->endContainerPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v6}, Lccsanandroid/graphics/Paint;->getColor()I

    move-result v6

    if-eqz v6, :cond_7

    .line 1420
    iget-object v6, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->endContainerPaint:Lccsanandroid/graphics/Paint;

    iget-object v7, v0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fadeModeResult:Lccsancom/google/android/material/transition/FadeModeResult;

    iget v7, v7, Lccsancom/google/android/material/transition/FadeModeResult;->endAlpha:I

    invoke-virtual {v6, v7}, Lccsanandroid/graphics/Paint;->setAlpha(I)V

    .line 1423
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->invalidateSelf()V

    .line 1424
    return-void
.end method


# virtual methods
.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 1180
    iget-object v0, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->scrimPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0}, Lccsanandroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    .line 1181
    invoke-virtual {p0}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->scrimPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Lccsanandroid/graphics/Canvas;->drawRect(Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Paint;)V

    .line 1184
    :cond_0
    iget-boolean v0, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->drawDebugEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->save()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 1186
    .local v0, "debugCanvasSave":I
    :goto_0
    iget-boolean v1, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->elevationShadowEnabled:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentElevation:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 1187
    invoke-direct {p0, p1}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->drawElevationShadow(Lccsanandroid/graphics/Canvas;)V

    .line 1192
    :cond_2
    iget-object v1, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lccsancom/google/android/material/transition/MaskEvaluator;

    invoke-virtual {v1, p1}, Lccsancom/google/android/material/transition/MaskEvaluator;->clip(Lccsanandroid/graphics/Canvas;)V

    .line 1194
    iget-object v1, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->containerPaint:Lccsanandroid/graphics/Paint;

    invoke-direct {p0, p1, v1}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->maybeDrawContainerColor(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Paint;)V

    .line 1196
    iget-object v1, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fadeModeResult:Lccsancom/google/android/material/transition/FadeModeResult;

    iget-boolean v1, v1, Lccsancom/google/android/material/transition/FadeModeResult;->endOnTop:Z

    if-eqz v1, :cond_3

    .line 1197
    invoke-direct {p0, p1}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->drawStartView(Lccsanandroid/graphics/Canvas;)V

    .line 1198
    invoke-direct {p0, p1}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->drawEndView(Lccsanandroid/graphics/Canvas;)V

    goto :goto_1

    .line 1200
    :cond_3
    invoke-direct {p0, p1}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->drawEndView(Lccsanandroid/graphics/Canvas;)V

    .line 1201
    invoke-direct {p0, p1}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->drawStartView(Lccsanandroid/graphics/Canvas;)V

    .line 1204
    :goto_1
    iget-boolean v1, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->drawDebugEnabled:Z

    if-eqz v1, :cond_4

    .line 1205
    invoke-virtual {p1, v0}, Lccsanandroid/graphics/Canvas;->restoreToCount(I)V

    .line 1206
    iget-object v1, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Lccsanandroid/graphics/RectF;

    iget-object v2, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->debugPath:Lccsanandroid/graphics/Path;

    const v3, -0xff01

    invoke-direct {p0, p1, v1, v2, v3}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->drawDebugCumulativePath(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/RectF;Lccsanandroid/graphics/Path;I)V

    .line 1207
    iget-object v1, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Lccsanandroid/graphics/RectF;

    const/16 v2, -0x100

    invoke-direct {p0, p1, v1, v2}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->drawDebugRect(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/RectF;I)V

    .line 1208
    iget-object v1, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Lccsanandroid/graphics/RectF;

    const v2, -0xff0100

    invoke-direct {p0, p1, v1, v2}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->drawDebugRect(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/RectF;I)V

    .line 1209
    iget-object v1, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Lccsanandroid/graphics/RectF;

    const v2, -0xff0001

    invoke-direct {p0, p1, v1, v2}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->drawDebugRect(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/RectF;I)V

    .line 1210
    iget-object v1, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentEndBounds:Lccsanandroid/graphics/RectF;

    const v2, -0xffff01

    invoke-direct {p0, p1, v1, v2}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->drawDebugRect(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/RectF;I)V

    .line 1212
    :cond_4
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 1310
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .line 1301
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Setting alpha on is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setColorFilter(Lccsanandroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "colorFilter"    # Lccsanandroid/graphics/ColorFilter;

    .line 1305
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Setting a color filter is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
