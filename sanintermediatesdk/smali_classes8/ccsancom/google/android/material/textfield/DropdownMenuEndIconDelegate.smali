.class Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;
.super Lccsancom/google/android/material/textfield/EndIconDelegate;
.source "DropdownMenuEndIconDelegate.java"


# static fields
.field private static final ANIMATION_FADE_IN_DURATION:I = 0x43

.field private static final ANIMATION_FADE_OUT_DURATION:I = 0x32

.field private static final IS_LOLLIPOP:Z


# instance fields
.field private final accessibilityDelegate:Lccsancom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;

.field private accessibilityManager:Lccsanandroid/view/accessibility/AccessibilityManager;

.field private final dropdownMenuOnEditTextAttachedListener:Lccsancom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

.field private dropdownPopupActivatedAt:J

.field private dropdownPopupDirty:Z

.field private final endIconChangedListener:Lccsancom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

.field private final exposedDropdownEndIconTextWatcher:Lccsanandroid/text/TextWatcher;

.field private fadeInAnim:Lccsanandroid/animation/ValueAnimator;

.field private fadeOutAnim:Lccsanandroid/animation/ValueAnimator;

.field private filledPopupBackground:Lccsanandroid/graphics/drawable/StateListDrawable;

.field private isEndIconChecked:Z

.field private final onFocusChangeListener:Lccsanandroid/view/View$OnFocusChangeListener;

.field private outlinedPopupBackground:Lccsancom/google/android/material/shape/MaterialShapeDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    return-void
.end method

.method constructor <init>(Lccsancom/google/android/material/textfield/TextInputLayout;)V
    .locals 2
    .param p1, "textInputLayout"    # Lccsancom/google/android/material/textfield/TextInputLayout;

    .line 202
    invoke-direct {p0, p1}, Lccsancom/google/android/material/textfield/EndIconDelegate;-><init>(Lccsancom/google/android/material/textfield/TextInputLayout;)V

    .line 73
    new-instance v0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;-><init>(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    iput-object v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->exposedDropdownEndIconTextWatcher:Lccsanandroid/text/TextWatcher;

    .line 97
    new-instance v0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$2;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$2;-><init>(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    iput-object v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->onFocusChangeListener:Lccsanandroid/view/View$OnFocusChangeListener;

    .line 108
    new-instance v0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$3;

    iget-object v1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-direct {v0, p0, v1}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$3;-><init>(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;Lccsancom/google/android/material/textfield/TextInputLayout;)V

    iput-object v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->accessibilityDelegate:Lccsancom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;

    .line 140
    new-instance v0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$4;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$4;-><init>(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    iput-object v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownMenuOnEditTextAttachedListener:Lccsancom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

    .line 164
    new-instance v0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$5;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$5;-><init>(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    iput-object v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->endIconChangedListener:Lccsancom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    .line 193
    iput-boolean v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    .line 194
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupActivatedAt:J

    .line 203
    return-void
.end method

.method static synthetic access$000(Lccsanandroid/widget/EditText;)Lccsanandroid/widget/AutoCompleteTextView;
    .locals 1
    .param p0, "x0"    # Lccsanandroid/widget/EditText;

    .line 67
    invoke-static {p0}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->castAutoCompleteTextViewOrThrow(Lccsanandroid/widget/EditText;)Lccsanandroid/widget/AutoCompleteTextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Lccsanandroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 67
    iget-object v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->accessibilityManager:Lccsanandroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$1000(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Lccsancom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 67
    iget-object v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->accessibilityDelegate:Lccsancom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;

    return-object v0
.end method

.method static synthetic access$1100(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Lccsanandroid/view/View$OnFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 67
    iget-object v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->onFocusChangeListener:Lccsanandroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .line 67
    sget-boolean v0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    return v0
.end method

.method static synthetic access$1300(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 67
    invoke-direct {p0}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isDropdownPopupActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1402(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;J)J
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;
    .param p1, "x1"    # J

    .line 67
    iput-wide p1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupActivatedAt:J

    return-wide p1
.end method

.method static synthetic access$1500(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 67
    iget-boolean v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    return v0
.end method

.method static synthetic access$1600(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Lccsanandroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 67
    iget-object v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->fadeInAnim:Lccsanandroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$200(Lccsanandroid/widget/EditText;)Z
    .locals 1
    .param p0, "x0"    # Lccsanandroid/widget/EditText;

    .line 67
    invoke-static {p0}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEditable(Lccsanandroid/widget/EditText;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;Z)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;
    .param p1, "x1"    # Z

    .line 67
    invoke-direct {p0, p1}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setEndIconChecked(Z)V

    return-void
.end method

.method static synthetic access$402(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;Z)Z
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;
    .param p1, "x1"    # Z

    .line 67
    iput-boolean p1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    return p1
.end method

.method static synthetic access$500(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;Lccsanandroid/widget/AutoCompleteTextView;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;
    .param p1, "x1"    # Lccsanandroid/widget/AutoCompleteTextView;

    .line 67
    invoke-direct {p0, p1}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->showHideDropdown(Lccsanandroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method static synthetic access$600(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;Lccsanandroid/widget/AutoCompleteTextView;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;
    .param p1, "x1"    # Lccsanandroid/widget/AutoCompleteTextView;

    .line 67
    invoke-direct {p0, p1}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setPopupBackground(Lccsanandroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method static synthetic access$700(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;Lccsanandroid/widget/AutoCompleteTextView;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;
    .param p1, "x1"    # Lccsanandroid/widget/AutoCompleteTextView;

    .line 67
    invoke-direct {p0, p1}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->addRippleEffect(Lccsanandroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method static synthetic access$800(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;Lccsanandroid/widget/AutoCompleteTextView;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;
    .param p1, "x1"    # Lccsanandroid/widget/AutoCompleteTextView;

    .line 67
    invoke-direct {p0, p1}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setUpDropdownShowHideBehavior(Lccsanandroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method static synthetic access$900(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Lccsanandroid/text/TextWatcher;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 67
    iget-object v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->exposedDropdownEndIconTextWatcher:Lccsanandroid/text/TextWatcher;

    return-object v0
.end method

.method private addRippleEffect(Lccsanandroid/widget/AutoCompleteTextView;)V
    .locals 9
    .param p1, "editText"    # Lccsanandroid/widget/AutoCompleteTextView;

    .line 311
    invoke-static {p1}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEditable(Lccsanandroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lccsancom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v0

    .line 316
    .local v0, "boxBackgroundMode":I
    iget-object v1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lccsancom/google/android/material/textfield/TextInputLayout;->getBoxBackground()Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v1

    .line 317
    .local v1, "boxBackground":Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    sget v2, Lccsancom/google/android/material/R$attr;->colorControlHighlight:I

    invoke-static {p1, v2}, Lccsancom/google/android/material/color/MaterialColors;->getColor(Lccsanandroid/view/View;I)I

    move-result v2

    .line 318
    .local v2, "rippleColor":I
    const/4 v3, 0x2

    new-array v4, v3, [[I

    const/4 v5, 0x1

    new-array v6, v5, [I

    const v7, 0x10100a7

    const/4 v8, 0x0

    aput v7, v6, v8

    aput-object v6, v4, v8

    new-array v6, v8, [I

    aput-object v6, v4, v5

    .line 323
    .local v4, "states":[[I
    if-ne v0, v3, :cond_1

    .line 324
    invoke-direct {p0, p1, v2, v4, v1}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->addRippleEffectOnOutlinedLayout(Lccsanandroid/widget/AutoCompleteTextView;I[[ILccsancom/google/android/material/shape/MaterialShapeDrawable;)V

    goto :goto_0

    .line 325
    :cond_1
    if-ne v0, v5, :cond_2

    .line 326
    invoke-direct {p0, p1, v2, v4, v1}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->addRippleEffectOnFilledLayout(Lccsanandroid/widget/AutoCompleteTextView;I[[ILccsancom/google/android/material/shape/MaterialShapeDrawable;)V

    .line 328
    :cond_2
    :goto_0
    return-void
.end method

.method private addRippleEffectOnFilledLayout(Lccsanandroid/widget/AutoCompleteTextView;I[[ILccsancom/google/android/material/shape/MaterialShapeDrawable;)V
    .locals 10
    .param p1, "editText"    # Lccsanandroid/widget/AutoCompleteTextView;
    .param p2, "rippleColor"    # I
    .param p3, "states"    # [[I
    .param p4, "boxBackground"    # Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    .line 366
    iget-object v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lccsancom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundColor()I

    move-result v0

    .line 367
    .local v0, "boxBackgroundColor":I
    const v1, 0x3dcccccd    # 0.1f

    invoke-static {p2, v0, v1}, Lccsancom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v1

    .line 368
    .local v1, "pressedBackgroundColor":I
    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v5, 0x1

    aput v0, v3, v5

    .line 370
    .local v3, "colors":[I
    sget-boolean v6, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    if-eqz v6, :cond_0

    .line 371
    new-instance v2, Lccsanandroid/content/res/ColorStateList;

    invoke-direct {v2, p3, v3}, Lccsanandroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 372
    .local v2, "rippleColorStateList":Lccsanandroid/content/res/ColorStateList;
    new-instance v4, Lccsanandroid/graphics/drawable/RippleDrawable;

    invoke-direct {v4, v2, p4, p4}, Lccsanandroid/graphics/drawable/RippleDrawable;-><init>(Lccsanandroid/content/res/ColorStateList;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 374
    .local v4, "editTextBackground":Lccsanandroid/graphics/drawable/Drawable;
    invoke-static {p1, v4}, Lccsanandroidx/core/view/ViewCompat;->setBackground(Lccsanandroid/view/View;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 375
    .end local v2    # "rippleColorStateList":Lccsanandroid/content/res/ColorStateList;
    .end local v4    # "editTextBackground":Lccsanandroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 376
    :cond_0
    new-instance v6, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    .line 377
    invoke-virtual {p4}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v7

    invoke-direct {v6, v7}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 378
    .local v6, "rippleBackground":Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    new-instance v7, Lccsanandroid/content/res/ColorStateList;

    invoke-direct {v7, p3, v3}, Lccsanandroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v6, v7}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 379
    new-array v2, v2, [Lccsanandroid/graphics/drawable/Drawable;

    aput-object p4, v2, v4

    aput-object v6, v2, v5

    .line 380
    .local v2, "layers":[Lccsanandroid/graphics/drawable/Drawable;
    new-instance v4, Lccsanandroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v2}, Lccsanandroid/graphics/drawable/LayerDrawable;-><init>([Lccsanandroid/graphics/drawable/Drawable;)V

    .line 381
    .local v4, "editTextBackground":Lccsanandroid/graphics/drawable/LayerDrawable;
    invoke-static {p1}, Lccsanandroidx/core/view/ViewCompat;->getPaddingStart(Lccsanandroid/view/View;)I

    move-result v5

    .line 382
    .local v5, "start":I
    invoke-virtual {p1}, Lccsanandroid/widget/AutoCompleteTextView;->getPaddingTop()I

    move-result v7

    .line 383
    .local v7, "top":I
    invoke-static {p1}, Lccsanandroidx/core/view/ViewCompat;->getPaddingEnd(Lccsanandroid/view/View;)I

    move-result v8

    .line 384
    .local v8, "end":I
    invoke-virtual {p1}, Lccsanandroid/widget/AutoCompleteTextView;->getPaddingBottom()I

    move-result v9

    .line 385
    .local v9, "bottom":I
    invoke-static {p1, v4}, Lccsanandroidx/core/view/ViewCompat;->setBackground(Lccsanandroid/view/View;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 386
    invoke-static {p1, v5, v7, v8, v9}, Lccsanandroidx/core/view/ViewCompat;->setPaddingRelative(Lccsanandroid/view/View;IIII)V

    .line 388
    .end local v2    # "layers":[Lccsanandroid/graphics/drawable/Drawable;
    .end local v4    # "editTextBackground":Lccsanandroid/graphics/drawable/LayerDrawable;
    .end local v5    # "start":I
    .end local v6    # "rippleBackground":Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    .end local v7    # "top":I
    .end local v8    # "end":I
    .end local v9    # "bottom":I
    :goto_0
    return-void
.end method

.method private addRippleEffectOnOutlinedLayout(Lccsanandroid/widget/AutoCompleteTextView;I[[ILccsancom/google/android/material/shape/MaterialShapeDrawable;)V
    .locals 11
    .param p1, "editText"    # Lccsanandroid/widget/AutoCompleteTextView;
    .param p2, "rippleColor"    # I
    .param p3, "states"    # [[I
    .param p4, "boxBackground"    # Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    .line 336
    sget v0, Lccsancom/google/android/material/R$attr;->colorSurface:I

    invoke-static {p1, v0}, Lccsancom/google/android/material/color/MaterialColors;->getColor(Lccsanandroid/view/View;I)I

    move-result v0

    .line 337
    .local v0, "surfaceColor":I
    new-instance v1, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    .line 338
    invoke-virtual {p4}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 339
    .local v1, "rippleBackground":Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    const v2, 0x3dcccccd    # 0.1f

    invoke-static {p2, v0, v2}, Lccsancom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v2

    .line 340
    .local v2, "pressedBackgroundColor":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v6, 0x1

    aput v5, v4, v6

    .line 341
    .local v4, "rippleBackgroundColors":[I
    new-instance v7, Lccsanandroid/content/res/ColorStateList;

    invoke-direct {v7, p3, v4}, Lccsanandroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v1, v7}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 343
    sget-boolean v7, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    if-eqz v7, :cond_0

    .line 344
    invoke-virtual {v1, v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    .line 345
    new-array v7, v3, [I

    aput v2, v7, v5

    aput v0, v7, v6

    .line 346
    .local v7, "colors":[I
    new-instance v8, Lccsanandroid/content/res/ColorStateList;

    invoke-direct {v8, p3, v7}, Lccsanandroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 347
    .local v8, "rippleColorStateList":Lccsanandroid/content/res/ColorStateList;
    new-instance v9, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    .line 348
    invoke-virtual {p4}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v10

    invoke-direct {v9, v10}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 349
    .local v9, "mask":Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    .line 350
    new-instance v10, Lccsanandroid/graphics/drawable/RippleDrawable;

    invoke-direct {v10, v8, v1, v9}, Lccsanandroid/graphics/drawable/RippleDrawable;-><init>(Lccsanandroid/content/res/ColorStateList;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 351
    .local v10, "rippleDrawable":Lccsanandroid/graphics/drawable/Drawable;
    new-array v3, v3, [Lccsanandroid/graphics/drawable/Drawable;

    aput-object v10, v3, v5

    aput-object p4, v3, v6

    .line 352
    .local v3, "layers":[Lccsanandroid/graphics/drawable/Drawable;
    new-instance v5, Lccsanandroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v3}, Lccsanandroid/graphics/drawable/LayerDrawable;-><init>([Lccsanandroid/graphics/drawable/Drawable;)V

    move-object v3, v5

    .line 353
    .end local v7    # "colors":[I
    .end local v8    # "rippleColorStateList":Lccsanandroid/content/res/ColorStateList;
    .end local v9    # "mask":Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    .end local v10    # "rippleDrawable":Lccsanandroid/graphics/drawable/Drawable;
    .local v3, "editTextBackground":Lccsanandroid/graphics/drawable/LayerDrawable;
    goto :goto_0

    .line 354
    .end local v3    # "editTextBackground":Lccsanandroid/graphics/drawable/LayerDrawable;
    :cond_0
    new-array v3, v3, [Lccsanandroid/graphics/drawable/Drawable;

    aput-object v1, v3, v5

    aput-object p4, v3, v6

    .line 355
    .local v3, "layers":[Lccsanandroid/graphics/drawable/Drawable;
    new-instance v5, Lccsanandroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v3}, Lccsanandroid/graphics/drawable/LayerDrawable;-><init>([Lccsanandroid/graphics/drawable/Drawable;)V

    move-object v3, v5

    .line 358
    .local v3, "editTextBackground":Lccsanandroid/graphics/drawable/LayerDrawable;
    :goto_0
    invoke-static {p1, v3}, Lccsanandroidx/core/view/ViewCompat;->setBackground(Lccsanandroid/view/View;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 359
    return-void
.end method

.method private static castAutoCompleteTextViewOrThrow(Lccsanandroid/widget/EditText;)Lccsanandroid/widget/AutoCompleteTextView;
    .locals 2
    .param p0, "editText"    # Lccsanandroid/widget/EditText;

    .line 444
    instance-of v0, p0, Lccsanandroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    .line 450
    move-object v0, p0

    check-cast v0, Lccsanandroid/widget/AutoCompleteTextView;

    return-object v0

    .line 445
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private varargs getAlphaAnimator(I[F)Lccsanandroid/animation/ValueAnimator;
    .locals 3
    .param p1, "duration"    # I
    .param p2, "values"    # [F

    .line 479
    invoke-static {p2}, Lccsanandroid/animation/ValueAnimator;->ofFloat([F)Lccsanandroid/animation/ValueAnimator;

    move-result-object v0

    .line 480
    .local v0, "animator":Lccsanandroid/animation/ValueAnimator;
    sget-object v1, Lccsancom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Lccsanandroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Lccsanandroid/animation/ValueAnimator;->setInterpolator(Lccsanandroid/animation/TimeInterpolator;)V

    .line 481
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lccsanandroid/animation/ValueAnimator;->setDuration(J)Lccsanandroid/animation/ValueAnimator;

    .line 482
    new-instance v1, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$10;

    invoke-direct {v1, p0}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$10;-><init>(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    invoke-virtual {v0, v1}, Lccsanandroid/animation/ValueAnimator;->addUpdateListener(Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 491
    return-object v0
.end method

.method private getPopUpMaterialShapeDrawable(FFFI)Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    .locals 3
    .param p1, "topCornerRadius"    # F
    .param p2, "bottomCornerRadius"    # F
    .param p3, "elevation"    # F
    .param p4, "verticalPadding"    # I

    .line 424
    invoke-static {}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->builder()Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 425
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(F)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 426
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(F)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 427
    invoke-virtual {v0, p2}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(F)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 428
    invoke-virtual {v0, p2}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(F)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    .line 430
    .local v0, "shapeAppearanceModel":Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    iget-object v1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->context:Lccsanandroid/content/Context;

    .line 431
    invoke-static {v1, p3}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->createWithElevationOverlay(Lccsanandroid/content/Context;F)Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v1

    .line 432
    .local v1, "popupDrawable":Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    invoke-virtual {v1, v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 433
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p4, v2, p4}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setPadding(IIII)V

    .line 434
    return-object v1
.end method

.method private initAnimators()V
    .locals 3

    .line 466
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const/16 v2, 0x43

    invoke-direct {p0, v2, v1}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->getAlphaAnimator(I[F)Lccsanandroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->fadeInAnim:Lccsanandroid/animation/ValueAnimator;

    .line 467
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    const/16 v1, 0x32

    invoke-direct {p0, v1, v0}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->getAlphaAnimator(I[F)Lccsanandroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->fadeOutAnim:Lccsanandroid/animation/ValueAnimator;

    .line 468
    new-instance v1, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$9;

    invoke-direct {v1, p0}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$9;-><init>(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    invoke-virtual {v0, v1}, Lccsanandroid/animation/ValueAnimator;->addListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 476
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

.method private isDropdownPopupActive()Z
    .locals 5

    .line 438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupActivatedAt:J

    sub-long/2addr v0, v2

    .line 439
    .local v0, "activeFor":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const-wide/16 v2, 0x12c

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method private static isEditable(Lccsanandroid/widget/EditText;)Z
    .locals 1
    .param p0, "editText"    # Lccsanandroid/widget/EditText;

    .line 454
    invoke-virtual {p0}, Lccsanandroid/widget/EditText;->getKeyListener()Lccsanandroid/text/method/KeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setEndIconChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 458
    iget-boolean v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    if-eq v0, p1, :cond_0

    .line 459
    iput-boolean p1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    .line 460
    iget-object v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->fadeInAnim:Lccsanandroid/animation/ValueAnimator;

    invoke-virtual {v0}, Lccsanandroid/animation/ValueAnimator;->cancel()V

    .line 461
    iget-object v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->fadeOutAnim:Lccsanandroid/animation/ValueAnimator;

    invoke-virtual {v0}, Lccsanandroid/animation/ValueAnimator;->start()V

    .line 463
    :cond_0
    return-void
.end method

.method private setPopupBackground(Lccsanandroid/widget/AutoCompleteTextView;)V
    .locals 2
    .param p1, "editText"    # Lccsanandroid/widget/AutoCompleteTextView;

    .line 299
    sget-boolean v0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lccsancom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v0

    .line 301
    .local v0, "boxBackgroundMode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 302
    iget-object v1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->outlinedPopupBackground:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p1, v1}, Lccsanandroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 303
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 304
    iget-object v1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->filledPopupBackground:Lccsanandroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p1, v1}, Lccsanandroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 307
    .end local v0    # "boxBackgroundMode":I
    :cond_1
    :goto_0
    return-void
.end method

.method private setUpDropdownShowHideBehavior(Lccsanandroid/widget/AutoCompleteTextView;)V
    .locals 1
    .param p1, "editText"    # Lccsanandroid/widget/AutoCompleteTextView;

    .line 394
    new-instance v0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$7;

    invoke-direct {v0, p0, p1}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$7;-><init>(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;Lccsanandroid/widget/AutoCompleteTextView;)V

    invoke-virtual {p1, v0}, Lccsanandroid/widget/AutoCompleteTextView;->setOnTouchListener(Lccsanandroid/view/View$OnTouchListener;)V

    .line 407
    iget-object v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->onFocusChangeListener:Lccsanandroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, v0}, Lccsanandroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Lccsanandroid/view/View$OnFocusChangeListener;)V

    .line 408
    sget-boolean v0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    if-eqz v0, :cond_0

    .line 409
    new-instance v0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$8;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$8;-><init>(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    invoke-virtual {p1, v0}, Lccsanandroid/widget/AutoCompleteTextView;->setOnDismissListener(Lccsanandroid/widget/AutoCompleteTextView$OnDismissListener;)V

    .line 419
    :cond_0
    return-void
.end method

.method private showHideDropdown(Lccsanandroid/widget/AutoCompleteTextView;)V
    .locals 2
    .param p1, "editText"    # Lccsanandroid/widget/AutoCompleteTextView;

    .line 274
    if-nez p1, :cond_0

    .line 275
    return-void

    .line 277
    :cond_0
    invoke-direct {p0}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isDropdownPopupActive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 278
    iput-boolean v1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    .line 280
    :cond_1
    iget-boolean v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    if-nez v0, :cond_4

    .line 281
    sget-boolean v0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    if-eqz v0, :cond_2

    .line 282
    iget-boolean v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setEndIconChecked(Z)V

    goto :goto_0

    .line 284
    :cond_2
    iget-boolean v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    .line 285
    iget-object v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->endIconView:Lccsancom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lccsancom/google/android/material/internal/CheckableImageButton;->toggle()V

    .line 287
    :goto_0
    iget-boolean v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    if-eqz v0, :cond_3

    .line 288
    invoke-virtual {p1}, Lccsanandroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 289
    invoke-virtual {p1}, Lccsanandroid/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_1

    .line 291
    :cond_3
    invoke-virtual {p1}, Lccsanandroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_1

    .line 294
    :cond_4
    iput-boolean v1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    .line 296
    :goto_1
    return-void
.end method


# virtual methods
.method initialize()V
    .locals 9

    .line 207
    iget-object v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->context:Lccsanandroid/content/Context;

    .line 209
    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccsancom/google/android/material/R$dimen;->mtrl_shape_corner_size_small_component:I

    .line 210
    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    .line 211
    .local v0, "popupCornerRadius":F
    iget-object v1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->context:Lccsanandroid/content/Context;

    .line 213
    invoke-virtual {v1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccsancom/google/android/material/R$dimen;->mtrl_exposed_dropdown_menu_popup_elevation:I

    .line 214
    invoke-virtual {v1, v2}, Lccsanandroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    .line 215
    .local v1, "exposedDropdownPopupElevation":F
    iget-object v2, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->context:Lccsanandroid/content/Context;

    .line 217
    invoke-virtual {v2}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccsancom/google/android/material/R$dimen;->mtrl_exposed_dropdown_menu_popup_vertical_padding:I

    .line 218
    invoke-virtual {v2, v3}, Lccsanandroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 221
    .local v2, "exposedDropdownPopupVerticalPadding":I
    nop

    .line 222
    invoke-direct {p0, v0, v0, v1, v2}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->getPopUpMaterialShapeDrawable(FFFI)Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v3

    .line 228
    .local v3, "roundedCornersPopupBackground":Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    nop

    .line 229
    const/4 v4, 0x0

    invoke-direct {p0, v4, v0, v1, v2}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->getPopUpMaterialShapeDrawable(FFFI)Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v4

    .line 235
    .local v4, "roundedBottomCornersPopupBackground":Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    iput-object v3, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->outlinedPopupBackground:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    .line 236
    new-instance v5, Lccsanandroid/graphics/drawable/StateListDrawable;

    invoke-direct {v5}, Lccsanandroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v5, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->filledPopupBackground:Lccsanandroid/graphics/drawable/StateListDrawable;

    .line 237
    const/4 v6, 0x1

    new-array v6, v6, [I

    const v7, 0x10100aa

    const/4 v8, 0x0

    aput v7, v6, v8

    invoke-virtual {v5, v6, v3}, Lccsanandroid/graphics/drawable/StateListDrawable;->addState([ILccsanandroid/graphics/drawable/Drawable;)V

    .line 239
    iget-object v5, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->filledPopupBackground:Lccsanandroid/graphics/drawable/StateListDrawable;

    new-array v6, v8, [I

    invoke-virtual {v5, v6, v4}, Lccsanandroid/graphics/drawable/StateListDrawable;->addState([ILccsanandroid/graphics/drawable/Drawable;)V

    .line 243
    sget-boolean v5, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    if-eqz v5, :cond_0

    sget v5, Lccsancom/google/android/material/R$drawable;->ccsan_mtrl_dropdown_arrow:I

    goto :goto_0

    :cond_0
    sget v5, Lccsancom/google/android/material/R$drawable;->ccsan_mtrl_ic_arrow_drop_down:I

    .line 245
    .local v5, "drawableResId":I
    :goto_0
    iget-object v6, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    iget-object v7, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->context:Lccsanandroid/content/Context;

    invoke-static {v7, v5}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lccsancom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 246
    iget-object v6, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    iget-object v7, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    .line 247
    invoke-virtual {v7}, Lccsancom/google/android/material/textfield/TextInputLayout;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v7

    sget v8, Lccsancom/google/android/material/R$string;->exposed_dropdown_menu_content_description:I

    invoke-virtual {v7, v8}, Lccsanandroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 246
    invoke-virtual {v6, v7}, Lccsancom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v6, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    new-instance v7, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$6;

    invoke-direct {v7, p0}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$6;-><init>(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    invoke-virtual {v6, v7}, Lccsancom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 256
    iget-object v6, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    iget-object v7, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownMenuOnEditTextAttachedListener:Lccsancom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

    invoke-virtual {v6, v7}, Lccsancom/google/android/material/textfield/TextInputLayout;->addOnEditTextAttachedListener(Lccsancom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;)V

    .line 257
    iget-object v6, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    iget-object v7, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->endIconChangedListener:Lccsancom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

    invoke-virtual {v6, v7}, Lccsancom/google/android/material/textfield/TextInputLayout;->addOnEndIconChangedListener(Lccsancom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;)V

    .line 258
    invoke-direct {p0}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->initAnimators()V

    .line 259
    iget-object v6, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->context:Lccsanandroid/content/Context;

    .line 260
    const-string v7, "accessibility"

    invoke-virtual {v6, v7}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsanandroid/view/accessibility/AccessibilityManager;

    iput-object v6, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->accessibilityManager:Lccsanandroid/view/accessibility/AccessibilityManager;

    .line 261
    return-void
.end method

.method isBoxBackgroundModeSupported(I)Z
    .locals 1
    .param p1, "boxBackgroundMode"    # I

    .line 270
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method shouldTintIconOnError()Z
    .locals 1

    .line 265
    const/4 v0, 0x1

    return v0
.end method
