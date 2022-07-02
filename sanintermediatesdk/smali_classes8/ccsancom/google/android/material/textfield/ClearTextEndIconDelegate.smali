.class Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;
.super Lccsancom/google/android/material/textfield/EndIconDelegate;
.source "ClearTextEndIconDelegate.java"


# static fields
.field private static final ANIMATION_FADE_DURATION:I = 0x64

.field private static final ANIMATION_SCALE_DURATION:I = 0x96

.field private static final ANIMATION_SCALE_FROM_VALUE:F = 0.8f


# instance fields
.field private final clearTextEndIconTextWatcher:Lccsanandroid/text/TextWatcher;

.field private final clearTextOnEditTextAttachedListener:Lccsancom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

.field private final endIconChangedListener:Lccsancom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

.field private iconInAnim:Lccsanandroid/animation/AnimatorSet;

.field private iconOutAnim:Lccsanandroid/animation/ValueAnimator;

.field private final onFocusChangeListener:Lccsanandroid/view/View$OnFocusChangeListener;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/textfield/TextInputLayout;)V
    .locals 1
    .param p1, "textInputLayout"    # Lccsancom/google/android/material/textfield/TextInputLayout;

    .line 108
    invoke-direct {p0, p1}, Lccsancom/google/android/material/textfield/EndIconDelegate;-><init>(Lccsancom/google/android/material/textfield/TextInputLayout;)V

    .line 46
    new-instance v0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$1;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$1;-><init>(Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    iput-object v0, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->clearTextEndIconTextWatcher:Lccsanandroid/text/TextWatcher;

    .line 62
    new-instance v0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$2;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$2;-><init>(Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    iput-object v0, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->onFocusChangeListener:Lccsanandroid/view/View$OnFocusChangeListener;

    .line 70
    new-instance v0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$3;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$3;-><init>(Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    iput-object v0, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->clearTextOnEditTextAttachedListener:Lccsancom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

    .line 83
    new-instance v0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$4;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$4;-><init>(Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    iput-object v0, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->endIconChangedListener:Lccsancom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lccsanandroid/text/Editable;)Z
    .locals 1
    .param p0, "x0"    # Lccsanandroid/text/Editable;

    .line 40
    invoke-static {p0}, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->hasText(Lccsanandroid/text/Editable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;Z)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;
    .param p1, "x1"    # Z

    .line 40
    invoke-direct {p0, p1}, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->animateIcon(Z)V

    return-void
.end method

.method static synthetic access$200(Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;)Lccsanandroid/view/View$OnFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;

    .line 40
    iget-object v0, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->onFocusChangeListener:Lccsanandroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$300(Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;)Lccsanandroid/text/TextWatcher;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;

    .line 40
    iget-object v0, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->clearTextEndIconTextWatcher:Lccsanandroid/text/TextWatcher;

    return-object v0
.end method

.method private animateIcon(Z)V
    .locals 2
    .param p1, "show"    # Z

    .line 143
    iget-object v0, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lccsancom/google/android/material/textfield/TextInputLayout;->isEndIconVisible()Z

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 144
    .local v0, "shouldSkipAnimation":Z
    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->iconInAnim:Lccsanandroid/animation/AnimatorSet;

    invoke-virtual {v1}, Lccsanandroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    iget-object v1, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->iconOutAnim:Lccsanandroid/animation/ValueAnimator;

    invoke-virtual {v1}, Lccsanandroid/animation/ValueAnimator;->cancel()V

    .line 146
    iget-object v1, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->iconInAnim:Lccsanandroid/animation/AnimatorSet;

    invoke-virtual {v1}, Lccsanandroid/animation/AnimatorSet;->start()V

    .line 147
    if-eqz v0, :cond_2

    .line 148
    iget-object v1, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->iconInAnim:Lccsanandroid/animation/AnimatorSet;

    invoke-virtual {v1}, Lccsanandroid/animation/AnimatorSet;->end()V

    goto :goto_1

    .line 150
    :cond_1
    if-nez p1, :cond_2

    .line 151
    iget-object v1, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->iconInAnim:Lccsanandroid/animation/AnimatorSet;

    invoke-virtual {v1}, Lccsanandroid/animation/AnimatorSet;->cancel()V

    .line 152
    iget-object v1, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->iconOutAnim:Lccsanandroid/animation/ValueAnimator;

    invoke-virtual {v1}, Lccsanandroid/animation/ValueAnimator;->start()V

    .line 153
    if-eqz v0, :cond_2

    .line 154
    iget-object v1, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->iconOutAnim:Lccsanandroid/animation/ValueAnimator;

    invoke-virtual {v1}, Lccsanandroid/animation/ValueAnimator;->end()V

    .line 157
    :cond_2
    :goto_1
    return-void
.end method

.method private varargs getAlphaAnimator([F)Lccsanandroid/animation/ValueAnimator;
    .locals 3
    .param p1, "values"    # [F

    .line 182
    invoke-static {p1}, Lccsanandroid/animation/ValueAnimator;->ofFloat([F)Lccsanandroid/animation/ValueAnimator;

    move-result-object v0

    .line 183
    .local v0, "animator":Lccsanandroid/animation/ValueAnimator;
    sget-object v1, Lccsancom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Lccsanandroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Lccsanandroid/animation/ValueAnimator;->setInterpolator(Lccsanandroid/animation/TimeInterpolator;)V

    .line 184
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lccsanandroid/animation/ValueAnimator;->setDuration(J)Lccsanandroid/animation/ValueAnimator;

    .line 185
    new-instance v1, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$8;

    invoke-direct {v1, p0}, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$8;-><init>(Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    invoke-virtual {v0, v1}, Lccsanandroid/animation/ValueAnimator;->addUpdateListener(Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 194
    return-object v0
.end method

.method private getScaleAnimator()Lccsanandroid/animation/ValueAnimator;
    .locals 3

    .line 198
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lccsanandroid/animation/ValueAnimator;->ofFloat([F)Lccsanandroid/animation/ValueAnimator;

    move-result-object v0

    .line 199
    .local v0, "animator":Lccsanandroid/animation/ValueAnimator;
    sget-object v1, Lccsancom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Lccsanandroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Lccsanandroid/animation/ValueAnimator;->setInterpolator(Lccsanandroid/animation/TimeInterpolator;)V

    .line 200
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Lccsanandroid/animation/ValueAnimator;->setDuration(J)Lccsanandroid/animation/ValueAnimator;

    .line 201
    new-instance v1, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$9;

    invoke-direct {v1, p0}, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$9;-><init>(Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    invoke-virtual {v0, v1}, Lccsanandroid/animation/ValueAnimator;->addUpdateListener(Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 210
    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static hasText(Lccsanandroid/text/Editable;)Z
    .locals 1
    .param p0, "editable"    # Lccsanandroid/text/Editable;

    .line 214
    invoke-interface {p0}, Lccsanandroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initAnimators()V
    .locals 6

    .line 160
    invoke-direct {p0}, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->getScaleAnimator()Lccsanandroid/animation/ValueAnimator;

    move-result-object v0

    .line 161
    .local v0, "scaleAnimator":Lccsanandroid/animation/ValueAnimator;
    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-direct {p0, v2}, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->getAlphaAnimator([F)Lccsanandroid/animation/ValueAnimator;

    move-result-object v2

    .line 162
    .local v2, "fadeAnimator":Lccsanandroid/animation/ValueAnimator;
    new-instance v3, Lccsanandroid/animation/AnimatorSet;

    invoke-direct {v3}, Lccsanandroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->iconInAnim:Lccsanandroid/animation/AnimatorSet;

    .line 163
    new-array v4, v1, [Lccsanandroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lccsanandroid/animation/AnimatorSet;->playTogether([Lccsanandroid/animation/Animator;)V

    .line 164
    iget-object v3, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->iconInAnim:Lccsanandroid/animation/AnimatorSet;

    new-instance v4, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$6;

    invoke-direct {v4, p0}, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$6;-><init>(Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    invoke-virtual {v3, v4}, Lccsanandroid/animation/AnimatorSet;->addListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 171
    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-direct {p0, v1}, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->getAlphaAnimator([F)Lccsanandroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->iconOutAnim:Lccsanandroid/animation/ValueAnimator;

    .line 172
    new-instance v3, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$7;

    invoke-direct {v3, p0}, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$7;-><init>(Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    invoke-virtual {v1, v3}, Lccsanandroid/animation/ValueAnimator;->addListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 179
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method initialize()V
    .locals 3

    .line 113
    iget-object v0, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->context:Lccsanandroid/content/Context;

    sget v2, Lccsancom/google/android/material/R$drawable;->ccsan_mtrl_ic_cancel:I

    .line 114
    invoke-static {v1, v2}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Lccsancom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v0, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    .line 116
    invoke-virtual {v1}, Lccsancom/google/android/material/textfield/TextInputLayout;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccsancom/google/android/material/R$string;->clear_text_end_icon_content_description:I

    invoke-virtual {v1, v2}, Lccsanandroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Lccsancom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    new-instance v1, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$5;

    invoke-direct {v1, p0}, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$5;-><init>(Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->clearTextOnEditTextAttachedListener:Lccsancom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/textfield/TextInputLayout;->addOnEditTextAttachedListener(Lccsancom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;)V

    .line 130
    iget-object v0, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->endIconChangedListener:Lccsancom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/textfield/TextInputLayout;->addOnEndIconChangedListener(Lccsancom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;)V

    .line 131
    invoke-direct {p0}, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->initAnimators()V

    .line 132
    return-void
.end method

.method onSuffixVisibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 136
    iget-object v0, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lccsancom/google/android/material/textfield/TextInputLayout;->getSuffixText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 137
    return-void

    .line 139
    :cond_0
    invoke-direct {p0, p1}, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->animateIcon(Z)V

    .line 140
    return-void
.end method
