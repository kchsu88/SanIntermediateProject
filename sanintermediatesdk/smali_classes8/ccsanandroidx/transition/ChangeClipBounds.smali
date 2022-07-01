.class public Lccsanandroidx/transition/ChangeClipBounds;
.super Lccsanandroidx/transition/Transition;
.source "ChangeClipBounds.java"


# static fields
.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:clipBounds:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:clipBounds:clip"

.field private static final sTransitionProperties:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:clipBounds:clip"

    aput-object v2, v0, v1

    sput-object v0, Lccsanandroidx/transition/ChangeClipBounds;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lccsanandroidx/transition/Transition;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 55
    invoke-direct {p0, p1, p2}, Lccsanandroidx/transition/Transition;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method private captureValues(Lccsanandroidx/transition/TransitionValues;)V
    .locals 6
    .param p1, "values"    # Lccsanandroidx/transition/TransitionValues;

    .line 59
    iget-object v0, p1, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    .line 60
    .local v0, "view":Lccsanandroid/view/View;
    invoke-virtual {v0}, Lccsanandroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 61
    return-void

    .line 64
    :cond_0
    invoke-static {v0}, Lccsanandroidx/core/view/ViewCompat;->getClipBounds(Lccsanandroid/view/View;)Lccsanandroid/graphics/Rect;

    move-result-object v1

    .line 65
    .local v1, "clip":Lccsanandroid/graphics/Rect;
    iget-object v2, p1, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:clipBounds:clip"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    if-nez v1, :cond_1

    .line 67
    new-instance v2, Lccsanandroid/graphics/Rect;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lccsanandroid/view/View;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Lccsanandroid/graphics/Rect;-><init>(IIII)V

    .line 68
    .local v2, "bounds":Lccsanandroid/graphics/Rect;
    iget-object v3, p1, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:clipBounds:bounds"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .end local v2    # "bounds":Lccsanandroid/graphics/Rect;
    :cond_1
    return-void
.end method


# virtual methods
.method public captureEndValues(Lccsanandroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 79
    invoke-direct {p0, p1}, Lccsanandroidx/transition/ChangeClipBounds;->captureValues(Lccsanandroidx/transition/TransitionValues;)V

    .line 80
    return-void
.end method

.method public captureStartValues(Lccsanandroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 74
    invoke-direct {p0, p1}, Lccsanandroidx/transition/ChangeClipBounds;->captureValues(Lccsanandroidx/transition/TransitionValues;)V

    .line 75
    return-void
.end method

.method public createAnimator(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroid/animation/Animator;
    .locals 9
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "startValues"    # Lccsanandroidx/transition/TransitionValues;
    .param p3, "endValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 85
    const/4 v0, 0x0

    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    iget-object v1, p2, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 86
    const-string v2, "android:clipBounds:clip"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p3, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 87
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 90
    :cond_0
    iget-object v1, p2, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/graphics/Rect;

    .line 91
    .local v1, "start":Lccsanandroid/graphics/Rect;
    iget-object v3, p3, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/graphics/Rect;

    .line 92
    .local v2, "end":Lccsanandroid/graphics/Rect;
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 93
    .local v5, "endIsNull":Z
    :goto_0
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    .line 94
    return-object v0

    .line 97
    :cond_2
    const-string v6, "android:clipBounds:bounds"

    if-nez v1, :cond_3

    .line 98
    iget-object v7, p2, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    check-cast v1, Lccsanandroid/graphics/Rect;

    goto :goto_1

    .line 99
    :cond_3
    if-nez v2, :cond_4

    .line 100
    iget-object v7, p3, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    check-cast v2, Lccsanandroid/graphics/Rect;

    .line 102
    :cond_4
    :goto_1
    invoke-virtual {v1, v2}, Lccsanandroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 103
    return-object v0

    .line 106
    :cond_5
    iget-object v0, p3, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    invoke-static {v0, v1}, Lccsanandroidx/core/view/ViewCompat;->setClipBounds(Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;)V

    .line 107
    new-instance v0, Lccsanandroidx/transition/RectEvaluator;

    new-instance v6, Lccsanandroid/graphics/Rect;

    invoke-direct {v6}, Lccsanandroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v6}, Lccsanandroidx/transition/RectEvaluator;-><init>(Lccsanandroid/graphics/Rect;)V

    .line 108
    .local v0, "evaluator":Lccsanandroidx/transition/RectEvaluator;
    iget-object v6, p3, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    sget-object v7, Lccsanandroidx/transition/ViewUtils;->CLIP_BOUNDS:Lccsanandroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [Lccsanandroid/graphics/Rect;

    aput-object v1, v8, v4

    aput-object v2, v8, v3

    invoke-static {v6, v7, v0, v8}, Lccsanandroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Lccsanandroid/util/Property;Lccsanandroid/animation/TypeEvaluator;[Ljava/lang/Object;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v3

    .line 110
    .local v3, "animator":Lccsanandroid/animation/ObjectAnimator;
    if-eqz v5, :cond_6

    .line 111
    iget-object v4, p3, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    .line 112
    .local v4, "endView":Lccsanandroid/view/View;
    new-instance v6, Lccsanandroidx/transition/ChangeClipBounds$1;

    invoke-direct {v6, p0, v4}, Lccsanandroidx/transition/ChangeClipBounds$1;-><init>(Lccsanandroidx/transition/ChangeClipBounds;Lccsanandroid/view/View;)V

    invoke-virtual {v3, v6}, Lccsanandroid/animation/ObjectAnimator;->addListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 119
    .end local v4    # "endView":Lccsanandroid/view/View;
    :cond_6
    return-object v3

    .line 88
    .end local v0    # "evaluator":Lccsanandroidx/transition/RectEvaluator;
    .end local v1    # "start":Lccsanandroid/graphics/Rect;
    .end local v2    # "end":Lccsanandroid/graphics/Rect;
    .end local v3    # "animator":Lccsanandroid/animation/ObjectAnimator;
    .end local v5    # "endIsNull":Z
    :cond_7
    :goto_2
    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lccsanandroidx/transition/ChangeClipBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method
