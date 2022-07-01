.class public Lccsanandroidx/transition/Explode;
.super Lccsanandroidx/transition/Visibility;
.source "Explode.java"


# static fields
.field private static final PROPNAME_SCREEN_BOUNDS:Ljava/lang/String; = "android:explode:screenBounds"

.field private static final sAccelerate:Lccsanandroid/animation/TimeInterpolator;

.field private static final sDecelerate:Lccsanandroid/animation/TimeInterpolator;


# instance fields
.field private mTempLoc:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lccsanandroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Lccsanandroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lccsanandroidx/transition/Explode;->sDecelerate:Lccsanandroid/animation/TimeInterpolator;

    .line 45
    new-instance v0, Lccsanandroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Lccsanandroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lccsanandroidx/transition/Explode;->sAccelerate:Lccsanandroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lccsanandroidx/transition/Visibility;-><init>()V

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lccsanandroidx/transition/Explode;->mTempLoc:[I

    .line 51
    new-instance v0, Lccsanandroidx/transition/CircularPropagation;

    invoke-direct {v0}, Lccsanandroidx/transition/CircularPropagation;-><init>()V

    invoke-virtual {p0, v0}, Lccsanandroidx/transition/Explode;->setPropagation(Lccsanandroidx/transition/TransitionPropagation;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 55
    invoke-direct {p0, p1, p2}, Lccsanandroidx/transition/Visibility;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lccsanandroidx/transition/Explode;->mTempLoc:[I

    .line 56
    new-instance v0, Lccsanandroidx/transition/CircularPropagation;

    invoke-direct {v0}, Lccsanandroidx/transition/CircularPropagation;-><init>()V

    invoke-virtual {p0, v0}, Lccsanandroidx/transition/Explode;->setPropagation(Lccsanandroidx/transition/TransitionPropagation;)V

    .line 57
    return-void
.end method

.method private static calculateDistance(FF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F

    .line 173
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private static calculateMaxDistance(Lccsanandroid/view/View;II)F
    .locals 4
    .param p0, "sceneRoot"    # Lccsanandroid/view/View;
    .param p1, "focalX"    # I
    .param p2, "focalY"    # I

    .line 167
    invoke-virtual {p0}, Lccsanandroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 168
    .local v0, "maxX":I
    invoke-virtual {p0}, Lccsanandroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 169
    .local v1, "maxY":I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-static {v2, v3}, Lccsanandroidx/transition/Explode;->calculateDistance(FF)F

    move-result v2

    return v2
.end method

.method private calculateOut(Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;[I)V
    .locals 20
    .param p1, "sceneRoot"    # Lccsanandroid/view/View;
    .param p2, "bounds"    # Lccsanandroid/graphics/Rect;
    .param p3, "outVector"    # [I

    .line 128
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lccsanandroidx/transition/Explode;->mTempLoc:[I

    invoke-virtual {v1, v2}, Lccsanandroid/view/View;->getLocationOnScreen([I)V

    .line 129
    iget-object v2, v0, Lccsanandroidx/transition/Explode;->mTempLoc:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    .line 130
    .local v4, "sceneRootX":I
    const/4 v5, 0x1

    aget v2, v2, v5

    .line 134
    .local v2, "sceneRootY":I
    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/transition/Explode;->getEpicenter()Lccsanandroid/graphics/Rect;

    move-result-object v6

    .line 135
    .local v6, "epicenter":Lccsanandroid/graphics/Rect;
    if-nez v6, :cond_0

    .line 136
    invoke-virtual/range {p1 .. p1}, Lccsanandroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v4

    .line 137
    invoke-virtual/range {p1 .. p1}, Lccsanandroid/view/View;->getTranslationX()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v8

    .line 138
    .local v7, "focalX":I
    invoke-virtual/range {p1 .. p1}, Lccsanandroid/view/View;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v2

    .line 139
    invoke-virtual/range {p1 .. p1}, Lccsanandroid/view/View;->getTranslationY()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int/2addr v8, v9

    .local v8, "focalY":I
    goto :goto_0

    .line 141
    .end local v7    # "focalX":I
    .end local v8    # "focalY":I
    :cond_0
    invoke-virtual {v6}, Lccsanandroid/graphics/Rect;->centerX()I

    move-result v7

    .line 142
    .restart local v7    # "focalX":I
    invoke-virtual {v6}, Lccsanandroid/graphics/Rect;->centerY()I

    move-result v8

    .line 145
    .restart local v8    # "focalY":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lccsanandroid/graphics/Rect;->centerX()I

    move-result v9

    .line 146
    .local v9, "centerX":I
    invoke-virtual/range {p2 .. p2}, Lccsanandroid/graphics/Rect;->centerY()I

    move-result v10

    .line 147
    .local v10, "centerY":I
    sub-int v11, v9, v7

    int-to-float v11, v11

    .line 148
    .local v11, "xVector":F
    sub-int v12, v10, v8

    int-to-float v12, v12

    .line 150
    .local v12, "yVector":F
    const/4 v13, 0x0

    cmpl-float v14, v11, v13

    if-nez v14, :cond_1

    cmpl-float v13, v12, v13

    if-nez v13, :cond_1

    .line 152
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    mul-double v13, v13, v15

    double-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v11, v13, v14

    .line 153
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v17

    move-object/from16 v19, v6

    .end local v6    # "epicenter":Lccsanandroid/graphics/Rect;
    .local v19, "epicenter":Lccsanandroid/graphics/Rect;
    mul-double v5, v17, v15

    double-to-float v5, v5

    sub-float v12, v5, v14

    goto :goto_1

    .line 150
    .end local v19    # "epicenter":Lccsanandroid/graphics/Rect;
    .restart local v6    # "epicenter":Lccsanandroid/graphics/Rect;
    :cond_1
    move-object/from16 v19, v6

    .line 155
    .end local v6    # "epicenter":Lccsanandroid/graphics/Rect;
    .restart local v19    # "epicenter":Lccsanandroid/graphics/Rect;
    :goto_1
    invoke-static {v11, v12}, Lccsanandroidx/transition/Explode;->calculateDistance(FF)F

    move-result v5

    .line 156
    .local v5, "vectorSize":F
    div-float/2addr v11, v5

    .line 157
    div-float/2addr v12, v5

    .line 159
    sub-int v6, v7, v4

    sub-int v14, v8, v2

    .line 160
    invoke-static {v1, v6, v14}, Lccsanandroidx/transition/Explode;->calculateMaxDistance(Lccsanandroid/view/View;II)F

    move-result v6

    .line 162
    .local v6, "maxDistance":F
    mul-float v14, v6, v11

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    aput v14, p3, v3

    .line 163
    mul-float v3, v6, v12

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v13, 0x1

    aput v3, p3, v13

    .line 164
    return-void
.end method

.method private captureValues(Lccsanandroidx/transition/TransitionValues;)V
    .locals 8
    .param p1, "transitionValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 60
    iget-object v0, p1, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    .line 61
    .local v0, "view":Lccsanandroid/view/View;
    iget-object v1, p0, Lccsanandroidx/transition/Explode;->mTempLoc:[I

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->getLocationOnScreen([I)V

    .line 62
    iget-object v1, p0, Lccsanandroidx/transition/Explode;->mTempLoc:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    .line 63
    .local v2, "left":I
    const/4 v3, 0x1

    aget v1, v1, v3

    .line 64
    .local v1, "top":I
    invoke-virtual {v0}, Lccsanandroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    .line 65
    .local v3, "right":I
    invoke-virtual {v0}, Lccsanandroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 66
    .local v4, "bottom":I
    iget-object v5, p1, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    new-instance v6, Lccsanandroid/graphics/Rect;

    invoke-direct {v6, v2, v1, v3, v4}, Lccsanandroid/graphics/Rect;-><init>(IIII)V

    const-string v7, "android:explode:screenBounds"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method


# virtual methods
.method public captureEndValues(Lccsanandroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 77
    invoke-super {p0, p1}, Lccsanandroidx/transition/Visibility;->captureEndValues(Lccsanandroidx/transition/TransitionValues;)V

    .line 78
    invoke-direct {p0, p1}, Lccsanandroidx/transition/Explode;->captureValues(Lccsanandroidx/transition/TransitionValues;)V

    .line 79
    return-void
.end method

.method public captureStartValues(Lccsanandroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 71
    invoke-super {p0, p1}, Lccsanandroidx/transition/Visibility;->captureStartValues(Lccsanandroidx/transition/TransitionValues;)V

    .line 72
    invoke-direct {p0, p1}, Lccsanandroidx/transition/Explode;->captureValues(Lccsanandroidx/transition/TransitionValues;)V

    .line 73
    return-void
.end method

.method public onAppear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroid/animation/Animator;
    .locals 18
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "view"    # Lccsanandroid/view/View;
    .param p3, "startValues"    # Lccsanandroidx/transition/TransitionValues;
    .param p4, "endValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 84
    move-object/from16 v10, p0

    move-object/from16 v11, p4

    if-nez v11, :cond_0

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_0
    iget-object v0, v11, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:explode:screenBounds"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lccsanandroid/graphics/Rect;

    .line 88
    .local v12, "bounds":Lccsanandroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Lccsanandroid/view/View;->getTranslationX()F

    move-result v13

    .line 89
    .local v13, "endX":F
    invoke-virtual/range {p2 .. p2}, Lccsanandroid/view/View;->getTranslationY()F

    move-result v14

    .line 90
    .local v14, "endY":F
    iget-object v0, v10, Lccsanandroidx/transition/Explode;->mTempLoc:[I

    move-object/from16 v15, p1

    invoke-direct {v10, v15, v12, v0}, Lccsanandroidx/transition/Explode;->calculateOut(Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;[I)V

    .line 91
    iget-object v0, v10, Lccsanandroidx/transition/Explode;->mTempLoc:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    add-float v16, v13, v1

    .line 92
    .local v16, "startX":F
    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    add-float v17, v14, v0

    .line 94
    .local v17, "startY":F
    iget v2, v12, Lccsanandroid/graphics/Rect;->left:I

    iget v3, v12, Lccsanandroid/graphics/Rect;->top:I

    sget-object v8, Lccsanandroidx/transition/Explode;->sDecelerate:Lccsanandroid/animation/TimeInterpolator;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v4, v16

    move/from16 v5, v17

    move v6, v13

    move v7, v14

    move-object/from16 v9, p0

    invoke-static/range {v0 .. v9}, Lccsanandroidx/transition/TranslationAnimationCreator;->createAnimation(Lccsanandroid/view/View;Lccsanandroidx/transition/TransitionValues;IIFFFFLccsanandroid/animation/TimeInterpolator;Lccsanandroidx/transition/Transition;)Lccsanandroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public onDisappear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroid/animation/Animator;
    .locals 20
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "view"    # Lccsanandroid/view/View;
    .param p3, "startValues"    # Lccsanandroidx/transition/TransitionValues;
    .param p4, "endValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 101
    move-object/from16 v10, p0

    move-object/from16 v11, p3

    if-nez v11, :cond_0

    .line 102
    const/4 v0, 0x0

    return-object v0

    .line 104
    :cond_0
    iget-object v0, v11, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:explode:screenBounds"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lccsanandroid/graphics/Rect;

    .line 105
    .local v12, "bounds":Lccsanandroid/graphics/Rect;
    iget v13, v12, Lccsanandroid/graphics/Rect;->left:I

    .line 106
    .local v13, "viewPosX":I
    iget v14, v12, Lccsanandroid/graphics/Rect;->top:I

    .line 107
    .local v14, "viewPosY":I
    invoke-virtual/range {p2 .. p2}, Lccsanandroid/view/View;->getTranslationX()F

    move-result v15

    .line 108
    .local v15, "startX":F
    invoke-virtual/range {p2 .. p2}, Lccsanandroid/view/View;->getTranslationY()F

    move-result v16

    .line 109
    .local v16, "startY":F
    move v0, v15

    .line 110
    .local v0, "endX":F
    move/from16 v1, v16

    .line 111
    .local v1, "endY":F
    iget-object v2, v11, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    sget v3, Lccsanandroidx/transition/R$id;->transition_position:I

    invoke-virtual {v2, v3}, Lccsanandroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    move-object/from16 v17, v2

    check-cast v17, [I

    .line 112
    .local v17, "interruptedPosition":[I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v17, :cond_1

    .line 115
    aget v4, v17, v3

    iget v5, v12, Lccsanandroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v0, v4

    .line 116
    aget v4, v17, v2

    iget v5, v12, Lccsanandroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v1, v4

    .line 117
    aget v4, v17, v3

    aget v5, v17, v2

    invoke-virtual {v12, v4, v5}, Lccsanandroid/graphics/Rect;->offsetTo(II)V

    .line 119
    :cond_1
    iget-object v4, v10, Lccsanandroidx/transition/Explode;->mTempLoc:[I

    move-object/from16 v9, p1

    invoke-direct {v10, v9, v12, v4}, Lccsanandroidx/transition/Explode;->calculateOut(Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;[I)V

    .line 120
    iget-object v4, v10, Lccsanandroidx/transition/Explode;->mTempLoc:[I

    aget v3, v4, v3

    int-to-float v3, v3

    add-float v18, v0, v3

    .line 121
    .end local v0    # "endX":F
    .local v18, "endX":F
    aget v0, v4, v2

    int-to-float v0, v0

    add-float v19, v1, v0

    .line 123
    .end local v1    # "endY":F
    .local v19, "endY":F
    sget-object v8, Lccsanandroidx/transition/Explode;->sAccelerate:Lccsanandroid/animation/TimeInterpolator;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    move/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v9, p0

    invoke-static/range {v0 .. v9}, Lccsanandroidx/transition/TranslationAnimationCreator;->createAnimation(Lccsanandroid/view/View;Lccsanandroidx/transition/TransitionValues;IIFFFFLccsanandroid/animation/TimeInterpolator;Lccsanandroidx/transition/Transition;)Lccsanandroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
