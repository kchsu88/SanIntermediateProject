.class public Lccsanandroidx/transition/ChangeTransform;
.super Lccsanandroidx/transition/Transition;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/transition/ChangeTransform$PathAnimatorMatrix;,
        Lccsanandroidx/transition/ChangeTransform$GhostListener;,
        Lccsanandroidx/transition/ChangeTransform$Transforms;
    }
.end annotation


# static fields
.field private static final NON_TRANSLATIONS_PROPERTY:Lccsanandroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/Property<",
            "Lccsanandroidx/transition/ChangeTransform$PathAnimatorMatrix;",
            "[F>;"
        }
    .end annotation
.end field

.field private static final PROPNAME_INTERMEDIATE_MATRIX:Ljava/lang/String; = "android:changeTransform:intermediateMatrix"

.field private static final PROPNAME_INTERMEDIATE_PARENT_MATRIX:Ljava/lang/String; = "android:changeTransform:intermediateParentMatrix"

.field private static final PROPNAME_MATRIX:Ljava/lang/String; = "android:changeTransform:matrix"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeTransform:parent"

.field private static final PROPNAME_PARENT_MATRIX:Ljava/lang/String; = "android:changeTransform:parentMatrix"

.field private static final PROPNAME_TRANSFORMS:Ljava/lang/String; = "android:changeTransform:transforms"

.field private static final SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

.field private static final TRANSLATIONS_PROPERTY:Lccsanandroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/Property<",
            "Lccsanandroidx/transition/ChangeTransform$PathAnimatorMatrix;",
            "Lccsanandroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mReparent:Z

.field private mTempMatrix:Lccsanandroid/graphics/Matrix;

.field mUseOverlay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android:changeTransform:matrix"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android:changeTransform:transforms"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v4, "android:changeTransform:parentMatrix"

    aput-object v4, v0, v1

    sput-object v0, Lccsanandroidx/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    .line 69
    new-instance v0, Lccsanandroidx/transition/ChangeTransform$1;

    const-class v1, [F

    const-string v4, "nonTranslations"

    invoke-direct {v0, v1, v4}, Lccsanandroidx/transition/ChangeTransform$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lccsanandroidx/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Lccsanandroid/util/Property;

    .line 85
    new-instance v0, Lccsanandroidx/transition/ChangeTransform$2;

    const-class v1, Lccsanandroid/graphics/PointF;

    const-string/jumbo v4, "translations"

    invoke-direct {v0, v1, v4}, Lccsanandroidx/transition/ChangeTransform$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lccsanandroidx/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Lccsanandroid/util/Property;

    .line 101
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    sput-boolean v2, Lccsanandroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Lccsanandroidx/transition/Transition;-><init>()V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/transition/ChangeTransform;->mUseOverlay:Z

    .line 105
    iput-boolean v0, p0, Lccsanandroidx/transition/ChangeTransform;->mReparent:Z

    .line 106
    new-instance v0, Lccsanandroid/graphics/Matrix;

    invoke-direct {v0}, Lccsanandroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lccsanandroidx/transition/ChangeTransform;->mTempMatrix:Lccsanandroid/graphics/Matrix;

    .line 109
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 114
    invoke-direct {p0, p1, p2}, Lccsanandroidx/transition/Transition;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/transition/ChangeTransform;->mUseOverlay:Z

    .line 105
    iput-boolean v0, p0, Lccsanandroidx/transition/ChangeTransform;->mReparent:Z

    .line 106
    new-instance v1, Lccsanandroid/graphics/Matrix;

    invoke-direct {v1}, Lccsanandroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lccsanandroidx/transition/ChangeTransform;->mTempMatrix:Lccsanandroid/graphics/Matrix;

    .line 115
    sget-object v1, Lccsanandroidx/transition/Styleable;->CHANGE_TRANSFORM:[I

    invoke-virtual {p1, p2, v1}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v1

    .line 116
    .local v1, "a":Lccsanandroid/content/res/TypedArray;
    move-object v2, p2

    check-cast v2, Lccsanorg/xmlpull/v1/XmlPullParser;

    const-string v3, "reparentWithOverlay"

    invoke-static {v1, v2, v3, v0, v0}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedBoolean(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v2

    iput-boolean v2, p0, Lccsanandroidx/transition/ChangeTransform;->mUseOverlay:Z

    .line 118
    move-object v2, p2

    check-cast v2, Lccsanorg/xmlpull/v1/XmlPullParser;

    const-string v3, "reparent"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedBoolean(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v0

    iput-boolean v0, p0, Lccsanandroidx/transition/ChangeTransform;->mReparent:Z

    .line 120
    invoke-virtual {v1}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 121
    return-void
.end method

.method private captureValues(Lccsanandroidx/transition/TransitionValues;)V
    .locals 8
    .param p1, "transitionValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 197
    iget-object v0, p1, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    .line 198
    .local v0, "view":Lccsanandroid/view/View;
    invoke-virtual {v0}, Lccsanandroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 199
    return-void

    .line 201
    :cond_0
    iget-object v1, p1, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v2

    const-string v3, "android:changeTransform:parent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    new-instance v1, Lccsanandroidx/transition/ChangeTransform$Transforms;

    invoke-direct {v1, v0}, Lccsanandroidx/transition/ChangeTransform$Transforms;-><init>(Lccsanandroid/view/View;)V

    .line 203
    .local v1, "transforms":Lccsanandroidx/transition/ChangeTransform$Transforms;
    iget-object v2, p1, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:transforms"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-virtual {v0}, Lccsanandroid/view/View;->getMatrix()Lccsanandroid/graphics/Matrix;

    move-result-object v2

    .line 205
    .local v2, "matrix":Lccsanandroid/graphics/Matrix;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lccsanandroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 208
    :cond_1
    new-instance v3, Lccsanandroid/graphics/Matrix;

    invoke-direct {v3, v2}, Lccsanandroid/graphics/Matrix;-><init>(Lccsanandroid/graphics/Matrix;)V

    move-object v2, v3

    goto :goto_1

    .line 206
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 210
    :goto_1
    iget-object v3, p1, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeTransform:matrix"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-boolean v3, p0, Lccsanandroidx/transition/ChangeTransform;->mReparent:Z

    if-eqz v3, :cond_3

    .line 212
    new-instance v3, Lccsanandroid/graphics/Matrix;

    invoke-direct {v3}, Lccsanandroid/graphics/Matrix;-><init>()V

    .line 213
    .local v3, "parentMatrix":Lccsanandroid/graphics/Matrix;
    invoke-virtual {v0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lccsanandroid/view/ViewGroup;

    .line 214
    .local v4, "parent":Lccsanandroid/view/ViewGroup;
    invoke-static {v4, v3}, Lccsanandroidx/transition/ViewUtils;->transformMatrixToGlobal(Lccsanandroid/view/View;Lccsanandroid/graphics/Matrix;)V

    .line 215
    invoke-virtual {v4}, Lccsanandroid/view/ViewGroup;->getScrollX()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4}, Lccsanandroid/view/ViewGroup;->getScrollY()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Lccsanandroid/graphics/Matrix;->preTranslate(FF)Z

    .line 216
    iget-object v5, p1, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:changeTransform:parentMatrix"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v5, p1, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget v6, Lccsanandroidx/transition/R$id;->transition_transform:I

    .line 218
    invoke-virtual {v0, v6}, Lccsanandroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    .line 217
    const-string v7, "android:changeTransform:intermediateMatrix"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v5, p1, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget v6, Lccsanandroidx/transition/R$id;->parent_matrix:I

    .line 220
    invoke-virtual {v0, v6}, Lccsanandroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    .line 219
    const-string v7, "android:changeTransform:intermediateParentMatrix"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .end local v3    # "parentMatrix":Lccsanandroid/graphics/Matrix;
    .end local v4    # "parent":Lccsanandroid/view/ViewGroup;
    :cond_3
    return-void
.end method

.method private createGhostView(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)V
    .locals 8
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "startValues"    # Lccsanandroidx/transition/TransitionValues;
    .param p3, "endValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 388
    iget-object v0, p3, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    .line 390
    .local v0, "view":Lccsanandroid/view/View;
    iget-object v1, p3, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:parentMatrix"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/graphics/Matrix;

    .line 391
    .local v1, "endMatrix":Lccsanandroid/graphics/Matrix;
    new-instance v2, Lccsanandroid/graphics/Matrix;

    invoke-direct {v2, v1}, Lccsanandroid/graphics/Matrix;-><init>(Lccsanandroid/graphics/Matrix;)V

    .line 392
    .local v2, "localEndMatrix":Lccsanandroid/graphics/Matrix;
    invoke-static {p1, v2}, Lccsanandroidx/transition/ViewUtils;->transformMatrixToLocal(Lccsanandroid/view/View;Lccsanandroid/graphics/Matrix;)V

    .line 394
    invoke-static {v0, p1, v2}, Lccsanandroidx/transition/GhostViewUtils;->addGhost(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup;Lccsanandroid/graphics/Matrix;)Lccsanandroidx/transition/GhostView;

    move-result-object v3

    .line 395
    .local v3, "ghostView":Lccsanandroidx/transition/GhostView;
    if-nez v3, :cond_0

    .line 396
    return-void

    .line 399
    :cond_0
    iget-object v4, p2, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeTransform:parent"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/view/ViewGroup;

    iget-object v5, p2, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    invoke-interface {v3, v4, v5}, Lccsanandroidx/transition/GhostView;->reserveEndViewTransition(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;)V

    .line 402
    move-object v4, p0

    .line 403
    .local v4, "outerTransition":Lccsanandroidx/transition/Transition;
    :goto_0
    iget-object v5, v4, Lccsanandroidx/transition/Transition;->mParent:Lccsanandroidx/transition/TransitionSet;

    if-eqz v5, :cond_1

    .line 404
    iget-object v4, v4, Lccsanandroidx/transition/Transition;->mParent:Lccsanandroidx/transition/TransitionSet;

    goto :goto_0

    .line 407
    :cond_1
    new-instance v5, Lccsanandroidx/transition/ChangeTransform$GhostListener;

    invoke-direct {v5, v0, v3}, Lccsanandroidx/transition/ChangeTransform$GhostListener;-><init>(Lccsanandroid/view/View;Lccsanandroidx/transition/GhostView;)V

    .line 408
    .local v5, "listener":Lccsanandroidx/transition/ChangeTransform$GhostListener;
    invoke-virtual {v4, v5}, Lccsanandroidx/transition/Transition;->addListener(Lccsanandroidx/transition/Transition$TransitionListener;)Lccsanandroidx/transition/Transition;

    .line 412
    sget-boolean v6, Lccsanandroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-eqz v6, :cond_3

    .line 413
    iget-object v6, p2, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    iget-object v7, p3, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    if-eq v6, v7, :cond_2

    .line 414
    iget-object v6, p2, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lccsanandroidx/transition/ViewUtils;->setTransitionAlpha(Lccsanandroid/view/View;F)V

    .line 416
    :cond_2
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v0, v6}, Lccsanandroidx/transition/ViewUtils;->setTransitionAlpha(Lccsanandroid/view/View;F)V

    .line 418
    :cond_3
    return-void
.end method

.method private createTransformAnimator(Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;Z)Lccsanandroid/animation/ObjectAnimator;
    .locals 20
    .param p1, "startValues"    # Lccsanandroidx/transition/TransitionValues;
    .param p2, "endValues"    # Lccsanandroidx/transition/TransitionValues;
    .param p3, "handleParentChange"    # Z

    .line 286
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iget-object v2, v1, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:matrix"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/graphics/Matrix;

    .line 287
    .local v2, "startMatrix":Lccsanandroid/graphics/Matrix;
    iget-object v4, v0, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/graphics/Matrix;

    .line 289
    .local v3, "endMatrix":Lccsanandroid/graphics/Matrix;
    if-nez v2, :cond_0

    .line 290
    sget-object v2, Lccsanandroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Lccsanandroid/graphics/Matrix;

    .line 293
    :cond_0
    if-nez v3, :cond_1

    .line 294
    sget-object v3, Lccsanandroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Lccsanandroid/graphics/Matrix;

    .line 297
    :cond_1
    invoke-virtual {v2, v3}, Lccsanandroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 298
    const/4 v4, 0x0

    return-object v4

    .line 301
    :cond_2
    iget-object v4, v0, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeTransform:transforms"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lccsanandroidx/transition/ChangeTransform$Transforms;

    .line 304
    .local v11, "transforms":Lccsanandroidx/transition/ChangeTransform$Transforms;
    iget-object v12, v0, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    .line 305
    .local v12, "view":Lccsanandroid/view/View;
    invoke-static {v12}, Lccsanandroidx/transition/ChangeTransform;->setIdentityTransforms(Lccsanandroid/view/View;)V

    .line 307
    const/16 v4, 0x9

    new-array v13, v4, [F

    .line 308
    .local v13, "startMatrixValues":[F
    invoke-virtual {v2, v13}, Lccsanandroid/graphics/Matrix;->getValues([F)V

    .line 309
    new-array v14, v4, [F

    .line 310
    .local v14, "endMatrixValues":[F
    invoke-virtual {v3, v14}, Lccsanandroid/graphics/Matrix;->getValues([F)V

    .line 311
    new-instance v5, Lccsanandroidx/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-direct {v5, v12, v13}, Lccsanandroidx/transition/ChangeTransform$PathAnimatorMatrix;-><init>(Lccsanandroid/view/View;[F)V

    move-object v15, v5

    .line 314
    .local v15, "pathAnimatorMatrix":Lccsanandroidx/transition/ChangeTransform$PathAnimatorMatrix;
    sget-object v5, Lccsanandroidx/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Lccsanandroid/util/Property;

    new-instance v6, Lccsanandroidx/transition/FloatArrayEvaluator;

    new-array v4, v4, [F

    invoke-direct {v6, v4}, Lccsanandroidx/transition/FloatArrayEvaluator;-><init>([F)V

    const/4 v4, 0x2

    new-array v7, v4, [[F

    const/4 v8, 0x0

    aput-object v13, v7, v8

    const/4 v9, 0x1

    aput-object v14, v7, v9

    invoke-static {v5, v6, v7}, Lccsanandroid/animation/PropertyValuesHolder;->ofObject(Lccsanandroid/util/Property;Lccsanandroid/animation/TypeEvaluator;[Ljava/lang/Object;)Lccsanandroid/animation/PropertyValuesHolder;

    move-result-object v16

    .line 317
    .local v16, "valuesProperty":Lccsanandroid/animation/PropertyValuesHolder;
    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/transition/ChangeTransform;->getPathMotion()Lccsanandroidx/transition/PathMotion;

    move-result-object v5

    aget v6, v13, v4

    const/4 v7, 0x5

    aget v10, v13, v7

    aget v9, v14, v4

    aget v7, v14, v7

    invoke-virtual {v5, v6, v10, v9, v7}, Lccsanandroidx/transition/PathMotion;->getPath(FFFF)Lccsanandroid/graphics/Path;

    move-result-object v10

    .line 320
    .local v10, "path":Lccsanandroid/graphics/Path;
    sget-object v5, Lccsanandroidx/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Lccsanandroid/util/Property;

    invoke-static {v5, v10}, Lccsanandroidx/transition/PropertyValuesHolderUtils;->ofPointF(Lccsanandroid/util/Property;Lccsanandroid/graphics/Path;)Lccsanandroid/animation/PropertyValuesHolder;

    move-result-object v18

    .line 322
    .local v18, "translationProperty":Lccsanandroid/animation/PropertyValuesHolder;
    new-array v4, v4, [Lccsanandroid/animation/PropertyValuesHolder;

    aput-object v16, v4, v8

    const/4 v5, 0x1

    aput-object v18, v4, v5

    invoke-static {v15, v4}, Lccsanandroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Lccsanandroid/animation/PropertyValuesHolder;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v9

    .line 325
    .local v9, "animator":Lccsanandroid/animation/ObjectAnimator;
    move-object v7, v3

    .line 327
    .local v7, "finalEndMatrix":Lccsanandroid/graphics/Matrix;
    new-instance v17, Lccsanandroidx/transition/ChangeTransform$3;

    move-object/from16 v4, v17

    move-object/from16 v5, p0

    move/from16 v6, p3

    move-object v8, v12

    move-object v0, v9

    .end local v9    # "animator":Lccsanandroid/animation/ObjectAnimator;
    .local v0, "animator":Lccsanandroid/animation/ObjectAnimator;
    move-object v9, v11

    move-object/from16 v19, v10

    .end local v10    # "path":Lccsanandroid/graphics/Path;
    .local v19, "path":Lccsanandroid/graphics/Path;
    move-object v10, v15

    invoke-direct/range {v4 .. v10}, Lccsanandroidx/transition/ChangeTransform$3;-><init>(Lccsanandroidx/transition/ChangeTransform;ZLccsanandroid/graphics/Matrix;Lccsanandroid/view/View;Lccsanandroidx/transition/ChangeTransform$Transforms;Lccsanandroidx/transition/ChangeTransform$PathAnimatorMatrix;)V

    .line 368
    .local v4, "listener":Lccsanandroid/animation/AnimatorListenerAdapter;
    invoke-virtual {v0, v4}, Lccsanandroid/animation/ObjectAnimator;->addListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 369
    invoke-static {v0, v4}, Lccsanandroidx/transition/AnimatorUtils;->addPauseListener(Lccsanandroid/animation/Animator;Lccsanandroid/animation/AnimatorListenerAdapter;)V

    .line 370
    return-object v0
.end method

.method private parentsMatch(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/ViewGroup;)Z
    .locals 5
    .param p1, "startParent"    # Lccsanandroid/view/ViewGroup;
    .param p2, "endParent"    # Lccsanandroid/view/ViewGroup;

    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, "parentsMatch":Z
    invoke-virtual {p0, p1}, Lccsanandroidx/transition/ChangeTransform;->isValidTarget(Lccsanandroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p2}, Lccsanandroidx/transition/ChangeTransform;->isValidTarget(Lccsanandroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 378
    :cond_0
    invoke-virtual {p0, p1, v3}, Lccsanandroidx/transition/ChangeTransform;->getMatchedTransitionValues(Lccsanandroid/view/View;Z)Lccsanandroidx/transition/TransitionValues;

    move-result-object v1

    .line 379
    .local v1, "endValues":Lccsanandroidx/transition/TransitionValues;
    if-eqz v1, :cond_4

    .line 380
    iget-object v4, v1, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    if-ne p2, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    move v0, v2

    goto :goto_1

    .line 376
    .end local v1    # "endValues":Lccsanandroidx/transition/TransitionValues;
    :cond_2
    :goto_0
    if-ne p1, p2, :cond_3

    const/4 v2, 0x1

    :cond_3
    move v0, v2

    .line 383
    :cond_4
    :goto_1
    return v0
.end method

.method static setIdentityTransforms(Lccsanandroid/view/View;)V
    .locals 9
    .param p0, "view"    # Lccsanandroid/view/View;

    .line 441
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lccsanandroidx/transition/ChangeTransform;->setTransforms(Lccsanandroid/view/View;FFFFFFFF)V

    .line 442
    return-void
.end method

.method private setMatricesForParent(Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)V
    .locals 6
    .param p1, "startValues"    # Lccsanandroidx/transition/TransitionValues;
    .param p2, "endValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 421
    iget-object v0, p2, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeTransform:parentMatrix"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/graphics/Matrix;

    .line 422
    .local v0, "endParentMatrix":Lccsanandroid/graphics/Matrix;
    iget-object v2, p2, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    sget v3, Lccsanandroidx/transition/R$id;->parent_matrix:I

    invoke-virtual {v2, v3, v0}, Lccsanandroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 424
    iget-object v2, p0, Lccsanandroidx/transition/ChangeTransform;->mTempMatrix:Lccsanandroid/graphics/Matrix;

    .line 425
    .local v2, "toLocal":Lccsanandroid/graphics/Matrix;
    invoke-virtual {v2}, Lccsanandroid/graphics/Matrix;->reset()V

    .line 426
    invoke-virtual {v0, v2}, Lccsanandroid/graphics/Matrix;->invert(Lccsanandroid/graphics/Matrix;)Z

    .line 428
    iget-object v3, p1, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeTransform:matrix"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/graphics/Matrix;

    .line 429
    .local v3, "startLocal":Lccsanandroid/graphics/Matrix;
    if-nez v3, :cond_0

    .line 430
    new-instance v5, Lccsanandroid/graphics/Matrix;

    invoke-direct {v5}, Lccsanandroid/graphics/Matrix;-><init>()V

    move-object v3, v5

    .line 431
    iget-object v5, p1, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    :cond_0
    iget-object v4, p1, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/graphics/Matrix;

    .line 435
    .local v1, "startParentMatrix":Lccsanandroid/graphics/Matrix;
    invoke-virtual {v3, v1}, Lccsanandroid/graphics/Matrix;->postConcat(Lccsanandroid/graphics/Matrix;)Z

    .line 436
    invoke-virtual {v3, v2}, Lccsanandroid/graphics/Matrix;->postConcat(Lccsanandroid/graphics/Matrix;)Z

    .line 437
    return-void
.end method

.method static setTransforms(Lccsanandroid/view/View;FFFFFFFF)V
    .locals 0
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "translationX"    # F
    .param p2, "translationY"    # F
    .param p3, "translationZ"    # F
    .param p4, "scaleX"    # F
    .param p5, "scaleY"    # F
    .param p6, "rotationX"    # F
    .param p7, "rotationY"    # F
    .param p8, "rotationZ"    # F

    .line 448
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setTranslationX(F)V

    .line 449
    invoke-virtual {p0, p2}, Lccsanandroid/view/View;->setTranslationY(F)V

    .line 450
    invoke-static {p0, p3}, Lccsanandroidx/core/view/ViewCompat;->setTranslationZ(Lccsanandroid/view/View;F)V

    .line 451
    invoke-virtual {p0, p4}, Lccsanandroid/view/View;->setScaleX(F)V

    .line 452
    invoke-virtual {p0, p5}, Lccsanandroid/view/View;->setScaleY(F)V

    .line 453
    invoke-virtual {p0, p6}, Lccsanandroid/view/View;->setRotationX(F)V

    .line 454
    invoke-virtual {p0, p7}, Lccsanandroid/view/View;->setRotationY(F)V

    .line 455
    invoke-virtual {p0, p8}, Lccsanandroid/view/View;->setRotation(F)V

    .line 456
    return-void
.end method


# virtual methods
.method public captureEndValues(Lccsanandroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 238
    invoke-direct {p0, p1}, Lccsanandroidx/transition/ChangeTransform;->captureValues(Lccsanandroidx/transition/TransitionValues;)V

    .line 239
    return-void
.end method

.method public captureStartValues(Lccsanandroidx/transition/TransitionValues;)V
    .locals 2
    .param p1, "transitionValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 226
    invoke-direct {p0, p1}, Lccsanandroidx/transition/ChangeTransform;->captureValues(Lccsanandroidx/transition/TransitionValues;)V

    .line 227
    sget-boolean v0, Lccsanandroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p1, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    iget-object v1, p1, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewGroup;->startViewTransition(Lccsanandroid/view/View;)V

    .line 234
    :cond_0
    return-void
.end method

.method public createAnimator(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroid/animation/Animator;
    .locals 7
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "startValues"    # Lccsanandroidx/transition/TransitionValues;
    .param p3, "endValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 244
    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    iget-object v0, p2, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 245
    const-string v1, "android:changeTransform:parent"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p3, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 246
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 250
    :cond_0
    iget-object v0, p2, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    .line 251
    .local v0, "startParent":Lccsanandroid/view/ViewGroup;
    iget-object v2, p3, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/ViewGroup;

    .line 252
    .local v1, "endParent":Lccsanandroid/view/ViewGroup;
    iget-boolean v2, p0, Lccsanandroidx/transition/ChangeTransform;->mReparent:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v0, v1}, Lccsanandroidx/transition/ChangeTransform;->parentsMatch(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/ViewGroup;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 254
    .local v2, "handleParentChange":Z
    :goto_0
    iget-object v3, p2, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeTransform:intermediateMatrix"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/graphics/Matrix;

    .line 255
    .local v3, "startMatrix":Lccsanandroid/graphics/Matrix;
    if-eqz v3, :cond_2

    .line 256
    iget-object v4, p2, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeTransform:matrix"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_2
    iget-object v4, p2, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 260
    const-string v5, "android:changeTransform:intermediateParentMatrix"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/graphics/Matrix;

    .line 261
    .local v4, "startParentMatrix":Lccsanandroid/graphics/Matrix;
    if-eqz v4, :cond_3

    .line 262
    iget-object v5, p2, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:changeTransform:parentMatrix"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_3
    if-eqz v2, :cond_4

    .line 267
    invoke-direct {p0, p2, p3}, Lccsanandroidx/transition/ChangeTransform;->setMatricesForParent(Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)V

    .line 271
    :cond_4
    invoke-direct {p0, p2, p3, v2}, Lccsanandroidx/transition/ChangeTransform;->createTransformAnimator(Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;Z)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v5

    .line 274
    .local v5, "transformAnimator":Lccsanandroid/animation/ObjectAnimator;
    if-eqz v2, :cond_5

    if-eqz v5, :cond_5

    iget-boolean v6, p0, Lccsanandroidx/transition/ChangeTransform;->mUseOverlay:Z

    if-eqz v6, :cond_5

    .line 275
    invoke-direct {p0, p1, p2, p3}, Lccsanandroidx/transition/ChangeTransform;->createGhostView(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)V

    goto :goto_1

    .line 276
    :cond_5
    sget-boolean v6, Lccsanandroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-nez v6, :cond_6

    .line 278
    iget-object v6, p2, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    invoke-virtual {v0, v6}, Lccsanandroid/view/ViewGroup;->endViewTransition(Lccsanandroid/view/View;)V

    .line 281
    :cond_6
    :goto_1
    return-object v5

    .line 247
    .end local v0    # "startParent":Lccsanandroid/view/ViewGroup;
    .end local v1    # "endParent":Lccsanandroid/view/ViewGroup;
    .end local v2    # "handleParentChange":Z
    .end local v3    # "startMatrix":Lccsanandroid/graphics/Matrix;
    .end local v4    # "startParentMatrix":Lccsanandroid/graphics/Matrix;
    .end local v5    # "transformAnimator":Lccsanandroid/animation/ObjectAnimator;
    :cond_7
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReparent()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lccsanandroidx/transition/ChangeTransform;->mReparent:Z

    return v0
.end method

.method public getReparentWithOverlay()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lccsanandroidx/transition/ChangeTransform;->mUseOverlay:Z

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 193
    sget-object v0, Lccsanandroidx/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setReparent(Z)V
    .locals 0
    .param p1, "reparent"    # Z

    .line 188
    iput-boolean p1, p0, Lccsanandroidx/transition/ChangeTransform;->mReparent:Z

    .line 189
    return-void
.end method

.method public setReparentWithOverlay(Z)V
    .locals 0
    .param p1, "reparentWithOverlay"    # Z

    .line 163
    iput-boolean p1, p0, Lccsanandroidx/transition/ChangeTransform;->mUseOverlay:Z

    .line 164
    return-void
.end method
