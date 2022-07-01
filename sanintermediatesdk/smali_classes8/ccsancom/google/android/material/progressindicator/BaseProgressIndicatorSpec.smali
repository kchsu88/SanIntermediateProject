.class public abstract Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;
.super Ljava/lang/Object;
.source "BaseProgressIndicatorSpec.java"


# instance fields
.field public hideAnimationBehavior:I

.field public indicatorColors:[I

.field public showAnimationBehavior:I

.field public trackColor:I

.field public trackCornerRadius:I

.field public trackThickness:I


# direct methods
.method protected constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    .line 76
    nop

    .line 77
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccsancom/google/android/material/R$dimen;->mtrl_progress_track_thickness:I

    invoke-virtual {v1, v2}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 78
    .local v1, "defaultIndicatorSize":I
    sget-object v4, Lccsancom/google/android/material/R$styleable;->BaseProgressIndicator:[I

    new-array v7, v0, [I

    .line 79
    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v2 .. v7}, Lccsancom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v2

    .line 81
    .local v2, "a":Lccsanandroid/content/res/TypedArray;
    sget v3, Lccsancom/google/android/material/R$styleable;->BaseProgressIndicator_trackThickness:I

    .line 82
    invoke-static {p1, v2, v3, v1}, Lccsancom/google/android/material/resources/MaterialResources;->getDimensionPixelSize(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    .line 84
    sget v3, Lccsancom/google/android/material/R$styleable;->BaseProgressIndicator_trackCornerRadius:I

    .line 86
    invoke-static {p1, v2, v3, v0}, Lccsancom/google/android/material/resources/MaterialResources;->getDimensionPixelSize(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;II)I

    move-result v3

    iget v4, p0, Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    div-int/lit8 v4, v4, 0x2

    .line 85
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackCornerRadius:I

    .line 89
    sget v3, Lccsancom/google/android/material/R$styleable;->BaseProgressIndicator_showAnimationBehavior:I

    .line 90
    invoke-virtual {v2, v3, v0}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->showAnimationBehavior:I

    .line 93
    sget v3, Lccsancom/google/android/material/R$styleable;->BaseProgressIndicator_hideAnimationBehavior:I

    .line 94
    invoke-virtual {v2, v3, v0}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->hideAnimationBehavior:I

    .line 98
    invoke-direct {p0, p1, v2}, Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->loadIndicatorColors(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;)V

    .line 99
    invoke-direct {p0, p1, v2}, Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->loadTrackColor(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;)V

    .line 101
    invoke-virtual {v2}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 102
    return-void
.end method

.method private loadIndicatorColors(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;)V
    .locals 5
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "typedArray"    # Lccsanandroid/content/res/TypedArray;

    .line 113
    sget v0, Lccsancom/google/android/material/R$styleable;->BaseProgressIndicator_indicatorColor:I

    invoke-virtual {p2, v0}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 115
    new-array v0, v3, [I

    sget v3, Lccsancom/google/android/material/R$attr;->colorPrimary:I

    invoke-static {p1, v3, v2}, Lccsancom/google/android/material/color/MaterialColors;->getColor(Lccsanandroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    .line 116
    return-void

    .line 119
    :cond_0
    sget v0, Lccsancom/google/android/material/R$styleable;->BaseProgressIndicator_indicatorColor:I

    .line 120
    invoke-virtual {p2, v0}, Lccsanandroid/content/res/TypedArray;->peekValue(I)Lccsanandroid/util/TypedValue;

    move-result-object v0

    .line 122
    .local v0, "indicatorColorValue":Lccsanandroid/util/TypedValue;
    iget v4, v0, Lccsanandroid/util/TypedValue;->type:I

    if-eq v4, v3, :cond_1

    .line 123
    new-array v3, v3, [I

    sget v4, Lccsancom/google/android/material/R$styleable;->BaseProgressIndicator_indicatorColor:I

    .line 124
    invoke-virtual {p2, v4, v2}, Lccsanandroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    aput v2, v3, v1

    iput-object v3, p0, Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    .line 125
    return-void

    .line 128
    :cond_1
    nop

    .line 130
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    sget v3, Lccsancom/google/android/material/R$styleable;->BaseProgressIndicator_indicatorColor:I

    .line 132
    invoke-virtual {p2, v3, v2}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 131
    invoke-virtual {v1, v2}, Lccsanandroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    .line 133
    array-length v1, v1

    if-eqz v1, :cond_2

    .line 137
    return-void

    .line 134
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "indicatorColors cannot be empty when indicatorColor is not used."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private loadTrackColor(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "typedArray"    # Lccsanandroid/content/res/TypedArray;

    .line 148
    sget v0, Lccsancom/google/android/material/R$styleable;->BaseProgressIndicator_trackColor:I

    invoke-virtual {p2, v0}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    sget v0, Lccsancom/google/android/material/R$styleable;->BaseProgressIndicator_trackColor:I

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Lccsanandroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    .line 150
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    .line 155
    nop

    .line 156
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x1010033

    aput v3, v2, v1

    invoke-virtual {v0, v2}, Lccsanandroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 157
    .local v0, "disabledAlphaArray":Lccsanandroid/content/res/TypedArray;
    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 158
    .local v1, "defaultOpacity":F
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 160
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    .line 161
    .local v2, "trackAlpha":I
    iget v3, p0, Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    invoke-static {v3, v2}, Lccsancom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v3

    iput v3, p0, Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    .line 162
    return-void
.end method


# virtual methods
.method public isHideAnimationEnabled()Z
    .locals 1

    .line 169
    iget v0, p0, Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->hideAnimationBehavior:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowAnimationEnabled()Z
    .locals 1

    .line 165
    iget v0, p0, Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->showAnimationBehavior:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method abstract validateSpec()V
.end method
