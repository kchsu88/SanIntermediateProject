.class public Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;
.super Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;,
        Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;,
        Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SaveFlags;,
        Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$State;,
        Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lccsanandroid/view/View;",
        ">",
        "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final CORNER_ANIMATION_DURATION:I = 0x1f4

.field private static final DEF_STYLE_RES:I

.field private static final HIDE_FRICTION:F = 0.1f

.field private static final HIDE_THRESHOLD:F = 0.5f

.field public static final PEEK_HEIGHT_AUTO:I = -0x1

.field public static final SAVE_ALL:I = -0x1

.field public static final SAVE_FIT_TO_CONTENTS:I = 0x2

.field public static final SAVE_HIDEABLE:I = 0x4

.field public static final SAVE_NONE:I = 0x0

.field public static final SAVE_PEEK_HEIGHT:I = 0x1

.field public static final SAVE_SKIP_COLLAPSED:I = 0x8

.field private static final SIGNIFICANT_VEL_THRESHOLD:I = 0x1f4

.field public static final STATE_COLLAPSED:I = 0x4

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_EXPANDED:I = 0x3

.field public static final STATE_HALF_EXPANDED:I = 0x6

.field public static final STATE_HIDDEN:I = 0x5

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BottomSheetBehavior"


# instance fields
.field activePointerId:I

.field private final callbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;",
            ">;"
        }
    .end annotation
.end field

.field private childHeight:I

.field collapsedOffset:I

.field private final dragCallback:Lccsanandroidx/customview/widget/ViewDragHelper$Callback;

.field private draggable:Z

.field elevation:F

.field private expandHalfwayActionId:I

.field expandedOffset:I

.field private fitToContents:Z

.field fitToContentsOffset:I

.field private gestureInsetBottom:I

.field private gestureInsetBottomIgnored:Z

.field halfExpandedOffset:I

.field halfExpandedRatio:F

.field hideable:Z

.field private ignoreEvents:Z

.field private importantForAccessibilityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lccsanandroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private initialY:I

.field private interpolatorAnimator:Lccsanandroid/animation/ValueAnimator;

.field private isShapeExpanded:Z

.field private lastNestedScrollDy:I

.field private materialShapeDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

.field private maximumVelocity:F

.field private nestedScrolled:Z

.field nestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field parentHeight:I

.field parentWidth:I

.field private peekHeight:I

.field private peekHeightAuto:Z

.field private peekHeightGestureInsetBuffer:I

.field private peekHeightMin:I

.field private saveFlags:I

.field private settleRunnable:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "TV;>.SettleRunnable;"
        }
    .end annotation
.end field

.field private shapeAppearanceModelDefault:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

.field private shapeThemingEnabled:Z

.field private skipCollapsed:Z

.field state:I

.field touchingScrollingChild:Z

.field private updateImportantForAccessibilityOnSiblings:Z

.field private velocityTracker:Lccsanandroid/view/VelocityTracker;

.field viewDragHelper:Lccsanandroidx/customview/widget/ViewDragHelper;

.field viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 232
    sget v0, Lccsancom/google/android/material/R$style;->Widget_Design_BottomSheet_Modal:I

    sput v0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 284
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    invoke-direct {p0}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    .line 197
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 199
    iput-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->settleRunnable:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    .line 240
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    .line 244
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->elevation:F

    .line 250
    iput-boolean v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    .line 252
    const/4 v0, 0x4

    iput v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 282
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->expandHalfwayActionId:I

    .line 1346
    new-instance v0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$4;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$4;-><init>(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    iput-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->dragCallback:Lccsanandroidx/customview/widget/ViewDragHelper$Callback;

    .line 284
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 287
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    invoke-direct {p0, p1, p2}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    .line 197
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 199
    iput-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    .line 228
    const/4 v2, 0x0

    iput-object v2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->settleRunnable:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    .line 240
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    .line 244
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->elevation:F

    .line 250
    iput-boolean v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    .line 252
    const/4 v4, 0x4

    iput v4, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 270
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 282
    const/4 v4, -0x1

    iput v4, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->expandHalfwayActionId:I

    .line 1346
    new-instance v5, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$4;

    invoke-direct {v5, p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$4;-><init>(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    iput-object v5, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->dragCallback:Lccsanandroidx/customview/widget/ViewDragHelper$Callback;

    .line 289
    nop

    .line 290
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v5

    sget v6, Lccsancom/google/android/material/R$dimen;->mtrl_min_touch_target_size:I

    invoke-virtual {v5, v6}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightGestureInsetBuffer:I

    .line 292
    sget-object v5, Lccsancom/google/android/material/R$styleable;->BottomSheetBehavior_Layout:[I

    invoke-virtual {p1, p2, v5}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v5

    .line 293
    .local v5, "a":Lccsanandroid/content/res/TypedArray;
    sget v6, Lccsancom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_shapeAppearance:I

    invoke-virtual {v5, v6}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    iput-boolean v6, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->shapeThemingEnabled:Z

    .line 294
    sget v6, Lccsancom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_backgroundTint:I

    invoke-virtual {v5, v6}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    .line 295
    .local v6, "hasBackgroundTint":Z
    if-eqz v6, :cond_0

    .line 296
    sget v7, Lccsancom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_backgroundTint:I

    .line 297
    invoke-static {p1, v5, v7}, Lccsancom/google/android/material/resources/MaterialResources;->getColorStateList(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v7

    .line 299
    .local v7, "bottomSheetColor":Lccsanandroid/content/res/ColorStateList;
    invoke-direct {p0, p1, p2, v6, v7}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->createMaterialShapeDrawable(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;ZLccsanandroid/content/res/ColorStateList;)V

    .line 300
    .end local v7    # "bottomSheetColor":Lccsanandroid/content/res/ColorStateList;
    goto :goto_0

    .line 301
    :cond_0
    invoke-direct {p0, p1, p2, v6}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->createMaterialShapeDrawable(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;Z)V

    .line 303
    :goto_0
    invoke-direct {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->createShapeValueAnimator()V

    .line 305
    sget v7, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_1

    .line 306
    sget v7, Lccsancom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_android_elevation:I

    invoke-virtual {v5, v7, v3}, Lccsanandroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->elevation:F

    .line 309
    :cond_1
    sget v3, Lccsancom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    invoke-virtual {v5, v3}, Lccsanandroid/content/res/TypedArray;->peekValue(I)Lccsanandroid/util/TypedValue;

    move-result-object v3

    .line 310
    .local v3, "value":Lccsanandroid/util/TypedValue;
    if-eqz v3, :cond_2

    iget v7, v3, Lccsanandroid/util/TypedValue;->data:I

    if-ne v7, v4, :cond_2

    .line 311
    iget v4, v3, Lccsanandroid/util/TypedValue;->data:I

    invoke-virtual {p0, v4}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    goto :goto_1

    .line 313
    :cond_2
    sget v7, Lccsancom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    .line 314
    invoke-virtual {v5, v7, v4}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 313
    invoke-virtual {p0, v4}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    .line 317
    :goto_1
    sget v4, Lccsancom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_hideable:I

    invoke-virtual {v5, v4, v0}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->setHideable(Z)V

    .line 318
    sget v4, Lccsancom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_gestureInsetBottomIgnored:I

    .line 319
    invoke-virtual {v5, v4, v0}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 318
    invoke-virtual {p0, v4}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->setGestureInsetBottomIgnored(Z)V

    .line 320
    sget v4, Lccsancom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_fitToContents:I

    .line 321
    invoke-virtual {v5, v4, v1}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 320
    invoke-virtual {p0, v4}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->setFitToContents(Z)V

    .line 322
    sget v4, Lccsancom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_skipCollapsed:I

    .line 323
    invoke-virtual {v5, v4, v0}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 322
    invoke-virtual {p0, v4}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->setSkipCollapsed(Z)V

    .line 324
    sget v4, Lccsancom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_draggable:I

    invoke-virtual {v5, v4, v1}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->setDraggable(Z)V

    .line 325
    sget v1, Lccsancom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_saveFlags:I

    invoke-virtual {v5, v1, v0}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->setSaveFlags(I)V

    .line 326
    sget v1, Lccsancom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_halfExpandedRatio:I

    .line 327
    invoke-virtual {v5, v1, v2}, Lccsanandroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 326
    invoke-virtual {p0, v1}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->setHalfExpandedRatio(F)V

    .line 329
    sget v1, Lccsancom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_expandedOffset:I

    invoke-virtual {v5, v1}, Lccsanandroid/content/res/TypedArray;->peekValue(I)Lccsanandroid/util/TypedValue;

    move-result-object v1

    .line 330
    .end local v3    # "value":Lccsanandroid/util/TypedValue;
    .local v1, "value":Lccsanandroid/util/TypedValue;
    if-eqz v1, :cond_3

    iget v2, v1, Lccsanandroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3

    .line 331
    iget v0, v1, Lccsanandroid/util/TypedValue;->data:I

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->setExpandedOffset(I)V

    goto :goto_2

    .line 333
    :cond_3
    sget v2, Lccsancom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_expandedOffset:I

    .line 334
    invoke-virtual {v5, v2, v0}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 333
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->setExpandedOffset(I)V

    .line 337
    :goto_2
    invoke-virtual {v5}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 338
    invoke-static {p1}, Lccsanandroid/view/ViewConfiguration;->get(Lccsanandroid/content/Context;)Lccsanandroid/view/ViewConfiguration;

    move-result-object v0

    .line 339
    .local v0, "configuration":Lccsanandroid/view/ViewConfiguration;
    invoke-virtual {v0}, Lccsanandroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->maximumVelocity:F

    .line 340
    return-void
.end method

.method static synthetic access$000(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;)Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 82
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    return-object v0
.end method

.method static synthetic access$102(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;I)I
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;
    .param p1, "x1"    # I

    .line 82
    iput p1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottom:I

    return p1
.end method

.method static synthetic access$200(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;
    .param p1, "x1"    # Z

    .line 82
    invoke-direct {p0, p1}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->updatePeekHeight(Z)V

    return-void
.end method

.method static synthetic access$400(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 82
    iget-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    return v0
.end method

.method static synthetic access$500(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 82
    iget-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    return v0
.end method

.method static synthetic access$600(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;)I
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 82
    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    return v0
.end method

.method static synthetic access$700(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 82
    iget-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    return v0
.end method

.method private addAccessibilityActionForState(Lccsanandroid/view/View;II)I
    .locals 2
    .param p2, "stringResId"    # I
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;II)I"
        }
    .end annotation

    .line 1776
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    .local p1, "child":Lccsanandroid/view/View;, "TV;"
    nop

    .line 1778
    invoke-virtual {p1}, Lccsanandroid/view/View;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccsanandroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1779
    invoke-direct {p0, p3}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->createAccessibilityViewCommandForState(I)Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand;

    move-result-object v1

    .line 1776
    invoke-static {p1, v0, v1}, Lccsanandroidx/core/view/ViewCompat;->addAccessibilityAction(Lccsanandroid/view/View;Ljava/lang/CharSequence;Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand;)I

    move-result v0

    return v0
.end method

.method private calculateCollapsedOffset()V
    .locals 3

    .line 1153
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    invoke-direct {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->calculatePeekHeight()I

    move-result v0

    .line 1155
    .local v0, "peek":I
    iget-boolean v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v1, :cond_0

    .line 1156
    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    sub-int/2addr v1, v0

    iget v2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    goto :goto_0

    .line 1158
    :cond_0
    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    sub-int/2addr v1, v0

    iput v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 1160
    :goto_0
    return-void
.end method

.method private calculateHalfExpandedOffset()V
    .locals 3

    .line 1163
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    int-to-float v0, v0

    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 1164
    return-void
.end method

.method private calculatePeekHeight()I
    .locals 3

    .line 1142
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    if-eqz v0, :cond_0

    .line 1143
    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightMin:I

    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    iget v2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->parentWidth:I

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v2, v2, 0x10

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1144
    .local v0, "desiredHeight":I
    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->childHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    .line 1146
    .end local v0    # "desiredHeight":I
    :cond_0
    iget-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottomIgnored:Z

    if-nez v0, :cond_1

    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottom:I

    if-lez v0, :cond_1

    .line 1147
    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    iget v2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightGestureInsetBuffer:I

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1149
    :cond_1
    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    return v0
.end method

.method private createAccessibilityViewCommandForState(I)Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand;
    .locals 1
    .param p1, "state"    # I

    .line 1783
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    new-instance v0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$5;

    invoke-direct {v0, p0, p1}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$5;-><init>(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;I)V

    return-object v0
.end method

.method private createMaterialShapeDrawable(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;Z)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "hasBackgroundTint"    # Z

    .line 1227
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->createMaterialShapeDrawable(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;ZLccsanandroid/content/res/ColorStateList;)V

    .line 1228
    return-void
.end method

.method private createMaterialShapeDrawable(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;ZLccsanandroid/content/res/ColorStateList;)V
    .locals 4
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "hasBackgroundTint"    # Z
    .param p4, "bottomSheetColor"    # Lccsanandroid/content/res/ColorStateList;

    .line 1235
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->shapeThemingEnabled:Z

    if-eqz v0, :cond_1

    .line 1236
    sget v0, Lccsancom/google/android/material/R$attr;->bottomSheetStyle:I

    sget v1, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->DEF_STYLE_RES:I

    .line 1237
    invoke-static {p1, p2, v0, v1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->builder(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 1238
    invoke-virtual {v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->shapeAppearanceModelDefault:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 1240
    new-instance v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->shapeAppearanceModelDefault:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v0, v1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    .line 1241
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Lccsanandroid/content/Context;)V

    .line 1243
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 1244
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p4}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Lccsanandroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1247
    :cond_0
    new-instance v0, Lccsanandroid/util/TypedValue;

    invoke-direct {v0}, Lccsanandroid/util/TypedValue;-><init>()V

    .line 1248
    .local v0, "defaultColor":Lccsanandroid/util/TypedValue;
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010031

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lccsanandroid/content/res/Resources$Theme;->resolveAttribute(ILccsanandroid/util/TypedValue;Z)Z

    .line 1249
    iget-object v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    iget v2, v0, Lccsanandroid/util/TypedValue;->data:I

    invoke-virtual {v1, v2}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    .line 1252
    .end local v0    # "defaultColor":Lccsanandroid/util/TypedValue;
    :cond_1
    :goto_0
    return-void
.end method

.method private createShapeValueAnimator()V
    .locals 3

    .line 1255
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lccsanandroid/animation/ValueAnimator;->ofFloat([F)Lccsanandroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Lccsanandroid/animation/ValueAnimator;

    .line 1256
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lccsanandroid/animation/ValueAnimator;->setDuration(J)Lccsanandroid/animation/ValueAnimator;

    .line 1257
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Lccsanandroid/animation/ValueAnimator;

    new-instance v1, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$2;

    invoke-direct {v1, p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$2;-><init>(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    invoke-virtual {v0, v1}, Lccsanandroid/animation/ValueAnimator;->addUpdateListener(Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1267
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static from(Lccsanandroid/view/View;)Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Lccsanandroid/view/View;",
            ">(TV;)",
            "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "TV;>;"
        }
    .end annotation

    .line 1637
    .local p0, "view":Lccsanandroid/view/View;, "TV;"
    invoke-virtual {p0}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1638
    .local v0, "params":Lccsanandroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 1641
    move-object v1, v0

    check-cast v1, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1642
    invoke-virtual {v1}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    .line 1643
    .local v1, "behavior":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<*>;"
    instance-of v2, v1, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v2, :cond_0

    .line 1646
    move-object v2, v1

    check-cast v2, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object v2

    .line 1644
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The view is not associated with BottomSheetBehavior"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1639
    .end local v1    # "behavior":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<*>;"
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The view is not a child of CoordinatorLayout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getYVelocity()F
    .locals 3

    .line 1290
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Lccsanandroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1291
    const/4 v0, 0x0

    return v0

    .line 1293
    :cond_0
    const/16 v1, 0x3e8

    iget v2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->maximumVelocity:F

    invoke-virtual {v0, v1, v2}, Lccsanandroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1294
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Lccsanandroid/view/VelocityTracker;

    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    invoke-virtual {v0, v1}, Lccsanandroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    return v0
.end method

.method private replaceAccessibilityActionForState(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V
    .locals 2
    .param p2, "action"    # Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;",
            "I)V"
        }
    .end annotation

    .line 1771
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    .local p1, "child":Lccsanandroid/view/View;, "TV;"
    nop

    .line 1772
    invoke-direct {p0, p3}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->createAccessibilityViewCommandForState(I)Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand;

    move-result-object v0

    .line 1771
    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Lccsanandroidx/core/view/ViewCompat;->replaceAccessibilityAction(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 1773
    return-void
.end method

.method private reset()V
    .locals 1

    .line 1167
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    .line 1168
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Lccsanandroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1169
    invoke-virtual {v0}, Lccsanandroid/view/VelocityTracker;->recycle()V

    .line 1170
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Lccsanandroid/view/VelocityTracker;

    .line 1172
    :cond_0
    return-void
.end method

.method private restoreOptionalState(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;)V
    .locals 3
    .param p1, "ss"    # Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;

    .line 1175
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    if-nez v0, :cond_0

    .line 1176
    return-void

    .line 1178
    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    .line 1179
    :cond_1
    iget v0, p1, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->peekHeight:I

    iput v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    .line 1181
    :cond_2
    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_4

    .line 1183
    :cond_3
    iget-boolean v0, p1, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->fitToContents:Z

    iput-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 1185
    :cond_4
    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    if-eq v0, v1, :cond_5

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_6

    .line 1186
    :cond_5
    iget-boolean v0, p1, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->hideable:Z

    iput-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 1188
    :cond_6
    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    if-eq v0, v1, :cond_7

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    .line 1190
    :cond_7
    iget-boolean v0, p1, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->skipCollapsed:Z

    iput-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    .line 1192
    :cond_8
    return-void
.end method

.method private setSystemGestureInsets(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "child"    # Lccsanandroid/view/View;

    .line 1274
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->isGestureInsetBottomIgnored()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    if-nez v0, :cond_0

    .line 1275
    new-instance v0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$3;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$3;-><init>(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    invoke-static {p1, v0}, Lccsancom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Lccsanandroid/view/View;Lccsancom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    .line 1287
    :cond_0
    return-void
.end method

.method private settleToStatePendingLayout(I)V
    .locals 4
    .param p1, "state"    # I

    .line 1060
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    .line 1061
    .local v0, "child":Lccsanandroid/view/View;, "TV;"
    if-nez v0, :cond_0

    .line 1062
    return-void

    .line 1065
    :cond_0
    invoke-virtual {v0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    .line 1066
    .local v1, "parent":Lccsanandroid/view/ViewParent;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lccsanandroid/view/ViewParent;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lccsanandroidx/core/view/ViewCompat;->isAttachedToWindow(Lccsanandroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1067
    move v2, p1

    .line 1068
    .local v2, "finalState":I
    new-instance v3, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$1;

    invoke-direct {v3, p0, v0, v2}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$1;-><init>(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;Lccsanandroid/view/View;I)V

    invoke-virtual {v0, v3}, Lccsanandroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1075
    .end local v2    # "finalState":I
    goto :goto_0

    .line 1076
    :cond_1
    invoke-virtual {p0, v0, p1}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->settleToState(Lccsanandroid/view/View;I)V

    .line 1078
    :goto_0
    return-void
.end method

.method private updateAccessibilityActions()V
    .locals 5

    .line 1717
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 1718
    return-void

    .line 1720
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    .line 1721
    .local v0, "child":Lccsanandroid/view/View;, "TV;"
    if-nez v0, :cond_1

    .line 1722
    return-void

    .line 1724
    :cond_1
    const/high16 v1, 0x80000

    invoke-static {v0, v1}, Lccsanandroidx/core/view/ViewCompat;->removeAccessibilityAction(Lccsanandroid/view/View;I)V

    .line 1725
    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lccsanandroidx/core/view/ViewCompat;->removeAccessibilityAction(Lccsanandroid/view/View;I)V

    .line 1726
    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lccsanandroidx/core/view/ViewCompat;->removeAccessibilityAction(Lccsanandroid/view/View;I)V

    .line 1728
    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->expandHalfwayActionId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1729
    invoke-static {v0, v1}, Lccsanandroidx/core/view/ViewCompat;->removeAccessibilityAction(Lccsanandroid/view/View;I)V

    .line 1731
    :cond_2
    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    .line 1732
    sget v1, Lccsancom/google/android/material/R$string;->bottomsheet_action_expand_halfway:I

    .line 1733
    invoke-direct {p0, v0, v1, v2}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->addAccessibilityActionForState(Lccsanandroid/view/View;II)I

    move-result v1

    iput v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->expandHalfwayActionId:I

    .line 1737
    :cond_3
    iget-boolean v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_4

    .line 1738
    sget-object v1, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_DISMISS:Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {p0, v0, v1, v3}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->replaceAccessibilityActionForState(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    .line 1742
    :cond_4
    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v3, 0x3

    const/4 v4, 0x4

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1752
    :pswitch_1
    sget-object v1, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_COLLAPSE:Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {p0, v0, v1, v4}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->replaceAccessibilityActionForState(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    .line 1754
    sget-object v1, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_EXPAND:Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {p0, v0, v1, v3}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->replaceAccessibilityActionForState(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    .line 1756
    goto :goto_0

    .line 1760
    :pswitch_2
    iget-boolean v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v1, :cond_5

    const/4 v2, 0x3

    :cond_5
    move v1, v2

    .line 1761
    .local v1, "nextState":I
    sget-object v2, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_EXPAND:Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {p0, v0, v2, v1}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->replaceAccessibilityActionForState(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    .line 1763
    goto :goto_0

    .line 1745
    .end local v1    # "nextState":I
    :pswitch_3
    iget-boolean v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v1, :cond_6

    const/4 v2, 0x4

    :cond_6
    move v1, v2

    .line 1746
    .restart local v1    # "nextState":I
    sget-object v2, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_COLLAPSE:Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {p0, v0, v2, v1}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->replaceAccessibilityActionForState(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    .line 1748
    nop

    .line 1767
    .end local v1    # "nextState":I
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateDrawableForTargetState(I)V
    .locals 7
    .param p1, "state"    # I

    .line 1120
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1122
    return-void

    .line 1125
    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1126
    .local v1, "expand":Z
    :goto_0
    iget-boolean v4, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->isShapeExpanded:Z

    if-eq v4, v1, :cond_4

    .line 1127
    iput-boolean v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->isShapeExpanded:Z

    .line 1128
    iget-object v4, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Lccsanandroid/animation/ValueAnimator;

    if-eqz v4, :cond_4

    .line 1129
    invoke-virtual {v4}, Lccsanandroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1130
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Lccsanandroid/animation/ValueAnimator;

    invoke-virtual {v0}, Lccsanandroid/animation/ValueAnimator;->reverse()V

    goto :goto_2

    .line 1132
    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1133
    .local v5, "to":F
    :goto_1
    sub-float/2addr v4, v5

    .line 1134
    .local v4, "from":F
    iget-object v6, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Lccsanandroid/animation/ValueAnimator;

    new-array v0, v0, [F

    aput v4, v0, v3

    aput v5, v0, v2

    invoke-virtual {v6, v0}, Lccsanandroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1135
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Lccsanandroid/animation/ValueAnimator;

    invoke-virtual {v0}, Lccsanandroid/animation/ValueAnimator;->start()V

    .line 1139
    .end local v4    # "from":F
    .end local v5    # "to":F
    :cond_4
    :goto_2
    return-void
.end method

.method private updateImportantForAccessibility(Z)V
    .locals 8
    .param p1, "expanded"    # Z

    .line 1662
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 1663
    return-void

    .line 1666
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    .line 1667
    .local v0, "viewParent":Lccsanandroid/view/ViewParent;
    instance-of v1, v0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez v1, :cond_1

    .line 1668
    return-void

    .line 1671
    :cond_1
    move-object v1, v0

    check-cast v1, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 1672
    .local v1, "parent":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    invoke-virtual {v1}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v2

    .line 1673
    .local v2, "childCount":I
    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_3

    if-eqz p1, :cond_3

    .line 1674
    iget-object v3, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    if-nez v3, :cond_2

    .line 1675
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    goto :goto_0

    .line 1678
    :cond_2
    return-void

    .line 1682
    :cond_3
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_8

    .line 1683
    invoke-virtual {v1, v3}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v5

    .line 1684
    .local v5, "child":Lccsanandroid/view/View;
    iget-object v6, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_4

    .line 1685
    goto :goto_2

    .line 1688
    :cond_4
    if-eqz p1, :cond_6

    .line 1690
    sget v6, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v4, :cond_5

    .line 1691
    iget-object v6, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    invoke-virtual {v5}, Lccsanandroid/view/View;->getImportantForAccessibility()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    :cond_5
    iget-boolean v6, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    if-eqz v6, :cond_7

    .line 1694
    const/4 v6, 0x4

    invoke-static {v5, v6}, Lccsanandroidx/core/view/ViewCompat;->setImportantForAccessibility(Lccsanandroid/view/View;I)V

    goto :goto_2

    .line 1698
    :cond_6
    iget-boolean v6, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    if-eqz v6, :cond_7

    .line 1700
    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1702
    iget-object v6, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lccsanandroidx/core/view/ViewCompat;->setImportantForAccessibility(Lccsanandroid/view/View;I)V

    .line 1682
    .end local v5    # "child":Lccsanandroid/view/View;
    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1707
    .end local v3    # "i":I
    :cond_8
    if-nez p1, :cond_9

    .line 1708
    const/4 v3, 0x0

    iput-object v3, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    goto :goto_3

    .line 1709
    :cond_9
    iget-boolean v3, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    if-eqz v3, :cond_a

    .line 1712
    iget-object v3, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lccsanandroid/view/View;->sendAccessibilityEvent(I)V

    .line 1714
    :cond_a
    :goto_3
    return-void
.end method

.method private updatePeekHeight(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 796
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 797
    invoke-direct {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->calculateCollapsedOffset()V

    .line 798
    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 799
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    .line 800
    .local v0, "view":Lccsanandroid/view/View;, "TV;"
    if-eqz v0, :cond_1

    .line 801
    if-eqz p1, :cond_0

    .line 802
    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    invoke-direct {p0, v1}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->settleToStatePendingLayout(I)V

    goto :goto_0

    .line 804
    :cond_0
    invoke-virtual {v0}, Lccsanandroid/view/View;->requestLayout()V

    .line 809
    .end local v0    # "view":Lccsanandroid/view/View;, "TV;"
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addBottomSheetCallback(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V
    .locals 1
    .param p1, "callback"    # Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    .line 1001
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1002
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1004
    :cond_0
    return-void
.end method

.method public disableShapeAnimations()V
    .locals 1

    .line 1524
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Lccsanandroid/animation/ValueAnimator;

    .line 1525
    return-void
.end method

.method dispatchOnSlide(I)V
    .locals 4
    .param p1, "top"    # I

    .line 1496
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    .line 1497
    .local v0, "bottomSheet":Lccsanandroid/view/View;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1498
    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    if-gt p1, v1, :cond_1

    .line 1499
    invoke-virtual {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int v2, v1, p1

    int-to-float v2, v2

    .line 1501
    invoke-virtual {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_1

    .line 1499
    :cond_1
    :goto_0
    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int v2, v1, p1

    int-to-float v2, v2

    iget v3, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    div-float/2addr v2, v1

    .line 1501
    :goto_1
    move v1, v2

    .line 1502
    .local v1, "slideOffset":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v3, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1503
    iget-object v3, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v3, v0, v1}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;->onSlide(Lccsanandroid/view/View;F)V

    .line 1502
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1506
    .end local v1    # "slideOffset":F
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method findScrollingChild(Lccsanandroid/view/View;)Lccsanandroid/view/View;
    .locals 4
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 1210
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    invoke-static {p1}, Lccsanandroidx/core/view/ViewCompat;->isNestedScrollingEnabled(Lccsanandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1211
    return-object p1

    .line 1213
    :cond_0
    instance-of v0, p1, Lccsanandroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1214
    move-object v0, p1

    check-cast v0, Lccsanandroid/view/ViewGroup;

    .line 1215
    .local v0, "group":Lccsanandroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1216
    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->findScrollingChild(Lccsanandroid/view/View;)Lccsanandroid/view/View;

    move-result-object v3

    .line 1217
    .local v3, "scrollingChild":Lccsanandroid/view/View;
    if-eqz v3, :cond_1

    .line 1218
    return-object v3

    .line 1215
    .end local v3    # "scrollingChild":Lccsanandroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1222
    .end local v0    # "group":Lccsanandroid/view/ViewGroup;
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpandedOffset()I
    .locals 1

    .line 882
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->expandedOffset:I

    :goto_0
    return v0
.end method

.method public getHalfExpandedRatio()F
    .locals 1

    .line 854
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    return v0
.end method

.method public getPeekHeight()I
    .locals 1

    .line 820
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    :goto_0
    return v0
.end method

.method getPeekHeightMin()I
    .locals 1

    .line 1510
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightMin:I

    return v0
.end method

.method public getSaveFlags()I
    .locals 1

    .line 970
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    return v0
.end method

.method public getSkipCollapsed()Z
    .locals 1

    .line 933
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    return v0
.end method

.method public getState()I
    .locals 1

    .line 1088
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    return v0
.end method

.method public isDraggable()Z
    .locals 1

    .line 948
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    return v0
.end method

.method public isFitToContents()Z
    .locals 1

    .line 727
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    return v0
.end method

.method public isGestureInsetBottomIgnored()Z
    .locals 1

    .line 1056
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottomIgnored:Z

    return v0
.end method

.method public isHideable()Z
    .locals 1

    .line 909
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    return v0
.end method

.method public onAttachedToLayoutParams(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .locals 1
    .param p1, "layoutParams"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 365
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    invoke-super {p0, p1}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onAttachedToLayoutParams(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 369
    iput-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Lccsanandroidx/customview/widget/ViewDragHelper;

    .line 370
    return-void
.end method

.method public onDetachedFromLayoutParams()V
    .locals 1

    .line 374
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    invoke-super {p0}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDetachedFromLayoutParams()V

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 377
    iput-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Lccsanandroidx/customview/widget/ViewDragHelper;

    .line 378
    return-void
.end method

.method public onInterceptTouchEvent(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "event"    # Lccsanandroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Lccsanandroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 447
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    invoke-virtual {p2}, Lccsanandroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 451
    :cond_0
    invoke-virtual {p3}, Lccsanandroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 453
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 454
    invoke-direct {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->reset()V

    .line 456
    :cond_1
    iget-object v3, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Lccsanandroid/view/VelocityTracker;

    if-nez v3, :cond_2

    .line 457
    invoke-static {}, Lccsanandroid/view/VelocityTracker;->obtain()Lccsanandroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Lccsanandroid/view/VelocityTracker;

    .line 459
    :cond_2
    iget-object v3, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Lccsanandroid/view/VelocityTracker;

    invoke-virtual {v3, p3}, Lccsanandroid/view/VelocityTracker;->addMovement(Lccsanandroid/view/MotionEvent;)V

    .line 460
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 463
    :pswitch_1
    iput-boolean v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->touchingScrollingChild:Z

    .line 464
    iput v4, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    .line 466
    iget-boolean v4, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    if-eqz v4, :cond_6

    .line 467
    iput-boolean v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    .line 468
    return v1

    .line 472
    :pswitch_2
    invoke-virtual {p3}, Lccsanandroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    .line 473
    .local v6, "initialX":I
    invoke-virtual {p3}, Lccsanandroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    .line 476
    iget v7, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    if-eq v7, v5, :cond_4

    .line 477
    iget-object v7, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsanandroid/view/View;

    goto :goto_0

    :cond_3
    move-object v7, v3

    .line 478
    .local v7, "scroll":Lccsanandroid/view/View;
    :goto_0
    if-eqz v7, :cond_4

    iget v8, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    invoke-virtual {p1, v7, v6, v8}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Lccsanandroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 479
    invoke-virtual {p3}, Lccsanandroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    invoke-virtual {p3, v8}, Lccsanandroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    .line 480
    iput-boolean v2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->touchingScrollingChild:Z

    .line 483
    .end local v7    # "scroll":Lccsanandroid/view/View;
    :cond_4
    iget v7, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    if-ne v7, v4, :cond_5

    iget v4, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    .line 485
    invoke-virtual {p1, p2, v6, v4}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Lccsanandroid/view/View;II)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    .line 486
    nop

    .line 489
    .end local v6    # "initialX":I
    :cond_6
    :goto_2
    iget-boolean v4, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    if-nez v4, :cond_7

    iget-object v4, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Lccsanandroidx/customview/widget/ViewDragHelper;

    if-eqz v4, :cond_7

    .line 491
    invoke-virtual {v4, p3}, Lccsanandroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 492
    return v2

    .line 497
    :cond_7
    iget-object v4, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/view/View;

    .line 498
    .local v3, "scroll":Lccsanandroid/view/View;
    :cond_8
    if-ne v0, v5, :cond_9

    if-eqz v3, :cond_9

    iget-boolean v4, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    if-nez v4, :cond_9

    iget v4, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    if-eq v4, v2, :cond_9

    .line 502
    invoke-virtual {p3}, Lccsanandroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p3}, Lccsanandroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1, v3, v4, v5}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Lccsanandroid/view/View;II)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Lccsanandroidx/customview/widget/ViewDragHelper;

    if-eqz v4, :cond_9

    iget v4, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    int-to-float v4, v4

    .line 504
    invoke-virtual {p3}, Lccsanandroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Lccsanandroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v5}, Lccsanandroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9

    const/4 v1, 0x1

    goto :goto_3

    :cond_9
    nop

    .line 498
    :goto_3
    return v1

    .line 448
    .end local v0    # "action":I
    .end local v3    # "scroll":Lccsanandroid/view/View;
    :cond_a
    :goto_4
    iput-boolean v2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    .line 449
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLayoutChild(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;I)Z
    .locals 6
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 383
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    invoke-static {p1}, Lccsanandroidx/core/view/ViewCompat;->getFitsSystemWindows(Lccsanandroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Lccsanandroidx/core/view/ViewCompat;->getFitsSystemWindows(Lccsanandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    invoke-virtual {p2, v1}, Lccsanandroid/view/View;->setFitsSystemWindows(Z)V

    .line 387
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-nez v0, :cond_6

    .line 389
    nop

    .line 390
    invoke-virtual {p1}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    sget v4, Lccsancom/google/android/material/R$dimen;->design_bottom_sheet_peek_height_min:I

    invoke-virtual {v0, v4}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightMin:I

    .line 391
    invoke-direct {p0, p2}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->setSystemGestureInsets(Lccsanandroid/view/View;)V

    .line 392
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 395
    iget-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->shapeThemingEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_1

    .line 396
    invoke-static {p2, v0}, Lccsanandroidx/core/view/ViewCompat;->setBackground(Lccsanandroid/view/View;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 399
    :cond_1
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_5

    .line 401
    iget v4, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->elevation:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, v4, v5

    if-nez v5, :cond_2

    .line 402
    invoke-static {p2}, Lccsanandroidx/core/view/ViewCompat;->getElevation(Lccsanandroid/view/View;)F

    move-result v4

    goto :goto_0

    :cond_2
    nop

    .line 401
    :goto_0
    invoke-virtual {v0, v4}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 404
    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->isShapeExpanded:Z

    .line 405
    iget-object v4, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v4, v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    .line 407
    :cond_5
    invoke-direct {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions()V

    .line 408
    invoke-static {p2}, Lccsanandroidx/core/view/ViewCompat;->getImportantForAccessibility(Lccsanandroid/view/View;)I

    move-result v0

    if-nez v0, :cond_6

    .line 410
    invoke-static {p2, v1}, Lccsanandroidx/core/view/ViewCompat;->setImportantForAccessibility(Lccsanandroid/view/View;I)V

    .line 413
    :cond_6
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Lccsanandroidx/customview/widget/ViewDragHelper;

    if-nez v0, :cond_7

    .line 414
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->dragCallback:Lccsanandroidx/customview/widget/ViewDragHelper$Callback;

    invoke-static {p1, v0}, Lccsanandroidx/customview/widget/ViewDragHelper;->create(Lccsanandroid/view/ViewGroup;Lccsanandroidx/customview/widget/ViewDragHelper$Callback;)Lccsanandroidx/customview/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Lccsanandroidx/customview/widget/ViewDragHelper;

    .line 417
    :cond_7
    invoke-virtual {p2}, Lccsanandroid/view/View;->getTop()I

    move-result v0

    .line 419
    .local v0, "savedTop":I
    invoke-virtual {p1, p2, p3}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Lccsanandroid/view/View;I)V

    .line 421
    invoke-virtual {p1}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v4

    iput v4, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->parentWidth:I

    .line 422
    invoke-virtual {p1}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v4

    iput v4, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 423
    invoke-virtual {p2}, Lccsanandroid/view/View;->getHeight()I

    move-result v4

    iput v4, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->childHeight:I

    .line 424
    iget v5, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    sub-int/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    .line 425
    invoke-direct {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->calculateHalfExpandedOffset()V

    .line 426
    invoke-direct {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->calculateCollapsedOffset()V

    .line 428
    iget v3, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    if-ne v3, v2, :cond_8

    .line 429
    invoke-virtual {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v2

    invoke-static {p2, v2}, Lccsanandroidx/core/view/ViewCompat;->offsetTopAndBottom(Lccsanandroid/view/View;I)V

    goto :goto_3

    .line 430
    :cond_8
    const/4 v2, 0x6

    if-ne v3, v2, :cond_9

    .line 431
    iget v2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    invoke-static {p2, v2}, Lccsanandroidx/core/view/ViewCompat;->offsetTopAndBottom(Lccsanandroid/view/View;I)V

    goto :goto_3

    .line 432
    :cond_9
    iget-boolean v2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v2, :cond_a

    const/4 v2, 0x5

    if-ne v3, v2, :cond_a

    .line 433
    iget v2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    invoke-static {p2, v2}, Lccsanandroidx/core/view/ViewCompat;->offsetTopAndBottom(Lccsanandroid/view/View;I)V

    goto :goto_3

    .line 434
    :cond_a
    const/4 v2, 0x4

    if-ne v3, v2, :cond_b

    .line 435
    iget v2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    invoke-static {p2, v2}, Lccsanandroidx/core/view/ViewCompat;->offsetTopAndBottom(Lccsanandroid/view/View;I)V

    goto :goto_3

    .line 436
    :cond_b
    if-eq v3, v1, :cond_c

    const/4 v2, 0x2

    if-ne v3, v2, :cond_d

    .line 437
    :cond_c
    invoke-virtual {p2}, Lccsanandroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {p2, v2}, Lccsanandroidx/core/view/ViewCompat;->offsetTopAndBottom(Lccsanandroid/view/View;I)V

    .line 440
    :cond_d
    :goto_3
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p2}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->findScrollingChild(Lccsanandroid/view/View;)Lccsanandroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 441
    return v1
.end method

.method public onNestedPreFling(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;FF)Z
    .locals 3
    .param p1, "coordinatorLayout"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Lccsanandroid/view/View;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Lccsanandroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .line 712
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 713
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_1

    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 715
    invoke-super/range {p0 .. p5}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 713
    :goto_0
    return v1

    .line 717
    :cond_2
    return v1
.end method

.method public onNestedPreScroll(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;II[II)V
    .locals 6
    .param p1, "coordinatorLayout"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Lccsanandroid/view/View;
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "consumed"    # [I
    .param p7, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Lccsanandroid/view/View;",
            "II[II)V"
        }
    .end annotation

    .line 560
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    const/4 v0, 0x1

    if-ne p7, v0, :cond_0

    .line 562
    return-void

    .line 564
    :cond_0
    iget-object v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/View;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 565
    .local v1, "scrollingChild":Lccsanandroid/view/View;
    :goto_0
    if-eq p3, v1, :cond_2

    .line 566
    return-void

    .line 568
    :cond_2
    invoke-virtual {p2}, Lccsanandroid/view/View;->getTop()I

    move-result v2

    .line 569
    .local v2, "currentTop":I
    sub-int v3, v2, p5

    .line 570
    .local v3, "newTop":I
    if-lez p5, :cond_5

    .line 571
    invoke-virtual {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 572
    invoke-virtual {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v4

    sub-int v4, v2, v4

    aput v4, p6, v0

    .line 573
    aget v4, p6, v0

    neg-int v4, v4

    invoke-static {p2, v4}, Lccsanandroidx/core/view/ViewCompat;->offsetTopAndBottom(Lccsanandroid/view/View;I)V

    .line 574
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_2

    .line 576
    :cond_3
    iget-boolean v4, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    if-nez v4, :cond_4

    .line 578
    return-void

    .line 581
    :cond_4
    aput p5, p6, v0

    .line 582
    neg-int v4, p5

    invoke-static {p2, v4}, Lccsanandroidx/core/view/ViewCompat;->offsetTopAndBottom(Lccsanandroid/view/View;I)V

    .line 583
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_2

    .line 585
    :cond_5
    if-gez p5, :cond_9

    .line 586
    const/4 v4, -0x1

    invoke-virtual {p3, v4}, Lccsanandroid/view/View;->canScrollVertically(I)Z

    move-result v4

    if-nez v4, :cond_9

    .line 587
    iget v4, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    if-le v3, v4, :cond_7

    iget-boolean v5, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v5, :cond_6

    goto :goto_1

    .line 597
    :cond_6
    sub-int v4, v2, v4

    aput v4, p6, v0

    .line 598
    aget v4, p6, v0

    neg-int v4, v4

    invoke-static {p2, v4}, Lccsanandroidx/core/view/ViewCompat;->offsetTopAndBottom(Lccsanandroid/view/View;I)V

    .line 599
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_2

    .line 588
    :cond_7
    :goto_1
    iget-boolean v4, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    if-nez v4, :cond_8

    .line 590
    return-void

    .line 593
    :cond_8
    aput p5, p6, v0

    .line 594
    neg-int v4, p5

    invoke-static {p2, v4}, Lccsanandroidx/core/view/ViewCompat;->offsetTopAndBottom(Lccsanandroid/view/View;I)V

    .line 595
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 603
    :cond_9
    :goto_2
    invoke-virtual {p2}, Lccsanandroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0, v4}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->dispatchOnSlide(I)V

    .line 604
    iput p5, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    .line 605
    iput-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    .line 606
    return-void
.end method

.method public onNestedScroll(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;IIIII[I)V
    .locals 0
    .param p1, "coordinatorLayout"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Lccsanandroid/view/View;
    .param p4, "dxConsumed"    # I
    .param p5, "dyConsumed"    # I
    .param p6, "dxUnconsumed"    # I
    .param p7, "dyUnconsumed"    # I
    .param p8, "type"    # I
    .param p9, "consumed"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Lccsanandroid/view/View;",
            "IIIII[I)V"
        }
    .end annotation

    .line 703
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    return-void
.end method

.method public onRestoreInstanceState(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/os/Parcelable;)V
    .locals 3
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "state"    # Lccsanandroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Lccsanandroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .line 351
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    move-object v0, p3

    check-cast v0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;

    .line 352
    .local v0, "ss":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;
    invoke-virtual {v0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->getSuperState()Lccsanandroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, p1, p2, v1}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/os/Parcelable;)V

    .line 354
    invoke-direct {p0, v0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->restoreOptionalState(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;)V

    .line 356
    iget v1, v0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v1, v0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    iget v1, v0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    iput v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    goto :goto_1

    .line 357
    :cond_1
    :goto_0
    const/4 v1, 0x4

    iput v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 361
    :goto_1
    return-void
.end method

.method public onSaveInstanceState(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;)Lccsanandroid/os/Parcelable;
    .locals 2
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)",
            "Lccsanandroid/os/Parcelable;"
        }
    .end annotation

    .line 345
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    new-instance v0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;

    invoke-super {p0, p1, p2}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;)Lccsanandroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;-><init>(Lccsanandroid/os/Parcelable;Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    return-object v0
.end method

.method public onStartNestedScroll(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;Lccsanandroid/view/View;II)Z
    .locals 2
    .param p1, "coordinatorLayout"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "directTargetChild"    # Lccsanandroid/view/View;
    .param p4, "target"    # Lccsanandroid/view/View;
    .param p5, "axes"    # I
    .param p6, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Lccsanandroid/view/View;",
            "Lccsanandroid/view/View;",
            "II)Z"
        }
    .end annotation

    .line 546
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    .line 547
    iput-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    .line 548
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onStopNestedScroll(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;I)V
    .locals 3
    .param p1, "coordinatorLayout"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Lccsanandroid/view/View;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Lccsanandroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 614
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    invoke-virtual {p2}, Lccsanandroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 615
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 616
    return-void

    .line 618
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_e

    .line 619
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_e

    iget-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 625
    :cond_1
    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    if-lez v0, :cond_4

    .line 626
    iget-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_2

    .line 627
    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    .line 628
    .local v0, "top":I
    const/4 v1, 0x3

    .local v1, "targetState":I
    goto/16 :goto_2

    .line 630
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_2
    invoke-virtual {p2}, Lccsanandroid/view/View;->getTop()I

    move-result v0

    .line 631
    .local v0, "currentTop":I
    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    if-le v0, v1, :cond_3

    .line 632
    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 633
    .local v1, "top":I
    const/4 v2, 0x6

    move v0, v1

    move v1, v2

    .local v2, "targetState":I
    goto :goto_0

    .line 635
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_3
    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->expandedOffset:I

    .line 636
    .restart local v1    # "top":I
    const/4 v2, 0x3

    move v0, v1

    move v1, v2

    .line 638
    .local v0, "top":I
    .local v1, "targetState":I
    :goto_0
    goto/16 :goto_2

    .line 639
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_4
    iget-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->getYVelocity()F

    move-result v0

    invoke-virtual {p0, p2, v0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldHide(Lccsanandroid/view/View;F)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 640
    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 641
    .restart local v0    # "top":I
    const/4 v1, 0x5

    .restart local v1    # "targetState":I
    goto/16 :goto_2

    .line 642
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_5
    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    if-nez v0, :cond_b

    .line 643
    invoke-virtual {p2}, Lccsanandroid/view/View;->getTop()I

    move-result v0

    .line 644
    .local v0, "currentTop":I
    iget-boolean v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v1, :cond_7

    .line 645
    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 646
    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    .line 647
    .local v1, "top":I
    const/4 v2, 0x3

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_1

    .line 649
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_6
    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 650
    .restart local v1    # "top":I
    const/4 v2, 0x4

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_1

    .line 653
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_7
    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    if-ge v0, v1, :cond_9

    .line 654
    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 655
    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->expandedOffset:I

    .line 656
    .restart local v1    # "top":I
    const/4 v2, 0x3

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_1

    .line 658
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_8
    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 659
    .restart local v1    # "top":I
    const/4 v2, 0x6

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_1

    .line 662
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_9
    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 663
    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 664
    .restart local v1    # "top":I
    const/4 v2, 0x6

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_1

    .line 666
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_a
    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 667
    .restart local v1    # "top":I
    const/4 v2, 0x4

    move v0, v1

    move v1, v2

    .line 671
    .local v0, "top":I
    .local v1, "targetState":I
    :goto_1
    goto :goto_2

    .line 672
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_b
    iget-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_c

    .line 673
    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 674
    .restart local v0    # "top":I
    const/4 v1, 0x4

    .restart local v1    # "targetState":I
    goto :goto_2

    .line 677
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_c
    invoke-virtual {p2}, Lccsanandroid/view/View;->getTop()I

    move-result v0

    .line 678
    .local v0, "currentTop":I
    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 679
    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 680
    .local v1, "top":I
    const/4 v2, 0x6

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_2

    .line 682
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_d
    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 683
    .restart local v1    # "top":I
    const/4 v2, 0x4

    move v0, v1

    move v1, v2

    .line 687
    .local v0, "top":I
    .local v1, "targetState":I
    :goto_2
    const/4 v2, 0x0

    invoke-virtual {p0, p2, v1, v0, v2}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->startSettlingAnimation(Lccsanandroid/view/View;IIZ)V

    .line 688
    iput-boolean v2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    .line 689
    return-void

    .line 621
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_e
    :goto_3
    return-void
.end method

.method public onTouchEvent(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "event"    # Lccsanandroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Lccsanandroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 510
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    invoke-virtual {p2}, Lccsanandroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    const/4 v0, 0x0

    return v0

    .line 513
    :cond_0
    invoke-virtual {p3}, Lccsanandroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 514
    .local v0, "action":I
    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    .line 515
    return v2

    .line 517
    :cond_1
    iget-object v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Lccsanandroidx/customview/widget/ViewDragHelper;

    if-eqz v1, :cond_2

    .line 518
    invoke-virtual {v1, p3}, Lccsanandroidx/customview/widget/ViewDragHelper;->processTouchEvent(Lccsanandroid/view/MotionEvent;)V

    .line 521
    :cond_2
    if-nez v0, :cond_3

    .line 522
    invoke-direct {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->reset()V

    .line 524
    :cond_3
    iget-object v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Lccsanandroid/view/VelocityTracker;

    if-nez v1, :cond_4

    .line 525
    invoke-static {}, Lccsanandroid/view/VelocityTracker;->obtain()Lccsanandroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Lccsanandroid/view/VelocityTracker;

    .line 527
    :cond_4
    iget-object v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Lccsanandroid/view/VelocityTracker;

    invoke-virtual {v1, p3}, Lccsanandroid/view/VelocityTracker;->addMovement(Lccsanandroid/view/MotionEvent;)V

    .line 530
    iget-object v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Lccsanandroidx/customview/widget/ViewDragHelper;

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-boolean v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    if-nez v1, :cond_5

    .line 531
    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    int-to-float v1, v1

    invoke-virtual {p3}, Lccsanandroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Lccsanandroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v3}, Lccsanandroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5

    .line 532
    iget-object v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Lccsanandroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p3}, Lccsanandroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p3, v3}, Lccsanandroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v1, p2, v3}, Lccsanandroidx/customview/widget/ViewDragHelper;->captureChildView(Lccsanandroid/view/View;I)V

    .line 535
    :cond_5
    iget-boolean v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    xor-int/2addr v1, v2

    return v1
.end method

.method public removeBottomSheetCallback(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V
    .locals 1
    .param p1, "callback"    # Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    .line 1012
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1013
    return-void
.end method

.method public setBottomSheetCallback(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V
    .locals 2
    .param p1, "callback"    # Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 982
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    const-string v0, "BottomSheetBehavior"

    const-string v1, "BottomSheetBehavior now supports multiple callbacks. `setBottomSheetCallback()` removes all existing callbacks, including ones set internally by library authors, which may result in unintended behavior. This may change in the future. Please use `addBottomSheetCallback()` and `removeBottomSheetCallback()` instead to set your own callbacks."

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 990
    if-eqz p1, :cond_0

    .line 991
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    :cond_0
    return-void
.end method

.method public setDraggable(Z)V
    .locals 0
    .param p1, "draggable"    # Z

    .line 944
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iput-boolean p1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    .line 945
    return-void
.end method

.method public setExpandedOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .line 868
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    if-ltz p1, :cond_0

    .line 871
    iput p1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->expandedOffset:I

    .line 872
    return-void

    .line 869
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset must be greater than or equal to 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFitToContents(Z)V
    .locals 2
    .param p1, "fitToContents"    # Z

    .line 738
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-ne v0, p1, :cond_0

    .line 739
    return-void

    .line 741
    :cond_0
    iput-boolean p1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 745
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 746
    invoke-direct {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->calculateCollapsedOffset()V

    .line 749
    :cond_1
    iget-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    :goto_0
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 751
    invoke-direct {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions()V

    .line 752
    return-void
.end method

.method public setGestureInsetBottomIgnored(Z)V
    .locals 0
    .param p1, "gestureInsetBottomIgnored"    # Z

    .line 1049
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iput-boolean p1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottomIgnored:Z

    .line 1050
    return-void
.end method

.method public setHalfExpandedRatio(F)V
    .locals 2
    .param p1, "ratio"    # F

    .line 835
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_1

    .line 838
    iput p1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    .line 841
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 842
    invoke-direct {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->calculateHalfExpandedOffset()V

    .line 844
    :cond_0
    return-void

    .line 836
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ratio must be a float value between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHideable(Z)V
    .locals 2
    .param p1, "hideable"    # Z

    .line 892
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eq v0, p1, :cond_1

    .line 893
    iput-boolean p1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 894
    if-nez p1, :cond_0

    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 896
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 898
    :cond_0
    invoke-direct {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions()V

    .line 900
    :cond_1
    return-void
.end method

.method public setPeekHeight(I)V
    .locals 1
    .param p1, "peekHeight"    # I

    .line 763
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(IZ)V

    .line 764
    return-void
.end method

.method public final setPeekHeight(IZ)V
    .locals 2
    .param p1, "peekHeight"    # I
    .param p2, "animate"    # Z

    .line 777
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    const/4 v0, 0x0

    .line 778
    .local v0, "layout":Z
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 779
    iget-boolean v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    if-nez v1, :cond_2

    .line 780
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    .line 781
    const/4 v0, 0x1

    goto :goto_0

    .line 783
    :cond_0
    iget-boolean v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    if-nez v1, :cond_1

    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    if-eq v1, p1, :cond_2

    .line 784
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    .line 785
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    .line 786
    const/4 v0, 0x1

    .line 790
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 791
    invoke-direct {p0, p2}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->updatePeekHeight(Z)V

    .line 793
    :cond_3
    return-void
.end method

.method public setSaveFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 960
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iput p1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    .line 961
    return-void
.end method

.method public setSkipCollapsed(Z)V
    .locals 0
    .param p1, "skipCollapsed"    # Z

    .line 921
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iput-boolean p1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    .line 922
    return-void
.end method

.method public setState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 1023
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    if-ne p1, v0, :cond_0

    .line 1024
    return-void

    .line 1026
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    .line 1028
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    iget-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 1032
    :cond_1
    iput p1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 1034
    :cond_2
    return-void

    .line 1036
    :cond_3
    invoke-direct {p0, p1}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->settleToStatePendingLayout(I)V

    .line 1037
    return-void
.end method

.method setStateInternal(I)V
    .locals 3
    .param p1, "state"    # I

    .line 1092
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    if-ne v0, p1, :cond_0

    .line 1093
    return-void

    .line 1095
    :cond_0
    iput p1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 1097
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 1098
    return-void

    .line 1101
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    .line 1102
    .local v0, "bottomSheet":Lccsanandroid/view/View;
    if-nez v0, :cond_2

    .line 1103
    return-void

    .line 1106
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 1107
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibility(Z)V

    goto :goto_0

    .line 1108
    :cond_3
    const/4 v1, 0x6

    if-eq p1, v1, :cond_4

    const/4 v1, 0x5

    if-eq p1, v1, :cond_4

    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    .line 1109
    :cond_4
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibility(Z)V

    .line 1112
    :cond_5
    :goto_0
    invoke-direct {p0, p1}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->updateDrawableForTargetState(I)V

    .line 1113
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 1114
    iget-object v2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v2, v0, p1}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;->onStateChanged(Lccsanandroid/view/View;I)V

    .line 1113
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1116
    .end local v1    # "i":I
    :cond_6
    invoke-direct {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions()V

    .line 1117
    return-void
.end method

.method public setUpdateImportantForAccessibilityOnSiblings(Z)V
    .locals 0
    .param p1, "updateImportantForAccessibilityOnSiblings"    # Z

    .line 1658
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iput-boolean p1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    .line 1659
    return-void
.end method

.method settleToState(Lccsanandroid/view/View;I)V
    .locals 3
    .param p1, "child"    # Lccsanandroid/view/View;
    .param p2, "state"    # I

    .line 1299
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 1300
    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .local v0, "top":I
    goto :goto_0

    .line 1301
    .end local v0    # "top":I
    :cond_0
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 1302
    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 1303
    .restart local v0    # "top":I
    iget-boolean v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    if-gt v0, v1, :cond_3

    .line 1305
    const/4 p2, 0x3

    .line 1306
    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    goto :goto_0

    .line 1308
    .end local v0    # "top":I
    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 1309
    invoke-virtual {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v0

    .restart local v0    # "top":I
    goto :goto_0

    .line 1310
    .end local v0    # "top":I
    :cond_2
    iget-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    if-ne p2, v0, :cond_4

    .line 1311
    iget v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 1315
    .restart local v0    # "top":I
    :cond_3
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->startSettlingAnimation(Lccsanandroid/view/View;IIZ)V

    .line 1316
    return-void

    .line 1313
    .end local v0    # "top":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method shouldHide(Lccsanandroid/view/View;F)Z
    .locals 6
    .param p1, "child"    # Lccsanandroid/view/View;
    .param p2, "yvel"    # F

    .line 1195
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1196
    return v1

    .line 1198
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/view/View;->getTop()I

    move-result v0

    iget v2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    .line 1200
    return v3

    .line 1202
    :cond_1
    invoke-direct {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->calculatePeekHeight()I

    move-result v0

    .line 1203
    .local v0, "peek":I
    invoke-virtual {p1}, Lccsanandroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    const v4, 0x3dcccccd    # 0.1f

    mul-float v4, v4, p2

    add-float/2addr v2, v4

    .line 1204
    .local v2, "newTop":F
    iget v4, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v0

    div-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method startSettlingAnimation(Lccsanandroid/view/View;IIZ)V
    .locals 3
    .param p1, "child"    # Lccsanandroid/view/View;
    .param p2, "state"    # I
    .param p3, "top"    # I
    .param p4, "settleFromViewDragHelper"    # Z

    .line 1319
    .local p0, "this":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Lccsanandroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    .line 1322
    invoke-virtual {p1}, Lccsanandroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0, v2, p3}, Lccsanandroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    nop

    .line 1323
    invoke-virtual {p1}, Lccsanandroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0, p1, v2, p3}, Lccsanandroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Lccsanandroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 1324
    .local v0, "startedSettling":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 1325
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 1327
    invoke-direct {p0, p2}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->updateDrawableForTargetState(I)V

    .line 1328
    iget-object v2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->settleRunnable:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    if-nez v2, :cond_2

    .line 1330
    new-instance v2, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    invoke-direct {v2, p0, p1, p2}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;-><init>(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;Lccsanandroid/view/View;I)V

    iput-object v2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->settleRunnable:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    .line 1333
    :cond_2
    iget-object v2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->settleRunnable:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    invoke-static {v2}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->access$300(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1334
    iget-object v2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->settleRunnable:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    iput p2, v2, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->targetState:I

    .line 1335
    iget-object v2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->settleRunnable:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    invoke-static {p1, v2}, Lccsanandroidx/core/view/ViewCompat;->postOnAnimation(Lccsanandroid/view/View;Ljava/lang/Runnable;)V

    .line 1336
    iget-object v2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->settleRunnable:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    invoke-static {v2, v1}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->access$302(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;Z)Z

    goto :goto_2

    .line 1339
    :cond_3
    iget-object v1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->settleRunnable:Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    iput p2, v1, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->targetState:I

    goto :goto_2

    .line 1342
    :cond_4
    invoke-virtual {p0, p2}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 1344
    :goto_2
    return-void
.end method
