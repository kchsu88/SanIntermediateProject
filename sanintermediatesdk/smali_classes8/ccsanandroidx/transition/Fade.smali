.class public Lccsanandroidx/transition/Fade;
.super Lccsanandroidx/transition/Visibility;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/transition/Fade$FadeAnimatorListener;
    }
.end annotation


# static fields
.field public static final IN:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Fade"

.field public static final OUT:I = 0x2

.field private static final PROPNAME_TRANSITION_ALPHA:Ljava/lang/String; = "android:fade:transitionAlpha"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Lccsanandroidx/transition/Visibility;-><init>()V

    .line 99
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "fadingMode"    # I

    .line 91
    invoke-direct {p0}, Lccsanandroidx/transition/Visibility;-><init>()V

    .line 92
    invoke-virtual {p0, p1}, Lccsanandroidx/transition/Fade;->setMode(I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 104
    invoke-direct {p0, p1, p2}, Lccsanandroidx/transition/Visibility;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 105
    sget-object v0, Lccsanandroidx/transition/Styleable;->FADE:[I

    invoke-virtual {p1, p2, v0}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 107
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    move-object v1, p2

    check-cast v1, Lccsanandroid/content/res/XmlResourceParser;

    .line 108
    invoke-virtual {p0}, Lccsanandroidx/transition/Fade;->getMode()I

    move-result v2

    .line 107
    const-string v3, "fadingMode"

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4, v2}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedInt(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    .line 109
    .local v1, "fadingMode":I
    invoke-virtual {p0, v1}, Lccsanandroidx/transition/Fade;->setMode(I)V

    .line 110
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 111
    return-void
.end method

.method private createAnimation(Lccsanandroid/view/View;FF)Lccsanandroid/animation/Animator;
    .locals 3
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "startAlpha"    # F
    .param p3, "endAlpha"    # F

    .line 124
    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x0

    return-object v0

    .line 127
    :cond_0
    invoke-static {p1, p2}, Lccsanandroidx/transition/ViewUtils;->setTransitionAlpha(Lccsanandroid/view/View;F)V

    .line 128
    sget-object v0, Lccsanandroidx/transition/ViewUtils;->TRANSITION_ALPHA:Lccsanandroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    invoke-static {p1, v0, v1}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Lccsanandroid/util/Property;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v0

    .line 133
    .local v0, "anim":Lccsanandroid/animation/ObjectAnimator;
    new-instance v1, Lccsanandroidx/transition/Fade$FadeAnimatorListener;

    invoke-direct {v1, p1}, Lccsanandroidx/transition/Fade$FadeAnimatorListener;-><init>(Lccsanandroid/view/View;)V

    .line 134
    .local v1, "listener":Lccsanandroidx/transition/Fade$FadeAnimatorListener;
    invoke-virtual {v0, v1}, Lccsanandroid/animation/ObjectAnimator;->addListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 135
    new-instance v2, Lccsanandroidx/transition/Fade$1;

    invoke-direct {v2, p0, p1}, Lccsanandroidx/transition/Fade$1;-><init>(Lccsanandroidx/transition/Fade;Lccsanandroid/view/View;)V

    invoke-virtual {p0, v2}, Lccsanandroidx/transition/Fade;->addListener(Lccsanandroidx/transition/Transition$TransitionListener;)Lccsanandroidx/transition/Transition;

    .line 143
    return-object v0
.end method

.method private static getStartAlpha(Lccsanandroidx/transition/TransitionValues;F)F
    .locals 3
    .param p0, "startValues"    # Lccsanandroidx/transition/TransitionValues;
    .param p1, "fallbackValue"    # F

    .line 171
    move v0, p1

    .line 172
    .local v0, "startAlpha":F
    if-eqz p0, :cond_0

    .line 173
    iget-object v1, p0, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:fade:transitionAlpha"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 174
    .local v1, "startAlphaFloat":Ljava/lang/Float;
    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 178
    .end local v1    # "startAlphaFloat":Ljava/lang/Float;
    :cond_0
    return v0
.end method


# virtual methods
.method public captureStartValues(Lccsanandroidx/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 115
    invoke-super {p0, p1}, Lccsanandroidx/transition/Visibility;->captureStartValues(Lccsanandroidx/transition/TransitionValues;)V

    .line 116
    iget-object v0, p1, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v1, p1, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    .line 117
    invoke-static {v1}, Lccsanandroidx/transition/ViewUtils;->getTransitionAlpha(Lccsanandroid/view/View;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 116
    const-string v2, "android:fade:transitionAlpha"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public onAppear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroid/animation/Animator;
    .locals 3
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "view"    # Lccsanandroid/view/View;
    .param p3, "startValues"    # Lccsanandroidx/transition/TransitionValues;
    .param p4, "endValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 155
    const/4 v0, 0x0

    invoke-static {p3, v0}, Lccsanandroidx/transition/Fade;->getStartAlpha(Lccsanandroidx/transition/TransitionValues;F)F

    move-result v0

    .line 156
    .local v0, "startAlpha":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 159
    :cond_0
    invoke-direct {p0, p2, v0, v1}, Lccsanandroidx/transition/Fade;->createAnimation(Lccsanandroid/view/View;FF)Lccsanandroid/animation/Animator;

    move-result-object v1

    return-object v1
.end method

.method public onDisappear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroid/animation/Animator;
    .locals 2
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "view"    # Lccsanandroid/view/View;
    .param p3, "startValues"    # Lccsanandroidx/transition/TransitionValues;
    .param p4, "endValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 165
    invoke-static {p2}, Lccsanandroidx/transition/ViewUtils;->saveNonTransitionAlpha(Lccsanandroid/view/View;)V

    .line 166
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p3, v0}, Lccsanandroidx/transition/Fade;->getStartAlpha(Lccsanandroidx/transition/TransitionValues;F)F

    move-result v0

    .line 167
    .local v0, "startAlpha":F
    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lccsanandroidx/transition/Fade;->createAnimation(Lccsanandroid/view/View;FF)Lccsanandroid/animation/Animator;

    move-result-object v1

    return-object v1
.end method
