.class public Lccsanandroidx/appcompat/widget/AppCompatEditText;
.super Lccsanandroid/widget/EditText;
.source "AppCompatEditText.java"

# interfaces
.implements Lccsanandroidx/core/view/TintableBackgroundView;


# instance fields
.field private final mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

.field private final mTextClassifierHelper:Lccsanandroidx/appcompat/widget/AppCompatTextClassifierHelper;

.field private final mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/appcompat/widget/AppCompatEditText;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 69
    sget v0, Lccsanandroidx/appcompat/R$attr;->editTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Lccsanandroidx/appcompat/widget/AppCompatEditText;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 74
    invoke-static {p1}, Lccsanandroidx/appcompat/widget/TintContextWrapper;->wrap(Lccsanandroid/content/Context;)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lccsanandroid/widget/EditText;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 76
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatEditText;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lccsanandroidx/appcompat/widget/ThemeUtils;->checkAppCompatTheme(Lccsanandroid/view/View;Lccsanandroid/content/Context;)V

    .line 78
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;-><init>(Lccsanandroid/view/View;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatEditText;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 79
    invoke-virtual {v0, p2, p3}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->loadFromAttributes(Lccsanandroid/util/AttributeSet;I)V

    .line 81
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;-><init>(Lccsanandroid/widget/TextView;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatEditText;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    .line 82
    invoke-virtual {v0, p2, p3}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->loadFromAttributes(Lccsanandroid/util/AttributeSet;I)V

    .line 83
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 85
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatTextClassifierHelper;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/widget/AppCompatTextClassifierHelper;-><init>(Lccsanandroid/widget/TextView;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatEditText;->mTextClassifierHelper:Lccsanandroidx/appcompat/widget/AppCompatTextClassifierHelper;

    .line 86
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 176
    invoke-super {p0}, Lccsanandroid/widget/EditText;->drawableStateChanged()V

    .line 177
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatEditText;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 180
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatEditText;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 183
    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 142
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatEditText;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 142
    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 170
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatEditText;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 170
    :goto_0
    return-object v0
.end method

.method public getText()Lccsanandroid/text/Editable;
    .locals 2

    .line 94
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 95
    invoke-super {p0}, Lccsanandroid/widget/EditText;->getText()Lccsanandroid/text/Editable;

    move-result-object v0

    return-object v0

    .line 99
    :cond_0
    invoke-super {p0}, Lccsanandroid/widget/EditText;->getEditableText()Lccsanandroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatEditText;->getText()Lccsanandroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getTextClassifier()Lccsanandroid/view/textclassifier/TextClassifier;
    .locals 2

    .line 233
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatEditText;->mTextClassifierHelper:Lccsanandroidx/appcompat/widget/AppCompatTextClassifierHelper;

    if-nez v0, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatTextClassifierHelper;->getTextClassifier()Lccsanandroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0

    .line 234
    :cond_1
    :goto_0
    invoke-super {p0}, Lccsanandroid/widget/EditText;->getTextClassifier()Lccsanandroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputConnection(Lccsanandroid/view/inputmethod/EditorInfo;)Lccsanandroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Lccsanandroid/view/inputmethod/EditorInfo;

    .line 195
    invoke-super {p0, p1}, Lccsanandroid/widget/EditText;->onCreateInputConnection(Lccsanandroid/view/inputmethod/EditorInfo;)Lccsanandroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lccsanandroidx/appcompat/widget/AppCompatHintHelper;->onCreateInputConnection(Lccsanandroid/view/inputmethod/InputConnection;Lccsanandroid/view/inputmethod/EditorInfo;Lccsanandroid/view/View;)Lccsanandroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method public setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 112
    invoke-super {p0, p1}, Lccsanandroid/widget/EditText;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatEditText;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 116
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 104
    invoke-super {p0, p1}, Lccsanandroid/widget/EditText;->setBackgroundResource(I)V

    .line 105
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatEditText;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    .line 108
    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Lccsanandroid/view/ActionMode$Callback;)V
    .locals 1
    .param p1, "actionModeCallback"    # Lccsanandroid/view/ActionMode$Callback;

    .line 205
    nop

    .line 206
    invoke-static {p0, p1}, Lccsanandroidx/core/widget/TextViewCompat;->wrapCustomSelectionActionModeCallback(Lccsanandroid/widget/TextView;Lccsanandroid/view/ActionMode$Callback;)Lccsanandroid/view/ActionMode$Callback;

    move-result-object v0

    .line 205
    invoke-super {p0, v0}, Lccsanandroid/widget/EditText;->setCustomSelectionActionModeCallback(Lccsanandroid/view/ActionMode$Callback;)V

    .line 207
    return-void
.end method

.method public setSupportBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 127
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatEditText;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 130
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 155
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatEditText;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 158
    :cond_0
    return-void
.end method

.method public setTextAppearance(Lccsanandroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "resId"    # I

    .line 187
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/EditText;->setTextAppearance(Lccsanandroid/content/Context;I)V

    .line 188
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatEditText;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0, p1, p2}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->onSetTextAppearance(Lccsanandroid/content/Context;I)V

    .line 191
    :cond_0
    return-void
.end method

.method public setTextClassifier(Lccsanandroid/view/textclassifier/TextClassifier;)V
    .locals 2
    .param p1, "textClassifier"    # Lccsanandroid/view/textclassifier/TextClassifier;

    .line 215
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatEditText;->mTextClassifierHelper:Lccsanandroidx/appcompat/widget/AppCompatTextClassifierHelper;

    if-nez v0, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatTextClassifierHelper;->setTextClassifier(Lccsanandroid/view/textclassifier/TextClassifier;)V

    .line 220
    return-void

    .line 216
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lccsanandroid/widget/EditText;->setTextClassifier(Lccsanandroid/view/textclassifier/TextClassifier;)V

    .line 217
    return-void
.end method
