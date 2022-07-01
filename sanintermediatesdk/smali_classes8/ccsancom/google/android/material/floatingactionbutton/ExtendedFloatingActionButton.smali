.class public Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
.super Lccsancom/google/android/material/button/MaterialButton;
.source "ExtendedFloatingActionButton.java"

# interfaces
.implements Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$HideStrategy;,
        Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ShowStrategy;,
        Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;,
        Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;,
        Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;,
        Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;
    }
.end annotation


# static fields
.field private static final ANIM_STATE_HIDING:I = 0x1

.field private static final ANIM_STATE_NONE:I = 0x0

.field private static final ANIM_STATE_SHOWING:I = 0x2

.field private static final DEF_STYLE_RES:I

.field static final HEIGHT:Lccsanandroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/Property<",
            "Lccsanandroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final PADDING_END:Lccsanandroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/Property<",
            "Lccsanandroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final PADDING_START:Lccsanandroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/Property<",
            "Lccsanandroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final WIDTH:Lccsanandroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/Property<",
            "Lccsanandroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private animState:I

.field private animateShowBeforeLayout:Z

.field private final behavior:Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
            "Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;",
            ">;"
        }
    .end annotation
.end field

.field private final changeVisibilityTracker:Lccsancom/google/android/material/floatingactionbutton/AnimatorTracker;

.field private final collapsedSize:I

.field private final extendStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

.field private extendedPaddingEnd:I

.field private extendedPaddingStart:I

.field private final hideStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

.field private isExtended:Z

.field private isTransforming:Z

.field protected originalTextCsl:Lccsanandroid/content/res/ColorStateList;

.field private final showStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

.field private final shrinkStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 76
    sget v0, Lccsancom/google/android/material/R$style;->Widget_MaterialComponents_ExtendedFloatingActionButton_Icon:I

    sput v0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->DEF_STYLE_RES:I

    .line 708
    new-instance v0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "width"

    invoke-direct {v0, v1, v2}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->WIDTH:Lccsanandroid/util/Property;

    .line 727
    new-instance v0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;

    const-class v1, Ljava/lang/Float;

    const-string v2, "height"

    invoke-direct {v0, v1, v2}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->HEIGHT:Lccsanandroid/util/Property;

    .line 746
    new-instance v0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$6;

    const-class v1, Ljava/lang/Float;

    const-string v2, "paddingStart"

    invoke-direct {v0, v1, v2}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->PADDING_START:Lccsanandroid/util/Property;

    .line 769
    new-instance v0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$7;

    const-class v1, Ljava/lang/Float;

    const-string v2, "paddingEnd"

    invoke-direct {v0, v1, v2}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$7;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->PADDING_END:Lccsanandroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 149
    sget v0, Lccsancom/google/android/material/R$attr;->extendedFloatingActionButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 150
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 16
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 155
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    sget v9, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->DEF_STYLE_RES:I

    move-object/from16 v1, p1

    invoke-static {v1, v7, v8, v9}, Lccsancom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v7, v8}, Lccsancom/google/android/material/button/MaterialButton;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 83
    const/4 v10, 0x0

    iput v10, v0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->animState:I

    .line 85
    new-instance v2, Lccsancom/google/android/material/floatingactionbutton/AnimatorTracker;

    invoke-direct {v2}, Lccsancom/google/android/material/floatingactionbutton/AnimatorTracker;-><init>()V

    iput-object v2, v0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->changeVisibilityTracker:Lccsancom/google/android/material/floatingactionbutton/AnimatorTracker;

    .line 88
    new-instance v11, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ShowStrategy;

    invoke-direct {v11, v0, v2}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ShowStrategy;-><init>(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lccsancom/google/android/material/floatingactionbutton/AnimatorTracker;)V

    iput-object v11, v0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->showStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    .line 89
    new-instance v12, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$HideStrategy;

    invoke-direct {v12, v0, v2}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$HideStrategy;-><init>(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lccsancom/google/android/material/floatingactionbutton/AnimatorTracker;)V

    iput-object v12, v0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hideStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    .line 97
    const/4 v13, 0x1

    iput-boolean v13, v0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    .line 98
    iput-boolean v10, v0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isTransforming:Z

    .line 99
    iput-boolean v10, v0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->animateShowBeforeLayout:Z

    .line 157
    invoke-virtual/range {p0 .. p0}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getContext()Lccsanandroid/content/Context;

    move-result-object v14

    .line 158
    .end local p1    # "context":Lccsanandroid/content/Context;
    .local v14, "context":Lccsanandroid/content/Context;
    new-instance v1, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;

    invoke-direct {v1, v14, v7}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    iput-object v1, v0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->behavior:Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 159
    sget-object v3, Lccsancom/google/android/material/R$styleable;->ExtendedFloatingActionButton:[I

    new-array v6, v10, [I

    .line 160
    move-object v1, v14

    move-object/from16 v2, p2

    move/from16 v4, p3

    move v5, v9

    invoke-static/range {v1 .. v6}, Lccsancom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v1

    .line 163
    .local v1, "a":Lccsanandroid/content/res/TypedArray;
    sget v2, Lccsancom/google/android/material/R$styleable;->ExtendedFloatingActionButton_showMotionSpec:I

    .line 164
    invoke-static {v14, v1, v2}, Lccsancom/google/android/material/animation/MotionSpec;->createFromAttribute(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsancom/google/android/material/animation/MotionSpec;

    move-result-object v2

    .line 166
    .local v2, "showMotionSpec":Lccsancom/google/android/material/animation/MotionSpec;
    sget v3, Lccsancom/google/android/material/R$styleable;->ExtendedFloatingActionButton_hideMotionSpec:I

    .line 167
    invoke-static {v14, v1, v3}, Lccsancom/google/android/material/animation/MotionSpec;->createFromAttribute(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsancom/google/android/material/animation/MotionSpec;

    move-result-object v3

    .line 169
    .local v3, "hideMotionSpec":Lccsancom/google/android/material/animation/MotionSpec;
    sget v4, Lccsancom/google/android/material/R$styleable;->ExtendedFloatingActionButton_extendMotionSpec:I

    .line 170
    invoke-static {v14, v1, v4}, Lccsancom/google/android/material/animation/MotionSpec;->createFromAttribute(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsancom/google/android/material/animation/MotionSpec;

    move-result-object v4

    .line 172
    .local v4, "extendMotionSpec":Lccsancom/google/android/material/animation/MotionSpec;
    sget v5, Lccsancom/google/android/material/R$styleable;->ExtendedFloatingActionButton_shrinkMotionSpec:I

    .line 173
    invoke-static {v14, v1, v5}, Lccsancom/google/android/material/animation/MotionSpec;->createFromAttribute(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsancom/google/android/material/animation/MotionSpec;

    move-result-object v5

    .line 176
    .local v5, "shrinkMotionSpec":Lccsancom/google/android/material/animation/MotionSpec;
    sget v6, Lccsancom/google/android/material/R$styleable;->ExtendedFloatingActionButton_collapsedSize:I

    .line 177
    const/4 v15, -0x1

    invoke-virtual {v1, v6, v15}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->collapsedSize:I

    .line 178
    invoke-static/range {p0 .. p0}, Lccsanandroidx/core/view/ViewCompat;->getPaddingStart(Lccsanandroid/view/View;)I

    move-result v6

    iput v6, v0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendedPaddingStart:I

    .line 179
    invoke-static/range {p0 .. p0}, Lccsanandroidx/core/view/ViewCompat;->getPaddingEnd(Lccsanandroid/view/View;)I

    move-result v6

    iput v6, v0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendedPaddingEnd:I

    .line 181
    new-instance v6, Lccsancom/google/android/material/floatingactionbutton/AnimatorTracker;

    invoke-direct {v6}, Lccsancom/google/android/material/floatingactionbutton/AnimatorTracker;-><init>()V

    .line 182
    .local v6, "changeSizeTracker":Lccsancom/google/android/material/floatingactionbutton/AnimatorTracker;
    new-instance v15, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;

    new-instance v10, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;

    invoke-direct {v10, v0}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;-><init>(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V

    invoke-direct {v15, v0, v6, v10, v13}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;-><init>(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lccsancom/google/android/material/floatingactionbutton/AnimatorTracker;Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;Z)V

    iput-object v15, v0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    .line 216
    new-instance v10, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;

    new-instance v13, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;

    invoke-direct {v13, v0}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;-><init>(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V

    const/4 v7, 0x0

    invoke-direct {v10, v0, v6, v13, v7}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;-><init>(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lccsancom/google/android/material/floatingactionbutton/AnimatorTracker;Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;Z)V

    iput-object v10, v0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    .line 247
    invoke-interface {v11, v2}, Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;->setMotionSpec(Lccsancom/google/android/material/animation/MotionSpec;)V

    .line 248
    invoke-interface {v12, v3}, Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;->setMotionSpec(Lccsancom/google/android/material/animation/MotionSpec;)V

    .line 249
    invoke-interface {v15, v4}, Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;->setMotionSpec(Lccsancom/google/android/material/animation/MotionSpec;)V

    .line 250
    invoke-interface {v10, v5}, Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;->setMotionSpec(Lccsancom/google/android/material/animation/MotionSpec;)V

    .line 251
    invoke-virtual {v1}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 253
    sget-object v7, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->PILL:Lccsancom/google/android/material/shape/CornerSize;

    .line 254
    move-object/from16 v10, p2

    invoke-static {v14, v10, v8, v9, v7}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->builder(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;IILccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v7

    .line 256
    invoke-virtual {v7}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v7

    .line 257
    .local v7, "shapeAppearanceModel":Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    invoke-virtual {v0, v7}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setShapeAppearanceModel(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 258
    invoke-direct/range {p0 .. p0}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->saveOriginalTextCsl()V

    .line 259
    return-void
.end method

.method static synthetic access$000(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 74
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendedPaddingStart:I

    return v0
.end method

.method static synthetic access$100(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 74
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendedPaddingEnd:I

    return v0
.end method

.method static synthetic access$1000(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 74
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isOrWillBeShown()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 74
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isOrWillBeHidden()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 74
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    return-object v0
.end method

.method static synthetic access$300(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 74
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hideStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    return-object v0
.end method

.method static synthetic access$400(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
    .param p1, "x1"    # Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;
    .param p2, "x2"    # Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;

    .line 74
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->performMotion(Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V

    return-void
.end method

.method static synthetic access$500(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 74
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    return-object v0
.end method

.method static synthetic access$600(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 74
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->showStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    return-object v0
.end method

.method static synthetic access$700(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 74
    iget-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    return v0
.end method

.method static synthetic access$702(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
    .param p1, "x1"    # Z

    .line 74
    iput-boolean p1, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    return p1
.end method

.method static synthetic access$802(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
    .param p1, "x1"    # Z

    .line 74
    iput-boolean p1, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isTransforming:Z

    return p1
.end method

.method static synthetic access$902(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;I)I
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
    .param p1, "x1"    # I

    .line 74
    iput p1, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->animState:I

    return p1
.end method

.method private isOrWillBeHidden()Z
    .locals 4

    .line 690
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 692
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->animState:I

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 695
    :cond_1
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->animState:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isOrWillBeShown()Z
    .locals 4

    .line 680
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 682
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->animState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 685
    :cond_1
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->animState:I

    if-eq v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private performMotion(Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V
    .locals 4
    .param p1, "strategy"    # Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;
    .param p2, "callback"    # Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;

    .line 634
    invoke-interface {p1}, Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;->shouldCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    return-void

    .line 638
    :cond_0
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shouldAnimateVisibilityChange()Z

    move-result v0

    .line 639
    .local v0, "shouldAnimate":Z
    if-nez v0, :cond_1

    .line 640
    invoke-interface {p1}, Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;->performNow()V

    .line 641
    invoke-interface {p1, p2}, Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;->onChange(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V

    .line 642
    return-void

    .line 645
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->measure(II)V

    .line 646
    invoke-interface {p1}, Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;->createAnimator()Lccsanandroid/animation/AnimatorSet;

    move-result-object v1

    .line 647
    .local v1, "animator":Lccsanandroid/animation/Animator;
    new-instance v2, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;

    invoke-direct {v2, p0, p1, p2}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;-><init>(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V

    invoke-virtual {v1, v2}, Lccsanandroid/animation/Animator;->addListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 672
    invoke-interface {p1}, Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;->getListeners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/animation/Animator$AnimatorListener;

    .line 673
    .local v3, "l":Lccsanandroid/animation/Animator$AnimatorListener;
    invoke-virtual {v1, v3}, Lccsanandroid/animation/Animator;->addListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 674
    .end local v3    # "l":Lccsanandroid/animation/Animator$AnimatorListener;
    goto :goto_0

    .line 676
    :cond_2
    invoke-virtual {v1}, Lccsanandroid/animation/Animator;->start()V

    .line 677
    return-void
.end method

.method private saveOriginalTextCsl()V
    .locals 1

    .line 274
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getTextColors()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->originalTextCsl:Lccsanandroid/content/res/ColorStateList;

    .line 275
    return-void
.end method

.method private shouldAnimateVisibilityChange()Z
    .locals 1

    .line 700
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->isLaidOut(Lccsanandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isOrWillBeShown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->animateShowBeforeLayout:Z

    if-eqz v0, :cond_1

    .line 701
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 700
    :goto_0
    return v0
.end method


# virtual methods
.method public addOnExtendAnimationListener(Lccsanandroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Lccsanandroid/animation/Animator$AnimatorListener;

    .line 430
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    invoke-interface {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;->addAnimationListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 431
    return-void
.end method

.method public addOnHideAnimationListener(Lccsanandroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Lccsanandroid/animation/Animator$AnimatorListener;

    .line 384
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hideStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    invoke-interface {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;->addAnimationListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 385
    return-void
.end method

.method public addOnShowAnimationListener(Lccsanandroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Lccsanandroid/animation/Animator$AnimatorListener;

    .line 361
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->showStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    invoke-interface {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;->addAnimationListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 362
    return-void
.end method

.method public addOnShrinkAnimationListener(Lccsanandroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Lccsanandroid/animation/Animator$AnimatorListener;

    .line 407
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    invoke-interface {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;->addAnimationListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 408
    return-void
.end method

.method public extend()V
    .locals 2

    .line 494
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->performMotion(Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V

    .line 495
    return-void
.end method

.method public extend(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V
    .locals 1
    .param p1, "callback"    # Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;

    .line 506
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    invoke-direct {p0, v0, p1}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->performMotion(Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V

    .line 507
    return-void
.end method

.method public getBehavior()Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
            "Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;",
            ">;"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->behavior:Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    return-object v0
.end method

.method getCollapsedPadding()I
    .locals 2

    .line 800
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCollapsedSize()I

    move-result v0

    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getIconSize()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getCollapsedSize()I
    .locals 2

    .line 794
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->collapsedSize:I

    if-gez v0, :cond_0

    .line 795
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getPaddingStart(Lccsanandroid/view/View;)I

    move-result v0

    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getPaddingEnd(Lccsanandroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getIconSize()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    nop

    .line 794
    :goto_0
    return v0
.end method

.method public getExtendMotionSpec()Lccsancom/google/android/material/animation/MotionSpec;
    .locals 1

    .line 585
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    invoke-interface {v0}, Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;->getMotionSpec()Lccsancom/google/android/material/animation/MotionSpec;

    move-result-object v0

    return-object v0
.end method

.method public getHideMotionSpec()Lccsancom/google/android/material/animation/MotionSpec;
    .locals 1

    .line 561
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hideStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    invoke-interface {v0}, Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;->getMotionSpec()Lccsancom/google/android/material/animation/MotionSpec;

    move-result-object v0

    return-object v0
.end method

.method public getShowMotionSpec()Lccsancom/google/android/material/animation/MotionSpec;
    .locals 1

    .line 537
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->showStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    invoke-interface {v0}, Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;->getMotionSpec()Lccsancom/google/android/material/animation/MotionSpec;

    move-result-object v0

    return-object v0
.end method

.method public getShrinkMotionSpec()Lccsancom/google/android/material/animation/MotionSpec;
    .locals 1

    .line 611
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    invoke-interface {v0}, Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;->getMotionSpec()Lccsancom/google/android/material/animation/MotionSpec;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 2

    .line 449
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hideStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->performMotion(Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V

    .line 450
    return-void
.end method

.method public hide(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V
    .locals 1
    .param p1, "callback"    # Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;

    .line 460
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hideStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    invoke-direct {p0, v0, p1}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->performMotion(Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V

    .line 461
    return-void
.end method

.method public final isExtended()Z
    .locals 1

    .line 319
    iget-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 287
    invoke-super {p0}, Lccsancom/google/android/material/button/MaterialButton;->onAttachedToWindow()V

    .line 289
    iget-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getIcon()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    .line 291
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    invoke-interface {v0}, Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;->performNow()V

    .line 293
    :cond_0
    return-void
.end method

.method public removeOnExtendAnimationListener(Lccsanandroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Lccsanandroid/animation/Animator$AnimatorListener;

    .line 440
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    invoke-interface {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;->removeAnimationListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 441
    return-void
.end method

.method public removeOnHideAnimationListener(Lccsanandroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Lccsanandroid/animation/Animator$AnimatorListener;

    .line 394
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hideStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    invoke-interface {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;->removeAnimationListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 395
    return-void
.end method

.method public removeOnShowAnimationListener(Lccsanandroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Lccsanandroid/animation/Animator$AnimatorListener;

    .line 371
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->showStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    invoke-interface {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;->removeAnimationListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 372
    return-void
.end method

.method public removeOnShrinkAnimationListener(Lccsanandroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Lccsanandroid/animation/Animator$AnimatorListener;

    .line 417
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    invoke-interface {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;->removeAnimationListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 418
    return-void
.end method

.method public setAnimateShowBeforeLayout(Z)V
    .locals 0
    .param p1, "animateShowBeforeLayout"    # Z

    .line 330
    iput-boolean p1, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->animateShowBeforeLayout:Z

    .line 331
    return-void
.end method

.method public setExtendMotionSpec(Lccsancom/google/android/material/animation/MotionSpec;)V
    .locals 1
    .param p1, "spec"    # Lccsancom/google/android/material/animation/MotionSpec;

    .line 594
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    invoke-interface {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;->setMotionSpec(Lccsancom/google/android/material/animation/MotionSpec;)V

    .line 595
    return-void
.end method

.method public setExtendMotionSpecResource(I)V
    .locals 1
    .param p1, "id"    # I

    .line 603
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/google/android/material/animation/MotionSpec;->createFromResource(Lccsanandroid/content/Context;I)Lccsancom/google/android/material/animation/MotionSpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setExtendMotionSpec(Lccsancom/google/android/material/animation/MotionSpec;)V

    .line 604
    return-void
.end method

.method public setExtended(Z)V
    .locals 2
    .param p1, "extended"    # Z

    .line 306
    iget-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    if-ne v0, p1, :cond_0

    .line 307
    return-void

    .line 310
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    .line 311
    .local v0, "motionStrategy":Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;
    :goto_0
    invoke-interface {v0}, Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;->shouldCancel()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    return-void

    .line 315
    :cond_2
    invoke-interface {v0}, Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;->performNow()V

    .line 316
    return-void
.end method

.method public setHideMotionSpec(Lccsancom/google/android/material/animation/MotionSpec;)V
    .locals 1
    .param p1, "spec"    # Lccsancom/google/android/material/animation/MotionSpec;

    .line 570
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hideStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    invoke-interface {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;->setMotionSpec(Lccsancom/google/android/material/animation/MotionSpec;)V

    .line 571
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1
    .param p1, "id"    # I

    .line 579
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/google/android/material/animation/MotionSpec;->createFromResource(Lccsanandroid/content/Context;I)Lccsancom/google/android/material/animation/MotionSpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setHideMotionSpec(Lccsancom/google/android/material/animation/MotionSpec;)V

    .line 580
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 344
    invoke-super {p0, p1, p2, p3, p4}, Lccsancom/google/android/material/button/MaterialButton;->setPadding(IIII)V

    .line 345
    iget-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isTransforming:Z

    if-nez v0, :cond_0

    .line 346
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getPaddingStart(Lccsanandroid/view/View;)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendedPaddingStart:I

    .line 347
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getPaddingEnd(Lccsanandroid/view/View;)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendedPaddingEnd:I

    .line 349
    :cond_0
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 335
    invoke-super {p0, p1, p2, p3, p4}, Lccsancom/google/android/material/button/MaterialButton;->setPaddingRelative(IIII)V

    .line 336
    iget-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isTransforming:Z

    if-nez v0, :cond_0

    .line 337
    iput p1, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendedPaddingStart:I

    .line 338
    iput p3, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendedPaddingEnd:I

    .line 340
    :cond_0
    return-void
.end method

.method public setShowMotionSpec(Lccsancom/google/android/material/animation/MotionSpec;)V
    .locals 1
    .param p1, "spec"    # Lccsancom/google/android/material/animation/MotionSpec;

    .line 546
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->showStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    invoke-interface {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;->setMotionSpec(Lccsancom/google/android/material/animation/MotionSpec;)V

    .line 547
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1
    .param p1, "id"    # I

    .line 555
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/google/android/material/animation/MotionSpec;->createFromResource(Lccsanandroid/content/Context;I)Lccsancom/google/android/material/animation/MotionSpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setShowMotionSpec(Lccsancom/google/android/material/animation/MotionSpec;)V

    .line 556
    return-void
.end method

.method public setShrinkMotionSpec(Lccsancom/google/android/material/animation/MotionSpec;)V
    .locals 1
    .param p1, "spec"    # Lccsancom/google/android/material/animation/MotionSpec;

    .line 620
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    invoke-interface {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;->setMotionSpec(Lccsancom/google/android/material/animation/MotionSpec;)V

    .line 621
    return-void
.end method

.method public setShrinkMotionSpecResource(I)V
    .locals 1
    .param p1, "id"    # I

    .line 629
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/google/android/material/animation/MotionSpec;->createFromResource(Lccsanandroid/content/Context;I)Lccsancom/google/android/material/animation/MotionSpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setShrinkMotionSpec(Lccsancom/google/android/material/animation/MotionSpec;)V

    .line 630
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 263
    invoke-super {p0, p1}, Lccsancom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 264
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->saveOriginalTextCsl()V

    .line 265
    return-void
.end method

.method public setTextColor(Lccsanandroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "colors"    # Lccsanandroid/content/res/ColorStateList;

    .line 269
    invoke-super {p0, p1}, Lccsancom/google/android/material/button/MaterialButton;->setTextColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 270
    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->saveOriginalTextCsl()V

    .line 271
    return-void
.end method

.method public show()V
    .locals 2

    .line 470
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->showStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->performMotion(Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V

    .line 471
    return-void
.end method

.method public show(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V
    .locals 1
    .param p1, "callback"    # Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;

    .line 482
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->showStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    invoke-direct {p0, v0, p1}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->performMotion(Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V

    .line 483
    return-void
.end method

.method public shrink()V
    .locals 2

    .line 519
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->performMotion(Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V

    .line 520
    return-void
.end method

.method public shrink(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V
    .locals 1
    .param p1, "callback"    # Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;

    .line 531
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkStrategy:Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;

    invoke-direct {p0, v0, p1}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->performMotion(Lccsancom/google/android/material/floatingactionbutton/MotionStrategy;Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V

    .line 532
    return-void
.end method

.method protected silentlyUpdateTextColor(Lccsanandroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "csl"    # Lccsanandroid/content/res/ColorStateList;

    .line 282
    invoke-super {p0, p1}, Lccsancom/google/android/material/button/MaterialButton;->setTextColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 283
    return-void
.end method
