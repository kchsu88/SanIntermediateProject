.class public Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Lccsanandroidx/appcompat/widget/DecorToolbar;


# static fields
.field private static final AFFECTS_LOGO_MASK:I = 0x3

.field private static final DEFAULT_FADE_DURATION_MS:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "ToolbarWidgetWrapper"


# instance fields
.field private mActionMenuPresenter:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

.field private mCustomView:Lccsanandroid/view/View;

.field private mDefaultNavigationContentDescription:I

.field private mDefaultNavigationIcon:Lccsanandroid/graphics/drawable/Drawable;

.field private mDisplayOpts:I

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mIcon:Lccsanandroid/graphics/drawable/Drawable;

.field private mLogo:Lccsanandroid/graphics/drawable/Drawable;

.field mMenuPrepared:Z

.field private mNavIcon:Lccsanandroid/graphics/drawable/Drawable;

.field private mNavigationMode:I

.field private mSpinner:Lccsanandroid/widget/Spinner;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTabView:Lccsanandroid/view/View;

.field mTitle:Ljava/lang/CharSequence;

.field private mTitleSet:Z

.field mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

.field mWindowCallback:Lccsanandroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Lccsanandroidx/appcompat/widget/Toolbar;Z)V
    .locals 2
    .param p1, "toolbar"    # Lccsanandroidx/appcompat/widget/Toolbar;
    .param p2, "style"    # Z

    .line 96
    sget v0, Lccsanandroidx/appcompat/R$string;->abc_action_bar_up_description:I

    sget v1, Lccsanandroidx/appcompat/R$drawable;->ccsan_abc_ic_ab_back_material:I

    invoke-direct {p0, p1, p2, v0, v1}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;-><init>(Lccsanandroidx/appcompat/widget/Toolbar;ZII)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lccsanandroidx/appcompat/widget/Toolbar;ZII)V
    .locals 16
    .param p1, "toolbar"    # Lccsanandroidx/appcompat/widget/Toolbar;
    .param p2, "style"    # Z
    .param p3, "defaultNavigationContentDescription"    # I
    .param p4, "defaultNavigationIcon"    # I

    .line 101
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v1, 0x0

    iput v1, v0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 92
    iput v1, v0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 102
    move-object/from16 v2, p1

    iput-object v2, v0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    .line 103
    invoke-virtual/range {p1 .. p1}, Lccsanandroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 104
    invoke-virtual/range {p1 .. p1}, Lccsanandroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 105
    iget-object v3, v0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 106
    invoke-virtual/range {p1 .. p1}, Lccsanandroidx/appcompat/widget/Toolbar;->getNavigationIcon()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavIcon:Lccsanandroid/graphics/drawable/Drawable;

    .line 107
    invoke-virtual/range {p1 .. p1}, Lccsanandroidx/appcompat/widget/Toolbar;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lccsanandroidx/appcompat/R$styleable;->ActionBar:[I

    sget v6, Lccsanandroidx/appcompat/R$attr;->actionBarStyle:I

    invoke-static {v3, v4, v5, v6, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III)Lccsanandroidx/appcompat/widget/TintTypedArray;

    move-result-object v3

    .line 109
    .local v3, "a":Lccsanandroidx/appcompat/widget/TintTypedArray;
    sget v4, Lccsanandroidx/appcompat/R$styleable;->ActionBar_homeAsUpIndicator:I

    invoke-virtual {v3, v4}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Lccsanandroid/graphics/drawable/Drawable;

    .line 110
    if-eqz p2, :cond_d

    .line 111
    sget v4, Lccsanandroidx/appcompat/R$styleable;->ActionBar_title:I

    invoke-virtual {v3, v4}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 112
    .local v4, "title":Ljava/lang/CharSequence;
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 113
    invoke-virtual {v0, v4}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    :cond_1
    sget v5, Lccsanandroidx/appcompat/R$styleable;->ActionBar_subtitle:I

    invoke-virtual {v3, v5}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 117
    .local v5, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 118
    invoke-virtual {v0, v5}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 121
    :cond_2
    sget v6, Lccsanandroidx/appcompat/R$styleable;->ActionBar_logo:I

    invoke-virtual {v3, v6}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 122
    .local v6, "logo":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_3

    .line 123
    invoke-virtual {v0, v6}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->setLogo(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 126
    :cond_3
    sget v7, Lccsanandroidx/appcompat/R$styleable;->ActionBar_icon:I

    invoke-virtual {v3, v7}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 127
    .local v7, "icon":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_4

    .line 128
    invoke-virtual {v0, v7}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->setIcon(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 130
    :cond_4
    iget-object v8, v0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavIcon:Lccsanandroid/graphics/drawable/Drawable;

    if-nez v8, :cond_5

    iget-object v8, v0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_5

    .line 131
    invoke-virtual {v0, v8}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->setNavigationIcon(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 133
    :cond_5
    sget v8, Lccsanandroidx/appcompat/R$styleable;->ActionBar_displayOptions:I

    invoke-virtual {v3, v8, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v0, v8}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    .line 135
    sget v8, Lccsanandroidx/appcompat/R$styleable;->ActionBar_customNavigationLayout:I

    invoke-virtual {v3, v8, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v8

    .line 137
    .local v8, "customNavId":I
    if-eqz v8, :cond_6

    .line 138
    iget-object v9, v0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v9}, Lccsanandroidx/appcompat/widget/Toolbar;->getContext()Lccsanandroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v9

    iget-object v10, v0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v9, v8, v10, v1}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v9

    invoke-virtual {v0, v9}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->setCustomView(Lccsanandroid/view/View;)V

    .line 140
    iget v9, v0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    or-int/lit8 v9, v9, 0x10

    invoke-virtual {v0, v9}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    .line 143
    :cond_6
    sget v9, Lccsanandroidx/appcompat/R$styleable;->ActionBar_height:I

    invoke-virtual {v3, v9, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getLayoutDimension(II)I

    move-result v9

    .line 144
    .local v9, "height":I
    if-lez v9, :cond_7

    .line 145
    iget-object v10, v0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v10}, Lccsanandroidx/appcompat/widget/Toolbar;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 146
    .local v10, "lp":Lccsanandroid/view/ViewGroup$LayoutParams;
    iput v9, v10, Lccsanandroid/view/ViewGroup$LayoutParams;->height:I

    .line 147
    iget-object v11, v0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v11, v10}, Lccsanandroidx/appcompat/widget/Toolbar;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 150
    .end local v10    # "lp":Lccsanandroid/view/ViewGroup$LayoutParams;
    :cond_7
    sget v10, Lccsanandroidx/appcompat/R$styleable;->ActionBar_contentInsetStart:I

    const/4 v11, -0x1

    invoke-virtual {v3, v10, v11}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    .line 152
    .local v10, "contentInsetStart":I
    sget v12, Lccsanandroidx/appcompat/R$styleable;->ActionBar_contentInsetEnd:I

    invoke-virtual {v3, v12, v11}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v11

    .line 154
    .local v11, "contentInsetEnd":I
    if-gez v10, :cond_8

    if-ltz v11, :cond_9

    .line 155
    :cond_8
    iget-object v12, v0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 156
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 155
    invoke-virtual {v12, v13, v14}, Lccsanandroidx/appcompat/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 159
    :cond_9
    sget v12, Lccsanandroidx/appcompat/R$styleable;->ActionBar_titleTextStyle:I

    invoke-virtual {v3, v12, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v12

    .line 160
    .local v12, "titleTextStyle":I
    if-eqz v12, :cond_a

    .line 161
    iget-object v13, v0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v13}, Lccsanandroidx/appcompat/widget/Toolbar;->getContext()Lccsanandroid/content/Context;

    move-result-object v14

    invoke-virtual {v13, v14, v12}, Lccsanandroidx/appcompat/widget/Toolbar;->setTitleTextAppearance(Lccsanandroid/content/Context;I)V

    .line 164
    :cond_a
    sget v13, Lccsanandroidx/appcompat/R$styleable;->ActionBar_subtitleTextStyle:I

    invoke-virtual {v3, v13, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v13

    .line 166
    .local v13, "subtitleTextStyle":I
    if-eqz v13, :cond_b

    .line 167
    iget-object v14, v0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v14}, Lccsanandroidx/appcompat/widget/Toolbar;->getContext()Lccsanandroid/content/Context;

    move-result-object v15

    invoke-virtual {v14, v15, v13}, Lccsanandroidx/appcompat/widget/Toolbar;->setSubtitleTextAppearance(Lccsanandroid/content/Context;I)V

    .line 170
    :cond_b
    sget v14, Lccsanandroidx/appcompat/R$styleable;->ActionBar_popupTheme:I

    invoke-virtual {v3, v14, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    .line 171
    .local v1, "popupTheme":I
    if-eqz v1, :cond_c

    .line 172
    iget-object v14, v0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v14, v1}, Lccsanandroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    .line 174
    .end local v1    # "popupTheme":I
    .end local v4    # "title":Ljava/lang/CharSequence;
    .end local v5    # "subtitle":Ljava/lang/CharSequence;
    .end local v6    # "logo":Lccsanandroid/graphics/drawable/Drawable;
    .end local v7    # "icon":Lccsanandroid/graphics/drawable/Drawable;
    .end local v8    # "customNavId":I
    .end local v9    # "height":I
    .end local v10    # "contentInsetStart":I
    .end local v11    # "contentInsetEnd":I
    .end local v12    # "titleTextStyle":I
    .end local v13    # "subtitleTextStyle":I
    :cond_c
    goto :goto_1

    .line 175
    :cond_d
    invoke-direct/range {p0 .. p0}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->detectDisplayOptions()I

    move-result v1

    iput v1, v0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 177
    :goto_1
    invoke-virtual {v3}, Lccsanandroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 179
    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->setDefaultNavigationContentDescription(I)V

    .line 180
    iget-object v4, v0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v4}, Lccsanandroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 182
    iget-object v4, v0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    new-instance v5, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper$1;

    invoke-direct {v5, v0}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper$1;-><init>(Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;)V

    invoke-virtual {v4, v5}, Lccsanandroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 192
    return-void
.end method

.method private detectDisplayOptions()I
    .locals 2

    .line 206
    const/16 v0, 0xb

    .line 208
    .local v0, "opts":I
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/widget/Toolbar;->getNavigationIcon()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 209
    or-int/lit8 v0, v0, 0x4

    .line 210
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/widget/Toolbar;->getNavigationIcon()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Lccsanandroid/graphics/drawable/Drawable;

    .line 212
    :cond_0
    return v0
.end method

.method private ensureSpinner()V
    .locals 4

    .line 503
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Lccsanandroid/widget/Spinner;

    if-nez v0, :cond_0

    .line 504
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lccsanandroidx/appcompat/R$attr;->actionDropDownStyle:I

    invoke-direct {v0, v1, v2, v3}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Lccsanandroid/widget/Spinner;

    .line 505
    new-instance v0, Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;

    const v1, 0x800013

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2, v1}, Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(III)V

    .line 507
    .local v0, "lp":Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Lccsanandroid/widget/Spinner;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/Spinner;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 509
    .end local v0    # "lp":Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private setTitleInt(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 260
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 261
    iget v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 264
    :cond_0
    return-void
.end method

.method private updateHomeAccessibility()V
    .locals 2

    .line 630
    iget v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    iget v1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    goto :goto_0

    .line 634
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 637
    :cond_1
    :goto_0
    return-void
.end method

.method private updateNavigationIcon()V
    .locals 2

    .line 611
    iget v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 612
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavIcon:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Lccsanandroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/Toolbar;->setNavigationIcon(Lccsanandroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 614
    :cond_1
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/Toolbar;->setNavigationIcon(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 616
    :goto_1
    return-void
.end method

.method private updateToolbarLogo()V
    .locals 3

    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, "logo":Lccsanandroid/graphics/drawable/Drawable;
    iget v1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_2

    .line 324
    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mLogo:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mIcon:Lccsanandroid/graphics/drawable/Drawable;

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 327
    :cond_1
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mIcon:Lccsanandroid/graphics/drawable/Drawable;

    .line 330
    :cond_2
    :goto_1
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v0}, Lccsanandroidx/appcompat/widget/Toolbar;->setLogo(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 331
    return-void
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 556
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->setupAnimatorToVisibility(IJ)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 558
    .local v0, "anim":Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {v0}, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 561
    :cond_0
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    .line 335
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/Toolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public collapseActionView()V
    .locals 1

    .line 232
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/Toolbar;->collapseActionView()V

    .line 233
    return-void
.end method

.method public dismissPopupMenus()V
    .locals 1

    .line 375
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/Toolbar;->dismissPopupMenus()V

    .line 376
    return-void
.end method

.method public getContext()Lccsanandroid/content/Context;
    .locals 1

    .line 222
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/Toolbar;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCustomView()Lccsanandroid/view/View;
    .locals 1

    .line 551
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mCustomView:Lccsanandroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .line 380
    iget v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    return v0
.end method

.method public getDropdownItemCount()I
    .locals 1

    .line 535
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Lccsanandroid/widget/Spinner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/widget/Spinner;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    .line 530
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Lccsanandroid/widget/Spinner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 656
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/Toolbar;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMenu()Lccsanandroid/view/Menu;
    .locals 1

    .line 677
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/Toolbar;->getMenu()Lccsanandroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationMode()I
    .locals 1

    .line 458
    iget v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 268
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 250
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getViewGroup()Lccsanandroid/view/ViewGroup;
    .locals 1

    .line 217
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .line 666
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/Toolbar;->getVisibility()I

    move-result v0

    return v0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    .line 438
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Lccsanandroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .line 227
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/Toolbar;->hasExpandedActionView()Z

    move-result v0

    return v0
.end method

.method public hasIcon()Z
    .locals 1

    .line 291
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mIcon:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLogo()Z
    .locals 1

    .line 296
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mLogo:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .line 355
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/Toolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initIndeterminateProgress()V
    .locals 2

    .line 286
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void
.end method

.method public initProgress()V
    .locals 2

    .line 281
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .line 345
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/Toolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 340
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public isTitleTruncated()Z
    .locals 1

    .line 443
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/Toolbar;->isTitleTruncated()Z

    move-result v0

    return v0
.end method

.method public restoreHierarchyState(Lccsanandroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/util/SparseArray<",
            "Lccsanandroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 646
    .local p1, "toolbarStates":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroid/os/Parcelable;>;"
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/Toolbar;->restoreHierarchyState(Lccsanandroid/util/SparseArray;)V

    .line 647
    return-void
.end method

.method public saveHierarchyState(Lccsanandroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/util/SparseArray<",
            "Lccsanandroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 641
    .local p1, "toolbarStates":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroid/os/Parcelable;>;"
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/Toolbar;->saveHierarchyState(Lccsanandroid/util/SparseArray;)V

    .line 642
    return-void
.end method

.method public setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 651
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-static {v0, p1}, Lccsanandroidx/core/view/ViewCompat;->setBackground(Lccsanandroid/view/View;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 652
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 1
    .param p1, "collapsible"    # Z

    .line 448
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/Toolbar;->setCollapsible(Z)V

    .line 449
    return-void
.end method

.method public setCustomView(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 540
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mCustomView:Lccsanandroid/view/View;

    if-eqz v0, :cond_0

    iget v1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    .line 541
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v0}, Lccsanandroidx/appcompat/widget/Toolbar;->removeView(Lccsanandroid/view/View;)V

    .line 543
    :cond_0
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mCustomView:Lccsanandroid/view/View;

    .line 544
    if-eqz p1, :cond_1

    iget v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/Toolbar;->addView(Lccsanandroid/view/View;)V

    .line 547
    :cond_1
    return-void
.end method

.method public setDefaultNavigationContentDescription(I)V
    .locals 1
    .param p1, "defaultNavigationContentDescription"    # I

    .line 196
    iget v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    if-ne p1, v0, :cond_0

    .line 197
    return-void

    .line 199
    :cond_0
    iput p1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 200
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(I)V

    .line 203
    :cond_1
    return-void
.end method

.method public setDefaultNavigationIcon(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "defaultNavigationIcon"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 604
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Lccsanandroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 605
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Lccsanandroid/graphics/drawable/Drawable;

    .line 606
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 608
    :cond_0
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 4
    .param p1, "newOpts"    # I

    .line 385
    iget v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 386
    .local v0, "oldOpts":I
    xor-int v1, v0, p1

    .line 387
    .local v1, "changed":I
    iput p1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 388
    if-eqz v1, :cond_6

    .line 389
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_1

    .line 390
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_0

    .line 391
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    .line 393
    :cond_0
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 396
    :cond_1
    and-int/lit8 v2, v1, 0x3

    if-eqz v2, :cond_2

    .line 397
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 400
    :cond_2
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_4

    .line 401
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_3

    .line 402
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    iget-object v3, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lccsanandroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    iget-object v3, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lccsanandroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 405
    :cond_3
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lccsanandroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, v3}, Lccsanandroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 410
    :cond_4
    :goto_0
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_6

    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mCustomView:Lccsanandroid/view/View;

    if-eqz v2, :cond_6

    .line 411
    and-int/lit8 v3, p1, 0x10

    if-eqz v3, :cond_5

    .line 412
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3, v2}, Lccsanandroidx/appcompat/widget/Toolbar;->addView(Lccsanandroid/view/View;)V

    goto :goto_1

    .line 414
    :cond_5
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3, v2}, Lccsanandroidx/appcompat/widget/Toolbar;->removeView(Lccsanandroid/view/View;)V

    .line 418
    :cond_6
    :goto_1
    return-void
.end method

.method public setDropdownParams(Lccsanandroid/widget/SpinnerAdapter;Lccsanandroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1
    .param p1, "adapter"    # Lccsanandroid/widget/SpinnerAdapter;
    .param p2, "listener"    # Lccsanandroid/widget/AdapterView$OnItemSelectedListener;

    .line 514
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    .line 515
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Lccsanandroid/widget/Spinner;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/Spinner;->setAdapter(Lccsanandroid/widget/SpinnerAdapter;)V

    .line 516
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Lccsanandroid/widget/Spinner;

    invoke-virtual {v0, p2}, Lccsanandroid/widget/Spinner;->setOnItemSelectedListener(Lccsanandroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 517
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .line 521
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Lccsanandroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {v0, p1}, Lccsanandroid/widget/Spinner;->setSelection(I)V

    .line 526
    return-void

    .line 522
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set dropdown selected position without an adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEmbeddedTabView(Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;)V
    .locals 2
    .param p1, "tabView"    # Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;

    .line 422
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Lccsanandroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    if-ne v0, v1, :cond_0

    .line 423
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Lccsanandroid/view/View;

    invoke-virtual {v1, v0}, Lccsanandroidx/appcompat/widget/Toolbar;->removeView(Lccsanandroid/view/View;)V

    .line 425
    :cond_0
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Lccsanandroid/view/View;

    .line 426
    if-eqz p1, :cond_1

    iget v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 427
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lccsanandroidx/appcompat/widget/Toolbar;->addView(Lccsanandroid/view/View;I)V

    .line 428
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 429
    .local v0, "lp":Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;->width:I

    .line 430
    iput v1, v0, Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;->height:I

    .line 431
    const v1, 0x800053

    iput v1, v0, Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    .line 432
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 434
    .end local v0    # "lp":Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_1
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 454
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 301
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->setIcon(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 302
    return-void
.end method

.method public setIcon(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 306
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mIcon:Lccsanandroid/graphics/drawable/Drawable;

    .line 307
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 308
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 312
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->setLogo(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 313
    return-void
.end method

.method public setLogo(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 317
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mLogo:Lccsanandroid/graphics/drawable/Drawable;

    .line 318
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 319
    return-void
.end method

.method public setMenu(Lccsanandroid/view/Menu;Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 3
    .param p1, "menu"    # Lccsanandroid/view/Menu;
    .param p2, "cb"    # Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 365
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    if-nez v0, :cond_0

    .line 366
    new-instance v0, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/widget/Toolbar;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    .line 367
    sget v1, Lccsanandroidx/appcompat/R$id;->action_menu_presenter:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->setId(I)V

    .line 369
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0, p2}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->setCallback(Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 370
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    move-object v1, p1

    check-cast v1, Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/appcompat/widget/Toolbar;->setMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroidx/appcompat/widget/ActionMenuPresenter;)V

    .line 371
    return-void
.end method

.method public setMenuCallbacks(Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;Lccsanandroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .locals 1
    .param p1, "actionMenuPresenterCallback"    # Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;
    .param p2, "menuBuilderCallback"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 672
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/appcompat/widget/Toolbar;->setMenuCallbacks(Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;Lccsanandroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 673
    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z

    .line 361
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 626
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 627
    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 620
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 621
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    .line 622
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 599
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->setNavigationIcon(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 600
    return-void
.end method

.method public setNavigationIcon(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 593
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavIcon:Lccsanandroid/graphics/drawable/Drawable;

    .line 594
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 595
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 463
    iget v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 464
    .local v0, "oldMode":I
    if-eq p1, v0, :cond_1

    .line 465
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 472
    :pswitch_0
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Lccsanandroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    if-ne v1, v2, :cond_0

    .line 473
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Lccsanandroid/view/View;

    invoke-virtual {v2, v1}, Lccsanandroidx/appcompat/widget/Toolbar;->removeView(Lccsanandroid/view/View;)V

    goto :goto_0

    .line 467
    :pswitch_1
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Lccsanandroid/widget/Spinner;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lccsanandroid/widget/Spinner;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    if-ne v1, v2, :cond_0

    .line 468
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Lccsanandroid/widget/Spinner;

    invoke-virtual {v2, v1}, Lccsanandroidx/appcompat/widget/Toolbar;->removeView(Lccsanandroid/view/View;)V

    .line 478
    :cond_0
    :goto_0
    iput p1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 480
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_1

    .line 497
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid navigation mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 488
    :pswitch_2
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Lccsanandroid/view/View;

    if-eqz v2, :cond_1

    .line 489
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3, v2, v1}, Lccsanandroidx/appcompat/widget/Toolbar;->addView(Lccsanandroid/view/View;I)V

    .line 490
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Lccsanandroid/view/View;

    invoke-virtual {v1}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 491
    .local v1, "lp":Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;
    const/4 v2, -0x2

    iput v2, v1, Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;->width:I

    .line 492
    iput v2, v1, Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;->height:I

    .line 493
    const v2, 0x800053

    iput v2, v1, Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    .line 494
    .end local v1    # "lp":Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;
    goto :goto_1

    .line 484
    :pswitch_3
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    .line 485
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    iget-object v3, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Lccsanandroid/widget/Spinner;

    invoke-virtual {v2, v3, v1}, Lccsanandroidx/appcompat/widget/Toolbar;->addView(Lccsanandroid/view/View;I)V

    .line 486
    nop

    .line 500
    :cond_1
    :goto_1
    :pswitch_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 273
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 274
    iget v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 277
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 256
    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 257
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visible"    # I

    .line 661
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    .line 662
    return-void
.end method

.method public setWindowCallback(Lccsanandroid/view/Window$Callback;)V
    .locals 0
    .param p1, "cb"    # Lccsanandroid/view/Window$Callback;

    .line 237
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mWindowCallback:Lccsanandroid/view/Window$Callback;

    .line 238
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 243
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    if-nez v0, :cond_0

    .line 244
    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 246
    :cond_0
    return-void
.end method

.method public setupAnimatorToVisibility(IJ)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "visibility"    # I
    .param p2, "duration"    # J

    .line 566
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-static {v0}, Lccsanandroidx/core/view/ViewCompat;->animate(Lccsanandroid/view/View;)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 567
    if-nez p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 568
    invoke-virtual {v0, p2, p3}, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper$2;

    invoke-direct {v1, p0, p1}, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper$2;-><init>(Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;I)V

    .line 569
    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Lccsanandroidx/core/view/ViewPropertyAnimatorListener;)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 566
    return-object v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .line 350
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/Toolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
