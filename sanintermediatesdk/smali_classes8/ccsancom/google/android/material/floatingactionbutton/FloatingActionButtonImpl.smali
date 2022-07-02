.class Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
.super Ljava/lang/Object;
.source "FloatingActionButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$DisabledElevationAnimation;,
        Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ElevateToPressedTranslationZAnimation;,
        Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;,
        Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ResetElevationAnimation;,
        Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;,
        Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;,
        Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalTransformationCallback;
    }
.end annotation


# static fields
.field static final ANIM_STATE_HIDING:I = 0x1

.field static final ANIM_STATE_NONE:I = 0x0

.field static final ANIM_STATE_SHOWING:I = 0x2

.field static final ELEVATION_ANIM_DELAY:J = 0x64L

.field static final ELEVATION_ANIM_DURATION:J = 0x64L

.field static final ELEVATION_ANIM_INTERPOLATOR:Lccsanandroid/animation/TimeInterpolator;

.field static final EMPTY_STATE_SET:[I

.field static final ENABLED_STATE_SET:[I

.field static final FOCUSED_ENABLED_STATE_SET:[I

.field private static final HIDE_ICON_SCALE:F = 0.0f

.field private static final HIDE_OPACITY:F = 0.0f

.field private static final HIDE_SCALE:F = 0.0f

.field static final HOVERED_ENABLED_STATE_SET:[I

.field static final HOVERED_FOCUSED_ENABLED_STATE_SET:[I

.field static final PRESSED_ENABLED_STATE_SET:[I

.field static final SHADOW_MULTIPLIER:F = 1.5f

.field private static final SHOW_ICON_SCALE:F = 1.0f

.field private static final SHOW_OPACITY:F = 1.0f

.field private static final SHOW_SCALE:F = 1.0f


# instance fields
.field private animState:I

.field borderDrawable:Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;

.field contentBackground:Lccsanandroid/graphics/drawable/Drawable;

.field private currentAnimator:Lccsanandroid/animation/Animator;

.field private defaultHideMotionSpec:Lccsancom/google/android/material/animation/MotionSpec;

.field private defaultShowMotionSpec:Lccsancom/google/android/material/animation/MotionSpec;

.field elevation:F

.field ensureMinTouchTargetSize:Z

.field private hideListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsanandroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private hideMotionSpec:Lccsancom/google/android/material/animation/MotionSpec;

.field hoveredFocusedTranslationZ:F

.field private imageMatrixScale:F

.field private maxImageSize:I

.field minTouchTargetSize:I

.field private preDrawListener:Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;

.field pressedTranslationZ:F

.field rippleDrawable:Lccsanandroid/graphics/drawable/Drawable;

.field private rotation:F

.field shadowPaddingEnabled:Z

.field final shadowViewDelegate:Lccsancom/google/android/material/shadow/ShadowViewDelegate;

.field shapeAppearance:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

.field shapeDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

.field private showListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsanandroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private showMotionSpec:Lccsancom/google/android/material/animation/MotionSpec;

.field private final stateListAnimator:Lccsancom/google/android/material/internal/StateListAnimator;

.field private final tmpMatrix:Lccsanandroid/graphics/Matrix;

.field private final tmpRect:Lccsanandroid/graphics/Rect;

.field private final tmpRectF1:Lccsanandroid/graphics/RectF;

.field private final tmpRectF2:Lccsanandroid/graphics/RectF;

.field private transformationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalTransformationCallback;",
            ">;"
        }
    .end annotation
.end field

.field final view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    sget-object v0, Lccsancom/google/android/material/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Lccsanandroid/animation/TimeInterpolator;

    sput-object v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->ELEVATION_ANIM_INTERPOLATOR:Lccsanandroid/animation/TimeInterpolator;

    .line 128
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->PRESSED_ENABLED_STATE_SET:[I

    .line 131
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->HOVERED_FOCUSED_ENABLED_STATE_SET:[I

    .line 134
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->FOCUSED_ENABLED_STATE_SET:[I

    .line 137
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->HOVERED_ENABLED_STATE_SET:[I

    .line 140
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101009e

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->ENABLED_STATE_SET:[I

    .line 141
    new-array v0, v2, [I

    sput-object v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->EMPTY_STATE_SET:[I

    return-void

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x1010367
        0x101009c
        0x101009e
    .end array-data

    :array_2
    .array-data 4
        0x101009c
        0x101009e
    .end array-data

    :array_3
    .array-data 4
        0x1010367
        0x101009e
    .end array-data
.end method

.method constructor <init>(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;Lccsancom/google/android/material/shadow/ShadowViewDelegate;)V
    .locals 3
    .param p1, "view"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;
    .param p2, "shadowViewDelegate"    # Lccsancom/google/android/material/shadow/ShadowViewDelegate;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowPaddingEnabled:Z

    .line 107
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->imageMatrixScale:F

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->animState:I

    .line 146
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->tmpRect:Lccsanandroid/graphics/Rect;

    .line 147
    new-instance v0, Lccsanandroid/graphics/RectF;

    invoke-direct {v0}, Lccsanandroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->tmpRectF1:Lccsanandroid/graphics/RectF;

    .line 148
    new-instance v0, Lccsanandroid/graphics/RectF;

    invoke-direct {v0}, Lccsanandroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->tmpRectF2:Lccsanandroid/graphics/RectF;

    .line 149
    new-instance v0, Lccsanandroid/graphics/Matrix;

    invoke-direct {v0}, Lccsanandroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->tmpMatrix:Lccsanandroid/graphics/Matrix;

    .line 156
    iput-object p1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 157
    iput-object p2, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowViewDelegate:Lccsancom/google/android/material/shadow/ShadowViewDelegate;

    .line 159
    new-instance v0, Lccsancom/google/android/material/internal/StateListAnimator;

    invoke-direct {v0}, Lccsancom/google/android/material/internal/StateListAnimator;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->stateListAnimator:Lccsancom/google/android/material/internal/StateListAnimator;

    .line 162
    sget-object v1, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->PRESSED_ENABLED_STATE_SET:[I

    new-instance v2, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ElevateToPressedTranslationZAnimation;

    invoke-direct {v2, p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ElevateToPressedTranslationZAnimation;-><init>(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V

    .line 164
    invoke-direct {p0, v2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->createElevationAnimator(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;)Lccsanandroid/animation/ValueAnimator;

    move-result-object v2

    .line 162
    invoke-virtual {v0, v1, v2}, Lccsancom/google/android/material/internal/StateListAnimator;->addState([ILccsanandroid/animation/ValueAnimator;)V

    .line 165
    sget-object v1, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->HOVERED_FOCUSED_ENABLED_STATE_SET:[I

    new-instance v2, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;

    invoke-direct {v2, p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;-><init>(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V

    .line 167
    invoke-direct {p0, v2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->createElevationAnimator(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;)Lccsanandroid/animation/ValueAnimator;

    move-result-object v2

    .line 165
    invoke-virtual {v0, v1, v2}, Lccsancom/google/android/material/internal/StateListAnimator;->addState([ILccsanandroid/animation/ValueAnimator;)V

    .line 168
    sget-object v1, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->FOCUSED_ENABLED_STATE_SET:[I

    new-instance v2, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;

    invoke-direct {v2, p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;-><init>(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V

    .line 170
    invoke-direct {p0, v2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->createElevationAnimator(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;)Lccsanandroid/animation/ValueAnimator;

    move-result-object v2

    .line 168
    invoke-virtual {v0, v1, v2}, Lccsancom/google/android/material/internal/StateListAnimator;->addState([ILccsanandroid/animation/ValueAnimator;)V

    .line 171
    sget-object v1, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->HOVERED_ENABLED_STATE_SET:[I

    new-instance v2, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;

    invoke-direct {v2, p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;-><init>(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V

    .line 173
    invoke-direct {p0, v2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->createElevationAnimator(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;)Lccsanandroid/animation/ValueAnimator;

    move-result-object v2

    .line 171
    invoke-virtual {v0, v1, v2}, Lccsancom/google/android/material/internal/StateListAnimator;->addState([ILccsanandroid/animation/ValueAnimator;)V

    .line 175
    sget-object v1, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->ENABLED_STATE_SET:[I

    new-instance v2, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ResetElevationAnimation;

    invoke-direct {v2, p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ResetElevationAnimation;-><init>(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V

    .line 176
    invoke-direct {p0, v2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->createElevationAnimator(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;)Lccsanandroid/animation/ValueAnimator;

    move-result-object v2

    .line 175
    invoke-virtual {v0, v1, v2}, Lccsancom/google/android/material/internal/StateListAnimator;->addState([ILccsanandroid/animation/ValueAnimator;)V

    .line 178
    sget-object v1, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->EMPTY_STATE_SET:[I

    new-instance v2, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$DisabledElevationAnimation;

    invoke-direct {v2, p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$DisabledElevationAnimation;-><init>(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V

    .line 179
    invoke-direct {p0, v2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->createElevationAnimator(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;)Lccsanandroid/animation/ValueAnimator;

    move-result-object v2

    .line 178
    invoke-virtual {v0, v1, v2}, Lccsancom/google/android/material/internal/StateListAnimator;->addState([ILccsanandroid/animation/ValueAnimator;)V

    .line 181
    invoke-virtual {p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getRotation()F

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rotation:F

    .line 182
    return-void
.end method

.method static synthetic access$002(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;I)I
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    .param p1, "x1"    # I

    .line 66
    iput p1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->animState:I

    return p1
.end method

.method static synthetic access$102(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;Lccsanandroid/animation/Animator;)Lccsanandroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    .param p1, "x1"    # Lccsanandroid/animation/Animator;

    .line 66
    iput-object p1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->currentAnimator:Lccsanandroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$202(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;F)F
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    .param p1, "x1"    # F

    .line 66
    iput p1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->imageMatrixScale:F

    return p1
.end method

.method private calculateImageMatrixFromScale(FLccsanandroid/graphics/Matrix;)V
    .locals 6
    .param p1, "scale"    # F
    .param p2, "matrix"    # Lccsanandroid/graphics/Matrix;

    .line 293
    invoke-virtual {p2}, Lccsanandroid/graphics/Matrix;->reset()V

    .line 295
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 296
    .local v0, "drawable":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->maxImageSize:I

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->tmpRectF1:Lccsanandroid/graphics/RectF;

    .line 299
    .local v1, "drawableBounds":Lccsanandroid/graphics/RectF;
    iget-object v2, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->tmpRectF2:Lccsanandroid/graphics/RectF;

    .line 300
    .local v2, "imageBounds":Lccsanandroid/graphics/RectF;
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v3, v4}, Lccsanandroid/graphics/RectF;->set(FFFF)V

    .line 301
    iget v3, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->maxImageSize:I

    int-to-float v4, v3

    int-to-float v3, v3

    invoke-virtual {v2, v5, v5, v4, v3}, Lccsanandroid/graphics/RectF;->set(FFFF)V

    .line 302
    sget-object v3, Lccsanandroid/graphics/Matrix$ScaleToFit;->CENTER:Lccsanandroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p2, v1, v2, v3}, Lccsanandroid/graphics/Matrix;->setRectToRect(Lccsanandroid/graphics/RectF;Lccsanandroid/graphics/RectF;Lccsanandroid/graphics/Matrix$ScaleToFit;)Z

    .line 305
    iget v3, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->maxImageSize:I

    int-to-float v4, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {p2, p1, p1, v4, v3}, Lccsanandroid/graphics/Matrix;->postScale(FFFF)Z

    .line 307
    .end local v1    # "drawableBounds":Lccsanandroid/graphics/RectF;
    .end local v2    # "imageBounds":Lccsanandroid/graphics/RectF;
    :cond_0
    return-void
.end method

.method private createAnimator(Lccsancom/google/android/material/animation/MotionSpec;FFF)Lccsanandroid/animation/AnimatorSet;
    .locals 11
    .param p1, "spec"    # Lccsancom/google/android/material/animation/MotionSpec;
    .param p2, "opacity"    # F
    .param p3, "scale"    # F
    .param p4, "iconScale"    # F

    .line 563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 565
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator;>;"
    iget-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v2, Lccsanandroid/view/View;->ALPHA:Lccsanandroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput p2, v4, v5

    invoke-static {v1, v2, v4}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Lccsanandroid/util/Property;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v1

    .line 566
    .local v1, "animatorOpacity":Lccsanandroid/animation/ObjectAnimator;
    const-string v2, "opacity"

    invoke-virtual {p1, v2}, Lccsancom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lccsancom/google/android/material/animation/MotionTiming;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsancom/google/android/material/animation/MotionTiming;->apply(Lccsanandroid/animation/Animator;)V

    .line 567
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    iget-object v2, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v4, Lccsanandroid/view/View;->SCALE_X:Lccsanandroid/util/Property;

    new-array v6, v3, [F

    aput p3, v6, v5

    invoke-static {v2, v4, v6}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Lccsanandroid/util/Property;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v2

    .line 570
    .local v2, "animatorScaleX":Lccsanandroid/animation/ObjectAnimator;
    const-string/jumbo v4, "scale"

    invoke-virtual {p1, v4}, Lccsancom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lccsancom/google/android/material/animation/MotionTiming;

    move-result-object v6

    invoke-virtual {v6, v2}, Lccsancom/google/android/material/animation/MotionTiming;->apply(Lccsanandroid/animation/Animator;)V

    .line 571
    invoke-direct {p0, v2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->workAroundOreoBug(Lccsanandroid/animation/ObjectAnimator;)V

    .line 572
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    iget-object v6, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v7, Lccsanandroid/view/View;->SCALE_Y:Lccsanandroid/util/Property;

    new-array v8, v3, [F

    aput p3, v8, v5

    invoke-static {v6, v7, v8}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Lccsanandroid/util/Property;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v6

    .line 575
    .local v6, "animatorScaleY":Lccsanandroid/animation/ObjectAnimator;
    invoke-virtual {p1, v4}, Lccsancom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lccsancom/google/android/material/animation/MotionTiming;

    move-result-object v4

    invoke-virtual {v4, v6}, Lccsancom/google/android/material/animation/MotionTiming;->apply(Lccsanandroid/animation/Animator;)V

    .line 576
    invoke-direct {p0, v6}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->workAroundOreoBug(Lccsanandroid/animation/ObjectAnimator;)V

    .line 577
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    iget-object v4, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->tmpMatrix:Lccsanandroid/graphics/Matrix;

    invoke-direct {p0, p4, v4}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->calculateImageMatrixFromScale(FLccsanandroid/graphics/Matrix;)V

    .line 580
    iget-object v4, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v7, Lccsancom/google/android/material/animation/ImageMatrixProperty;

    invoke-direct {v7}, Lccsancom/google/android/material/animation/ImageMatrixProperty;-><init>()V

    new-instance v8, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$3;

    invoke-direct {v8, p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$3;-><init>(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V

    new-array v3, v3, [Lccsanandroid/graphics/Matrix;

    new-instance v9, Lccsanandroid/graphics/Matrix;

    iget-object v10, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->tmpMatrix:Lccsanandroid/graphics/Matrix;

    invoke-direct {v9, v10}, Lccsanandroid/graphics/Matrix;-><init>(Lccsanandroid/graphics/Matrix;)V

    aput-object v9, v3, v5

    .line 581
    invoke-static {v4, v7, v8, v3}, Lccsanandroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Lccsanandroid/util/Property;Lccsanandroid/animation/TypeEvaluator;[Ljava/lang/Object;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v3

    .line 595
    .local v3, "animatorIconScale":Lccsanandroid/animation/ObjectAnimator;
    const-string v4, "iconScale"

    invoke-virtual {p1, v4}, Lccsancom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lccsancom/google/android/material/animation/MotionTiming;

    move-result-object v4

    invoke-virtual {v4, v3}, Lccsancom/google/android/material/animation/MotionTiming;->apply(Lccsanandroid/animation/Animator;)V

    .line 596
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    new-instance v4, Lccsanandroid/animation/AnimatorSet;

    invoke-direct {v4}, Lccsanandroid/animation/AnimatorSet;-><init>()V

    .line 599
    .local v4, "set":Lccsanandroid/animation/AnimatorSet;
    invoke-static {v4, v0}, Lccsancom/google/android/material/animation/AnimatorSetCompat;->playTogether(Lccsanandroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 600
    return-object v4
.end method

.method private createElevationAnimator(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;)Lccsanandroid/animation/ValueAnimator;
    .locals 3
    .param p1, "impl"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;

    .line 769
    new-instance v0, Lccsanandroid/animation/ValueAnimator;

    invoke-direct {v0}, Lccsanandroid/animation/ValueAnimator;-><init>()V

    .line 770
    .local v0, "animator":Lccsanandroid/animation/ValueAnimator;
    sget-object v1, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->ELEVATION_ANIM_INTERPOLATOR:Lccsanandroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Lccsanandroid/animation/ValueAnimator;->setInterpolator(Lccsanandroid/animation/TimeInterpolator;)V

    .line 771
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lccsanandroid/animation/ValueAnimator;->setDuration(J)Lccsanandroid/animation/ValueAnimator;

    .line 772
    invoke-virtual {v0, p1}, Lccsanandroid/animation/ValueAnimator;->addListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 773
    invoke-virtual {v0, p1}, Lccsanandroid/animation/ValueAnimator;->addUpdateListener(Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 774
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lccsanandroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 775
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getDefaultHideMotionSpec()Lccsancom/google/android/material/animation/MotionSpec;
    .locals 2

    .line 552
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->defaultHideMotionSpec:Lccsancom/google/android/material/animation/MotionSpec;

    if-nez v0, :cond_0

    .line 553
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 554
    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    sget v1, Lccsancom/google/android/material/R$animator;->ccsan_design_fab_hide_motion_spec:I

    invoke-static {v0, v1}, Lccsancom/google/android/material/animation/MotionSpec;->createFromResource(Lccsanandroid/content/Context;I)Lccsancom/google/android/material/animation/MotionSpec;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->defaultHideMotionSpec:Lccsancom/google/android/material/animation/MotionSpec;

    .line 557
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->defaultHideMotionSpec:Lccsancom/google/android/material/animation/MotionSpec;

    invoke-static {v0}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/animation/MotionSpec;

    return-object v0
.end method

.method private getDefaultShowMotionSpec()Lccsancom/google/android/material/animation/MotionSpec;
    .locals 2

    .line 543
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->defaultShowMotionSpec:Lccsancom/google/android/material/animation/MotionSpec;

    if-nez v0, :cond_0

    .line 544
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 545
    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    sget v1, Lccsancom/google/android/material/R$animator;->ccsan_design_fab_show_motion_spec:I

    invoke-static {v0, v1}, Lccsancom/google/android/material/animation/MotionSpec;->createFromResource(Lccsanandroid/content/Context;I)Lccsancom/google/android/material/animation/MotionSpec;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->defaultShowMotionSpec:Lccsancom/google/android/material/animation/MotionSpec;

    .line 548
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->defaultShowMotionSpec:Lccsancom/google/android/material/animation/MotionSpec;

    invoke-static {v0}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/animation/MotionSpec;

    return-object v0
.end method

.method private getOrCreatePreDrawListener()Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 1

    .line 728
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->preDrawListener:Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v0, :cond_0

    .line 729
    new-instance v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$5;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$5;-><init>(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V

    iput-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->preDrawListener:Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 739
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->preDrawListener:Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object v0
.end method

.method private shouldAnimateVisibilityChange()Z
    .locals 1

    .line 846
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v0}, Lccsanandroidx/core/view/ViewCompat;->isLaidOut(Lccsanandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private workAroundOreoBug(Lccsanandroid/animation/ObjectAnimator;)V
    .locals 2
    .param p1, "animator"    # Lccsanandroid/animation/ObjectAnimator;

    .line 608
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    .line 609
    return-void

    .line 612
    :cond_0
    new-instance v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$4;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$4;-><init>(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V

    invoke-virtual {p1, v0}, Lccsanandroid/animation/ObjectAnimator;->setEvaluator(Lccsanandroid/animation/TypeEvaluator;)V

    .line 620
    return-void
.end method


# virtual methods
.method public addOnHideAnimationListener(Lccsanandroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Lccsanandroid/animation/Animator$AnimatorListener;

    .line 401
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideListeners:Ljava/util/ArrayList;

    .line 404
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    return-void
.end method

.method addOnShowAnimationListener(Lccsanandroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Lccsanandroid/animation/Animator$AnimatorListener;

    .line 385
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showListeners:Ljava/util/ArrayList;

    .line 388
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    return-void
.end method

.method addTransformationCallback(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalTransformationCallback;)V
    .locals 1
    .param p1, "listener"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalTransformationCallback;

    .line 623
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->transformationCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 624
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->transformationCallbacks:Ljava/util/ArrayList;

    .line 626
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->transformationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    return-void
.end method

.method createShapeDrawable()Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    .locals 2

    .line 743
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeAppearance:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    invoke-static {v0}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 744
    .local v0, "shapeAppearance":Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    new-instance v1, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v1, v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    return-object v1
.end method

.method final getContentBackground()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 656
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->contentBackground:Lccsanandroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getElevation()F
    .locals 1

    .line 246
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->elevation:F

    return v0
.end method

.method getEnsureMinTouchTargetSize()Z
    .locals 1

    .line 352
    iget-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->ensureMinTouchTargetSize:Z

    return v0
.end method

.method final getHideMotionSpec()Lccsancom/google/android/material/animation/MotionSpec;
    .locals 1

    .line 340
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideMotionSpec:Lccsancom/google/android/material/animation/MotionSpec;

    return-object v0
.end method

.method getHoveredFocusedTranslationZ()F
    .locals 1

    .line 250
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hoveredFocusedTranslationZ:F

    return v0
.end method

.method getPadding(Lccsanandroid/graphics/Rect;)V
    .locals 5
    .param p1, "rect"    # Lccsanandroid/graphics/Rect;

    .line 671
    iget-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->ensureMinTouchTargetSize:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->minTouchTargetSize:I

    iget-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 672
    invoke-virtual {v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 675
    .local v0, "minPadding":I
    :goto_0
    iget-boolean v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowPaddingEnabled:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getElevation()F

    move-result v1

    iget v2, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->pressedTranslationZ:F

    add-float/2addr v1, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 676
    .local v1, "maxShadowSize":F
    :goto_1
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 677
    .local v2, "hPadding":I
    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float v3, v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 678
    .local v3, "vPadding":I
    invoke-virtual {p1, v2, v3, v2, v3}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 679
    return-void
.end method

.method getPressedTranslationZ()F
    .locals 1

    .line 254
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->pressedTranslationZ:F

    return v0
.end method

.method final getShapeAppearance()Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1

    .line 326
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeAppearance:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    return-object v0
.end method

.method final getShowMotionSpec()Lccsancom/google/android/material/animation/MotionSpec;
    .locals 1

    .line 331
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showMotionSpec:Lccsancom/google/android/material/animation/MotionSpec;

    return-object v0
.end method

.method hide(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
    .locals 3
    .param p1, "listener"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;
    .param p2, "fromUser"    # Z

    .line 417
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->isOrWillBeHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->currentAnimator:Lccsanandroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 423
    invoke-virtual {v0}, Lccsanandroid/animation/Animator;->cancel()V

    .line 426
    :cond_1
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shouldAnimateVisibilityChange()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 427
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideMotionSpec:Lccsancom/google/android/material/animation/MotionSpec;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 429
    :cond_2
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getDefaultHideMotionSpec()Lccsancom/google/android/material/animation/MotionSpec;

    move-result-object v0

    :goto_0
    nop

    .line 428
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->createAnimator(Lccsancom/google/android/material/animation/MotionSpec;FFF)Lccsanandroid/animation/AnimatorSet;

    move-result-object v0

    .line 433
    .local v0, "set":Lccsanandroid/animation/AnimatorSet;
    new-instance v1, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;

    invoke-direct {v1, p0, p2, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;-><init>(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;ZLccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    invoke-virtual {v0, v1}, Lccsanandroid/animation/AnimatorSet;->addListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 464
    iget-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 465
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/animation/Animator$AnimatorListener;

    .line 466
    .local v2, "l":Lccsanandroid/animation/Animator$AnimatorListener;
    invoke-virtual {v0, v2}, Lccsanandroid/animation/AnimatorSet;->addListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 467
    .end local v2    # "l":Lccsanandroid/animation/Animator$AnimatorListener;
    goto :goto_1

    .line 469
    :cond_3
    invoke-virtual {v0}, Lccsanandroid/animation/AnimatorSet;->start()V

    .line 470
    .end local v0    # "set":Lccsanandroid/animation/AnimatorSet;
    goto :goto_3

    .line 472
    :cond_4
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz p2, :cond_5

    const/16 v1, 0x8

    goto :goto_2

    :cond_5
    const/4 v1, 0x4

    :goto_2
    invoke-virtual {v0, v1, p2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->internalSetVisibility(IZ)V

    .line 473
    if-eqz p1, :cond_6

    .line 474
    invoke-interface {p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onHidden()V

    .line 477
    :cond_6
    :goto_3
    return-void
.end method

.method initializeBackgroundDrawable(Lccsanandroid/content/res/ColorStateList;Lccsanandroid/graphics/PorterDuff$Mode;Lccsanandroid/content/res/ColorStateList;I)V
    .locals 4
    .param p1, "backgroundTint"    # Lccsanandroid/content/res/ColorStateList;
    .param p2, "backgroundTintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;
    .param p3, "rippleColor"    # Lccsanandroid/content/res/ColorStateList;
    .param p4, "borderWidth"    # I

    .line 191
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->createShapeDrawable()Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    .line 192
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 193
    if-eqz p2, :cond_0

    .line 194
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p2}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 197
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setShadowColor(I)V

    .line 198
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Lccsanandroid/content/Context;)V

    .line 201
    new-instance v0, Lccsancom/google/android/material/ripple/RippleDrawableCompat;

    iget-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    .line 202
    invoke-virtual {v1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/google/android/material/ripple/RippleDrawableCompat;-><init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 203
    .local v0, "touchFeedbackShape":Lccsancom/google/android/material/ripple/RippleDrawableCompat;
    invoke-static {p3}, Lccsancom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Lccsanandroid/content/res/ColorStateList;)Lccsanandroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/ripple/RippleDrawableCompat;->setTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 204
    iput-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rippleDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 206
    const/4 v1, 0x2

    new-array v1, v1, [Lccsanandroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iget-object v3, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    .line 207
    invoke-static {v3}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/graphics/drawable/Drawable;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 209
    .local v1, "layers":[Lccsanandroid/graphics/drawable/Drawable;
    new-instance v2, Lccsanandroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v1}, Lccsanandroid/graphics/drawable/LayerDrawable;-><init>([Lccsanandroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->contentBackground:Lccsanandroid/graphics/drawable/Drawable;

    .line 210
    return-void
.end method

.method isOrWillBeHidden()Z
    .locals 4

    .line 758
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 760
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->animState:I

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 763
    :cond_1
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->animState:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method isOrWillBeShown()Z
    .locals 4

    .line 748
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 750
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->animState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 753
    :cond_1
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->animState:I

    if-eq v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method jumpDrawableToCurrentState()V
    .locals 1

    .line 381
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->stateListAnimator:Lccsancom/google/android/material/internal/StateListAnimator;

    invoke-virtual {v0}, Lccsancom/google/android/material/internal/StateListAnimator;->jumpToCurrentState()V

    .line 382
    return-void
.end method

.method onAttachedToWindow()V
    .locals 2

    .line 697
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_0

    .line 698
    iget-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v1, v0}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Lccsanandroid/view/View;Lccsancom/google/android/material/shape/MaterialShapeDrawable;)V

    .line 701
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->requirePreDrawListener()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getOrCreatePreDrawListener()Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewTreeObserver;->addOnPreDrawListener(Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 704
    :cond_1
    return-void
.end method

.method onCompatShadowChanged()V
    .locals 0

    .line 661
    return-void
.end method

.method onDetachedFromWindow()V
    .locals 2

    .line 707
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v0

    .line 708
    .local v0, "viewTreeObserver":Lccsanandroid/view/ViewTreeObserver;
    iget-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->preDrawListener:Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v1, :cond_0

    .line 709
    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewTreeObserver;->removeOnPreDrawListener(Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 710
    const/4 v1, 0x0

    iput-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->preDrawListener:Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 712
    :cond_0
    return-void
.end method

.method onDrawableStateChanged([I)V
    .locals 1
    .param p1, "state"    # [I

    .line 377
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->stateListAnimator:Lccsancom/google/android/material/internal/StateListAnimator;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/StateListAnimator;->setState([I)V

    .line 378
    return-void
.end method

.method onElevationsChanged(FFF)V
    .locals 0
    .param p1, "elevation"    # F
    .param p2, "hoveredFocusedTranslationZ"    # F
    .param p3, "pressedTranslationZ"    # F

    .line 366
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->updatePadding()V

    .line 367
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->updateShapeElevation(F)V

    .line 368
    return-void
.end method

.method onPaddingUpdated(Lccsanandroid/graphics/Rect;)V
    .locals 7
    .param p1, "padding"    # Lccsanandroid/graphics/Rect;

    .line 682
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->contentBackground:Lccsanandroid/graphics/drawable/Drawable;

    const-string v1, "Didn\'t initialize content background"

    invoke-static {v0, v1}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shouldAddPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    new-instance v0, Lccsanandroid/graphics/drawable/InsetDrawable;

    iget-object v2, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->contentBackground:Lccsanandroid/graphics/drawable/Drawable;

    iget v3, p1, Lccsanandroid/graphics/Rect;->left:I

    iget v4, p1, Lccsanandroid/graphics/Rect;->top:I

    iget v5, p1, Lccsanandroid/graphics/Rect;->right:I

    iget v6, p1, Lccsanandroid/graphics/Rect;->bottom:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lccsanandroid/graphics/drawable/InsetDrawable;-><init>(Lccsanandroid/graphics/drawable/Drawable;IIII)V

    .line 686
    .local v0, "insetDrawable":Lccsanandroid/graphics/drawable/InsetDrawable;
    iget-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowViewDelegate:Lccsancom/google/android/material/shadow/ShadowViewDelegate;

    invoke-interface {v1, v0}, Lccsancom/google/android/material/shadow/ShadowViewDelegate;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 687
    .end local v0    # "insetDrawable":Lccsanandroid/graphics/drawable/InsetDrawable;
    goto :goto_0

    .line 688
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowViewDelegate:Lccsancom/google/android/material/shadow/ShadowViewDelegate;

    iget-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->contentBackground:Lccsanandroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lccsancom/google/android/material/shadow/ShadowViewDelegate;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 690
    :goto_0
    return-void
.end method

.method onPreDraw()V
    .locals 2

    .line 719
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getRotation()F

    move-result v0

    .line 720
    .local v0, "rotation":F
    iget v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rotation:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 721
    iput v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rotation:F

    .line 722
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->updateFromViewRotation()V

    .line 724
    :cond_0
    return-void
.end method

.method onScaleChanged()V
    .locals 2

    .line 647
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->transformationCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 648
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalTransformationCallback;

    .line 649
    .local v1, "l":Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalTransformationCallback;
    invoke-interface {v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalTransformationCallback;->onScaleChanged()V

    .line 650
    .end local v1    # "l":Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalTransformationCallback;
    goto :goto_0

    .line 652
    :cond_0
    return-void
.end method

.method onTranslationChanged()V
    .locals 2

    .line 639
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->transformationCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 640
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalTransformationCallback;

    .line 641
    .local v1, "l":Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalTransformationCallback;
    invoke-interface {v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalTransformationCallback;->onTranslationChanged()V

    .line 642
    .end local v1    # "l":Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalTransformationCallback;
    goto :goto_0

    .line 644
    :cond_0
    return-void
.end method

.method public removeOnHideAnimationListener(Lccsanandroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Lccsanandroid/animation/Animator$AnimatorListener;

    .line 408
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 411
    return-void

    .line 413
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 414
    return-void
.end method

.method removeOnShowAnimationListener(Lccsanandroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Lccsanandroid/animation/Animator$AnimatorListener;

    .line 392
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 395
    return-void

    .line 397
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 398
    return-void
.end method

.method removeTransformationCallback(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalTransformationCallback;)V
    .locals 1
    .param p1, "listener"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalTransformationCallback;

    .line 630
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->transformationCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 633
    return-void

    .line 635
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 636
    return-void
.end method

.method requirePreDrawListener()Z
    .locals 1

    .line 715
    const/4 v0, 0x1

    return v0
.end method

.method setBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 213
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 216
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->borderDrawable:Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->setBorderTint(Lccsanandroid/content/res/ColorStateList;)V

    .line 219
    :cond_1
    return-void
.end method

.method setBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 222
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 225
    :cond_0
    return-void
.end method

.method final setElevation(F)V
    .locals 2
    .param p1, "elevation"    # F

    .line 239
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->elevation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 240
    iput p1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->elevation:F

    .line 241
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hoveredFocusedTranslationZ:F

    iget v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->pressedTranslationZ:F

    invoke-virtual {p0, p1, v0, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onElevationsChanged(FFF)V

    .line 243
    :cond_0
    return-void
.end method

.method setEnsureMinTouchTargetSize(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 356
    iput-boolean p1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->ensureMinTouchTargetSize:Z

    .line 357
    return-void
.end method

.method final setHideMotionSpec(Lccsancom/google/android/material/animation/MotionSpec;)V
    .locals 0
    .param p1, "spec"    # Lccsancom/google/android/material/animation/MotionSpec;

    .line 344
    iput-object p1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideMotionSpec:Lccsancom/google/android/material/animation/MotionSpec;

    .line 345
    return-void
.end method

.method final setHoveredFocusedTranslationZ(F)V
    .locals 2
    .param p1, "translationZ"    # F

    .line 258
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hoveredFocusedTranslationZ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 259
    iput p1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hoveredFocusedTranslationZ:F

    .line 260
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->elevation:F

    iget v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->pressedTranslationZ:F

    invoke-virtual {p0, v0, p1, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onElevationsChanged(FFF)V

    .line 262
    :cond_0
    return-void
.end method

.method final setImageMatrixScale(F)V
    .locals 2
    .param p1, "scale"    # F

    .line 285
    iput p1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->imageMatrixScale:F

    .line 287
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->tmpMatrix:Lccsanandroid/graphics/Matrix;

    .line 288
    .local v0, "matrix":Lccsanandroid/graphics/Matrix;
    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->calculateImageMatrixFromScale(FLccsanandroid/graphics/Matrix;)V

    .line 289
    iget-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1, v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageMatrix(Lccsanandroid/graphics/Matrix;)V

    .line 290
    return-void
.end method

.method final setMaxImageSize(I)V
    .locals 1
    .param p1, "maxImageSize"    # I

    .line 272
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->maxImageSize:I

    if-eq v0, p1, :cond_0

    .line 273
    iput p1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->maxImageSize:I

    .line 274
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->updateImageMatrixScale()V

    .line 276
    :cond_0
    return-void
.end method

.method setMinTouchTargetSize(I)V
    .locals 0
    .param p1, "minTouchTargetSize"    # I

    .line 228
    iput p1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->minTouchTargetSize:I

    .line 229
    return-void
.end method

.method final setPressedTranslationZ(F)V
    .locals 2
    .param p1, "translationZ"    # F

    .line 265
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->pressedTranslationZ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 266
    iput p1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->pressedTranslationZ:F

    .line 267
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->elevation:F

    iget v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hoveredFocusedTranslationZ:F

    invoke-virtual {p0, v0, v1, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onElevationsChanged(FFF)V

    .line 269
    :cond_0
    return-void
.end method

.method setRippleColor(Lccsanandroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "rippleColor"    # Lccsanandroid/content/res/ColorStateList;

    .line 232
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rippleDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 233
    nop

    .line 234
    invoke-static {p1}, Lccsancom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Lccsanandroid/content/res/ColorStateList;)Lccsanandroid/content/res/ColorStateList;

    move-result-object v1

    .line 233
    invoke-static {v0, v1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintList(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/content/res/ColorStateList;)V

    .line 236
    :cond_0
    return-void
.end method

.method setShadowPaddingEnabled(Z)V
    .locals 0
    .param p1, "shadowPaddingEnabled"    # Z

    .line 360
    iput-boolean p1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowPaddingEnabled:Z

    .line 361
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->updatePadding()V

    .line 362
    return-void
.end method

.method final setShapeAppearance(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 2
    .param p1, "shapeAppearance"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 310
    iput-object p1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeAppearance:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 311
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 315
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rippleDrawable:Lccsanandroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lccsancom/google/android/material/shape/Shapeable;

    if-eqz v1, :cond_1

    .line 316
    check-cast v0, Lccsancom/google/android/material/shape/Shapeable;

    invoke-interface {v0, p1}, Lccsancom/google/android/material/shape/Shapeable;->setShapeAppearanceModel(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 319
    :cond_1
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->borderDrawable:Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;

    if-eqz v0, :cond_2

    .line 320
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->setShapeAppearanceModel(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 322
    :cond_2
    return-void
.end method

.method final setShowMotionSpec(Lccsancom/google/android/material/animation/MotionSpec;)V
    .locals 0
    .param p1, "spec"    # Lccsancom/google/android/material/animation/MotionSpec;

    .line 335
    iput-object p1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showMotionSpec:Lccsancom/google/android/material/animation/MotionSpec;

    .line 336
    return-void
.end method

.method shouldAddPadding()Z
    .locals 1

    .line 693
    const/4 v0, 0x1

    return v0
.end method

.method final shouldExpandBoundsForA11y()Z
    .locals 2

    .line 348
    iget-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->ensureMinTouchTargetSize:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v0

    iget v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->minTouchTargetSize:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method show(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
    .locals 3
    .param p1, "listener"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;
    .param p2, "fromUser"    # Z

    .line 480
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->isOrWillBeShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->currentAnimator:Lccsanandroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 486
    invoke-virtual {v0}, Lccsanandroid/animation/Animator;->cancel()V

    .line 489
    :cond_1
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shouldAnimateVisibilityChange()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    .line 490
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 492
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->setAlpha(F)V

    .line 493
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleY(F)V

    .line 494
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleX(F)V

    .line 495
    invoke-virtual {p0, v2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setImageMatrixScale(F)V

    .line 498
    :cond_2
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showMotionSpec:Lccsancom/google/android/material/animation/MotionSpec;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 500
    :cond_3
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getDefaultShowMotionSpec()Lccsancom/google/android/material/animation/MotionSpec;

    move-result-object v0

    :goto_0
    nop

    .line 499
    invoke-direct {p0, v0, v1, v1, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->createAnimator(Lccsancom/google/android/material/animation/MotionSpec;FFF)Lccsanandroid/animation/AnimatorSet;

    move-result-object v0

    .line 504
    .local v0, "set":Lccsanandroid/animation/AnimatorSet;
    new-instance v1, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;

    invoke-direct {v1, p0, p2, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;-><init>(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;ZLccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    invoke-virtual {v0, v1}, Lccsanandroid/animation/AnimatorSet;->addListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 524
    iget-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 525
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/animation/Animator$AnimatorListener;

    .line 526
    .local v2, "l":Lccsanandroid/animation/Animator$AnimatorListener;
    invoke-virtual {v0, v2}, Lccsanandroid/animation/AnimatorSet;->addListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 527
    .end local v2    # "l":Lccsanandroid/animation/Animator$AnimatorListener;
    goto :goto_1

    .line 529
    :cond_4
    invoke-virtual {v0}, Lccsanandroid/animation/AnimatorSet;->start()V

    .line 530
    .end local v0    # "set":Lccsanandroid/animation/AnimatorSet;
    goto :goto_2

    .line 531
    :cond_5
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->internalSetVisibility(IZ)V

    .line 532
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->setAlpha(F)V

    .line 533
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleY(F)V

    .line 534
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleX(F)V

    .line 535
    invoke-virtual {p0, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setImageMatrixScale(F)V

    .line 536
    if-eqz p1, :cond_6

    .line 537
    invoke-interface {p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onShown()V

    .line 540
    :cond_6
    :goto_2
    return-void
.end method

.method updateFromViewRotation()V
    .locals 3

    .line 850
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    .line 853
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rotation:F

    const/high16 v1, 0x42b40000    # 90.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getLayerType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 855
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v1, v2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->setLayerType(ILccsanandroid/graphics/Paint;)V

    goto :goto_0

    .line 858
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_1

    .line 859
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->setLayerType(ILccsanandroid/graphics/Paint;)V

    .line 865
    :cond_1
    :goto_0
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_2

    .line 866
    iget v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rotation:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setShadowCompatRotation(I)V

    .line 868
    :cond_2
    return-void
.end method

.method final updateImageMatrixScale()V
    .locals 1

    .line 281
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->imageMatrixScale:F

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setImageMatrixScale(F)V

    .line 282
    return-void
.end method

.method final updatePadding()V
    .locals 6

    .line 664
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->tmpRect:Lccsanandroid/graphics/Rect;

    .line 665
    .local v0, "rect":Lccsanandroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getPadding(Lccsanandroid/graphics/Rect;)V

    .line 666
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onPaddingUpdated(Lccsanandroid/graphics/Rect;)V

    .line 667
    iget-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowViewDelegate:Lccsancom/google/android/material/shadow/ShadowViewDelegate;

    iget v2, v0, Lccsanandroid/graphics/Rect;->left:I

    iget v3, v0, Lccsanandroid/graphics/Rect;->top:I

    iget v4, v0, Lccsanandroid/graphics/Rect;->right:I

    iget v5, v0, Lccsanandroid/graphics/Rect;->bottom:I

    invoke-interface {v1, v2, v3, v4, v5}, Lccsancom/google/android/material/shadow/ShadowViewDelegate;->setShadowPadding(IIII)V

    .line 668
    return-void
.end method

.method updateShapeElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .line 371
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 374
    :cond_0
    return-void
.end method
