.class Lccsancom/google/android/material/appbar/ViewUtilsLollipop;
.super Ljava/lang/Object;
.source "ViewUtilsLollipop.java"


# static fields
.field private static final STATE_LIST_ANIM_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010448

    aput v2, v0, v1

    sput-object v0, Lccsancom/google/android/material/appbar/ViewUtilsLollipop;->STATE_LIST_ANIM_ATTRS:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setBoundsViewOutlineProvider(Lccsanandroid/view/View;)V
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;

    .line 39
    sget-object v0, Lccsanandroid/view/ViewOutlineProvider;->BOUNDS:Lccsanandroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->setOutlineProvider(Lccsanandroid/view/ViewOutlineProvider;)V

    .line 40
    return-void
.end method

.method static setDefaultAppBarLayoutStateListAnimator(Lccsanandroid/view/View;F)V
    .locals 11
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "elevation"    # F

    .line 62
    invoke-virtual {p0}, Lccsanandroid/view/View;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccsancom/google/android/material/R$integer;->app_bar_elevation_anim_duration:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 64
    .local v0, "dur":I
    new-instance v1, Lccsanandroid/animation/StateListAnimator;

    invoke-direct {v1}, Lccsanandroid/animation/StateListAnimator;-><init>()V

    .line 67
    .local v1, "sla":Lccsanandroid/animation/StateListAnimator;
    const/4 v2, 0x3

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x101000e

    aput v4, v2, v3

    sget v5, Lccsancom/google/android/material/R$attr;->state_liftable:I

    const/4 v6, 0x1

    aput v5, v2, v6

    sget v5, Lccsancom/google/android/material/R$attr;->state_lifted:I

    neg-int v5, v5

    const/4 v7, 0x2

    aput v5, v2, v7

    new-array v5, v6, [F

    const/4 v7, 0x0

    aput v7, v5, v3

    .line 69
    const-string v8, "elevation"

    invoke-static {p0, v8, v5}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v5

    int-to-long v9, v0

    invoke-virtual {v5, v9, v10}, Lccsanandroid/animation/ObjectAnimator;->setDuration(J)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v5

    .line 67
    invoke-virtual {v1, v2, v5}, Lccsanandroid/animation/StateListAnimator;->addState([ILccsanandroid/animation/Animator;)V

    .line 72
    new-array v2, v6, [I

    aput v4, v2, v3

    new-array v4, v6, [F

    aput p1, v4, v3

    .line 74
    invoke-static {p0, v8, v4}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v4

    int-to-long v9, v0

    invoke-virtual {v4, v9, v10}, Lccsanandroid/animation/ObjectAnimator;->setDuration(J)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v4

    .line 72
    invoke-virtual {v1, v2, v4}, Lccsanandroid/animation/StateListAnimator;->addState([ILccsanandroid/animation/Animator;)V

    .line 77
    new-array v2, v3, [I

    new-array v4, v6, [F

    aput v7, v4, v3

    invoke-static {p0, v8, v4}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lccsanandroid/animation/ObjectAnimator;->setDuration(J)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lccsanandroid/animation/StateListAnimator;->addState([ILccsanandroid/animation/Animator;)V

    .line 79
    invoke-virtual {p0, v1}, Lccsanandroid/view/View;->setStateListAnimator(Lccsanandroid/animation/StateListAnimator;)V

    .line 80
    return-void
.end method

.method static setStateListAnimatorFromAttrs(Lccsanandroid/view/View;Lccsanandroid/util/AttributeSet;II)V
    .locals 8
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 44
    invoke-virtual {p0}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v6

    .line 45
    .local v6, "context":Lccsanandroid/content/Context;
    sget-object v2, Lccsancom/google/android/material/appbar/ViewUtilsLollipop;->STATE_LIST_ANIM_ATTRS:[I

    const/4 v7, 0x0

    new-array v5, v7, [I

    .line 46
    move-object v0, v6

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lccsancom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {v0, v7}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    nop

    .line 51
    invoke-virtual {v0, v7, v7}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v6, v1}, Lccsanandroid/animation/AnimatorInflater;->loadStateListAnimator(Lccsanandroid/content/Context;I)Lccsanandroid/animation/StateListAnimator;

    move-result-object v1

    .line 52
    .local v1, "sla":Lccsanandroid/animation/StateListAnimator;
    invoke-virtual {p0, v1}, Lccsanandroid/view/View;->setStateListAnimator(Lccsanandroid/animation/StateListAnimator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .end local v1    # "sla":Lccsanandroid/animation/StateListAnimator;
    :cond_0
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 56
    nop

    .line 57
    return-void

    .line 55
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 56
    throw v1
.end method
