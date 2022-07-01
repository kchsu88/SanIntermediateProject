.class public Lccsancom/google/android/material/textview/MaterialTextView;
.super Lccsanandroidx/appcompat/widget/AppCompatTextView;
.source "MaterialTextView.java"


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/textview/MaterialTextView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 83
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/android/material/textview/MaterialTextView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lccsancom/google/android/material/textview/MaterialTextView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 93
    invoke-static {p1, p2, p3, p4}, Lccsancom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lccsanandroidx/appcompat/widget/AppCompatTextView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 95
    invoke-virtual {p0}, Lccsancom/google/android/material/textview/MaterialTextView;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    .line 97
    invoke-static {p1}, Lccsancom/google/android/material/textview/MaterialTextView;->canApplyTextAppearanceLineHeight(Lccsanandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v0

    .line 100
    .local v0, "theme":Lccsanandroid/content/res/Resources$Theme;
    invoke-static {p1, v0, p2, p3, p4}, Lccsancom/google/android/material/textview/MaterialTextView;->viewAttrsHasLineHeight(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources$Theme;Lccsanandroid/util/AttributeSet;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    invoke-static {v0, p2, p3, p4}, Lccsancom/google/android/material/textview/MaterialTextView;->findViewAppearanceResourceId(Lccsanandroid/content/res/Resources$Theme;Lccsanandroid/util/AttributeSet;II)I

    move-result v1

    .line 102
    .local v1, "resId":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 103
    invoke-direct {p0, v0, v1}, Lccsancom/google/android/material/textview/MaterialTextView;->applyLineHeightFromViewAppearance(Lccsanandroid/content/res/Resources$Theme;I)V

    .line 107
    .end local v0    # "theme":Lccsanandroid/content/res/Resources$Theme;
    .end local v1    # "resId":I
    :cond_0
    return-void
.end method

.method private applyLineHeightFromViewAppearance(Lccsanandroid/content/res/Resources$Theme;I)V
    .locals 5
    .param p1, "theme"    # Lccsanandroid/content/res/Resources$Theme;
    .param p2, "resId"    # I

    .line 119
    sget-object v0, Lccsancom/google/android/material/R$styleable;->MaterialTextAppearance:[I

    invoke-virtual {p1, p2, v0}, Lccsanandroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 120
    .local v0, "attributes":Lccsanandroid/content/res/TypedArray;
    nop

    .line 122
    invoke-virtual {p0}, Lccsancom/google/android/material/textview/MaterialTextView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    sget v3, Lccsancom/google/android/material/R$styleable;->MaterialTextAppearance_android_lineHeight:I

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v3, Lccsancom/google/android/material/R$styleable;->MaterialTextAppearance_lineHeight:I

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 121
    invoke-static {v1, v0, v2}, Lccsancom/google/android/material/textview/MaterialTextView;->readFirstAvailableDimension(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;[I)I

    move-result v1

    .line 126
    .local v1, "lineHeight":I
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 128
    if-ltz v1, :cond_0

    .line 129
    invoke-virtual {p0, v1}, Lccsancom/google/android/material/textview/MaterialTextView;->setLineHeight(I)V

    .line 131
    :cond_0
    return-void
.end method

.method private static canApplyTextAppearanceLineHeight(Lccsanandroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 134
    sget v0, Lccsancom/google/android/material/R$attr;->textAppearanceLineHeightEnabled:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lccsancom/google/android/material/resources/MaterialAttributes;->resolveBoolean(Lccsanandroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method private static findViewAppearanceResourceId(Lccsanandroid/content/res/Resources$Theme;Lccsanandroid/util/AttributeSet;II)I
    .locals 3
    .param p0, "theme"    # Lccsanandroid/content/res/Resources$Theme;
    .param p1, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 172
    sget-object v0, Lccsancom/google/android/material/R$styleable;->MaterialTextView:[I

    .line 173
    invoke-virtual {p0, p1, v0, p2, p3}, Lccsanandroid/content/res/Resources$Theme;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[III)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 175
    .local v0, "attributes":Lccsanandroid/content/res/TypedArray;
    sget v1, Lccsancom/google/android/material/R$styleable;->MaterialTextView_android_textAppearance:I

    .line 176
    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 177
    .local v1, "appearanceAttrId":I
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 178
    return v1
.end method

.method private static varargs readFirstAvailableDimension(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;[I)I
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "attributes"    # Lccsanandroid/content/res/TypedArray;
    .param p2, "indices"    # [I

    .line 141
    const/4 v0, -0x1

    .line 143
    .local v0, "lineHeight":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    if-gez v0, :cond_0

    .line 144
    aget v2, p2, v1

    const/4 v3, -0x1

    invoke-static {p0, p1, v2, v3}, Lccsancom/google/android/material/resources/MaterialResources;->getDimensionPixelSize(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;II)I

    move-result v0

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    .end local v1    # "index":I
    :cond_0
    return v0
.end method

.method private static viewAttrsHasLineHeight(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources$Theme;Lccsanandroid/util/AttributeSet;II)Z
    .locals 5
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "theme"    # Lccsanandroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 156
    sget-object v0, Lccsancom/google/android/material/R$styleable;->MaterialTextView:[I

    .line 157
    invoke-virtual {p1, p2, v0, p3, p4}, Lccsanandroid/content/res/Resources$Theme;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[III)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 159
    .local v0, "attributes":Lccsanandroid/content/res/TypedArray;
    const/4 v1, 0x2

    new-array v1, v1, [I

    sget v2, Lccsancom/google/android/material/R$styleable;->MaterialTextView_android_lineHeight:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lccsancom/google/android/material/R$styleable;->MaterialTextView_lineHeight:I

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 160
    invoke-static {p0, v0, v1}, Lccsancom/google/android/material/textview/MaterialTextView;->readFirstAvailableDimension(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;[I)I

    move-result v1

    .line 165
    .local v1, "lineHeight":I
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 167
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method


# virtual methods
.method public setTextAppearance(Lccsanandroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "resId"    # I

    .line 111
    invoke-super {p0, p1, p2}, Lccsanandroidx/appcompat/widget/AppCompatTextView;->setTextAppearance(Lccsanandroid/content/Context;I)V

    .line 113
    invoke-static {p1}, Lccsancom/google/android/material/textview/MaterialTextView;->canApplyTextAppearanceLineHeight(Lccsanandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lccsancom/google/android/material/textview/MaterialTextView;->applyLineHeightFromViewAppearance(Lccsanandroid/content/res/Resources$Theme;I)V

    .line 116
    :cond_0
    return-void
.end method
