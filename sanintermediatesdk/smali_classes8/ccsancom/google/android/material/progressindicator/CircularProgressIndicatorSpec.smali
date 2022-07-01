.class public final Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;
.super Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;
.source "CircularProgressIndicatorSpec.java"


# instance fields
.field public indicatorDirection:I

.field public indicatorInset:I

.field public indicatorSize:I


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 62
    sget v0, Lccsancom/google/android/material/R$attr;->circularProgressIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 67
    sget v0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicator;->DEF_STYLE_RES:I

    invoke-direct {p0, p1, p2, p3, v0}, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)V

    .line 77
    nop

    .line 78
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccsancom/google/android/material/R$dimen;->mtrl_progress_circular_size_medium:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 79
    .local v0, "defaultIndicatorSize":I
    nop

    .line 80
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccsancom/google/android/material/R$dimen;->mtrl_progress_circular_inset_medium:I

    invoke-virtual {v1, v2}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 81
    .local v1, "defaultIndicatorInset":I
    sget-object v4, Lccsancom/google/android/material/R$styleable;->CircularProgressIndicator:[I

    const/4 v8, 0x0

    new-array v7, v8, [I

    .line 82
    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v2 .. v7}, Lccsancom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v2

    .line 84
    .local v2, "a":Lccsanandroid/content/res/TypedArray;
    sget v3, Lccsancom/google/android/material/R$styleable;->CircularProgressIndicator_indicatorSize:I

    .line 85
    invoke-static {p1, v2, v3, v0}, Lccsancom/google/android/material/resources/MaterialResources;->getDimensionPixelSize(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    .line 87
    sget v3, Lccsancom/google/android/material/R$styleable;->CircularProgressIndicator_indicatorInset:I

    .line 88
    invoke-static {p1, v2, v3, v1}, Lccsancom/google/android/material/resources/MaterialResources;->getDimensionPixelSize(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorInset:I

    .line 93
    sget v3, Lccsancom/google/android/material/R$styleable;->CircularProgressIndicator_indicatorDirectionCircular:I

    .line 94
    invoke-virtual {v2, v3, v8}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorDirection:I

    .line 97
    invoke-virtual {v2}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 99
    invoke-virtual {p0}, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->validateSpec()V

    .line 100
    return-void
.end method


# virtual methods
.method validateSpec()V
    .locals 3

    .line 104
    iget v0, p0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    iget v1, p0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->trackThickness:I

    mul-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    .line 115
    return-void

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The indicatorSize ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " px) cannot be less than twice of the trackThickness ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->trackThickness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " px)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
