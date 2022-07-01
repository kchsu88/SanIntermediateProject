.class Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;
.super Ljava/lang/Object;
.source "AppCompatCompoundButtonHelper.java"


# instance fields
.field private mButtonTintList:Lccsanandroid/content/res/ColorStateList;

.field private mButtonTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

.field private mHasButtonTint:Z

.field private mHasButtonTintMode:Z

.field private mSkipNextApply:Z

.field private final mView:Lccsanandroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Lccsanandroid/widget/CompoundButton;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/widget/CompoundButton;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintList:Lccsanandroid/content/res/ColorStateList;

    .line 40
    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTint:Z

    .line 42
    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTintMode:Z

    .line 47
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Lccsanandroid/widget/CompoundButton;

    .line 48
    return-void
.end method


# virtual methods
.method applyButtonTint()V
    .locals 2

    .line 127
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Lccsanandroid/widget/CompoundButton;

    invoke-static {v0}, Lccsanandroidx/core/widget/CompoundButtonCompat;->getButtonDrawable(Lccsanandroid/widget/CompoundButton;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 129
    .local v0, "buttonDrawable":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTintMode:Z

    if-eqz v1, :cond_4

    .line 130
    :cond_0
    invoke-static {v0}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->wrap(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 132
    iget-boolean v1, p0, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTint:Z

    if-eqz v1, :cond_1

    .line 133
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintList:Lccsanandroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintList(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/content/res/ColorStateList;)V

    .line 135
    :cond_1
    iget-boolean v1, p0, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTintMode:Z

    if-eqz v1, :cond_2

    .line 136
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 140
    :cond_2
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 141
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Lccsanandroid/widget/CompoundButton;

    invoke-virtual {v1}, Lccsanandroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/Drawable;->setState([I)Z

    .line 143
    :cond_3
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Lccsanandroid/widget/CompoundButton;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/CompoundButton;->setButtonDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 145
    :cond_4
    return-void
.end method

.method getCompoundPaddingLeft(I)I
    .locals 2
    .param p1, "superValue"    # I

    .line 148
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Lccsanandroid/widget/CompoundButton;

    invoke-static {v0}, Lccsanandroidx/core/widget/CompoundButtonCompat;->getButtonDrawable(Lccsanandroid/widget/CompoundButton;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 152
    .local v0, "buttonDrawable":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr p1, v1

    .line 156
    .end local v0    # "buttonDrawable":Lccsanandroid/graphics/drawable/Drawable;
    :cond_0
    return p1
.end method

.method getSupportButtonTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 102
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintList:Lccsanandroid/content/res/ColorStateList;

    return-object v0
.end method

.method getSupportButtonTintMode()Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 113
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method loadFromAttributes(Lccsanandroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .line 51
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Lccsanandroid/widget/CompoundButton;

    .line 52
    invoke-virtual {v0}, Lccsanandroid/widget/CompoundButton;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    sget-object v1, Lccsanandroidx/appcompat/R$styleable;->CompoundButton:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III)Lccsanandroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 54
    .local v0, "a":Lccsanandroidx/appcompat/widget/TintTypedArray;
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Lccsanandroid/widget/CompoundButton;

    invoke-virtual {v3}, Lccsanandroid/widget/CompoundButton;->getContext()Lccsanandroid/content/Context;

    move-result-object v4

    sget-object v5, Lccsanandroidx/appcompat/R$styleable;->CompoundButton:[I

    .line 55
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Lccsanandroid/content/res/TypedArray;

    move-result-object v7

    .line 54
    const/4 v9, 0x0

    move-object v6, p1

    move v8, p2

    invoke-static/range {v3 .. v9}, Lccsanandroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Lccsanandroid/view/View;Lccsanandroid/content/Context;[ILccsanandroid/util/AttributeSet;Lccsanandroid/content/res/TypedArray;II)V

    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, "buttonDrawableLoaded":Z
    :try_start_0
    sget v3, Lccsanandroidx/appcompat/R$styleable;->CompoundButton_buttonCompat:I

    invoke-virtual {v0, v3}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    sget v3, Lccsanandroidx/appcompat/R$styleable;->CompoundButton_buttonCompat:I

    invoke-virtual {v0, v3, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .local v3, "resourceId":I
    if-eqz v3, :cond_0

    .line 62
    :try_start_1
    iget-object v4, p0, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Lccsanandroid/widget/CompoundButton;

    .line 63
    invoke-virtual {v4}, Lccsanandroid/widget/CompoundButton;->getContext()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 62
    invoke-virtual {v4, v5}, Lccsanandroid/widget/CompoundButton;->setButtonDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Lccsanandroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    const/4 v1, 0x1

    .line 68
    goto :goto_0

    .line 65
    :catch_0
    move-exception v4

    .line 71
    .end local v3    # "resourceId":I
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    :try_start_2
    sget v3, Lccsanandroidx/appcompat/R$styleable;->CompoundButton_android_button:I

    invoke-virtual {v0, v3}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    sget v3, Lccsanandroidx/appcompat/R$styleable;->CompoundButton_android_button:I

    invoke-virtual {v0, v3, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 74
    .local v2, "resourceId":I
    if-eqz v2, :cond_1

    .line 75
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Lccsanandroid/widget/CompoundButton;

    .line 76
    invoke-virtual {v3}, Lccsanandroid/widget/CompoundButton;->getContext()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 75
    invoke-virtual {v3, v4}, Lccsanandroid/widget/CompoundButton;->setButtonDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 79
    .end local v2    # "resourceId":I
    :cond_1
    sget v2, Lccsanandroidx/appcompat/R$styleable;->CompoundButton_buttonTint:I

    invoke-virtual {v0, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Lccsanandroid/widget/CompoundButton;

    sget v3, Lccsanandroidx/appcompat/R$styleable;->CompoundButton_buttonTint:I

    .line 81
    invoke-virtual {v0, v3}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v3

    .line 80
    invoke-static {v2, v3}, Lccsanandroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Lccsanandroid/widget/CompoundButton;Lccsanandroid/content/res/ColorStateList;)V

    .line 83
    :cond_2
    sget v2, Lccsanandroidx/appcompat/R$styleable;->CompoundButton_buttonTintMode:I

    invoke-virtual {v0, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 84
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Lccsanandroid/widget/CompoundButton;

    sget v3, Lccsanandroidx/appcompat/R$styleable;->CompoundButton_buttonTintMode:I

    const/4 v4, -0x1

    .line 86
    invoke-virtual {v0, v3, v4}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v3

    const/4 v4, 0x0

    .line 85
    invoke-static {v3, v4}, Lccsanandroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILccsanandroid/graphics/PorterDuff$Mode;)Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v3

    .line 84
    invoke-static {v2, v3}, Lccsanandroidx/core/widget/CompoundButtonCompat;->setButtonTintMode(Lccsanandroid/widget/CompoundButton;Lccsanandroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    .end local v1    # "buttonDrawableLoaded":Z
    :cond_3
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 91
    nop

    .line 92
    return-void

    .line 90
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 91
    throw v1
.end method

.method onSetButtonDrawable()V
    .locals 1

    .line 117
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mSkipNextApply:Z

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mSkipNextApply:Z

    .line 119
    return-void

    .line 122
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mSkipNextApply:Z

    .line 123
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->applyButtonTint()V

    .line 124
    return-void
.end method

.method setSupportButtonTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 95
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintList:Lccsanandroid/content/res/ColorStateList;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTint:Z

    .line 98
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->applyButtonTint()V

    .line 99
    return-void
.end method

.method setSupportButtonTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 106
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTintMode:Z

    .line 109
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatCompoundButtonHelper;->applyButtonTint()V

    .line 110
    return-void
.end method
