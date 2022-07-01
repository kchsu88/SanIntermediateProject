.class public Lccsanandroidx/appcompat/widget/AppCompatCheckedTextView;
.super Lccsanandroid/widget/CheckedTextView;
.source "AppCompatCheckedTextView.java"


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private final mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010108

    aput v2, v0, v1

    sput-object v0, Lccsanandroidx/appcompat/widget/AppCompatCheckedTextView;->TINT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/appcompat/widget/AppCompatCheckedTextView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 53
    const v0, 0x10103c8

    invoke-direct {p0, p1, p2, v0}, Lccsanandroidx/appcompat/widget/AppCompatCheckedTextView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 58
    invoke-static {p1}, Lccsanandroidx/appcompat/widget/TintContextWrapper;->wrap(Lccsanandroid/content/Context;)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lccsanandroid/widget/CheckedTextView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 60
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatCheckedTextView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lccsanandroidx/appcompat/widget/ThemeUtils;->checkAppCompatTheme(Lccsanandroid/view/View;Lccsanandroid/content/Context;)V

    .line 62
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;-><init>(Lccsanandroid/widget/TextView;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCheckedTextView;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    .line 63
    invoke-virtual {v0, p2, p3}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->loadFromAttributes(Lccsanandroid/util/AttributeSet;I)V

    .line 64
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 66
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatCheckedTextView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    sget-object v1, Lccsanandroidx/appcompat/widget/AppCompatCheckedTextView;->TINT_ATTRS:[I

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, p3, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III)Lccsanandroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 68
    .local v0, "a":Lccsanandroidx/appcompat/widget/TintTypedArray;
    invoke-virtual {v0, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsanandroidx/appcompat/widget/AppCompatCheckedTextView;->setCheckMarkDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 69
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 70
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 87
    invoke-super {p0}, Lccsanandroid/widget/CheckedTextView;->drawableStateChanged()V

    .line 88
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCheckedTextView;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 91
    :cond_0
    return-void
.end method

.method public onCreateInputConnection(Lccsanandroid/view/inputmethod/EditorInfo;)Lccsanandroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Lccsanandroid/view/inputmethod/EditorInfo;

    .line 95
    invoke-super {p0, p1}, Lccsanandroid/widget/CheckedTextView;->onCreateInputConnection(Lccsanandroid/view/inputmethod/EditorInfo;)Lccsanandroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lccsanandroidx/appcompat/widget/AppCompatHintHelper;->onCreateInputConnection(Lccsanandroid/view/inputmethod/InputConnection;Lccsanandroid/view/inputmethod/EditorInfo;Lccsanandroid/view/View;)Lccsanandroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method public setCheckMarkDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 74
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatCheckedTextView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/AppCompatCheckedTextView;->setCheckMarkDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 75
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Lccsanandroid/view/ActionMode$Callback;)V
    .locals 1
    .param p1, "actionModeCallback"    # Lccsanandroid/view/ActionMode$Callback;

    .line 105
    nop

    .line 106
    invoke-static {p0, p1}, Lccsanandroidx/core/widget/TextViewCompat;->wrapCustomSelectionActionModeCallback(Lccsanandroid/widget/TextView;Lccsanandroid/view/ActionMode$Callback;)Lccsanandroid/view/ActionMode$Callback;

    move-result-object v0

    .line 105
    invoke-super {p0, v0}, Lccsanandroid/widget/CheckedTextView;->setCustomSelectionActionModeCallback(Lccsanandroid/view/ActionMode$Callback;)V

    .line 107
    return-void
.end method

.method public setTextAppearance(Lccsanandroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "resId"    # I

    .line 79
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/CheckedTextView;->setTextAppearance(Lccsanandroid/content/Context;I)V

    .line 80
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCheckedTextView;->mTextHelper:Lccsanandroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0, p1, p2}, Lccsanandroidx/appcompat/widget/AppCompatTextHelper;->onSetTextAppearance(Lccsanandroid/content/Context;I)V

    .line 83
    :cond_0
    return-void
.end method
