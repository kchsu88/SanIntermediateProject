.class public Lccsanandroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;
.super Lccsanandroid/widget/MultiAutoCompleteTextView;
.source "AppCompatMultiAutoCompleteTextView.java"

# interfaces
.implements Lccsanandroidx/core/view/TintableBackgroundView;


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private final mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

.field private final mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010176

    aput v2, v0, v1

    sput-object v0, Lccsanandroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->TINT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 69
    sget v0, Lccsanandroidx/appcompat/R$attr;->autoCompleteTextViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lccsanandroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 74
    invoke-static {p1}, Lccsanandroidx/appcompat/widget/TintContextWrapper;->wrap(Lccsanandroid/content/Context;)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lccsanandroid/widget/MultiAutoCompleteTextView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 76
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lccsanandroidx/appcompat/widget/ThemeUtils;->checkAppCompatTheme(Lccsanandroid/view/View;Lccsanandroid/content/Context;)V

    .line 78
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    sget-object v1, Lccsanandroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->TINT_ATTRS:[I

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, p3, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III)Lccsanandroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 80
    .local v0, "a":Lccsanandroidx/appcompat/widget/TintTypedArray;
    invoke-virtual {v0, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v0, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsanandroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->setDropDownBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 83
    :cond_0
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 85
    new-instance v1, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-direct {v1, p0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;-><init>(Lccsanandroid/view/View;)V

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 86
    invoke-virtual {v1, p2, p3}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->loadFromAttributes(Lccsanandroid/util/AttributeSet;I)V

    .line 88
    new-instance v1, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    invoke-direct {v1, p0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;-><init>(Lccsanandroid/widget/TextView;)V

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    .line 89
    invoke-virtual {v1, p2, p3}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->loadFromAttributes(Lccsanandroid/util/AttributeSet;I)V

    .line 90
    invoke-virtual {v1}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 91
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 172
    invoke-super {p0}, Lccsanandroid/widget/MultiAutoCompleteTextView;->drawableStateChanged()V

    .line 173
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 176
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 179
    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 138
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 166
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 166
    :goto_0
    return-object v0
.end method

.method public onCreateInputConnection(Lccsanandroid/view/inputmethod/EditorInfo;)Lccsanandroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Lccsanandroid/view/inputmethod/EditorInfo;

    .line 191
    invoke-super {p0, p1}, Lccsanandroid/widget/MultiAutoCompleteTextView;->onCreateInputConnection(Lccsanandroid/view/inputmethod/EditorInfo;)Lccsanandroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lccsanandroidx/appcompat/widget/AppCompatHintHelper;->onCreateInputConnection(Lccsanandroid/view/inputmethod/InputConnection;Lccsanandroid/view/inputmethod/EditorInfo;Lccsanandroid/view/View;)Lccsanandroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method public setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 108
    invoke-super {p0, p1}, Lccsanandroid/widget/MultiAutoCompleteTextView;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 112
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 100
    invoke-super {p0, p1}, Lccsanandroid/widget/MultiAutoCompleteTextView;->setBackgroundResource(I)V

    .line 101
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    .line 104
    :cond_0
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 95
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->setDropDownBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 96
    return-void
.end method

.method public setSupportBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 123
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 126
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 151
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 154
    :cond_0
    return-void
.end method

.method public setTextAppearance(Lccsanandroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "resId"    # I

    .line 183
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/MultiAutoCompleteTextView;->setTextAppearance(Lccsanandroid/content/Context;I)V

    .line 184
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0, p1, p2}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->onSetTextAppearance(Lccsanandroid/content/Context;I)V

    .line 187
    :cond_0
    return-void
.end method
