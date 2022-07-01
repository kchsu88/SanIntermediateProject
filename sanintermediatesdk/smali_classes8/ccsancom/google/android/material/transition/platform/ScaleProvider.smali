.class public final Lccsancom/google/android/material/transition/platform/ScaleProvider;
.super Ljava/lang/Object;
.source "ScaleProvider.java"

# interfaces
.implements Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;


# instance fields
.field private growing:Z

.field private incomingEndScale:F

.field private incomingStartScale:F

.field private outgoingEndScale:F

.field private outgoingStartScale:F

.field private scaleOnDisappear:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccsancom/google/android/material/transition/platform/ScaleProvider;-><init>(Z)V

    .line 53
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "growing"    # Z

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lccsancom/google/android/material/transition/platform/ScaleProvider;->outgoingStartScale:F

    .line 44
    const v1, 0x3f8ccccd    # 1.1f

    iput v1, p0, Lccsancom/google/android/material/transition/platform/ScaleProvider;->outgoingEndScale:F

    .line 45
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, p0, Lccsancom/google/android/material/transition/platform/ScaleProvider;->incomingStartScale:F

    .line 46
    iput v0, p0, Lccsancom/google/android/material/transition/platform/ScaleProvider;->incomingEndScale:F

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/transition/platform/ScaleProvider;->scaleOnDisappear:Z

    .line 56
    iput-boolean p1, p0, Lccsancom/google/android/material/transition/platform/ScaleProvider;->growing:Z

    .line 57
    return-void
.end method

.method private static createScaleAnimator(Lccsanandroid/view/View;FF)Lccsanandroid/animation/Animator;
    .locals 9
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "startScale"    # F
    .param p2, "endScale"    # F

    .line 177
    invoke-virtual {p0}, Lccsanandroid/view/View;->getScaleX()F

    move-result v0

    .line 178
    .local v0, "originalScaleX":F
    invoke-virtual {p0}, Lccsanandroid/view/View;->getScaleY()F

    move-result v1

    .line 179
    .local v1, "originalScaleY":F
    const/4 v2, 0x2

    new-array v3, v2, [Lccsanandroid/animation/PropertyValuesHolder;

    sget-object v4, Lccsanandroid/view/View;->SCALE_X:Lccsanandroid/util/Property;

    new-array v5, v2, [F

    mul-float v6, v0, p1

    const/4 v7, 0x0

    aput v6, v5, v7

    mul-float v6, v0, p2

    const/4 v8, 0x1

    aput v6, v5, v8

    .line 182
    invoke-static {v4, v5}, Lccsanandroid/animation/PropertyValuesHolder;->ofFloat(Lccsanandroid/util/Property;[F)Lccsanandroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v7

    sget-object v4, Lccsanandroid/view/View;->SCALE_Y:Lccsanandroid/util/Property;

    new-array v2, v2, [F

    mul-float v5, v1, p1

    aput v5, v2, v7

    mul-float v5, v1, p2

    aput v5, v2, v8

    .line 184
    invoke-static {v4, v2}, Lccsanandroid/animation/PropertyValuesHolder;->ofFloat(Lccsanandroid/util/Property;[F)Lccsanandroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v3, v8

    .line 180
    invoke-static {p0, v3}, Lccsanandroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Lccsanandroid/animation/PropertyValuesHolder;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v2

    .line 186
    .local v2, "animator":Lccsanandroid/animation/ObjectAnimator;
    new-instance v3, Lccsancom/google/android/material/transition/platform/ScaleProvider$1;

    invoke-direct {v3, p0, v0, v1}, Lccsancom/google/android/material/transition/platform/ScaleProvider$1;-><init>(Lccsanandroid/view/View;FF)V

    invoke-virtual {v2, v3}, Lccsanandroid/animation/ObjectAnimator;->addListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 194
    return-object v2
.end method


# virtual methods
.method public createAppear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;)Lccsanandroid/animation/Animator;
    .locals 2
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "view"    # Lccsanandroid/view/View;

    .line 155
    iget-boolean v0, p0, Lccsancom/google/android/material/transition/platform/ScaleProvider;->growing:Z

    if-eqz v0, :cond_0

    .line 156
    iget v0, p0, Lccsancom/google/android/material/transition/platform/ScaleProvider;->incomingStartScale:F

    iget v1, p0, Lccsancom/google/android/material/transition/platform/ScaleProvider;->incomingEndScale:F

    invoke-static {p2, v0, v1}, Lccsancom/google/android/material/transition/platform/ScaleProvider;->createScaleAnimator(Lccsanandroid/view/View;FF)Lccsanandroid/animation/Animator;

    move-result-object v0

    return-object v0

    .line 158
    :cond_0
    iget v0, p0, Lccsancom/google/android/material/transition/platform/ScaleProvider;->outgoingEndScale:F

    iget v1, p0, Lccsancom/google/android/material/transition/platform/ScaleProvider;->outgoingStartScale:F

    invoke-static {p2, v0, v1}, Lccsancom/google/android/material/transition/platform/ScaleProvider;->createScaleAnimator(Lccsanandroid/view/View;FF)Lccsanandroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public createDisappear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;)Lccsanandroid/animation/Animator;
    .locals 2
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "view"    # Lccsanandroid/view/View;

    .line 165
    iget-boolean v0, p0, Lccsancom/google/android/material/transition/platform/ScaleProvider;->scaleOnDisappear:Z

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    return-object v0

    .line 169
    :cond_0
    iget-boolean v0, p0, Lccsancom/google/android/material/transition/platform/ScaleProvider;->growing:Z

    if-eqz v0, :cond_1

    .line 170
    iget v0, p0, Lccsancom/google/android/material/transition/platform/ScaleProvider;->outgoingStartScale:F

    iget v1, p0, Lccsancom/google/android/material/transition/platform/ScaleProvider;->outgoingEndScale:F

    invoke-static {p2, v0, v1}, Lccsancom/google/android/material/transition/platform/ScaleProvider;->createScaleAnimator(Lccsanandroid/view/View;FF)Lccsanandroid/animation/Animator;

    move-result-object v0

    return-object v0

    .line 172
    :cond_1
    iget v0, p0, Lccsancom/google/android/material/transition/platform/ScaleProvider;->incomingEndScale:F

    iget v1, p0, Lccsancom/google/android/material/transition/platform/ScaleProvider;->incomingStartScale:F

    invoke-static {p2, v0, v1}, Lccsancom/google/android/material/transition/platform/ScaleProvider;->createScaleAnimator(Lccsanandroid/view/View;FF)Lccsanandroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public getIncomingEndScale()F
    .locals 1

    .line 141
    iget v0, p0, Lccsancom/google/android/material/transition/platform/ScaleProvider;->incomingEndScale:F

    return v0
.end method

.method public getIncomingStartScale()F
    .locals 1

    .line 125
    iget v0, p0, Lccsancom/google/android/material/transition/platform/ScaleProvider;->incomingStartScale:F

    return v0
.end method

.method public getOutgoingEndScale()F
    .locals 1

    .line 109
    iget v0, p0, Lccsancom/google/android/material/transition/platform/ScaleProvider;->outgoingEndScale:F

    return v0
.end method

.method public getOutgoingStartScale()F
    .locals 1

    .line 93
    iget v0, p0, Lccsancom/google/android/material/transition/platform/ScaleProvider;->outgoingStartScale:F

    return v0
.end method

.method public isGrowing()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lccsancom/google/android/material/transition/platform/ScaleProvider;->growing:Z

    return v0
.end method

.method public isScaleOnDisappear()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lccsancom/google/android/material/transition/platform/ScaleProvider;->scaleOnDisappear:Z

    return v0
.end method

.method public setGrowing(Z)V
    .locals 0
    .param p1, "growing"    # Z

    .line 66
    iput-boolean p1, p0, Lccsancom/google/android/material/transition/platform/ScaleProvider;->growing:Z

    .line 67
    return-void
.end method

.method public setIncomingEndScale(F)V
    .locals 0
    .param p1, "incomingEndScale"    # F

    .line 149
    iput p1, p0, Lccsancom/google/android/material/transition/platform/ScaleProvider;->incomingEndScale:F

    .line 150
    return-void
.end method

.method public setIncomingStartScale(F)V
    .locals 0
    .param p1, "incomingStartScale"    # F

    .line 133
    iput p1, p0, Lccsancom/google/android/material/transition/platform/ScaleProvider;->incomingStartScale:F

    .line 134
    return-void
.end method

.method public setOutgoingEndScale(F)V
    .locals 0
    .param p1, "outgoingEndScale"    # F

    .line 117
    iput p1, p0, Lccsancom/google/android/material/transition/platform/ScaleProvider;->outgoingEndScale:F

    .line 118
    return-void
.end method

.method public setOutgoingStartScale(F)V
    .locals 0
    .param p1, "outgoingStartScale"    # F

    .line 101
    iput p1, p0, Lccsancom/google/android/material/transition/platform/ScaleProvider;->outgoingStartScale:F

    .line 102
    return-void
.end method

.method public setScaleOnDisappear(Z)V
    .locals 0
    .param p1, "scaleOnDisappear"    # Z

    .line 85
    iput-boolean p1, p0, Lccsancom/google/android/material/transition/platform/ScaleProvider;->scaleOnDisappear:Z

    .line 86
    return-void
.end method
