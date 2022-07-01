.class public Lccsanandroidx/transition/ChangeImageTransform;
.super Lccsanandroidx/transition/Transition;
.source "ChangeImageTransform.java"


# static fields
.field private static final ANIMATED_TRANSFORM_PROPERTY:Lccsanandroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/Property<",
            "Lccsanandroid/widget/ImageView;",
            "Lccsanandroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static final NULL_MATRIX_EVALUATOR:Lccsanandroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/animation/TypeEvaluator<",
            "Lccsanandroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeImageTransform:bounds"

.field private static final PROPNAME_MATRIX:Ljava/lang/String; = "android:changeImageTransform:matrix"

.field private static final sTransitionProperties:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:changeImageTransform:matrix"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:changeImageTransform:bounds"

    aput-object v2, v0, v1

    sput-object v0, Lccsanandroidx/transition/ChangeImageTransform;->sTransitionProperties:[Ljava/lang/String;

    .line 54
    new-instance v0, Lccsanandroidx/transition/ChangeImageTransform$1;

    invoke-direct {v0}, Lccsanandroidx/transition/ChangeImageTransform$1;-><init>()V

    sput-object v0, Lccsanandroidx/transition/ChangeImageTransform;->NULL_MATRIX_EVALUATOR:Lccsanandroid/animation/TypeEvaluator;

    .line 61
    new-instance v0, Lccsanandroidx/transition/ChangeImageTransform$2;

    const-class v1, Lccsanandroid/graphics/Matrix;

    const-string v2, "animatedTransform"

    invoke-direct {v0, v1, v2}, Lccsanandroidx/transition/ChangeImageTransform$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lccsanandroidx/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Lccsanandroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lccsanandroidx/transition/Transition;-><init>()V

    .line 75
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 78
    invoke-direct {p0, p1, p2}, Lccsanandroidx/transition/Transition;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method private captureValues(Lccsanandroidx/transition/TransitionValues;)V
    .locals 11
    .param p1, "transitionValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 82
    iget-object v0, p1, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    .line 83
    .local v0, "view":Lccsanandroid/view/View;
    instance-of v1, v0, Lccsanandroid/widget/ImageView;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lccsanandroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    move-object v1, v0

    check-cast v1, Lccsanandroid/widget/ImageView;

    .line 87
    .local v1, "imageView":Lccsanandroid/widget/ImageView;
    invoke-virtual {v1}, Lccsanandroid/widget/ImageView;->getDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 88
    .local v2, "drawable":Lccsanandroid/graphics/drawable/Drawable;
    if-nez v2, :cond_1

    .line 89
    return-void

    .line 91
    :cond_1
    iget-object v3, p1, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 93
    .local v3, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v0}, Lccsanandroid/view/View;->getLeft()I

    move-result v4

    .line 94
    .local v4, "left":I
    invoke-virtual {v0}, Lccsanandroid/view/View;->getTop()I

    move-result v5

    .line 95
    .local v5, "top":I
    invoke-virtual {v0}, Lccsanandroid/view/View;->getRight()I

    move-result v6

    .line 96
    .local v6, "right":I
    invoke-virtual {v0}, Lccsanandroid/view/View;->getBottom()I

    move-result v7

    .line 98
    .local v7, "bottom":I
    new-instance v8, Lccsanandroid/graphics/Rect;

    invoke-direct {v8, v4, v5, v6, v7}, Lccsanandroid/graphics/Rect;-><init>(IIII)V

    .line 99
    .local v8, "bounds":Lccsanandroid/graphics/Rect;
    const-string v9, "android:changeImageTransform:bounds"

    invoke-interface {v3, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {v1}, Lccsanandroidx/transition/ChangeImageTransform;->copyImageMatrix(Lccsanandroid/widget/ImageView;)Lccsanandroid/graphics/Matrix;

    move-result-object v9

    const-string v10, "android:changeImageTransform:matrix"

    invoke-interface {v3, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void

    .line 84
    .end local v1    # "imageView":Lccsanandroid/widget/ImageView;
    .end local v2    # "drawable":Lccsanandroid/graphics/drawable/Drawable;
    .end local v3    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "left":I
    .end local v5    # "top":I
    .end local v6    # "right":I
    .end local v7    # "bottom":I
    .end local v8    # "bounds":Lccsanandroid/graphics/Rect;
    :cond_2
    :goto_0
    return-void
.end method

.method private static centerCropMatrix(Lccsanandroid/widget/ImageView;)Lccsanandroid/graphics/Matrix;
    .locals 15
    .param p0, "view"    # Lccsanandroid/widget/ImageView;

    .line 216
    invoke-virtual {p0}, Lccsanandroid/widget/ImageView;->getDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 217
    .local v0, "image":Lccsanandroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 218
    .local v1, "imageWidth":I
    invoke-virtual {p0}, Lccsanandroid/widget/ImageView;->getWidth()I

    move-result v2

    .line 219
    .local v2, "imageViewWidth":I
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 221
    .local v3, "scaleX":F
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 222
    .local v4, "imageHeight":I
    invoke-virtual {p0}, Lccsanandroid/widget/ImageView;->getHeight()I

    move-result v5

    .line 223
    .local v5, "imageViewHeight":I
    int-to-float v6, v5

    int-to-float v7, v4

    div-float/2addr v6, v7

    .line 225
    .local v6, "scaleY":F
    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 227
    .local v7, "maxScale":F
    int-to-float v8, v1

    mul-float v8, v8, v7

    .line 228
    .local v8, "width":F
    int-to-float v9, v4

    mul-float v9, v9, v7

    .line 229
    .local v9, "height":F
    int-to-float v10, v2

    sub-float/2addr v10, v8

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 230
    .local v10, "tx":I
    int-to-float v12, v5

    sub-float/2addr v12, v9

    div-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 232
    .local v11, "ty":I
    new-instance v12, Lccsanandroid/graphics/Matrix;

    invoke-direct {v12}, Lccsanandroid/graphics/Matrix;-><init>()V

    .line 233
    .local v12, "matrix":Lccsanandroid/graphics/Matrix;
    invoke-virtual {v12, v7, v7}, Lccsanandroid/graphics/Matrix;->postScale(FF)Z

    .line 234
    int-to-float v13, v10

    int-to-float v14, v11

    invoke-virtual {v12, v13, v14}, Lccsanandroid/graphics/Matrix;->postTranslate(FF)Z

    .line 235
    return-object v12
.end method

.method private static copyImageMatrix(Lccsanandroid/widget/ImageView;)Lccsanandroid/graphics/Matrix;
    .locals 3
    .param p0, "view"    # Lccsanandroid/widget/ImageView;

    .line 186
    invoke-virtual {p0}, Lccsanandroid/widget/ImageView;->getDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 187
    .local v0, "image":Lccsanandroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez v1, :cond_0

    .line 188
    sget-object v1, Lccsanandroidx/transition/ChangeImageTransform$3;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p0}, Lccsanandroid/widget/ImageView;->getScaleType()Lccsanandroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 192
    :pswitch_0
    invoke-static {p0}, Lccsanandroidx/transition/ChangeImageTransform;->centerCropMatrix(Lccsanandroid/widget/ImageView;)Lccsanandroid/graphics/Matrix;

    move-result-object v1

    return-object v1

    .line 190
    :pswitch_1
    invoke-static {p0}, Lccsanandroidx/transition/ChangeImageTransform;->fitXYMatrix(Lccsanandroid/widget/ImageView;)Lccsanandroid/graphics/Matrix;

    move-result-object v1

    return-object v1

    .line 195
    :cond_0
    :goto_0
    new-instance v1, Lccsanandroid/graphics/Matrix;

    invoke-virtual {p0}, Lccsanandroid/widget/ImageView;->getImageMatrix()Lccsanandroid/graphics/Matrix;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanandroid/graphics/Matrix;-><init>(Lccsanandroid/graphics/Matrix;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createMatrixAnimator(Lccsanandroid/widget/ImageView;Lccsanandroid/graphics/Matrix;Lccsanandroid/graphics/Matrix;)Lccsanandroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "imageView"    # Lccsanandroid/widget/ImageView;
    .param p2, "startMatrix"    # Lccsanandroid/graphics/Matrix;
    .param p3, "endMatrix"    # Lccsanandroid/graphics/Matrix;

    .line 180
    sget-object v0, Lccsanandroidx/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Lccsanandroid/util/Property;

    new-instance v1, Lccsanandroidx/transition/TransitionUtils$MatrixEvaluator;

    invoke-direct {v1}, Lccsanandroidx/transition/TransitionUtils$MatrixEvaluator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Lccsanandroid/graphics/Matrix;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {p1, v0, v1, v2}, Lccsanandroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Lccsanandroid/util/Property;Lccsanandroid/animation/TypeEvaluator;[Ljava/lang/Object;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private createNullAnimator(Lccsanandroid/widget/ImageView;)Lccsanandroid/animation/ObjectAnimator;
    .locals 5
    .param p1, "imageView"    # Lccsanandroid/widget/ImageView;

    .line 174
    sget-object v0, Lccsanandroidx/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Lccsanandroid/util/Property;

    sget-object v1, Lccsanandroidx/transition/ChangeImageTransform;->NULL_MATRIX_EVALUATOR:Lccsanandroid/animation/TypeEvaluator;

    const/4 v2, 0x2

    new-array v2, v2, [Lccsanandroid/graphics/Matrix;

    sget-object v3, Lccsanandroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Lccsanandroid/graphics/Matrix;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lccsanandroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Lccsanandroid/graphics/Matrix;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p1, v0, v1, v2}, Lccsanandroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Lccsanandroid/util/Property;Lccsanandroid/animation/TypeEvaluator;[Ljava/lang/Object;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static fitXYMatrix(Lccsanandroid/widget/ImageView;)Lccsanandroid/graphics/Matrix;
    .locals 5
    .param p0, "view"    # Lccsanandroid/widget/ImageView;

    .line 203
    invoke-virtual {p0}, Lccsanandroid/widget/ImageView;->getDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 204
    .local v0, "image":Lccsanandroid/graphics/drawable/Drawable;
    new-instance v1, Lccsanandroid/graphics/Matrix;

    invoke-direct {v1}, Lccsanandroid/graphics/Matrix;-><init>()V

    .line 205
    .local v1, "matrix":Lccsanandroid/graphics/Matrix;
    nop

    .line 206
    invoke-virtual {p0}, Lccsanandroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 207
    invoke-virtual {p0}, Lccsanandroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 205
    invoke-virtual {v1, v2, v3}, Lccsanandroid/graphics/Matrix;->postScale(FF)Z

    .line 208
    return-object v1
.end method


# virtual methods
.method public captureEndValues(Lccsanandroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 110
    invoke-direct {p0, p1}, Lccsanandroidx/transition/ChangeImageTransform;->captureValues(Lccsanandroidx/transition/TransitionValues;)V

    .line 111
    return-void
.end method

.method public captureStartValues(Lccsanandroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 105
    invoke-direct {p0, p1}, Lccsanandroidx/transition/ChangeImageTransform;->captureValues(Lccsanandroidx/transition/TransitionValues;)V

    .line 106
    return-void
.end method

.method public createAnimator(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroid/animation/Animator;
    .locals 10
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "startValues"    # Lccsanandroidx/transition/TransitionValues;
    .param p3, "endValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 131
    const/4 v0, 0x0

    if-eqz p2, :cond_b

    if-nez p3, :cond_0

    goto/16 :goto_4

    .line 134
    :cond_0
    iget-object v1, p2, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeImageTransform:bounds"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/graphics/Rect;

    .line 135
    .local v1, "startBounds":Lccsanandroid/graphics/Rect;
    iget-object v3, p3, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/graphics/Rect;

    .line 136
    .local v2, "endBounds":Lccsanandroid/graphics/Rect;
    if-eqz v1, :cond_a

    if-nez v2, :cond_1

    goto :goto_3

    .line 140
    :cond_1
    iget-object v3, p2, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeImageTransform:matrix"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/graphics/Matrix;

    .line 141
    .local v3, "startMatrix":Lccsanandroid/graphics/Matrix;
    iget-object v5, p3, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/graphics/Matrix;

    .line 143
    .local v4, "endMatrix":Lccsanandroid/graphics/Matrix;
    if-nez v3, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    if-eqz v3, :cond_4

    .line 144
    invoke-virtual {v3, v4}, Lccsanandroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    .line 146
    .local v5, "matricesEqual":Z
    :goto_0
    invoke-virtual {v1, v2}, Lccsanandroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v5, :cond_5

    .line 147
    return-object v0

    .line 150
    :cond_5
    iget-object v0, p3, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    check-cast v0, Lccsanandroid/widget/ImageView;

    .line 151
    .local v0, "imageView":Lccsanandroid/widget/ImageView;
    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 152
    .local v6, "drawable":Lccsanandroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 153
    .local v7, "drawableWidth":I
    invoke-virtual {v6}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 156
    .local v8, "drawableHeight":I
    if-lez v7, :cond_9

    if-gtz v8, :cond_6

    goto :goto_1

    .line 159
    :cond_6
    if-nez v3, :cond_7

    .line 160
    sget-object v3, Lccsanandroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Lccsanandroid/graphics/Matrix;

    .line 162
    :cond_7
    if-nez v4, :cond_8

    .line 163
    sget-object v4, Lccsanandroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Lccsanandroid/graphics/Matrix;

    .line 165
    :cond_8
    sget-object v9, Lccsanandroidx/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Lccsanandroid/util/Property;

    invoke-virtual {v9, v0, v3}, Lccsanandroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    invoke-direct {p0, v0, v3, v4}, Lccsanandroidx/transition/ChangeImageTransform;->createMatrixAnimator(Lccsanandroid/widget/ImageView;Lccsanandroid/graphics/Matrix;Lccsanandroid/graphics/Matrix;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v9

    .local v9, "animator":Lccsanandroid/animation/ObjectAnimator;
    goto :goto_2

    .line 157
    .end local v9    # "animator":Lccsanandroid/animation/ObjectAnimator;
    :cond_9
    :goto_1
    invoke-direct {p0, v0}, Lccsanandroidx/transition/ChangeImageTransform;->createNullAnimator(Lccsanandroid/widget/ImageView;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v9

    .line 169
    .restart local v9    # "animator":Lccsanandroid/animation/ObjectAnimator;
    :goto_2
    return-object v9

    .line 137
    .end local v0    # "imageView":Lccsanandroid/widget/ImageView;
    .end local v3    # "startMatrix":Lccsanandroid/graphics/Matrix;
    .end local v4    # "endMatrix":Lccsanandroid/graphics/Matrix;
    .end local v5    # "matricesEqual":Z
    .end local v6    # "drawable":Lccsanandroid/graphics/drawable/Drawable;
    .end local v7    # "drawableWidth":I
    .end local v8    # "drawableHeight":I
    .end local v9    # "animator":Lccsanandroid/animation/ObjectAnimator;
    :cond_a
    :goto_3
    return-object v0

    .line 132
    .end local v1    # "startBounds":Lccsanandroid/graphics/Rect;
    .end local v2    # "endBounds":Lccsanandroid/graphics/Rect;
    :cond_b
    :goto_4
    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 115
    sget-object v0, Lccsanandroidx/transition/ChangeImageTransform;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method
