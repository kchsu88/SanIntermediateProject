.class public Lccsancom/google/android/material/internal/TextScale;
.super Lccsanandroidx/transition/Transition;
.source "TextScale.java"


# static fields
.field private static final PROPNAME_SCALE:Ljava/lang/String; = "android:textscale:scale"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lccsanandroidx/transition/Transition;-><init>()V

    return-void
.end method

.method private captureValues(Lccsanandroidx/transition/TransitionValues;)V
    .locals 4
    .param p1, "transitionValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 48
    iget-object v0, p1, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    instance-of v0, v0, Lccsanandroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p1, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    check-cast v0, Lccsanandroid/widget/TextView;

    .line 50
    .local v0, "textview":Lccsanandroid/widget/TextView;
    iget-object v1, p1, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->getScaleX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "android:textscale:scale"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .end local v0    # "textview":Lccsanandroid/widget/TextView;
    :cond_0
    return-void
.end method


# virtual methods
.method public captureEndValues(Lccsanandroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 44
    invoke-direct {p0, p1}, Lccsancom/google/android/material/internal/TextScale;->captureValues(Lccsanandroidx/transition/TransitionValues;)V

    .line 45
    return-void
.end method

.method public captureStartValues(Lccsanandroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 39
    invoke-direct {p0, p1}, Lccsancom/google/android/material/internal/TextScale;->captureValues(Lccsanandroidx/transition/TransitionValues;)V

    .line 40
    return-void
.end method

.method public createAnimator(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroid/animation/Animator;
    .locals 8
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "startValues"    # Lccsanandroidx/transition/TransitionValues;
    .param p3, "endValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 59
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    iget-object v1, p2, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    instance-of v1, v1, Lccsanandroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p3, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    instance-of v1, v1, Lccsanandroid/widget/TextView;

    if-nez v1, :cond_0

    goto :goto_1

    .line 65
    :cond_0
    iget-object v1, p3, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    check-cast v1, Lccsanandroid/widget/TextView;

    .line 66
    .local v1, "view":Lccsanandroid/widget/TextView;
    iget-object v2, p2, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 67
    .local v2, "startVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p3, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 68
    .local v3, "endVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    nop

    .line 69
    const-string v4, "android:textscale:scale"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_1

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_0

    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    .line 70
    .local v5, "startSize":F
    :goto_0
    nop

    .line 71
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    :cond_2
    move v4, v6

    .line 72
    .local v4, "endSize":F
    cmpl-float v6, v5, v4

    if-nez v6, :cond_3

    .line 73
    return-object v0

    .line 76
    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v6, 0x0

    aput v5, v0, v6

    const/4 v6, 0x1

    aput v4, v0, v6

    invoke-static {v0}, Lccsanandroid/animation/ValueAnimator;->ofFloat([F)Lccsanandroid/animation/ValueAnimator;

    move-result-object v0

    .line 78
    .local v0, "animator":Lccsanandroid/animation/ValueAnimator;
    new-instance v6, Lccsancom/google/android/material/internal/TextScale$1;

    invoke-direct {v6, p0, v1}, Lccsancom/google/android/material/internal/TextScale$1;-><init>(Lccsancom/google/android/material/internal/TextScale;Lccsanandroid/widget/TextView;)V

    invoke-virtual {v0, v6}, Lccsanandroid/animation/ValueAnimator;->addUpdateListener(Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 87
    return-object v0

    .line 63
    .end local v0    # "animator":Lccsanandroid/animation/ValueAnimator;
    .end local v1    # "view":Lccsanandroid/widget/TextView;
    .end local v2    # "startVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "endVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "endSize":F
    .end local v5    # "startSize":F
    :cond_4
    :goto_1
    return-object v0
.end method
