.class abstract Lccsancom/google/android/material/slider/BaseSlider;
.super Lccsanandroid/view/View;
.source "BaseSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/slider/BaseSlider$AccessibilityHelper;,
        Lccsancom/google/android/material/slider/BaseSlider$SliderState;,
        Lccsancom/google/android/material/slider/BaseSlider$AccessibilityEventSender;,
        Lccsancom/google/android/material/slider/BaseSlider$TooltipDrawableFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lccsancom/google/android/material/slider/BaseSlider<",
        "TS;T",
        "L;",
        "TT;>;",
        "L::Lccsancom/google/android/material/slider/BaseOnChangeListener<",
        "TS;>;T::",
        "Lccsancom/google/android/material/slider/BaseOnSliderTouchListener<",
        "TS;>;>",
        "Lccsanandroid/view/View;"
    }
.end annotation


# static fields
.field static final DEF_STYLE_RES:I

.field private static final EXCEPTION_ILLEGAL_DISCRETE_VALUE:Ljava/lang/String; = "Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)"

.field private static final EXCEPTION_ILLEGAL_STEP_SIZE:Ljava/lang/String; = "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range"

.field private static final EXCEPTION_ILLEGAL_VALUE:Ljava/lang/String; = "Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)"

.field private static final EXCEPTION_ILLEGAL_VALUE_FROM:Ljava/lang/String; = "valueFrom(%s) must be smaller than valueTo(%s)"

.field private static final EXCEPTION_ILLEGAL_VALUE_TO:Ljava/lang/String; = "valueTo(%s) must be greater than valueFrom(%s)"

.field private static final HALO_ALPHA:I = 0x3f

.field private static final LABEL_ANIMATION_ENTER_DURATION:J = 0x53L

.field private static final LABEL_ANIMATION_EXIT_DURATION:J = 0x75L

.field private static final TAG:Ljava/lang/String;

.field private static final THRESHOLD:D = 1.0E-4

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8

.field static final UNIT_PX:I = 0x0

.field static final UNIT_VALUE:I = 0x1

.field private static final WARNING_FLOATING_POINT_ERRROR:Ljava/lang/String; = "Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly."


# instance fields
.field private accessibilityEventSender:Lccsancom/google/android/material/slider/BaseSlider$AccessibilityEventSender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/android/material/slider/BaseSlider<",
            "TS;T",
            "L;",
            "TT;>.AccessibilityEventSender;"
        }
    .end annotation
.end field

.field private final accessibilityHelper:Lccsancom/google/android/material/slider/BaseSlider$AccessibilityHelper;

.field private final accessibilityManager:Lccsanandroid/view/accessibility/AccessibilityManager;

.field private activeThumbIdx:I

.field private final activeTicksPaint:Lccsanandroid/graphics/Paint;

.field private final activeTrackPaint:Lccsanandroid/graphics/Paint;

.field private final changeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field private defaultThumbRadius:I

.field private dirtyConfig:Z

.field private focusedThumbIdx:I

.field private forceDrawCompatHalo:Z

.field private formatter:Lccsancom/google/android/material/slider/LabelFormatter;

.field private haloColor:Lccsanandroid/content/res/ColorStateList;

.field private final haloPaint:Lccsanandroid/graphics/Paint;

.field private haloRadius:I

.field private final inactiveTicksPaint:Lccsanandroid/graphics/Paint;

.field private final inactiveTrackPaint:Lccsanandroid/graphics/Paint;

.field private isLongPress:Z

.field private labelBehavior:I

.field private final labelMaker:Lccsancom/google/android/material/slider/BaseSlider$TooltipDrawableFactory;

.field private labelPadding:I

.field private final labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/google/android/material/tooltip/TooltipDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private labelsAreAnimatedIn:Z

.field private labelsInAnimator:Lccsanandroid/animation/ValueAnimator;

.field private labelsOutAnimator:Lccsanandroid/animation/ValueAnimator;

.field private lastEvent:Lccsanandroid/view/MotionEvent;

.field private minTrackSidePadding:I

.field private final scaledTouchSlop:I

.field private separationUnit:I

.field private stepSize:F

.field private final thumbDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

.field private thumbIsPressed:Z

.field private final thumbPaint:Lccsanandroid/graphics/Paint;

.field private thumbRadius:I

.field private tickColorActive:Lccsanandroid/content/res/ColorStateList;

.field private tickColorInactive:Lccsanandroid/content/res/ColorStateList;

.field private tickVisible:Z

.field private ticksCoordinates:[F

.field private touchDownX:F

.field private final touchListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private touchPosition:F

.field private trackColorActive:Lccsanandroid/content/res/ColorStateList;

.field private trackColorInactive:Lccsanandroid/content/res/ColorStateList;

.field private trackHeight:I

.field private trackSidePadding:I

.field private trackTop:I

.field private trackWidth:I

.field private valueFrom:F

.field private valueTo:F

.field private values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private widgetHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 196
    const-class v0, Lccsancom/google/android/material/slider/BaseSlider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/google/android/material/slider/BaseSlider;->TAG:Ljava/lang/String;

    .line 218
    sget v0, Lccsancom/google/android/material/R$style;->Widget_MaterialComponents_Slider:I

    sput v0, Lccsancom/google/android/material/slider/BaseSlider;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 316
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/slider/BaseSlider;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 317
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 320
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    sget v0, Lccsancom/google/android/material/R$attr;->sliderStyle:I

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/android/material/slider/BaseSlider;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 321
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 325
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    sget v0, Lccsancom/google/android/material/slider/BaseSlider;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v0}, Lccsancom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->labelsAreAnimatedIn:Z

    .line 265
    iput-boolean v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    .line 270
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 272
    const/4 v1, -0x1

    iput v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 274
    iput v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 275
    const/4 v1, 0x0

    iput v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 277
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->tickVisible:Z

    .line 280
    iput-boolean v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->isLongPress:Z

    .line 289
    new-instance v2, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v2}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    iput-object v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    .line 292
    iput v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->separationUnit:I

    .line 327
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    .line 329
    new-instance v0, Lccsanandroid/graphics/Paint;

    invoke-direct {v0}, Lccsanandroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Lccsanandroid/graphics/Paint;

    .line 330
    sget-object v3, Lccsanandroid/graphics/Paint$Style;->STROKE:Lccsanandroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Lccsanandroid/graphics/Paint;->setStyle(Lccsanandroid/graphics/Paint$Style;)V

    .line 331
    sget-object v3, Lccsanandroid/graphics/Paint$Cap;->ROUND:Lccsanandroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Lccsanandroid/graphics/Paint;->setStrokeCap(Lccsanandroid/graphics/Paint$Cap;)V

    .line 333
    new-instance v0, Lccsanandroid/graphics/Paint;

    invoke-direct {v0}, Lccsanandroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->activeTrackPaint:Lccsanandroid/graphics/Paint;

    .line 334
    sget-object v3, Lccsanandroid/graphics/Paint$Style;->STROKE:Lccsanandroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Lccsanandroid/graphics/Paint;->setStyle(Lccsanandroid/graphics/Paint$Style;)V

    .line 335
    sget-object v3, Lccsanandroid/graphics/Paint$Cap;->ROUND:Lccsanandroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Lccsanandroid/graphics/Paint;->setStrokeCap(Lccsanandroid/graphics/Paint$Cap;)V

    .line 337
    new-instance v0, Lccsanandroid/graphics/Paint;

    invoke-direct {v0, v1}, Lccsanandroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbPaint:Lccsanandroid/graphics/Paint;

    .line 338
    sget-object v3, Lccsanandroid/graphics/Paint$Style;->FILL:Lccsanandroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Lccsanandroid/graphics/Paint;->setStyle(Lccsanandroid/graphics/Paint$Style;)V

    .line 339
    new-instance v3, Lccsanandroid/graphics/PorterDuffXfermode;

    sget-object v4, Lccsanandroid/graphics/PorterDuff$Mode;->CLEAR:Lccsanandroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Lccsanandroid/graphics/PorterDuffXfermode;-><init>(Lccsanandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Lccsanandroid/graphics/Paint;->setXfermode(Lccsanandroid/graphics/Xfermode;)Lccsanandroid/graphics/Xfermode;

    .line 341
    new-instance v0, Lccsanandroid/graphics/Paint;

    invoke-direct {v0, v1}, Lccsanandroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->haloPaint:Lccsanandroid/graphics/Paint;

    .line 342
    sget-object v3, Lccsanandroid/graphics/Paint$Style;->FILL:Lccsanandroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Lccsanandroid/graphics/Paint;->setStyle(Lccsanandroid/graphics/Paint$Style;)V

    .line 344
    new-instance v0, Lccsanandroid/graphics/Paint;

    invoke-direct {v0}, Lccsanandroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Lccsanandroid/graphics/Paint;

    .line 345
    sget-object v3, Lccsanandroid/graphics/Paint$Style;->STROKE:Lccsanandroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Lccsanandroid/graphics/Paint;->setStyle(Lccsanandroid/graphics/Paint$Style;)V

    .line 346
    sget-object v3, Lccsanandroid/graphics/Paint$Cap;->ROUND:Lccsanandroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Lccsanandroid/graphics/Paint;->setStrokeCap(Lccsanandroid/graphics/Paint$Cap;)V

    .line 348
    new-instance v0, Lccsanandroid/graphics/Paint;

    invoke-direct {v0}, Lccsanandroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->activeTicksPaint:Lccsanandroid/graphics/Paint;

    .line 349
    sget-object v3, Lccsanandroid/graphics/Paint$Style;->STROKE:Lccsanandroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Lccsanandroid/graphics/Paint;->setStyle(Lccsanandroid/graphics/Paint$Style;)V

    .line 350
    sget-object v3, Lccsanandroid/graphics/Paint$Cap;->ROUND:Lccsanandroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Lccsanandroid/graphics/Paint;->setStrokeCap(Lccsanandroid/graphics/Paint$Cap;)V

    .line 352
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/google/android/material/slider/BaseSlider;->loadResources(Lccsanandroid/content/res/Resources;)V

    .line 356
    new-instance v0, Lccsancom/google/android/material/slider/BaseSlider$1;

    invoke-direct {v0, p0, p2, p3}, Lccsancom/google/android/material/slider/BaseSlider$1;-><init>(Lccsancom/google/android/material/slider/BaseSlider;Lccsanandroid/util/AttributeSet;I)V

    iput-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->labelMaker:Lccsancom/google/android/material/slider/BaseSlider$TooltipDrawableFactory;

    .line 369
    invoke-direct {p0, p1, p2, p3}, Lccsancom/google/android/material/slider/BaseSlider;->processAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 371
    invoke-virtual {p0, v1}, Lccsancom/google/android/material/slider/BaseSlider;->setFocusable(Z)V

    .line 372
    invoke-virtual {p0, v1}, Lccsancom/google/android/material/slider/BaseSlider;->setClickable(Z)V

    .line 375
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setShadowCompatibilityMode(I)V

    .line 377
    invoke-static {p1}, Lccsanandroid/view/ViewConfiguration;->get(Lccsanandroid/content/Context;)Lccsanandroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->scaledTouchSlop:I

    .line 379
    new-instance v0, Lccsancom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/slider/BaseSlider$AccessibilityHelper;-><init>(Lccsancom/google/android/material/slider/BaseSlider;)V

    iput-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lccsancom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    .line 380
    invoke-static {p0, v0}, Lccsanandroidx/core/view/ViewCompat;->setAccessibilityDelegate(Lccsanandroid/view/View;Lccsanandroidx/core/view/AccessibilityDelegateCompat;)V

    .line 382
    nop

    .line 383
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->accessibilityManager:Lccsanandroid/view/accessibility/AccessibilityManager;

    .line 384
    return-void
.end method

.method static synthetic access$000(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;)Lccsancom/google/android/material/tooltip/TooltipDrawable;
    .locals 1
    .param p0, "x0"    # Lccsanandroid/content/Context;
    .param p1, "x1"    # Lccsanandroid/content/res/TypedArray;

    .line 190
    invoke-static {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->parseLabelDrawable(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;)Lccsancom/google/android/material/tooltip/TooltipDrawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lccsancom/google/android/material/slider/BaseSlider;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/slider/BaseSlider;

    .line 190
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lccsancom/google/android/material/slider/BaseSlider;)Lccsancom/google/android/material/slider/BaseSlider$AccessibilityHelper;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/slider/BaseSlider;

    .line 190
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lccsancom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    return-object v0
.end method

.method static synthetic access$500(Lccsancom/google/android/material/slider/BaseSlider;F)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/slider/BaseSlider;
    .param p1, "x1"    # F

    .line 190
    invoke-direct {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->formatValue(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lccsancom/google/android/material/slider/BaseSlider;IF)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/slider/BaseSlider;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .line 190
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/material/slider/BaseSlider;->snapThumbToValue(IF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lccsancom/google/android/material/slider/BaseSlider;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/slider/BaseSlider;

    .line 190
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    return-void
.end method

.method static synthetic access$800(Lccsancom/google/android/material/slider/BaseSlider;I)F
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/slider/BaseSlider;
    .param p1, "x1"    # I

    .line 190
    invoke-direct {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->calculateStepIncrement(I)F

    move-result v0

    return v0
.end method

.method private attachLabelToContentView(Lccsancom/google/android/material/tooltip/TooltipDrawable;)V
    .locals 1
    .param p1, "label"    # Lccsancom/google/android/material/tooltip/TooltipDrawable;

    .line 1429
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-static {p0}, Lccsancom/google/android/material/internal/ViewUtils;->getContentView(Lccsanandroid/view/View;)Lccsanandroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsancom/google/android/material/tooltip/TooltipDrawable;->setRelativeToView(Lccsanandroid/view/View;)V

    .line 1430
    return-void
.end method

.method private calculateIncrementForKey(I)Ljava/lang/Float;
    .locals 2
    .param p1, "keyCode"    # I

    .line 2264
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-boolean v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->isLongPress:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lccsancom/google/android/material/slider/BaseSlider;->calculateStepIncrement(I)F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->calculateStepIncrement()F

    move-result v0

    .line 2265
    .local v0, "increment":F
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 2277
    const/4 v1, 0x0

    return-object v1

    .line 2275
    :sswitch_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 2271
    :sswitch_1
    neg-float v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 2269
    :sswitch_2
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    neg-float v1, v0

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 2267
    :sswitch_3
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    neg-float v1, v0

    :goto_2
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_3
        0x16 -> :sswitch_2
        0x45 -> :sswitch_1
        0x46 -> :sswitch_0
        0x51 -> :sswitch_0
    .end sparse-switch
.end method

.method private calculateStepIncrement()F
    .locals 2

    .line 2283
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->stepSize:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    return v0
.end method

.method private calculateStepIncrement(I)F
    .locals 3
    .param p1, "stepFactor"    # I

    .line 2291
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->calculateStepIncrement()F

    move-result v0

    .line 2292
    .local v0, "increment":F
    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueTo:F

    iget v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueFrom:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    .line 2293
    .local v1, "numSteps":F
    int-to-float v2, p1

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    .line 2294
    return v0

    .line 2297
    :cond_0
    int-to-float v2, p1

    div-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    return v2
.end method

.method private calculateTop()I
    .locals 4

    .line 1513
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackTop:I

    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->labelBehavior:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 1514
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/tooltip/TooltipDrawable;

    invoke-virtual {v1}, Lccsancom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicHeight()I

    move-result v2

    goto :goto_0

    :cond_0
    nop

    :goto_0
    add-int/2addr v0, v2

    .line 1513
    return v0
.end method

.method private createLabelAnimator(Z)Lccsanandroid/animation/ValueAnimator;
    .locals 5
    .param p1, "enter"    # Z

    .line 1923
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1925
    .local v2, "startFraction":F
    :goto_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->labelsOutAnimator:Lccsanandroid/animation/ValueAnimator;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->labelsInAnimator:Lccsanandroid/animation/ValueAnimator;

    .line 1926
    :goto_1
    invoke-static {v3, v2}, Lccsancom/google/android/material/slider/BaseSlider;->getAnimatorCurrentValueOrDefault(Lccsanandroid/animation/ValueAnimator;F)F

    move-result v2

    .line 1928
    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1929
    .local v0, "endFraction":F
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v3, 0x1

    aput v0, v1, v3

    invoke-static {v1}, Lccsanandroid/animation/ValueAnimator;->ofFloat([F)Lccsanandroid/animation/ValueAnimator;

    move-result-object v1

    .line 1930
    .local v1, "animator":Lccsanandroid/animation/ValueAnimator;
    if-eqz p1, :cond_3

    const-wide/16 v3, 0x53

    goto :goto_2

    :cond_3
    const-wide/16 v3, 0x75

    :goto_2
    invoke-virtual {v1, v3, v4}, Lccsanandroid/animation/ValueAnimator;->setDuration(J)Lccsanandroid/animation/ValueAnimator;

    .line 1931
    if-eqz p1, :cond_4

    sget-object v3, Lccsancom/google/android/material/animation/AnimationUtils;->DECELERATE_INTERPOLATOR:Lccsanandroid/animation/TimeInterpolator;

    goto :goto_3

    :cond_4
    sget-object v3, Lccsancom/google/android/material/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Lccsanandroid/animation/TimeInterpolator;

    :goto_3
    invoke-virtual {v1, v3}, Lccsanandroid/animation/ValueAnimator;->setInterpolator(Lccsanandroid/animation/TimeInterpolator;)V

    .line 1935
    new-instance v3, Lccsancom/google/android/material/slider/BaseSlider$2;

    invoke-direct {v3, p0}, Lccsancom/google/android/material/slider/BaseSlider$2;-><init>(Lccsancom/google/android/material/slider/BaseSlider;)V

    invoke-virtual {v1, v3}, Lccsanandroid/animation/ValueAnimator;->addUpdateListener(Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1947
    return-object v1
.end method

.method private createLabelPool()V
    .locals 4

    .line 719
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 720
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    iget-object v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 721
    .local v0, "tooltipDrawables":Ljava/util/List;, "Ljava/util/List<Lccsancom/google/android/material/tooltip/TooltipDrawable;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/android/material/tooltip/TooltipDrawable;

    .line 722
    .local v2, "label":Lccsancom/google/android/material/tooltip/TooltipDrawable;
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->isAttachedToWindow(Lccsanandroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 723
    invoke-direct {p0, v2}, Lccsancom/google/android/material/slider/BaseSlider;->detachLabelFromContentView(Lccsancom/google/android/material/tooltip/TooltipDrawable;)V

    .line 725
    .end local v2    # "label":Lccsancom/google/android/material/tooltip/TooltipDrawable;
    :cond_0
    goto :goto_0

    .line 726
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 730
    .end local v0    # "tooltipDrawables":Ljava/util/List;, "Ljava/util/List<Lccsancom/google/android/material/tooltip/TooltipDrawable;>;"
    :cond_2
    :goto_1
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 731
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->labelMaker:Lccsancom/google/android/material/slider/BaseSlider$TooltipDrawableFactory;

    invoke-interface {v0}, Lccsancom/google/android/material/slider/BaseSlider$TooltipDrawableFactory;->createTooltipDrawable()Lccsancom/google/android/material/tooltip/TooltipDrawable;

    move-result-object v0

    .line 732
    .local v0, "tooltipDrawable":Lccsancom/google/android/material/tooltip/TooltipDrawable;
    iget-object v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->isAttachedToWindow(Lccsanandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 734
    invoke-direct {p0, v0}, Lccsancom/google/android/material/slider/BaseSlider;->attachLabelToContentView(Lccsancom/google/android/material/tooltip/TooltipDrawable;)V

    .line 736
    .end local v0    # "tooltipDrawable":Lccsancom/google/android/material/tooltip/TooltipDrawable;
    :cond_3
    goto :goto_1

    .line 739
    :cond_4
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    const/4 v1, 0x0

    :cond_5
    move v0, v1

    .line 740
    .local v0, "strokeWidth":I
    iget-object v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/android/material/tooltip/TooltipDrawable;

    .line 741
    .restart local v2    # "label":Lccsancom/google/android/material/tooltip/TooltipDrawable;
    int-to-float v3, v0

    invoke-virtual {v2, v3}, Lccsancom/google/android/material/tooltip/TooltipDrawable;->setStrokeWidth(F)V

    .line 742
    .end local v2    # "label":Lccsancom/google/android/material/tooltip/TooltipDrawable;
    goto :goto_2

    .line 743
    :cond_6
    return-void
.end method

.method private detachLabelFromContentView(Lccsancom/google/android/material/tooltip/TooltipDrawable;)V
    .locals 2
    .param p1, "label"    # Lccsancom/google/android/material/tooltip/TooltipDrawable;

    .line 1447
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-static {p0}, Lccsancom/google/android/material/internal/ViewUtils;->getContentViewOverlay(Lccsanandroid/view/View;)Lccsancom/google/android/material/internal/ViewOverlayImpl;

    move-result-object v0

    .line 1448
    .local v0, "contentViewOverlay":Lccsancom/google/android/material/internal/ViewOverlayImpl;
    if-eqz v0, :cond_0

    .line 1449
    invoke-interface {v0, p1}, Lccsancom/google/android/material/internal/ViewOverlayImpl;->remove(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 1450
    invoke-static {p0}, Lccsancom/google/android/material/internal/ViewUtils;->getContentView(Lccsanandroid/view/View;)Lccsanandroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p1, v1}, Lccsancom/google/android/material/tooltip/TooltipDrawable;->detachView(Lccsanandroid/view/View;)V

    .line 1452
    :cond_0
    return-void
.end method

.method private dimenToValue(F)F
    .locals 3
    .param p1, "dimen"    # F

    .line 1869
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    .line 1870
    return v0

    .line 1872
    :cond_0
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueFrom:F

    iget v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueTo:F

    sub-float v2, v1, v2

    mul-float v0, v0, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private dispatchOnChangedFromUser(I)V
    .locals 4
    .param p1, "idx"    # I

    .line 2073
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/slider/BaseOnChangeListener;

    .line 2074
    .local v1, "listener":Lccsancom/google/android/material/slider/BaseOnChangeListener;, "TL;"
    iget-object v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v1, p0, v2, v3}, Lccsancom/google/android/material/slider/BaseOnChangeListener;->onValueChange(Ljava/lang/Object;FZ)V

    .line 2075
    .end local v1    # "listener":Lccsancom/google/android/material/slider/BaseOnChangeListener;, "TL;"
    goto :goto_0

    .line 2076
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->accessibilityManager:Lccsanandroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsanandroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2077
    invoke-direct {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->scheduleAccessibilityEventSender(I)V

    .line 2079
    :cond_1
    return-void
.end method

.method private dispatchOnChangedProgramatically()V
    .locals 6

    .line 2064
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/slider/BaseOnChangeListener;

    .line 2065
    .local v1, "listener":Lccsancom/google/android/material/slider/BaseOnChangeListener;, "TL;"
    iget-object v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    .line 2066
    .local v3, "value":Ljava/lang/Float;
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v1, p0, v4, v5}, Lccsancom/google/android/material/slider/BaseOnChangeListener;->onValueChange(Ljava/lang/Object;FZ)V

    .line 2067
    .end local v3    # "value":Ljava/lang/Float;
    goto :goto_1

    .line 2068
    .end local v1    # "listener":Lccsancom/google/android/material/slider/BaseOnChangeListener;, "TL;"
    :cond_0
    goto :goto_0

    .line 2069
    :cond_1
    return-void
.end method

.method private drawActiveTrack(Lccsanandroid/graphics/Canvas;II)V
    .locals 10
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "top"    # I

    .line 1590
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getActiveRange()[F

    move-result-object v0

    .line 1591
    .local v0, "activeRange":[F
    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v2, v1

    const/4 v3, 0x1

    aget v3, v0, v3

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    .line 1592
    .local v2, "right":F
    int-to-float v1, v1

    const/4 v3, 0x0

    aget v3, v0, v3

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v1, v3

    .line 1593
    .local v1, "left":F
    int-to-float v6, p3

    int-to-float v8, p3

    iget-object v9, p0, Lccsancom/google/android/material/slider/BaseSlider;->activeTrackPaint:Lccsanandroid/graphics/Paint;

    move-object v4, p1

    move v5, v1

    move v7, v2

    invoke-virtual/range {v4 .. v9}, Lccsanandroid/graphics/Canvas;->drawLine(FFFFLccsanandroid/graphics/Paint;)V

    .line 1594
    return-void
.end method

.method private drawInactiveTrack(Lccsanandroid/graphics/Canvas;II)V
    .locals 11
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "top"    # I

    .line 1564
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getActiveRange()[F

    move-result-object v0

    .line 1565
    .local v0, "activeRange":[F
    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v2, v1

    const/4 v3, 0x1

    aget v3, v0, v3

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    .line 1566
    .local v2, "right":F
    add-int v3, v1, p2

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    .line 1567
    int-to-float v6, p3

    add-int/2addr v1, p2

    int-to-float v7, v1

    int-to-float v8, p3

    iget-object v9, p0, Lccsancom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Lccsanandroid/graphics/Paint;

    move-object v4, p1

    move v5, v2

    invoke-virtual/range {v4 .. v9}, Lccsanandroid/graphics/Canvas;->drawLine(FFFFLccsanandroid/graphics/Paint;)V

    .line 1571
    :cond_0
    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v3, v1

    const/4 v4, 0x0

    aget v4, v0, v4

    int-to-float v5, p2

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    .line 1572
    .local v3, "left":F
    int-to-float v4, v1

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1

    .line 1573
    int-to-float v6, v1

    int-to-float v7, p3

    int-to-float v9, p3

    iget-object v10, p0, Lccsancom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Lccsanandroid/graphics/Paint;

    move-object v5, p1

    move v8, v3

    invoke-virtual/range {v5 .. v10}, Lccsanandroid/graphics/Canvas;->drawLine(FFFFLccsanandroid/graphics/Paint;)V

    .line 1575
    :cond_1
    return-void
.end method

.method private drawThumbs(Lccsanandroid/graphics/Canvas;II)V
    .locals 6
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "top"    # I

    .line 1626
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1627
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 1628
    .local v1, "value":Ljava/lang/Float;
    iget v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v2, v2

    .line 1629
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {p0, v3}, Lccsancom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    move-result v3

    int-to-float v4, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    int-to-float v3, p3

    iget v4, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbRadius:I

    int-to-float v4, v4

    iget-object v5, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbPaint:Lccsanandroid/graphics/Paint;

    .line 1628
    invoke-virtual {p1, v2, v3, v4, v5}, Lccsanandroid/graphics/Canvas;->drawCircle(FFFLccsanandroid/graphics/Paint;)V

    .line 1630
    .end local v1    # "value":Ljava/lang/Float;
    goto :goto_0

    .line 1633
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 1634
    .restart local v1    # "value":Ljava/lang/Float;
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->save()I

    .line 1635
    iget v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 1636
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {p0, v3}, Lccsancom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    move-result v3

    int-to-float v4, p2

    mul-float v3, v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbRadius:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-int v3, p3, v3

    int-to-float v3, v3

    .line 1635
    invoke-virtual {p1, v2, v3}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 1638
    iget-object v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v2, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 1639
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->restore()V

    .line 1640
    .end local v1    # "value":Ljava/lang/Float;
    goto :goto_1

    .line 1641
    :cond_1
    return-void
.end method

.method private ensureLabelsAdded()V
    .locals 6

    .line 1972
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->labelBehavior:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1974
    return-void

    .line 1980
    :cond_0
    iget-boolean v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->labelsAreAnimatedIn:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1981
    iput-boolean v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->labelsAreAnimatedIn:Z

    .line 1982
    invoke-direct {p0, v2}, Lccsancom/google/android/material/slider/BaseSlider;->createLabelAnimator(Z)Lccsanandroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->labelsInAnimator:Lccsanandroid/animation/ValueAnimator;

    .line 1983
    const/4 v3, 0x0

    iput-object v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->labelsOutAnimator:Lccsanandroid/animation/ValueAnimator;

    .line 1984
    invoke-virtual {v0}, Lccsanandroid/animation/ValueAnimator;->start()V

    .line 1987
    :cond_1
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1989
    .local v0, "labelItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lccsancom/google/android/material/tooltip/TooltipDrawable;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1990
    iget v4, p0, Lccsancom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    if-ne v3, v4, :cond_2

    .line 1992
    goto :goto_1

    .line 1995
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/google/android/material/tooltip/TooltipDrawable;

    iget-object v5, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {p0, v4, v5}, Lccsancom/google/android/material/slider/BaseSlider;->setValueForLabel(Lccsancom/google/android/material/tooltip/TooltipDrawable;F)V

    .line 1989
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1998
    .end local v3    # "i":I
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2005
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/tooltip/TooltipDrawable;

    iget-object v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    iget v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lccsancom/google/android/material/slider/BaseSlider;->setValueForLabel(Lccsancom/google/android/material/tooltip/TooltipDrawable;F)V

    .line 2006
    return-void

    .line 1999
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lccsancom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 2001
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    iget-object v4, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 2000
    const-string v2, "Not enough labels(%d) to display all the values(%d)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v3

    :goto_3
    goto :goto_2
.end method

.method private ensureLabelsRemoved()V
    .locals 2

    .line 1953
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-boolean v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->labelsAreAnimatedIn:Z

    if-eqz v0, :cond_0

    .line 1954
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->labelsAreAnimatedIn:Z

    .line 1955
    invoke-direct {p0, v0}, Lccsancom/google/android/material/slider/BaseSlider;->createLabelAnimator(Z)Lccsanandroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->labelsOutAnimator:Lccsanandroid/animation/ValueAnimator;

    .line 1956
    const/4 v1, 0x0

    iput-object v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->labelsInAnimator:Lccsanandroid/animation/ValueAnimator;

    .line 1957
    new-instance v1, Lccsancom/google/android/material/slider/BaseSlider$3;

    invoke-direct {v1, p0}, Lccsancom/google/android/material/slider/BaseSlider$3;-><init>(Lccsancom/google/android/material/slider/BaseSlider;)V

    invoke-virtual {v0, v1}, Lccsanandroid/animation/ValueAnimator;->addListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 1967
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->labelsOutAnimator:Lccsanandroid/animation/ValueAnimator;

    invoke-virtual {v0}, Lccsanandroid/animation/ValueAnimator;->start()V

    .line 1969
    :cond_0
    return-void
.end method

.method private focusThumbOnFocusGained(I)V
    .locals 2
    .param p1, "direction"    # I

    .line 2315
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/high16 v0, -0x80000000

    const v1, 0x7fffffff

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2326
    :sswitch_0
    invoke-direct {p0, v0}, Lccsancom/google/android/material/slider/BaseSlider;->moveFocusInAbsoluteDirection(I)Z

    .line 2327
    goto :goto_0

    .line 2320
    :sswitch_1
    invoke-direct {p0, v1}, Lccsancom/google/android/material/slider/BaseSlider;->moveFocusInAbsoluteDirection(I)Z

    .line 2321
    goto :goto_0

    .line 2323
    :sswitch_2
    invoke-direct {p0, v0}, Lccsancom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    .line 2324
    goto :goto_0

    .line 2317
    :sswitch_3
    invoke-direct {p0, v1}, Lccsancom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    .line 2318
    nop

    .line 2333
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x11 -> :sswitch_1
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method private formatValue(F)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # F

    .line 2009
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->hasLabelFormatter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2010
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->formatter:Lccsancom/google/android/material/slider/LabelFormatter;

    invoke-interface {v0, p1}, Lccsancom/google/android/material/slider/LabelFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2013
    :cond_0
    float-to-int v0, p1

    int-to-float v0, v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    const-string v0, "%.0f"

    goto :goto_0

    :cond_1
    const-string v0, "%.2f"

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getActiveRange()[F
    .locals 8

    .line 1554
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1555
    .local v0, "max":F
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1556
    .local v1, "min":F
    iget-object v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueFrom:F

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-direct {p0, v2}, Lccsancom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    move-result v2

    .line 1557
    .local v2, "left":F
    invoke-direct {p0, v0}, Lccsancom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    move-result v4

    .line 1560
    .local v4, "right":F
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->isRtl()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v5, :cond_1

    new-array v5, v7, [F

    aput v4, v5, v6

    aput v2, v5, v3

    goto :goto_1

    :cond_1
    new-array v5, v7, [F

    aput v2, v5, v6

    aput v4, v5, v3

    :goto_1
    return-object v5
.end method

.method private static getAnimatorCurrentValueOrDefault(Lccsanandroid/animation/ValueAnimator;F)F
    .locals 1
    .param p0, "animator"    # Lccsanandroid/animation/ValueAnimator;
    .param p1, "defaultValue"    # F

    .line 1905
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lccsanandroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1906
    invoke-virtual {p0}, Lccsanandroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1907
    .local v0, "value":F
    invoke-virtual {p0}, Lccsanandroid/animation/ValueAnimator;->cancel()V

    .line 1908
    return v0

    .line 1911
    .end local v0    # "value":F
    :cond_0
    return p1
.end method

.method private getClampedValue(IF)F
    .locals 4
    .param p1, "idx"    # I
    .param p2, "value"    # F

    .line 1857
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->stepSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getMinSeparation()F

    move-result v1

    :cond_0
    move v0, v1

    .line 1858
    .local v0, "minSeparation":F
    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->separationUnit:I

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lccsancom/google/android/material/slider/BaseSlider;->dimenToValue(F)F

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    move v0, v1

    .line 1859
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1860
    neg-float v0, v0

    .line 1863
    :cond_2
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_3

    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueTo:F

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v1, v0

    .line 1864
    .local v1, "upperBound":F
    :goto_1
    add-int/lit8 v2, p1, -0x1

    if-gez v2, :cond_4

    iget v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueFrom:F

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v2, v0

    .line 1865
    .local v2, "lowerBound":F
    :goto_2
    invoke-static {p2, v2, v1}, Lccsanandroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v3

    return v3
.end method

.method private getColorForState(Lccsanandroid/content/res/ColorStateList;)I
    .locals 2
    .param p1, "colorStateList"    # Lccsanandroid/content/res/ColorStateList;

    .line 2117
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1}, Lccsanandroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lccsanandroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0
.end method

.method private getValueOfTouchPosition()F
    .locals 6

    .line 1884
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->touchPosition:F

    invoke-direct {p0, v0}, Lccsancom/google/android/material/slider/BaseSlider;->snapPosition(F)D

    move-result-wide v0

    .line 1887
    .local v0, "position":D
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1888
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    .line 1890
    :cond_0
    iget v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueTo:F

    iget v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueFrom:F

    sub-float/2addr v2, v3

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v0

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v2

    double-to-float v2, v4

    return v2
.end method

.method private getValueOfTouchPositionAbsolute()F
    .locals 3

    .line 1819
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->touchPosition:F

    .line 1820
    .local v0, "position":F
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1821
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 1823
    :cond_0
    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueTo:F

    iget v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueFrom:F

    sub-float/2addr v1, v2

    mul-float v1, v1, v0

    add-float/2addr v1, v2

    return v1
.end method

.method private invalidateTrack()V
    .locals 3

    .line 2036
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Lccsanandroid/graphics/Paint;

    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2037
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->activeTrackPaint:Lccsanandroid/graphics/Paint;

    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2038
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Lccsanandroid/graphics/Paint;

    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2039
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->activeTicksPaint:Lccsanandroid/graphics/Paint;

    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2040
    return-void
.end method

.method private isInVerticalScrollingContainer()Z
    .locals 5

    .line 2050
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    .line 2051
    .local v0, "p":Lccsanandroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Lccsanandroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2052
    move-object v1, v0

    check-cast v1, Lccsanandroid/view/ViewGroup;

    .line 2053
    .local v1, "parent":Lccsanandroid/view/ViewGroup;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lccsanandroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Lccsanandroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 2054
    .local v2, "canScrollVertically":Z
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lccsanandroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2055
    return v3

    .line 2057
    :cond_2
    invoke-interface {v0}, Lccsanandroid/view/ViewParent;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    .line 2058
    .end local v1    # "parent":Lccsanandroid/view/ViewGroup;
    .end local v2    # "canScrollVertically":Z
    goto :goto_0

    .line 2059
    :cond_3
    return v2
.end method

.method private loadResources(Lccsanandroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Lccsanandroid/content/res/Resources;

    .line 387
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    sget v0, Lccsancom/google/android/material/R$dimen;->mtrl_slider_widget_height:I

    invoke-virtual {p1, v0}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->widgetHeight:I

    .line 389
    sget v0, Lccsancom/google/android/material/R$dimen;->mtrl_slider_track_side_padding:I

    invoke-virtual {p1, v0}, Lccsanandroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->minTrackSidePadding:I

    .line 390
    iput v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 392
    sget v0, Lccsancom/google/android/material/R$dimen;->mtrl_slider_thumb_radius:I

    invoke-virtual {p1, v0}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->defaultThumbRadius:I

    .line 394
    sget v0, Lccsancom/google/android/material/R$dimen;->mtrl_slider_track_top:I

    invoke-virtual {p1, v0}, Lccsanandroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackTop:I

    .line 396
    sget v0, Lccsancom/google/android/material/R$dimen;->mtrl_slider_label_padding:I

    invoke-virtual {p1, v0}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->labelPadding:I

    .line 397
    return-void
.end method

.method private maybeCalculateTicksCoordinates()V
    .locals 6

    .line 1471
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->stepSize:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 1472
    return-void

    .line 1475
    :cond_0
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->validateConfigurationIfDirty()V

    .line 1477
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueTo:F

    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueFrom:F

    sub-float/2addr v0, v1

    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->stepSize:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1479
    .local v0, "tickCount":I
    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackWidth:I

    iget v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackHeight:I

    mul-int/lit8 v2, v2, 0x2

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1480
    iget-object v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    if-eqz v1, :cond_1

    array-length v1, v1

    mul-int/lit8 v2, v0, 0x2

    if-eq v1, v2, :cond_2

    .line 1481
    :cond_1
    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    .line 1484
    :cond_2
    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackWidth:I

    int-to-float v1, v1

    add-int/lit8 v2, v0, -0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1485
    .local v1, "interval":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    mul-int/lit8 v3, v0, 0x2

    if-ge v2, v3, :cond_3

    .line 1486
    iget-object v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    iget v4, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v4, v4

    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    mul-float v5, v5, v1

    add-float/2addr v4, v5

    aput v4, v3, v2

    .line 1487
    add-int/lit8 v4, v2, 0x1

    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->calculateTop()I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    .line 1485
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 1489
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method private maybeDrawHalo(Lccsanandroid/graphics/Canvas;II)V
    .locals 9
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "top"    # I

    .line 1645
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->shouldDrawCompatHalo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1646
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v0, v0

    iget-object v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    iget v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lccsancom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    move-result v1

    int-to-float v2, p2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1647
    .local v0, "centerX":I
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_0

    .line 1649
    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->haloRadius:I

    sub-int v2, v0, v1

    int-to-float v4, v2

    sub-int v2, p3, v1

    int-to-float v5, v2

    add-int v2, v0, v1

    int-to-float v6, v2

    add-int/2addr v1, p3

    int-to-float v7, v1

    sget-object v8, Lccsanandroid/graphics/Region$Op;->UNION:Lccsanandroid/graphics/Region$Op;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lccsanandroid/graphics/Canvas;->clipRect(FFFFLccsanandroid/graphics/Region$Op;)Z

    .line 1656
    :cond_0
    int-to-float v1, v0

    int-to-float v2, p3

    iget v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->haloRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lccsancom/google/android/material/slider/BaseSlider;->haloPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Lccsanandroid/graphics/Canvas;->drawCircle(FFFLccsanandroid/graphics/Paint;)V

    .line 1658
    .end local v0    # "centerX":I
    :cond_1
    return-void
.end method

.method private maybeDrawTicks(Lccsanandroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 1597
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-boolean v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->tickVisible:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->stepSize:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 1601
    :cond_0
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getActiveRange()[F

    move-result-object v0

    .line 1602
    .local v0, "activeRange":[F
    iget-object v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-static {v1, v3}, Lccsancom/google/android/material/slider/BaseSlider;->pivotIndex([FF)I

    move-result v1

    .line 1603
    .local v1, "leftPivotIndex":I
    iget-object v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-static {v3, v4}, Lccsancom/google/android/material/slider/BaseSlider;->pivotIndex([FF)I

    move-result v3

    .line 1606
    .local v3, "rightPivotIndex":I
    iget-object v4, p0, Lccsancom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    mul-int/lit8 v5, v1, 0x2

    iget-object v6, p0, Lccsancom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v5, v6}, Lccsanandroid/graphics/Canvas;->drawPoints([FIILccsanandroid/graphics/Paint;)V

    .line 1609
    iget-object v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    mul-int/lit8 v4, v1, 0x2

    mul-int/lit8 v5, v3, 0x2

    mul-int/lit8 v6, v1, 0x2

    sub-int/2addr v5, v6

    iget-object v6, p0, Lccsancom/google/android/material/slider/BaseSlider;->activeTicksPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v6}, Lccsanandroid/graphics/Canvas;->drawPoints([FIILccsanandroid/graphics/Paint;)V

    .line 1616
    iget-object v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    mul-int/lit8 v4, v3, 0x2

    array-length v5, v2

    mul-int/lit8 v6, v3, 0x2

    sub-int/2addr v5, v6

    iget-object v6, p0, Lccsancom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v6}, Lccsanandroid/graphics/Canvas;->drawPoints([FIILccsanandroid/graphics/Paint;)V

    .line 1621
    return-void

    .line 1598
    .end local v0    # "activeRange":[F
    .end local v1    # "leftPivotIndex":I
    .end local v3    # "rightPivotIndex":I
    :cond_1
    :goto_0
    return-void
.end method

.method private maybeIncreaseTrackSidePadding()V
    .locals 2

    .line 494
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbRadius:I

    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->defaultThumbRadius:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 495
    .local v0, "increasedSidePadding":I
    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->minTrackSidePadding:I

    add-int/2addr v1, v0

    iput v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 496
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->isLaidOut(Lccsanandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getWidth()I

    move-result v1

    invoke-direct {p0, v1}, Lccsancom/google/android/material/slider/BaseSlider;->updateTrackWidth(I)V

    .line 499
    :cond_0
    return-void
.end method

.method private moveFocus(I)Z
    .locals 11
    .param p1, "direction"    # I

    .line 2230
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 2232
    .local v0, "oldFocusedThumbIdx":I
    int-to-long v1, v0

    int-to-long v3, p1

    add-long/2addr v1, v3

    .line 2233
    .local v1, "newFocusedThumbIdx":J
    iget-object v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    int-to-long v9, v3

    const-wide/16 v7, 0x0

    move-wide v5, v1

    invoke-static/range {v5 .. v10}, Lccsanandroidx/core/math/MathUtils;->clamp(JJJ)J

    move-result-wide v5

    long-to-int v3, v5

    iput v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 2234
    if-ne v3, v0, :cond_0

    .line 2236
    const/4 v3, 0x0

    return v3

    .line 2238
    :cond_0
    iget v5, p0, Lccsancom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 2239
    iput v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 2241
    :cond_1
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 2242
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 2243
    return v4
.end method

.method private moveFocusInAbsoluteDirection(I)Z
    .locals 1
    .param p1, "direction"    # I

    .line 2254
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2256
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    neg-int v0, p1

    :goto_0
    move p1, v0

    .line 2258
    :cond_1
    invoke-direct {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    move-result v0

    return v0
.end method

.method private normalizeValue(F)F
    .locals 3
    .param p1, "value"    # F

    .line 1582
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueFrom:F

    sub-float v1, p1, v0

    iget v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueTo:F

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    .line 1583
    .local v1, "normalized":F
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1584
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    return v0

    .line 1586
    :cond_0
    return v1
.end method

.method private onKeyDownNoActiveThumb(ILccsanandroid/view/KeyEvent;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Lccsanandroid/view/KeyEvent;

    .line 2175
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 2187
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 2175
    sparse-switch p1, :sswitch_data_0

    .line 2208
    const/4 v0, 0x0

    return-object v0

    .line 2197
    :sswitch_0
    invoke-direct {p0, v1}, Lccsancom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    .line 2198
    return-object v2

    .line 2189
    :sswitch_1
    invoke-direct {p0, v0}, Lccsancom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    .line 2190
    return-object v2

    .line 2177
    :sswitch_2
    invoke-virtual {p2}, Lccsanandroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2178
    invoke-direct {p0, v1}, Lccsancom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2181
    :cond_0
    invoke-virtual {p2}, Lccsanandroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2182
    invoke-direct {p0, v0}, Lccsancom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2184
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2201
    :sswitch_3
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    iput v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 2202
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 2203
    return-object v2

    .line 2192
    :sswitch_4
    invoke-direct {p0, v1}, Lccsancom/google/android/material/slider/BaseSlider;->moveFocusInAbsoluteDirection(I)Z

    .line 2193
    return-object v2

    .line 2186
    :sswitch_5
    invoke-direct {p0, v0}, Lccsancom/google/android/material/slider/BaseSlider;->moveFocusInAbsoluteDirection(I)Z

    .line 2187
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_5
        0x16 -> :sswitch_4
        0x17 -> :sswitch_3
        0x3d -> :sswitch_2
        0x42 -> :sswitch_3
        0x45 -> :sswitch_1
        0x46 -> :sswitch_0
        0x51 -> :sswitch_0
    .end sparse-switch
.end method

.method private onStartTrackingTouch()V
    .locals 2

    .line 2083
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/slider/BaseOnSliderTouchListener;

    .line 2084
    .local v1, "listener":Lccsancom/google/android/material/slider/BaseOnSliderTouchListener;, "TT;"
    invoke-interface {v1, p0}, Lccsancom/google/android/material/slider/BaseOnSliderTouchListener;->onStartTrackingTouch(Ljava/lang/Object;)V

    .line 2085
    .end local v1    # "listener":Lccsancom/google/android/material/slider/BaseOnSliderTouchListener;, "TT;"
    goto :goto_0

    .line 2086
    :cond_0
    return-void
.end method

.method private onStopTrackingTouch()V
    .locals 2

    .line 2090
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/slider/BaseOnSliderTouchListener;

    .line 2091
    .local v1, "listener":Lccsancom/google/android/material/slider/BaseOnSliderTouchListener;, "TT;"
    invoke-interface {v1, p0}, Lccsancom/google/android/material/slider/BaseOnSliderTouchListener;->onStopTrackingTouch(Ljava/lang/Object;)V

    .line 2092
    .end local v1    # "listener":Lccsancom/google/android/material/slider/BaseOnSliderTouchListener;, "TT;"
    goto :goto_0

    .line 2093
    :cond_0
    return-void
.end method

.method private static parseLabelDrawable(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;)Lccsancom/google/android/material/tooltip/TooltipDrawable;
    .locals 3
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "a"    # Lccsanandroid/content/res/TypedArray;

    .line 486
    sget v0, Lccsancom/google/android/material/R$styleable;->Slider_labelStyle:I

    sget v1, Lccsancom/google/android/material/R$style;->Widget_MaterialComponents_Tooltip:I

    .line 490
    invoke-virtual {p1, v0, v1}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 486
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lccsancom/google/android/material/tooltip/TooltipDrawable;->createFromAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)Lccsancom/google/android/material/tooltip/TooltipDrawable;

    move-result-object v0

    return-object v0
.end method

.method private static pivotIndex([FF)I
    .locals 1
    .param p0, "coordinates"    # [F
    .param p1, "position"    # F

    .line 1759
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private processAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 17
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 400
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    sget-object v3, Lccsancom/google/android/material/R$styleable;->Slider:[I

    sget v5, Lccsancom/google/android/material/slider/BaseSlider;->DEF_STYLE_RES:I

    const/4 v8, 0x0

    new-array v6, v8, [I

    .line 401
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p3

    invoke-static/range {v1 .. v6}, Lccsancom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v1

    .line 403
    .local v1, "a":Lccsanandroid/content/res/TypedArray;
    sget v2, Lccsancom/google/android/material/R$styleable;->Slider_android_valueFrom:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v0, Lccsancom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 404
    sget v2, Lccsancom/google/android/material/R$styleable;->Slider_android_valueTo:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v4}, Lccsanandroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v0, Lccsancom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 405
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Float;

    iget v5, v0, Lccsancom/google/android/material/slider/BaseSlider;->valueFrom:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v0, v4}, Lccsancom/google/android/material/slider/BaseSlider;->setValues([Ljava/lang/Float;)V

    .line 406
    sget v4, Lccsancom/google/android/material/R$styleable;->Slider_android_stepSize:I

    invoke-virtual {v1, v4, v3}, Lccsanandroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v0, Lccsancom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 408
    sget v4, Lccsancom/google/android/material/R$styleable;->Slider_trackColor:I

    invoke-virtual {v1, v4}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    .line 410
    .local v4, "hasTrackColor":Z
    if-eqz v4, :cond_0

    sget v5, Lccsancom/google/android/material/R$styleable;->Slider_trackColor:I

    goto :goto_0

    :cond_0
    sget v5, Lccsancom/google/android/material/R$styleable;->Slider_trackColorInactive:I

    .line 412
    .local v5, "trackColorInactiveRes":I
    :goto_0
    if-eqz v4, :cond_1

    sget v6, Lccsancom/google/android/material/R$styleable;->Slider_trackColor:I

    goto :goto_1

    :cond_1
    sget v6, Lccsancom/google/android/material/R$styleable;->Slider_trackColorActive:I

    .line 415
    .local v6, "trackColorActiveRes":I
    :goto_1
    nop

    .line 416
    invoke-static {v7, v1, v5}, Lccsancom/google/android/material/resources/MaterialResources;->getColorStateList(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v9

    .line 417
    .local v9, "trackColorInactive":Lccsanandroid/content/res/ColorStateList;
    if-eqz v9, :cond_2

    move-object v10, v9

    goto :goto_2

    :cond_2
    sget v10, Lccsancom/google/android/material/R$color;->ccsan_material_slider_inactive_track_color:I

    .line 420
    invoke-static {v7, v10}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v10

    .line 417
    :goto_2
    invoke-virtual {v0, v10}, Lccsancom/google/android/material/slider/BaseSlider;->setTrackInactiveTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 422
    nop

    .line 423
    invoke-static {v7, v1, v6}, Lccsancom/google/android/material/resources/MaterialResources;->getColorStateList(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v10

    .line 424
    .local v10, "trackColorActive":Lccsanandroid/content/res/ColorStateList;
    if-eqz v10, :cond_3

    move-object v11, v10

    goto :goto_3

    :cond_3
    sget v11, Lccsancom/google/android/material/R$color;->ccsan_material_slider_active_track_color:I

    .line 427
    invoke-static {v7, v11}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v11

    .line 424
    :goto_3
    invoke-virtual {v0, v11}, Lccsancom/google/android/material/slider/BaseSlider;->setTrackActiveTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 429
    sget v11, Lccsancom/google/android/material/R$styleable;->Slider_thumbColor:I

    .line 430
    invoke-static {v7, v1, v11}, Lccsancom/google/android/material/resources/MaterialResources;->getColorStateList(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v11

    .line 431
    .local v11, "thumbColor":Lccsanandroid/content/res/ColorStateList;
    iget-object v12, v0, Lccsancom/google/android/material/slider/BaseSlider;->thumbDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v12, v11}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 433
    sget v12, Lccsancom/google/android/material/R$styleable;->Slider_thumbStrokeColor:I

    invoke-virtual {v1, v12}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 434
    sget v12, Lccsancom/google/android/material/R$styleable;->Slider_thumbStrokeColor:I

    .line 435
    invoke-static {v7, v1, v12}, Lccsancom/google/android/material/resources/MaterialResources;->getColorStateList(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v12

    .line 434
    invoke-virtual {v0, v12}, Lccsancom/google/android/material/slider/BaseSlider;->setThumbStrokeColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 437
    :cond_4
    sget v12, Lccsancom/google/android/material/R$styleable;->Slider_thumbStrokeWidth:I

    invoke-virtual {v1, v12, v3}, Lccsanandroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    invoke-virtual {v0, v12}, Lccsancom/google/android/material/slider/BaseSlider;->setThumbStrokeWidth(F)V

    .line 439
    sget v12, Lccsancom/google/android/material/R$styleable;->Slider_haloColor:I

    .line 440
    invoke-static {v7, v1, v12}, Lccsancom/google/android/material/resources/MaterialResources;->getColorStateList(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v12

    .line 441
    .local v12, "haloColor":Lccsanandroid/content/res/ColorStateList;
    if-eqz v12, :cond_5

    move-object v13, v12

    goto :goto_4

    :cond_5
    sget v13, Lccsancom/google/android/material/R$color;->ccsan_material_slider_halo_color:I

    .line 444
    invoke-static {v7, v13}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v13

    .line 441
    :goto_4
    invoke-virtual {v0, v13}, Lccsancom/google/android/material/slider/BaseSlider;->setHaloTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 446
    sget v13, Lccsancom/google/android/material/R$styleable;->Slider_tickVisible:I

    invoke-virtual {v1, v13, v2}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v0, Lccsancom/google/android/material/slider/BaseSlider;->tickVisible:Z

    .line 447
    sget v13, Lccsancom/google/android/material/R$styleable;->Slider_tickColor:I

    invoke-virtual {v1, v13}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    .line 448
    .local v13, "hasTickColor":Z
    if-eqz v13, :cond_6

    sget v14, Lccsancom/google/android/material/R$styleable;->Slider_tickColor:I

    goto :goto_5

    :cond_6
    sget v14, Lccsancom/google/android/material/R$styleable;->Slider_tickColorInactive:I

    .line 450
    .local v14, "tickColorInactiveRes":I
    :goto_5
    if-eqz v13, :cond_7

    sget v15, Lccsancom/google/android/material/R$styleable;->Slider_tickColor:I

    goto :goto_6

    :cond_7
    sget v15, Lccsancom/google/android/material/R$styleable;->Slider_tickColorActive:I

    .line 452
    .local v15, "tickColorActiveRes":I
    :goto_6
    nop

    .line 453
    invoke-static {v7, v1, v14}, Lccsancom/google/android/material/resources/MaterialResources;->getColorStateList(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v16

    .line 454
    .local v16, "tickColorInactive":Lccsanandroid/content/res/ColorStateList;
    if-eqz v16, :cond_8

    move-object/from16 v2, v16

    goto :goto_7

    :cond_8
    sget v2, Lccsancom/google/android/material/R$color;->ccsan_material_slider_inactive_tick_marks_color:I

    .line 457
    invoke-static {v7, v2}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v2

    .line 454
    :goto_7
    invoke-virtual {v0, v2}, Lccsancom/google/android/material/slider/BaseSlider;->setTickInactiveTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 459
    nop

    .line 460
    invoke-static {v7, v1, v15}, Lccsancom/google/android/material/resources/MaterialResources;->getColorStateList(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v2

    .line 461
    .local v2, "tickColorActive":Lccsanandroid/content/res/ColorStateList;
    if-eqz v2, :cond_9

    move-object v3, v2

    goto :goto_8

    :cond_9
    sget v3, Lccsancom/google/android/material/R$color;->ccsan_material_slider_active_tick_marks_color:I

    .line 464
    invoke-static {v7, v3}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v3

    .line 461
    :goto_8
    invoke-virtual {v0, v3}, Lccsancom/google/android/material/slider/BaseSlider;->setTickActiveTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 467
    sget v3, Lccsancom/google/android/material/R$styleable;->Slider_thumbRadius:I

    invoke-virtual {v1, v3, v8}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lccsancom/google/android/material/slider/BaseSlider;->setThumbRadius(I)V

    .line 468
    sget v3, Lccsancom/google/android/material/R$styleable;->Slider_haloRadius:I

    invoke-virtual {v1, v3, v8}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lccsancom/google/android/material/slider/BaseSlider;->setHaloRadius(I)V

    .line 470
    sget v3, Lccsancom/google/android/material/R$styleable;->Slider_thumbElevation:I

    const/4 v8, 0x0

    invoke-virtual {v1, v3, v8}, Lccsanandroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {v0, v3}, Lccsancom/google/android/material/slider/BaseSlider;->setThumbElevation(F)V

    .line 472
    sget v3, Lccsancom/google/android/material/R$styleable;->Slider_trackHeight:I

    const/4 v8, 0x0

    invoke-virtual {v1, v3, v8}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lccsancom/google/android/material/slider/BaseSlider;->setTrackHeight(I)V

    .line 474
    sget v3, Lccsancom/google/android/material/R$styleable;->Slider_labelBehavior:I

    invoke-virtual {v1, v3, v8}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Lccsancom/google/android/material/slider/BaseSlider;->labelBehavior:I

    .line 476
    sget v3, Lccsancom/google/android/material/R$styleable;->Slider_android_enabled:I

    const/4 v8, 0x1

    invoke-virtual {v1, v3, v8}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-nez v3, :cond_a

    .line 477
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lccsancom/google/android/material/slider/BaseSlider;->setEnabled(Z)V

    .line 480
    :cond_a
    invoke-virtual {v1}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 481
    return-void
.end method

.method private scheduleAccessibilityEventSender(I)V
    .locals 3
    .param p1, "idx"    # I

    .line 2364
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->accessibilityEventSender:Lccsancom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    if-nez v0, :cond_0

    .line 2365
    new-instance v0, Lccsancom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsancom/google/android/material/slider/BaseSlider$AccessibilityEventSender;-><init>(Lccsancom/google/android/material/slider/BaseSlider;Lccsancom/google/android/material/slider/BaseSlider$1;)V

    iput-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->accessibilityEventSender:Lccsancom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    goto :goto_0

    .line 2367
    :cond_0
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/slider/BaseSlider;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2369
    :goto_0
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->accessibilityEventSender:Lccsancom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/slider/BaseSlider$AccessibilityEventSender;->setVirtualViewId(I)V

    .line 2370
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->accessibilityEventSender:Lccsancom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lccsancom/google/android/material/slider/BaseSlider;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2371
    return-void
.end method

.method private setValueForLabel(Lccsancom/google/android/material/tooltip/TooltipDrawable;F)V
    .locals 4
    .param p1, "label"    # Lccsancom/google/android/material/tooltip/TooltipDrawable;
    .param p2, "value"    # F

    .line 2017
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-direct {p0, p2}, Lccsancom/google/android/material/slider/BaseSlider;->formatValue(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsancom/google/android/material/tooltip/TooltipDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 2019
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 2021
    invoke-direct {p0, p2}, Lccsancom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    move-result v1

    iget v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackWidth:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 2022
    invoke-virtual {p1}, Lccsancom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 2023
    .local v0, "left":I
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->calculateTop()I

    move-result v1

    iget v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->labelPadding:I

    iget v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbRadius:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 2024
    .local v1, "top":I
    invoke-virtual {p1}, Lccsancom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p1}, Lccsancom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v0, v2, v3, v1}, Lccsancom/google/android/material/tooltip/TooltipDrawable;->setBounds(IIII)V

    .line 2028
    new-instance v2, Lccsanandroid/graphics/Rect;

    invoke-virtual {p1}, Lccsancom/google/android/material/tooltip/TooltipDrawable;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Lccsanandroid/graphics/Rect;-><init>(Lccsanandroid/graphics/Rect;)V

    .line 2029
    .local v2, "rect":Lccsanandroid/graphics/Rect;
    invoke-static {p0}, Lccsancom/google/android/material/internal/ViewUtils;->getContentView(Lccsanandroid/view/View;)Lccsanandroid/view/ViewGroup;

    move-result-object v3

    invoke-static {v3, p0, v2}, Lccsancom/google/android/material/internal/DescendantOffsetUtils;->offsetDescendantRect(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;)V

    .line 2030
    invoke-virtual {p1, v2}, Lccsancom/google/android/material/tooltip/TooltipDrawable;->setBounds(Lccsanandroid/graphics/Rect;)V

    .line 2032
    invoke-static {p0}, Lccsancom/google/android/material/internal/ViewUtils;->getContentViewOverlay(Lccsanandroid/view/View;)Lccsancom/google/android/material/internal/ViewOverlayImpl;

    move-result-object v3

    invoke-interface {v3, p1}, Lccsancom/google/android/material/internal/ViewOverlayImpl;->add(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 2033
    return-void
.end method

.method private setValuesInternal(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 695
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 699
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 701
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 702
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    return-void

    .line 707
    :cond_0
    iput-object p1, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 708
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    .line 710
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 711
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 712
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->createLabelPool()V

    .line 713
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->dispatchOnChangedProgramatically()V

    .line 714
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 715
    return-void

    .line 696
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one value must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private shouldDrawCompatHalo()Z
    .locals 2

    .line 1661
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-boolean v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->forceDrawCompatHalo:Z

    if-nez v0, :cond_1

    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 1663
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lccsanandroid/graphics/drawable/RippleDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1661
    :goto_1
    return v0
.end method

.method private snapActiveThumbToValue(F)Z
    .locals 1
    .param p1, "value"    # F

    .line 1837
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    invoke-direct {p0, v0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->snapThumbToValue(IF)Z

    move-result v0

    return v0
.end method

.method private snapPosition(F)D
    .locals 5
    .param p1, "position"    # F

    .line 1763
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->stepSize:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 1764
    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueTo:F

    iget v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueFrom:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    float-to-int v0, v1

    .line 1765
    .local v0, "stepCount":I
    int-to-float v1, v0

    mul-float v1, v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-double v1, v1

    int-to-double v3, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    return-wide v1

    .line 1768
    .end local v0    # "stepCount":I
    :cond_0
    float-to-double v0, p1

    return-wide v0
.end method

.method private snapThumbToValue(IF)Z
    .locals 5
    .param p1, "idx"    # I
    .param p2, "value"    # F

    .line 1842
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 1843
    const/4 v0, 0x0

    return v0

    .line 1846
    :cond_0
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/material/slider/BaseSlider;->getClampedValue(IF)F

    move-result v0

    .line 1848
    .local v0, "newValue":F
    iget-object v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1849
    iput p1, p0, Lccsancom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 1851
    invoke-direct {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->dispatchOnChangedFromUser(I)V

    .line 1852
    const/4 v1, 0x1

    return v1
.end method

.method private snapTouchPosition()Z
    .locals 1

    .line 1833
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getValueOfTouchPosition()F

    move-result v0

    invoke-direct {p0, v0}, Lccsancom/google/android/material/slider/BaseSlider;->snapActiveThumbToValue(F)Z

    move-result v0

    return v0
.end method

.method private updateHaloHotspot()V
    .locals 7

    .line 1501
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->shouldDrawCompatHalo()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 1502
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1503
    .local v0, "background":Lccsanandroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lccsanandroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    .line 1504
    iget-object v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    iget v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lccsancom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    move-result v1

    iget v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackWidth:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    iget v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 1505
    .local v1, "x":I
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->calculateTop()I

    move-result v2

    .line 1506
    .local v2, "y":I
    iget v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->haloRadius:I

    sub-int v4, v1, v3

    sub-int v5, v2, v3

    add-int v6, v1, v3

    add-int/2addr v3, v2

    invoke-static {v0, v4, v5, v6, v3}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Lccsanandroid/graphics/drawable/Drawable;IIII)V

    .line 1510
    .end local v0    # "background":Lccsanandroid/graphics/drawable/Drawable;
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_0
    return-void
.end method

.method private updateTrackWidth(I)V
    .locals 2
    .param p1, "width"    # I

    .line 1493
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackWidth:I

    .line 1496
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->maybeCalculateTicksCoordinates()V

    .line 1497
    return-void
.end method

.method private validateConfigurationIfDirty()V
    .locals 1

    .line 583
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-boolean v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    if-eqz v0, :cond_0

    .line 584
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->validateValueFrom()V

    .line 585
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->validateValueTo()V

    .line 586
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->validateStepSize()V

    .line 587
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->validateValues()V

    .line 588
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->warnAboutFloatingPointError()V

    .line 589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    .line 591
    :cond_0
    return-void
.end method

.method private validateStepSize()V
    .locals 4

    .line 531
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->stepSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueTo:F

    invoke-direct {p0, v0}, Lccsancom/google/android/material/slider/BaseSlider;->valueLandsOnTick(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 532
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 535
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 536
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 537
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 533
    const-string v2, "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_1
    :goto_0
    return-void
.end method

.method private validateValueFrom()V
    .locals 4

    .line 502
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueFrom:F

    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueTo:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    .line 507
    return-void

    .line 503
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 505
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueTo:F

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 504
    const-string/jumbo v2, "valueFrom(%s) must be smaller than valueTo(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateValueTo()V
    .locals 4

    .line 510
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueTo:F

    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueFrom:F

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    .line 515
    return-void

    .line 511
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 513
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueFrom:F

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 512
    const-string/jumbo v2, "valueTo(%s) must be greater than valueFrom(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateValues()V
    .locals 8

    .line 542
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 543
    .local v1, "value":Ljava/lang/Float;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueFrom:F

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueTo:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    .line 551
    iget v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->stepSize:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v2}, Lccsancom/google/android/material/slider/BaseSlider;->valueLandsOnTick(F)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 552
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 555
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 556
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 557
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 558
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 553
    const-string v3, "Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    .end local v1    # "value":Ljava/lang/Float;
    :cond_1
    :goto_1
    goto :goto_0

    .line 544
    .restart local v1    # "value":Ljava/lang/Float;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v2, v7, [Ljava/lang/Object;

    .line 547
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 548
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 549
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 545
    const-string v3, "Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    .end local v1    # "value":Ljava/lang/Float;
    :cond_3
    return-void
.end method

.method private valueLandsOnTick(F)Z
    .locals 7
    .param p1, "value"    # F

    .line 520
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    new-instance v0, Ljava/math/BigDecimal;

    .line 521
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/math/BigDecimal;

    iget v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 522
    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    new-instance v1, Ljava/math/BigDecimal;

    iget v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 523
    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/math/MathContext;->DECIMAL64:Ljava/math/MathContext;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 524
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    .line 527
    .local v0, "potentialTickValue":D
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private valueToX(F)F
    .locals 2
    .param p1, "value"    # F

    .line 1894
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-direct {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    move-result v0

    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackWidth:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method private warnAboutFloatingPointError()V
    .locals 8

    .line 564
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->stepSize:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 566
    return-void

    .line 569
    :cond_0
    float-to-int v1, v0

    int-to-float v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly."

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    .line 570
    sget-object v1, Lccsancom/google/android/material/slider/BaseSlider;->TAG:Ljava/lang/String;

    new-array v6, v4, [Ljava/lang/Object;

    const-string/jumbo v7, "stepSize"

    aput-object v7, v6, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_1
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueFrom:F

    float-to-int v1, v0

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_2

    .line 574
    sget-object v1, Lccsancom/google/android/material/slider/BaseSlider;->TAG:Ljava/lang/String;

    new-array v6, v4, [Ljava/lang/Object;

    const-string/jumbo v7, "valueFrom"

    aput-object v7, v6, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_2
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueTo:F

    float-to-int v1, v0

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_3

    .line 578
    sget-object v1, Lccsancom/google/android/material/slider/BaseSlider;->TAG:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v6, "valueTo"

    aput-object v6, v4, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_3
    return-void
.end method


# virtual methods
.method public addOnChangeListener(Lccsancom/google/android/material/slider/BaseOnChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    .line 822
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    .local p1, "listener":Lccsancom/google/android/material/slider/BaseOnChangeListener;, "TL;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    return-void
.end method

.method public addOnSliderTouchListener(Lccsancom/google/android/material/slider/BaseOnSliderTouchListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 845
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    .local p1, "listener":Lccsancom/google/android/material/slider/BaseOnSliderTouchListener;, "TT;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 846
    return-void
.end method

.method public clearOnChangeListeners()V
    .locals 1

    .line 836
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 837
    return-void
.end method

.method public clearOnSliderTouchListeners()V
    .locals 1

    .line 859
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 860
    return-void
.end method

.method public dispatchHoverEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Lccsanandroid/view/MotionEvent;

    .line 2348
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lccsancom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/slider/BaseSlider$AccessibilityHelper;->dispatchHoverEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lccsanandroid/view/View;->dispatchHoverEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public dispatchKeyEvent(Lccsanandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Lccsanandroid/view/KeyEvent;

    .line 2355
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-super {p0, p1}, Lccsanandroid/view/View;->dispatchKeyEvent(Lccsanandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 3

    .line 2097
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-super {p0}, Lccsanandroid/view/View;->drawableStateChanged()V

    .line 2099
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Lccsanandroid/graphics/Paint;

    iget-object v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackColorInactive:Lccsanandroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lccsancom/google/android/material/slider/BaseSlider;->getColorForState(Lccsanandroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 2100
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->activeTrackPaint:Lccsanandroid/graphics/Paint;

    iget-object v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackColorActive:Lccsanandroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lccsancom/google/android/material/slider/BaseSlider;->getColorForState(Lccsanandroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 2101
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Lccsanandroid/graphics/Paint;

    iget-object v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->tickColorInactive:Lccsanandroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lccsancom/google/android/material/slider/BaseSlider;->getColorForState(Lccsanandroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 2102
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->activeTicksPaint:Lccsanandroid/graphics/Paint;

    iget-object v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->tickColorActive:Lccsanandroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lccsancom/google/android/material/slider/BaseSlider;->getColorForState(Lccsanandroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 2103
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/tooltip/TooltipDrawable;

    .line 2104
    .local v1, "label":Lccsancom/google/android/material/tooltip/TooltipDrawable;
    invoke-virtual {v1}, Lccsancom/google/android/material/tooltip/TooltipDrawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2105
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/google/android/material/tooltip/TooltipDrawable;->setState([I)Z

    .line 2107
    .end local v1    # "label":Lccsancom/google/android/material/tooltip/TooltipDrawable;
    :cond_0
    goto :goto_0

    .line 2108
    :cond_1
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2109
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setState([I)Z

    .line 2111
    :cond_2
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->haloPaint:Lccsanandroid/graphics/Paint;

    iget-object v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->haloColor:Lccsanandroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lccsancom/google/android/material/slider/BaseSlider;->getColorForState(Lccsanandroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 2112
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->haloPaint:Lccsanandroid/graphics/Paint;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setAlpha(I)V

    .line 2113
    return-void
.end method

.method forceDrawCompatHalo(Z)V
    .locals 0
    .param p1, "force"    # Z

    .line 2122
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iput-boolean p1, p0, Lccsancom/google/android/material/slider/BaseSlider;->forceDrawCompatHalo:Z

    .line 2123
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 2343
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const-class v0, Lccsanandroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getAccessibilityFocusedVirtualViewId()I
    .locals 1

    .line 2337
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lccsancom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    invoke-virtual {v0}, Lccsancom/google/android/material/slider/BaseSlider$AccessibilityHelper;->getAccessibilityFocusedVirtualViewId()I

    move-result v0

    return v0
.end method

.method public getActiveThumbIndex()I
    .locals 1

    .line 813
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    return v0
.end method

.method public getFocusedThumbIndex()I
    .locals 1

    .line 794
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    return v0
.end method

.method public getHaloRadius()I
    .locals 1

    .line 1046
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->haloRadius:I

    return v0
.end method

.method public getHaloTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 1150
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->haloColor:Lccsanandroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getLabelBehavior()I
    .locals 1

    .line 1088
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->labelBehavior:I

    return v0
.end method

.method protected getMinSeparation()F
    .locals 1

    .line 1880
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getStepSize()F
    .locals 1

    .line 755
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->stepSize:F

    return v0
.end method

.method public getThumbElevation()F
    .locals 1

    .line 888
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getElevation()F

    move-result v0

    return v0
.end method

.method public getThumbRadius()I
    .locals 1

    .line 920
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbRadius:I

    return v0
.end method

.method public getThumbStrokeColor()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 993
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getStrokeColor()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getThumbStrokeWidth()F
    .locals 1

    .line 1034
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public getThumbTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 1184
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getTickActiveTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 1247
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->tickColorActive:Lccsanandroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTickInactiveTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 1276
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->tickColorInactive:Lccsanandroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTickTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 2

    .line 1216
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->tickColorInactive:Lccsanandroid/content/res/ColorStateList;

    iget-object v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->tickColorActive:Lccsanandroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->tickColorActive:Lccsanandroid/content/res/ColorStateList;

    return-object v0

    .line 1217
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTrackActiveTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 1363
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackColorActive:Lccsanandroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTrackHeight()I
    .locals 1

    .line 1125
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackHeight:I

    return v0
.end method

.method public getTrackInactiveTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 1392
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackColorInactive:Lccsanandroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTrackSidePadding()I
    .locals 1

    .line 1108
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    return v0
.end method

.method public getTrackTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 2

    .line 1332
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackColorInactive:Lccsanandroid/content/res/ColorStateList;

    iget-object v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackColorActive:Lccsanandroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackColorActive:Lccsanandroid/content/res/ColorStateList;

    return-object v0

    .line 1333
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTrackWidth()I
    .locals 1

    .line 1114
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackWidth:I

    return v0
.end method

.method public getValueFrom()F
    .locals 1

    .line 600
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueFrom:F

    return v0
.end method

.method public getValueTo()F
    .locals 1

    .line 626
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueTo:F

    return v0
.end method

.method getValues()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 647
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hasLabelFormatter()Z
    .locals 1

    .line 867
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->formatter:Lccsancom/google/android/material/slider/LabelFormatter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isRtl()Z
    .locals 2

    .line 2218
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getLayoutDirection(Lccsanandroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isTickVisible()Z
    .locals 1

    .line 1302
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-boolean v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->tickVisible:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1421
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-super {p0}, Lccsanandroid/view/View;->onAttachedToWindow()V

    .line 1423
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/tooltip/TooltipDrawable;

    .line 1424
    .local v1, "label":Lccsancom/google/android/material/tooltip/TooltipDrawable;
    invoke-direct {p0, v1}, Lccsancom/google/android/material/slider/BaseSlider;->attachLabelToContentView(Lccsancom/google/android/material/tooltip/TooltipDrawable;)V

    .line 1425
    .end local v1    # "label":Lccsancom/google/android/material/tooltip/TooltipDrawable;
    goto :goto_0

    .line 1426
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1434
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->accessibilityEventSender:Lccsancom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    if-eqz v0, :cond_0

    .line 1435
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/slider/BaseSlider;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1438
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->labelsAreAnimatedIn:Z

    .line 1439
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/tooltip/TooltipDrawable;

    .line 1440
    .local v1, "label":Lccsancom/google/android/material/tooltip/TooltipDrawable;
    invoke-direct {p0, v1}, Lccsancom/google/android/material/slider/BaseSlider;->detachLabelFromContentView(Lccsancom/google/android/material/tooltip/TooltipDrawable;)V

    .line 1441
    .end local v1    # "label":Lccsancom/google/android/material/tooltip/TooltipDrawable;
    goto :goto_0

    .line 1443
    :cond_1
    invoke-super {p0}, Lccsanandroid/view/View;->onDetachedFromWindow()V

    .line 1444
    return-void
.end method

.method protected onDraw(Lccsanandroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 1519
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-boolean v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    if-eqz v0, :cond_0

    .line 1520
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->validateConfigurationIfDirty()V

    .line 1523
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->maybeCalculateTicksCoordinates()V

    .line 1526
    :cond_0
    invoke-super {p0, p1}, Lccsanandroid/view/View;->onDraw(Lccsanandroid/graphics/Canvas;)V

    .line 1528
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->calculateTop()I

    move-result v0

    .line 1530
    .local v0, "top":I
    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackWidth:I

    invoke-direct {p0, p1, v1, v0}, Lccsancom/google/android/material/slider/BaseSlider;->drawInactiveTrack(Lccsanandroid/graphics/Canvas;II)V

    .line 1531
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueFrom:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 1532
    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackWidth:I

    invoke-direct {p0, p1, v1, v0}, Lccsancom/google/android/material/slider/BaseSlider;->drawActiveTrack(Lccsanandroid/graphics/Canvas;II)V

    .line 1535
    :cond_1
    invoke-direct {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->maybeDrawTicks(Lccsanandroid/graphics/Canvas;)V

    .line 1537
    iget-boolean v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1538
    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackWidth:I

    invoke-direct {p0, p1, v1, v0}, Lccsancom/google/android/material/slider/BaseSlider;->maybeDrawHalo(Lccsanandroid/graphics/Canvas;II)V

    .line 1541
    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 1542
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->ensureLabelsAdded()V

    .line 1546
    :cond_3
    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackWidth:I

    invoke-direct {p0, p1, v1, v0}, Lccsancom/google/android/material/slider/BaseSlider;->drawThumbs(Lccsanandroid/graphics/Canvas;II)V

    .line 1547
    return-void
.end method

.method protected onFocusChanged(ZILccsanandroid/graphics/Rect;)V
    .locals 2
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Lccsanandroid/graphics/Rect;

    .line 2303
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-super {p0, p1, p2, p3}, Lccsanandroid/view/View;->onFocusChanged(ZILccsanandroid/graphics/Rect;)V

    .line 2304
    if-nez p1, :cond_0

    .line 2305
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 2306
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->ensureLabelsRemoved()V

    .line 2307
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lccsancom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/slider/BaseSlider$AccessibilityHelper;->clearKeyboardFocusForVirtualView(I)Z

    goto :goto_0

    .line 2309
    :cond_0
    invoke-direct {p0, p2}, Lccsancom/google/android/material/slider/BaseSlider;->focusThumbOnFocusGained(I)V

    .line 2310
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lccsancom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/slider/BaseSlider$AccessibilityHelper;->requestKeyboardFocusForVirtualView(I)Z

    .line 2312
    :goto_0
    return-void
.end method

.method public onKeyDown(ILccsanandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Lccsanandroid/view/KeyEvent;

    .line 2127
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2128
    invoke-super {p0, p1, p2}, Lccsanandroid/view/View;->onKeyDown(ILccsanandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 2132
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2133
    iput v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 2137
    :cond_1
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 2138
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/material/slider/BaseSlider;->onKeyDownNoActiveThumb(ILccsanandroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object v0

    .line 2139
    .local v0, "handled":Ljava/lang/Boolean;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Lccsanandroid/view/View;->onKeyDown(ILccsanandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 2142
    .end local v0    # "handled":Ljava/lang/Boolean;
    :cond_3
    iget-boolean v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->isLongPress:Z

    invoke-virtual {p2}, Lccsanandroid/view/KeyEvent;->isLongPress()Z

    move-result v4

    or-int/2addr v0, v4

    iput-boolean v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->isLongPress:Z

    .line 2143
    invoke-direct {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->calculateIncrementForKey(I)Ljava/lang/Float;

    move-result-object v0

    .line 2144
    .local v0, "increment":Ljava/lang/Float;
    if-eqz v0, :cond_5

    .line 2145
    iget-object v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    iget v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v1, v3

    invoke-direct {p0, v1}, Lccsancom/google/android/material/slider/BaseSlider;->snapActiveThumbToValue(F)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2146
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 2147
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 2149
    :cond_4
    return v2

    .line 2151
    :cond_5
    sparse-switch p1, :sswitch_data_0

    .line 2171
    invoke-super {p0, p1, p2}, Lccsanandroid/view/View;->onKeyDown(ILccsanandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 2153
    :sswitch_0
    invoke-virtual {p2}, Lccsanandroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2154
    invoke-direct {p0, v2}, Lccsancom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    move-result v1

    return v1

    .line 2157
    :cond_6
    invoke-virtual {p2}, Lccsanandroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2158
    invoke-direct {p0, v3}, Lccsancom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    move-result v1

    return v1

    .line 2160
    :cond_7
    return v1

    .line 2163
    :sswitch_1
    iput v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 2164
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->ensureLabelsRemoved()V

    .line 2165
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 2166
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x3d -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILccsanandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Lccsanandroid/view/KeyEvent;

    .line 2213
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->isLongPress:Z

    .line 2214
    invoke-super {p0, p1, p2}, Lccsanandroid/view/View;->onKeyUp(ILccsanandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1456
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->widgetHeight:I

    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->labelBehavior:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 1460
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/tooltip/TooltipDrawable;

    invoke-virtual {v1}, Lccsancom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicHeight()I

    move-result v2

    goto :goto_0

    :cond_0
    nop

    :goto_0
    add-int/2addr v0, v2

    const/high16 v1, 0x40000000    # 2.0f

    .line 1458
    invoke-static {v0, v1}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1456
    invoke-super {p0, p1, v0}, Lccsanandroid/view/View;->onMeasure(II)V

    .line 1462
    return-void
.end method

.method protected onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Lccsanandroid/os/Parcelable;

    .line 2402
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    move-object v0, p1

    check-cast v0, Lccsancom/google/android/material/slider/BaseSlider$SliderState;

    .line 2403
    .local v0, "sliderState":Lccsancom/google/android/material/slider/BaseSlider$SliderState;
    invoke-virtual {v0}, Lccsancom/google/android/material/slider/BaseSlider$SliderState;->getSuperState()Lccsanandroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lccsanandroid/view/View;->onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V

    .line 2405
    iget v1, v0, Lccsancom/google/android/material/slider/BaseSlider$SliderState;->valueFrom:F

    iput v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 2406
    iget v1, v0, Lccsancom/google/android/material/slider/BaseSlider$SliderState;->valueTo:F

    iput v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 2407
    iget-object v1, v0, Lccsancom/google/android/material/slider/BaseSlider$SliderState;->values:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lccsancom/google/android/material/slider/BaseSlider;->setValuesInternal(Ljava/util/ArrayList;)V

    .line 2408
    iget v1, v0, Lccsancom/google/android/material/slider/BaseSlider$SliderState;->stepSize:F

    iput v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 2409
    iget-boolean v1, v0, Lccsancom/google/android/material/slider/BaseSlider$SliderState;->hasFocus:Z

    if-eqz v1, :cond_0

    .line 2410
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->requestFocus()Z

    .line 2412
    :cond_0
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->dispatchOnChangedProgramatically()V

    .line 2413
    return-void
.end method

.method protected onSaveInstanceState()Lccsanandroid/os/Parcelable;
    .locals 4

    .line 2390
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-super {p0}, Lccsanandroid/view/View;->onSaveInstanceState()Lccsanandroid/os/Parcelable;

    move-result-object v0

    .line 2391
    .local v0, "superState":Lccsanandroid/os/Parcelable;
    new-instance v1, Lccsancom/google/android/material/slider/BaseSlider$SliderState;

    invoke-direct {v1, v0}, Lccsancom/google/android/material/slider/BaseSlider$SliderState;-><init>(Lccsanandroid/os/Parcelable;)V

    .line 2392
    .local v1, "sliderState":Lccsancom/google/android/material/slider/BaseSlider$SliderState;
    iget v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueFrom:F

    iput v2, v1, Lccsancom/google/android/material/slider/BaseSlider$SliderState;->valueFrom:F

    .line 2393
    iget v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueTo:F

    iput v2, v1, Lccsancom/google/android/material/slider/BaseSlider$SliderState;->valueTo:F

    .line 2394
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Lccsancom/google/android/material/slider/BaseSlider$SliderState;->values:Ljava/util/ArrayList;

    .line 2395
    iget v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->stepSize:F

    iput v2, v1, Lccsancom/google/android/material/slider/BaseSlider$SliderState;->stepSize:F

    .line 2396
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->hasFocus()Z

    move-result v2

    iput-boolean v2, v1, Lccsancom/google/android/material/slider/BaseSlider$SliderState;->hasFocus:Z

    .line 2397
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 1466
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-direct {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->updateTrackWidth(I)V

    .line 1467
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 1468
    return-void
.end method

.method public onTouchEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Lccsanandroid/view/MotionEvent;

    .line 1668
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1669
    return v1

    .line 1671
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1672
    .local v0, "x":F
    iget v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->touchPosition:F

    .line 1673
    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->touchPosition:F

    .line 1674
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->touchPosition:F

    .line 1676
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 1701
    :pswitch_0
    iget-boolean v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    if-nez v2, :cond_2

    .line 1703
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->isInVerticalScrollingContainer()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->touchDownX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Lccsancom/google/android/material/slider/BaseSlider;->scaledTouchSlop:I

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    .line 1704
    return v1

    .line 1706
    :cond_1
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Lccsanandroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1707
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->onStartTrackingTouch()V

    .line 1710
    :cond_2
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->pickActiveThumb()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1712
    goto/16 :goto_0

    .line 1715
    :cond_3
    iput-boolean v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    .line 1716
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->snapTouchPosition()Z

    .line 1717
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 1718
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->invalidate()V

    .line 1719
    goto/16 :goto_0

    .line 1721
    :pswitch_1
    iput-boolean v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    .line 1723
    iget-object v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->lastEvent:Lccsanandroid/view/MotionEvent;

    if-eqz v1, :cond_4

    .line 1724
    invoke-virtual {v1}, Lccsanandroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->lastEvent:Lccsanandroid/view/MotionEvent;

    .line 1725
    invoke-virtual {v1}, Lccsanandroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->scaledTouchSlop:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    iget-object v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->lastEvent:Lccsanandroid/view/MotionEvent;

    .line 1726
    invoke-virtual {v1}, Lccsanandroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->scaledTouchSlop:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    .line 1727
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->pickActiveThumb()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1728
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->onStartTrackingTouch()V

    .line 1732
    :cond_4
    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 1733
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->snapTouchPosition()Z

    .line 1734
    iput v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 1735
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->onStopTrackingTouch()V

    .line 1737
    :cond_5
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->ensureLabelsRemoved()V

    .line 1738
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->invalidate()V

    .line 1739
    goto :goto_0

    .line 1678
    :pswitch_2
    iput v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->touchDownX:F

    .line 1682
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->isInVerticalScrollingContainer()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1683
    goto :goto_0

    .line 1686
    :cond_6
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Lccsanandroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1688
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->pickActiveThumb()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1690
    goto :goto_0

    .line 1693
    :cond_7
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->requestFocus()Z

    .line 1694
    iput-boolean v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    .line 1695
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->snapTouchPosition()Z

    .line 1696
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 1697
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->invalidate()V

    .line 1698
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->onStartTrackingTouch()V

    .line 1699
    nop

    .line 1745
    :goto_0
    iget-boolean v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    invoke-virtual {p0, v1}, Lccsancom/google/android/material/slider/BaseSlider;->setPressed(Z)V

    .line 1747
    invoke-static {p1}, Lccsanandroid/view/MotionEvent;->obtain(Lccsanandroid/view/MotionEvent;)Lccsanandroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->lastEvent:Lccsanandroid/view/MotionEvent;

    .line 1748
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected pickActiveThumb()Z
    .locals 12

    .line 1777
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 1778
    return v2

    .line 1781
    :cond_0
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getValueOfTouchPositionAbsolute()F

    move-result v0

    .line 1782
    .local v0, "touchValue":F
    invoke-direct {p0, v0}, Lccsancom/google/android/material/slider/BaseSlider;->valueToX(F)F

    move-result v3

    .line 1783
    .local v3, "touchX":F
    const/4 v4, 0x0

    iput v4, p0, Lccsancom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 1784
    iget-object v5, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 1785
    .local v5, "activeThumbDiff":F
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    iget-object v7, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 1786
    iget-object v7, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1787
    .local v7, "valueDiff":F
    iget-object v8, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-direct {p0, v8}, Lccsancom/google/android/material/slider/BaseSlider;->valueToX(F)F

    move-result v8

    .line 1788
    .local v8, "valueX":F
    invoke-static {v7, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-le v9, v2, :cond_1

    .line 1789
    goto :goto_4

    .line 1792
    :cond_1
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->isRtl()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_2

    sub-float v9, v8, v3

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    goto :goto_1

    :cond_2
    sub-float v9, v8, v3

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    :goto_1
    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    .line 1795
    .local v9, "movingForward":Z
    :goto_2
    invoke-static {v7, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-gez v10, :cond_4

    .line 1796
    move v5, v7

    .line 1797
    iput v6, p0, Lccsancom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 1798
    goto :goto_3

    .line 1801
    :cond_4
    invoke-static {v7, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-nez v10, :cond_6

    .line 1803
    sub-float v10, v8, v3

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, p0, Lccsancom/google/android/material/slider/BaseSlider;->scaledTouchSlop:I

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_5

    .line 1804
    iput v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 1805
    return v4

    .line 1808
    :cond_5
    if-eqz v9, :cond_6

    .line 1809
    move v5, v7

    .line 1810
    iput v6, p0, Lccsancom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 1785
    .end local v7    # "valueDiff":F
    .end local v8    # "valueX":F
    .end local v9    # "movingForward":Z
    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1815
    .end local v6    # "i":I
    :cond_7
    :goto_4
    iget v6, p0, Lccsancom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    if-eq v6, v1, :cond_8

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    :goto_5
    return v2
.end method

.method public removeOnChangeListener(Lccsancom/google/android/material/slider/BaseOnChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    .line 831
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    .local p1, "listener":Lccsancom/google/android/material/slider/BaseOnChangeListener;, "TL;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 832
    return-void
.end method

.method public removeOnSliderTouchListener(Lccsancom/google/android/material/slider/BaseOnSliderTouchListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 854
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    .local p1, "listener":Lccsancom/google/android/material/slider/BaseOnSliderTouchListener;, "TT;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 855
    return-void
.end method

.method protected setActiveThumbIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 808
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iput p1, p0, Lccsancom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 809
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 1413
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-super {p0, p1}, Lccsanandroid/view/View;->setEnabled(Z)V

    .line 1416
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lccsancom/google/android/material/slider/BaseSlider;->setLayerType(ILccsanandroid/graphics/Paint;)V

    .line 1417
    return-void
.end method

.method public setFocusedThumbIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .line 799
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    if-ltz p1, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 802
    iput p1, p0, Lccsancom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 803
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lccsancom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/slider/BaseSlider$AccessibilityHelper;->requestKeyboardFocusForVirtualView(I)Z

    .line 804
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 805
    return-void

    .line 800
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHaloRadius(I)V
    .locals 3
    .param p1, "radius"    # I

    .line 1056
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->haloRadius:I

    if-ne p1, v0, :cond_0

    .line 1057
    return-void

    .line 1060
    :cond_0
    iput p1, p0, Lccsancom/google/android/material/slider/BaseSlider;->haloRadius:I

    .line 1061
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1062
    .local v0, "background":Lccsanandroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->shouldDrawCompatHalo()Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, v0, Lccsanandroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    .line 1063
    move-object v1, v0

    check-cast v1, Lccsanandroid/graphics/drawable/RippleDrawable;

    iget v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->haloRadius:I

    invoke-static {v1, v2}, Lccsancom/google/android/material/drawable/DrawableUtils;->setRippleDrawableRadius(Lccsanandroid/graphics/drawable/RippleDrawable;I)V

    .line 1064
    return-void

    .line 1067
    :cond_1
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 1068
    return-void
.end method

.method public setHaloRadiusResource(I)V
    .locals 1
    .param p1, "radius"    # I

    .line 1077
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/slider/BaseSlider;->setHaloRadius(I)V

    .line 1078
    return-void
.end method

.method public setHaloTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "haloColor"    # Lccsanandroid/content/res/ColorStateList;

    .line 1160
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->haloColor:Lccsanandroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1161
    return-void

    .line 1164
    :cond_0
    iput-object p1, p0, Lccsancom/google/android/material/slider/BaseSlider;->haloColor:Lccsanandroid/content/res/ColorStateList;

    .line 1165
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1166
    .local v0, "background":Lccsanandroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->shouldDrawCompatHalo()Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, v0, Lccsanandroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    .line 1167
    move-object v1, v0

    check-cast v1, Lccsanandroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, p1}, Lccsanandroid/graphics/drawable/RippleDrawable;->setColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 1168
    return-void

    .line 1171
    :cond_1
    iget-object v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->haloPaint:Lccsanandroid/graphics/Paint;

    invoke-direct {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->getColorForState(Lccsanandroid/content/res/ColorStateList;)I

    move-result v2

    invoke-virtual {v1, v2}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 1172
    iget-object v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->haloPaint:Lccsanandroid/graphics/Paint;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Lccsanandroid/graphics/Paint;->setAlpha(I)V

    .line 1173
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->invalidate()V

    .line 1174
    return-void
.end method

.method public setLabelBehavior(I)V
    .locals 1
    .param p1, "labelBehavior"    # I

    .line 1099
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->labelBehavior:I

    if-eq v0, p1, :cond_0

    .line 1100
    iput p1, p0, Lccsancom/google/android/material/slider/BaseSlider;->labelBehavior:I

    .line 1101
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->requestLayout()V

    .line 1103
    :cond_0
    return-void
.end method

.method public setLabelFormatter(Lccsancom/google/android/material/slider/LabelFormatter;)V
    .locals 0
    .param p1, "formatter"    # Lccsancom/google/android/material/slider/LabelFormatter;

    .line 877
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iput-object p1, p0, Lccsancom/google/android/material/slider/BaseSlider;->formatter:Lccsancom/google/android/material/slider/LabelFormatter;

    .line 878
    return-void
.end method

.method protected setSeparationUnit(I)V
    .locals 0
    .param p1, "separationUnit"    # I

    .line 1876
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iput p1, p0, Lccsancom/google/android/material/slider/BaseSlider;->separationUnit:I

    .line 1877
    return-void
.end method

.method public setStepSize(F)V
    .locals 5
    .param p1, "stepSize"    # F

    .line 777
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_1

    .line 785
    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->stepSize:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 786
    iput p1, p0, Lccsancom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 787
    iput-boolean v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    .line 788
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 790
    :cond_0
    return-void

    .line 778
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 781
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 782
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget v3, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 783
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 779
    const-string v0, "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setThumbElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .line 898
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 899
    return-void
.end method

.method public setThumbElevationResource(I)V
    .locals 1
    .param p1, "elevation"    # I

    .line 908
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/slider/BaseSlider;->setThumbElevation(F)V

    .line 909
    return-void
.end method

.method public setThumbRadius(I)V
    .locals 4
    .param p1, "radius"    # I

    .line 930
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbRadius:I

    if-ne p1, v0, :cond_0

    .line 931
    return-void

    .line 934
    :cond_0
    iput p1, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbRadius:I

    .line 935
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->maybeIncreaseTrackSidePadding()V

    .line 937
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    .line 938
    invoke-static {}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->builder()Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    iget v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbRadius:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCorners(IF)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    .line 937
    invoke-virtual {v0, v1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 939
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    iget v1, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbRadius:I

    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v3, v3, v2, v1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setBounds(IIII)V

    .line 941
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 942
    return-void
.end method

.method public setThumbRadiusResource(I)V
    .locals 1
    .param p1, "radius"    # I

    .line 951
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/slider/BaseSlider;->setThumbRadius(I)V

    .line 952
    return-void
.end method

.method public setThumbStrokeColor(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "thumbStrokeColor"    # Lccsanandroid/content/res/ColorStateList;

    .line 964
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setStrokeColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 965
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 966
    return-void
.end method

.method public setThumbStrokeColorResource(I)V
    .locals 1
    .param p1, "thumbStrokeColorResourceId"    # I

    .line 978
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    if-eqz p1, :cond_0

    .line 979
    nop

    .line 980
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    .line 979
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/slider/BaseSlider;->setThumbStrokeColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 982
    :cond_0
    return-void
.end method

.method public setThumbStrokeWidth(F)V
    .locals 1
    .param p1, "thumbStrokeWidth"    # F

    .line 1006
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setStrokeWidth(F)V

    .line 1007
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 1008
    return-void
.end method

.method public setThumbStrokeWidthResource(I)V
    .locals 1
    .param p1, "thumbStrokeWidthResourceId"    # I

    .line 1020
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    if-eqz p1, :cond_0

    .line 1021
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/slider/BaseSlider;->setThumbStrokeWidth(F)V

    .line 1023
    :cond_0
    return-void
.end method

.method public setThumbTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "thumbColor"    # Lccsanandroid/content/res/ColorStateList;

    .line 1194
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1195
    return-void

    .line 1198
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 1199
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->invalidate()V

    .line 1200
    return-void
.end method

.method public setTickActiveTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tickColor"    # Lccsanandroid/content/res/ColorStateList;

    .line 1258
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->tickColorActive:Lccsanandroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1259
    return-void

    .line 1261
    :cond_0
    iput-object p1, p0, Lccsancom/google/android/material/slider/BaseSlider;->tickColorActive:Lccsanandroid/content/res/ColorStateList;

    .line 1262
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->activeTicksPaint:Lccsanandroid/graphics/Paint;

    invoke-direct {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->getColorForState(Lccsanandroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 1263
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->invalidate()V

    .line 1264
    return-void
.end method

.method public setTickInactiveTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tickColor"    # Lccsanandroid/content/res/ColorStateList;

    .line 1287
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->tickColorInactive:Lccsanandroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1288
    return-void

    .line 1290
    :cond_0
    iput-object p1, p0, Lccsancom/google/android/material/slider/BaseSlider;->tickColorInactive:Lccsanandroid/content/res/ColorStateList;

    .line 1291
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Lccsanandroid/graphics/Paint;

    invoke-direct {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->getColorForState(Lccsanandroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 1292
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->invalidate()V

    .line 1293
    return-void
.end method

.method public setTickTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "tickColor"    # Lccsanandroid/content/res/ColorStateList;

    .line 1233
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->setTickInactiveTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 1234
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->setTickActiveTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 1235
    return-void
.end method

.method public setTickVisible(Z)V
    .locals 1
    .param p1, "tickVisible"    # Z

    .line 1312
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-boolean v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->tickVisible:Z

    if-eq v0, p1, :cond_0

    .line 1313
    iput-boolean p1, p0, Lccsancom/google/android/material/slider/BaseSlider;->tickVisible:Z

    .line 1314
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 1316
    :cond_0
    return-void
.end method

.method public setTrackActiveTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "trackColor"    # Lccsanandroid/content/res/ColorStateList;

    .line 1374
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackColorActive:Lccsanandroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1375
    return-void

    .line 1377
    :cond_0
    iput-object p1, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackColorActive:Lccsanandroid/content/res/ColorStateList;

    .line 1378
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->activeTrackPaint:Lccsanandroid/graphics/Paint;

    invoke-direct {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->getColorForState(Lccsanandroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 1379
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->invalidate()V

    .line 1380
    return-void
.end method

.method public setTrackHeight(I)V
    .locals 1
    .param p1, "trackHeight"    # I

    .line 1135
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackHeight:I

    if-eq v0, p1, :cond_0

    .line 1136
    iput p1, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackHeight:I

    .line 1137
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->invalidateTrack()V

    .line 1138
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 1140
    :cond_0
    return-void
.end method

.method public setTrackInactiveTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "trackColor"    # Lccsanandroid/content/res/ColorStateList;

    .line 1403
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackColorInactive:Lccsanandroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1404
    return-void

    .line 1406
    :cond_0
    iput-object p1, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackColorInactive:Lccsanandroid/content/res/ColorStateList;

    .line 1407
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Lccsanandroid/graphics/Paint;

    invoke-direct {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->getColorForState(Lccsanandroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 1408
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->invalidate()V

    .line 1409
    return-void
.end method

.method public setTrackTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "trackColor"    # Lccsanandroid/content/res/ColorStateList;

    .line 1349
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->setTrackInactiveTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 1350
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->setTrackActiveTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 1351
    return-void
.end method

.method public setValueFrom(F)V
    .locals 1
    .param p1, "valueFrom"    # F

    .line 614
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iput p1, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 615
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    .line 616
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 617
    return-void
.end method

.method public setValueTo(F)V
    .locals 1
    .param p1, "valueTo"    # F

    .line 640
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iput p1, p0, Lccsancom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 641
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    .line 642
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 643
    return-void
.end method

.method setValues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 687
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lccsancom/google/android/material/slider/BaseSlider;->setValuesInternal(Ljava/util/ArrayList;)V

    .line 688
    return-void
.end method

.method varargs setValues([Ljava/lang/Float;)V
    .locals 1
    .param p1, "values"    # [Ljava/lang/Float;

    .line 666
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 667
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 668
    invoke-direct {p0, v0}, Lccsancom/google/android/material/slider/BaseSlider;->setValuesInternal(Ljava/util/ArrayList;)V

    .line 669
    return-void
.end method

.method updateBoundsForVirturalViewId(ILccsanandroid/graphics/Rect;)V
    .locals 6
    .param p1, "virtualViewId"    # I
    .param p2, "virtualViewBounds"    # Lccsanandroid/graphics/Rect;

    .line 2467
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider;, "Lccsancom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    invoke-virtual {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lccsancom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    move-result v1

    iget v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->trackWidth:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 2468
    .local v0, "x":I
    invoke-direct {p0}, Lccsancom/google/android/material/slider/BaseSlider;->calculateTop()I

    move-result v1

    .line 2470
    .local v1, "y":I
    iget v2, p0, Lccsancom/google/android/material/slider/BaseSlider;->thumbRadius:I

    sub-int v3, v0, v2

    sub-int v4, v1, v2

    add-int v5, v0, v2

    add-int/2addr v2, v1

    invoke-virtual {p2, v3, v4, v5, v2}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 2471
    return-void
.end method
