.class public Lccsanandroidx/appcompat/widget/AppCompatCheckBox;
.super Lccsanandroid/widget/CheckBox;
.source "AppCompatCheckBox.java"

# interfaces
.implements Lccsanandroidx/core/widget/TintableCompoundButton;
.implements Lccsanandroidx/core/view/TintableBackgroundView;


# instance fields
.field private final mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

.field private final mCompoundButtonHelper:Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;

.field private final mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/appcompat/widget/AppCompatCheckBox;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 66
    sget v0, Lccsanandroidx/appcompat/R$attr;->checkboxStyle:I

    invoke-direct {p0, p1, p2, v0}, Lccsanandroidx/appcompat/widget/AppCompatCheckBox;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 71
    invoke-static {p1}, Lccsanandroidx/appcompat/widget/TintContextWrapper;->wrap(Lccsanandroid/content/Context;)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lccsanandroid/widget/CheckBox;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 73
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatCheckBox;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lccsanandroidx/appcompat/widget/ThemeUtils;->checkAppCompatTheme(Lccsanandroid/view/View;Lccsanandroid/content/Context;)V

    .line 75
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;-><init>(Lccsanandroid/widget/CompoundButton;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCheckBox;->mCompoundButtonHelper:Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    .line 76
    invoke-virtual {v0, p2, p3}, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->loadFromAttributes(Lccsanandroid/util/AttributeSet;I)V

    .line 78
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;-><init>(Lccsanandroid/view/View;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCheckBox;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 79
    invoke-virtual {v0, p2, p3}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->loadFromAttributes(Lccsanandroid/util/AttributeSet;I)V

    .line 81
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;-><init>(Lccsanandroid/widget/TextView;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCheckBox;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    .line 82
    invoke-virtual {v0, p2, p3}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->loadFromAttributes(Lccsanandroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 229
    invoke-super {p0}, Lccsanandroid/widget/CheckBox;->drawableStateChanged()V

    .line 230
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCheckBox;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 233
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCheckBox;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 236
    :cond_1
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .line 100
    invoke-super {p0}, Lccsanandroid/widget/CheckBox;->getCompoundPaddingLeft()I

    move-result v0

    .line 101
    .local v0, "value":I
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatCheckBox;->mCompoundButtonHelper:Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {v1, v0}, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->getCompoundPaddingLeft(I)I

    move-result v1

    goto :goto_0

    .line 103
    :cond_0
    move v1, v0

    .line 101
    :goto_0
    return v1
.end method

.method public getSupportBackgroundTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 179
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCheckBox;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 179
    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 207
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCheckBox;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 207
    :goto_0
    return-object v0
.end method

.method public getSupportButtonTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 126
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCheckBox;->mCompoundButtonHelper:Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->getSupportButtonTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 128
    :cond_0
    const/4 v0, 0x0

    .line 126
    :goto_0
    return-object v0
.end method

.method public getSupportButtonTintMode()Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 151
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCheckBox;->mCompoundButtonHelper:Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->getSupportButtonTintMode()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    .line 153
    :cond_0
    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0
.end method

.method public setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 213
    invoke-super {p0, p1}, Lccsanandroid/widget/CheckBox;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 214
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCheckBox;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 217
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 221
    invoke-super {p0, p1}, Lccsanandroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 222
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCheckBox;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    .line 225
    :cond_0
    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 95
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatCheckBox;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/AppCompatCheckBox;->setButtonDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 96
    return-void
.end method

.method public setButtonDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "buttonDrawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 87
    invoke-super {p0, p1}, Lccsanandroid/widget/CheckBox;->setButtonDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCheckBox;->mCompoundButtonHelper:Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->onSetButtonDrawable()V

    .line 91
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 164
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCheckBox;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 167
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 192
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCheckBox;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 195
    :cond_0
    return-void
.end method

.method public setSupportButtonTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 113
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCheckBox;->mCompoundButtonHelper:Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->setSupportButtonTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 116
    :cond_0
    return-void
.end method

.method public setSupportButtonTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 138
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCheckBox;->mCompoundButtonHelper:Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->setSupportButtonTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 141
    :cond_0
    return-void
.end method
