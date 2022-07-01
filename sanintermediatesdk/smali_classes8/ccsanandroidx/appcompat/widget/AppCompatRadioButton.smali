.class public Lccsanandroidx/appcompat/widget/AppCompatRadioButton;
.super Lccsanandroid/widget/RadioButton;
.source "AppCompatRadioButton.java"

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

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/appcompat/widget/AppCompatRadioButton;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 65
    sget v0, Lccsanandroidx/appcompat/R$attr;->radioButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lccsanandroidx/appcompat/widget/AppCompatRadioButton;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 69
    invoke-static {p1}, Lccsanandroidx/appcompat/widget/TintContextWrapper;->wrap(Lccsanandroid/content/Context;)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lccsanandroid/widget/RadioButton;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 71
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatRadioButton;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lccsanandroidx/appcompat/widget/ThemeUtils;->checkAppCompatTheme(Lccsanandroid/view/View;Lccsanandroid/content/Context;)V

    .line 73
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;-><init>(Lccsanandroid/widget/CompoundButton;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    .line 74
    invoke-virtual {v0, p2, p3}, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->loadFromAttributes(Lccsanandroid/util/AttributeSet;I)V

    .line 76
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;-><init>(Lccsanandroid/view/View;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 77
    invoke-virtual {v0, p2, p3}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->loadFromAttributes(Lccsanandroid/util/AttributeSet;I)V

    .line 79
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;-><init>(Lccsanandroid/widget/TextView;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatRadioButton;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    .line 80
    invoke-virtual {v0, p2, p3}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->loadFromAttributes(Lccsanandroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 228
    invoke-super {p0}, Lccsanandroid/widget/RadioButton;->drawableStateChanged()V

    .line 229
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 232
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatRadioButton;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 235
    :cond_1
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .line 98
    invoke-super {p0}, Lccsanandroid/widget/RadioButton;->getCompoundPaddingLeft()I

    move-result v0

    .line 99
    .local v0, "value":I
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v1, v0}, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->getCompoundPaddingLeft(I)I

    move-result v1

    goto :goto_0

    .line 101
    :cond_0
    move v1, v0

    .line 99
    :goto_0
    return v1
.end method

.method public getSupportBackgroundTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 178
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 178
    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 206
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 206
    :goto_0
    return-object v0
.end method

.method public getSupportButtonTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 124
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->getSupportButtonTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_0
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0
.end method

.method public getSupportButtonTintMode()Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 149
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->getSupportButtonTintMode()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    .line 151
    :cond_0
    const/4 v0, 0x0

    .line 149
    :goto_0
    return-object v0
.end method

.method public setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 212
    invoke-super {p0, p1}, Lccsanandroid/widget/RadioButton;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 213
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 216
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 220
    invoke-super {p0, p1}, Lccsanandroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 221
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    .line 224
    :cond_0
    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 93
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatRadioButton;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/AppCompatRadioButton;->setButtonDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 94
    return-void
.end method

.method public setButtonDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "buttonDrawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 85
    invoke-super {p0, p1}, Lccsanandroid/widget/RadioButton;->setButtonDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->onSetButtonDrawable()V

    .line 89
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 163
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 166
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 191
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 194
    :cond_0
    return-void
.end method

.method public setSupportButtonTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 111
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->setSupportButtonTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 114
    :cond_0
    return-void
.end method

.method public setSupportButtonTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 136
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->setSupportButtonTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 139
    :cond_0
    return-void
.end method
