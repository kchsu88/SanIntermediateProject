.class public Lccsanandroidx/appcompat/widget/AppCompatAutoCompleteTextView;
.super Lccsanandroid/widget/AutoCompleteTextView;
.source "AppCompatAutoCompleteTextView.java"

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

    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010176

    aput v2, v0, v1

    sput-object v0, Lccsanandroidx/appcompat/widget/AppCompatAutoCompleteTextView;->TINT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/appcompat/widget/AppCompatAutoCompleteTextView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 71
    sget v0, Lccsanandroidx/appcompat/R$attr;->autoCompleteTextViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lccsanandroidx/appcompat/widget/AppCompatAutoCompleteTextView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 76
    invoke-static {p1}, Lccsanandroidx/appcompat/widget/TintContextWrapper;->wrap(Lccsanandroid/content/Context;)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lccsanandroid/widget/AutoCompleteTextView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 78
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatAutoCompleteTextView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lccsanandroidx/appcompat/widget/ThemeUtils;->checkAppCompatTheme(Lccsanandroid/view/View;Lccsanandroid/content/Context;)V

    .line 80
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatAutoCompleteTextView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    sget-object v1, Lccsanandroidx/appcompat/widget/AppCompatAutoCompleteTextView;->TINT_ATTRS:[I

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, p3, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III)Lccsanandroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 82
    .local v0, "a":Lccsanandroidx/appcompat/widget/TintTypedArray;
    invoke-virtual {v0, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v0, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsanandroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setDropDownBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 85
    :cond_0
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 87
    new-instance v1, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-direct {v1, p0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;-><init>(Lccsanandroid/view/View;)V

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatAutoCompleteTextView;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 88
    invoke-virtual {v1, p2, p3}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->loadFromAttributes(Lccsanandroid/util/AttributeSet;I)V

    .line 90
    new-instance v1, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    invoke-direct {v1, p0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;-><init>(Lccsanandroid/widget/TextView;)V

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatAutoCompleteTextView;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    .line 91
    invoke-virtual {v1, p2, p3}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->loadFromAttributes(Lccsanandroid/util/AttributeSet;I)V

    .line 92
    invoke-virtual {v1}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 93
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 174
    invoke-super {p0}, Lccsanandroid/widget/AutoCompleteTextView;->drawableStateChanged()V

    .line 175
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatAutoCompleteTextView;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 178
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatAutoCompleteTextView;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 181
    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 140
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatAutoCompleteTextView;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 140
    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 168
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatAutoCompleteTextView;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 168
    :goto_0
    return-object v0
.end method

.method public onCreateInputConnection(Lccsanandroid/view/inputmethod/EditorInfo;)Lccsanandroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Lccsanandroid/view/inputmethod/EditorInfo;

    .line 193
    invoke-super {p0, p1}, Lccsanandroid/widget/AutoCompleteTextView;->onCreateInputConnection(Lccsanandroid/view/inputmethod/EditorInfo;)Lccsanandroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lccsanandroidx/appcompat/widget/AppCompatHintHelper;->onCreateInputConnection(Lccsanandroid/view/inputmethod/InputConnection;Lccsanandroid/view/inputmethod/EditorInfo;Lccsanandroid/view/View;)Lccsanandroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method public setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 110
    invoke-super {p0, p1}, Lccsanandroid/widget/AutoCompleteTextView;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 111
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatAutoCompleteTextView;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 114
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 102
    invoke-super {p0, p1}, Lccsanandroid/widget/AutoCompleteTextView;->setBackgroundResource(I)V

    .line 103
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatAutoCompleteTextView;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    .line 106
    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Lccsanandroid/view/ActionMode$Callback;)V
    .locals 1
    .param p1, "actionModeCallback"    # Lccsanandroid/view/ActionMode$Callback;

    .line 203
    nop

    .line 204
    invoke-static {p0, p1}, Lccsanandroidx/core/widget/TextViewCompat;->wrapCustomSelectionActionModeCallback(Lccsanandroid/widget/TextView;Lccsanandroid/view/ActionMode$Callback;)Lccsanandroid/view/ActionMode$Callback;

    move-result-object v0

    .line 203
    invoke-super {p0, v0}, Lccsanandroid/widget/AutoCompleteTextView;->setCustomSelectionActionModeCallback(Lccsanandroid/view/ActionMode$Callback;)V

    .line 205
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 97
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatAutoCompleteTextView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setDropDownBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 98
    return-void
.end method

.method public setSupportBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 125
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatAutoCompleteTextView;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 128
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 153
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatAutoCompleteTextView;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 156
    :cond_0
    return-void
.end method

.method public setTextAppearance(Lccsanandroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "resId"    # I

    .line 185
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/AutoCompleteTextView;->setTextAppearance(Lccsanandroid/content/Context;I)V

    .line 186
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatAutoCompleteTextView;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0, p1, p2}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->onSetTextAppearance(Lccsanandroid/content/Context;I)V

    .line 189
    :cond_0
    return-void
.end method
