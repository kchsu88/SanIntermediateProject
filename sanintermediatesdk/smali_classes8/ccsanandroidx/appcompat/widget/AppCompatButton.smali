.class public Lccsanandroidx/appcompat/widget/AppCompatButton;
.super Lccsanandroid/widget/Button;
.source "AppCompatButton.java"

# interfaces
.implements Lccsanandroidx/core/view/TintableBackgroundView;
.implements Lccsanandroidx/core/widget/AutoSizeableTextView;
.implements Lccsanandroidx/core/widget/TintableCompoundDrawablesView;


# instance fields
.field private final mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

.field private final mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/appcompat/widget/AppCompatButton;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 69
    sget v0, Lccsanandroidx/appcompat/R$attr;->buttonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lccsanandroidx/appcompat/widget/AppCompatButton;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

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

    invoke-direct {p0, v0, p2, p3}, Lccsanandroid/widget/Button;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 76
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatButton;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lccsanandroidx/appcompat/widget/ThemeUtils;->checkAppCompatTheme(Lccsanandroid/view/View;Lccsanandroid/content/Context;)V

    .line 78
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;-><init>(Lccsanandroid/view/View;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatButton;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 79
    invoke-virtual {v0, p2, p3}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->loadFromAttributes(Lccsanandroid/util/AttributeSet;I)V

    .line 81
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;-><init>(Lccsanandroid/widget/TextView;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatButton;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    .line 82
    invoke-virtual {v0, p2, p3}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->loadFromAttributes(Lccsanandroid/util/AttributeSet;I)V

    .line 83
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 84
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 160
    invoke-super {p0}, Lccsanandroid/widget/Button;->drawableStateChanged()V

    .line 161
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatButton;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 164
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatButton;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 167
    :cond_1
    return-void
.end method

.method public getAutoSizeMaxTextSize()I
    .locals 1

    .line 328
    sget-boolean v0, Lccsanandroidx/appcompat/widget/AppCompatButton;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_0

    .line 329
    invoke-super {p0}, Lccsanandroid/widget/Button;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0

    .line 331
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatButton;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0

    .line 335
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeMinTextSize()I
    .locals 1

    .line 312
    sget-boolean v0, Lccsanandroidx/appcompat/widget/AppCompatButton;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_0

    .line 313
    invoke-super {p0}, Lccsanandroid/widget/Button;->getAutoSizeMinTextSize()I

    move-result v0

    return v0

    .line 315
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatButton;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 316
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->getAutoSizeMinTextSize()I

    move-result v0

    return v0

    .line 319
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeStepGranularity()I
    .locals 1

    .line 296
    sget-boolean v0, Lccsanandroidx/appcompat/widget/AppCompatButton;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_0

    .line 297
    invoke-super {p0}, Lccsanandroid/widget/Button;->getAutoSizeStepGranularity()I

    move-result v0

    return v0

    .line 299
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatButton;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->getAutoSizeStepGranularity()I

    move-result v0

    return v0

    .line 303
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeTextAvailableSizes()[I
    .locals 1

    .line 344
    sget-boolean v0, Lccsanandroidx/appcompat/widget/AppCompatButton;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_0

    .line 345
    invoke-super {p0}, Lccsanandroid/widget/Button;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0

    .line 347
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatButton;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 348
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0

    .line 351
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getAutoSizeTextType()I
    .locals 3

    .line 278
    sget-boolean v0, Lccsanandroidx/appcompat/widget/AppCompatButton;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 279
    invoke-super {p0}, Lccsanandroid/widget/Button;->getAutoSizeTextType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 280
    const/4 v1, 0x1

    goto :goto_0

    .line 281
    :cond_0
    nop

    .line 279
    :goto_0
    return v1

    .line 283
    :cond_1
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatButton;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_2

    .line 284
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->getAutoSizeTextType()I

    move-result v0

    return v0

    .line 287
    :cond_2
    return v1
.end method

.method public getSupportBackgroundTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 126
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatButton;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 126
    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 154
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatButton;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 154
    :goto_0
    return-object v0
.end method

.method public getSupportCompoundDrawablesTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 398
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatButton;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->getCompoundDrawableTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 420
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatButton;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->getCompoundDrawableTintMode()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Lccsanandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;

    .line 179
    invoke-super {p0, p1}, Lccsanandroid/widget/Button;->onInitializeAccessibilityEvent(Lccsanandroid/view/accessibility/AccessibilityEvent;)V

    .line 180
    const-class v0, Lccsanandroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 181
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Lccsanandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Lccsanandroid/view/accessibility/AccessibilityNodeInfo;

    .line 185
    invoke-super {p0, p1}, Lccsanandroid/widget/Button;->onInitializeAccessibilityNodeInfo(Lccsanandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 186
    const-class v0, Lccsanandroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 187
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 191
    invoke-super/range {p0 .. p5}, Lccsanandroid/widget/Button;->onLayout(ZIIII)V

    .line 192
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatButton;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_0

    .line 193
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->onLayout(ZIIII)V

    .line 195
    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .line 210
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroid/widget/Button;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 211
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatButton;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_0

    sget-boolean v0, Lccsanandroidx/appcompat/widget/AppCompatButton;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatButton;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->isAutoSizeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatButton;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->autoSizeText()V

    .line 214
    :cond_0
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 1
    .param p1, "autoSizeMinTextSize"    # I
    .param p2, "autoSizeMaxTextSize"    # I
    .param p3, "autoSizeStepGranularity"    # I
    .param p4, "unit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 242
    sget-boolean v0, Lccsanandroidx/appcompat/widget/AppCompatButton;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_0

    .line 243
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroid/widget/Button;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatButton;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {v0, p1, p2, p3, p4}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 251
    :cond_1
    :goto_0
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 1
    .param p1, "presetSizes"    # [I
    .param p2, "unit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 260
    sget-boolean v0, Lccsanandroidx/appcompat/widget/AppCompatButton;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_0

    .line 261
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/Button;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatButton;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {v0, p1, p2}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 267
    :cond_1
    :goto_0
    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
    .locals 1
    .param p1, "autoSizeTextType"    # I

    .line 223
    sget-boolean v0, Lccsanandroidx/appcompat/widget/AppCompatButton;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_0

    .line 224
    invoke-super {p0, p1}, Lccsanandroid/widget/Button;->setAutoSizeTextTypeWithDefaults(I)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatButton;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->setAutoSizeTextTypeWithDefaults(I)V

    .line 230
    :cond_1
    :goto_0
    return-void
.end method

.method public setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 96
    invoke-super {p0, p1}, Lccsanandroid/widget/Button;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatButton;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 100
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 88
    invoke-super {p0, p1}, Lccsanandroid/widget/Button;->setBackgroundResource(I)V

    .line 89
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatButton;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    .line 92
    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Lccsanandroid/view/ActionMode$Callback;)V
    .locals 1
    .param p1, "actionModeCallback"    # Lccsanandroid/view/ActionMode$Callback;

    .line 375
    nop

    .line 376
    invoke-static {p0, p1}, Lccsanandroidx/core/widget/TextViewCompat;->wrapCustomSelectionActionModeCallback(Lccsanandroid/widget/TextView;Lccsanandroid/view/ActionMode$Callback;)Lccsanandroid/view/ActionMode$Callback;

    move-result-object v0

    .line 375
    invoke-super {p0, v0}, Lccsanandroid/widget/Button;->setCustomSelectionActionModeCallback(Lccsanandroid/view/ActionMode$Callback;)V

    .line 377
    return-void
.end method

.method public setSupportAllCaps(Z)V
    .locals 1
    .param p1, "allCaps"    # Z

    .line 364
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatButton;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->setAllCaps(Z)V

    .line 367
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 111
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatButton;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 114
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 139
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatButton;->mBackgroundTintHelper:Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 142
    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 386
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatButton;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->setCompoundDrawableTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 387
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatButton;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 388
    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 408
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatButton;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->setCompoundDrawableTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 409
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatButton;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 410
    return-void
.end method

.method public setTextAppearance(Lccsanandroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "resId"    # I

    .line 171
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/Button;->setTextAppearance(Lccsanandroid/content/Context;I)V

    .line 172
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatButton;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0, p1, p2}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->onSetTextAppearance(Lccsanandroid/content/Context;I)V

    .line 175
    :cond_0
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .line 199
    sget-boolean v0, Lccsanandroidx/appcompat/widget/AppCompatButton;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_0

    .line 200
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/Button;->setTextSize(IF)V

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatButton;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {v0, p1, p2}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->setTextSize(IF)V

    .line 206
    :cond_1
    :goto_0
    return-void
.end method
