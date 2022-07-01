.class public Lccsanandroidx/appcompat/view/ActionBarPolicy;
.super Ljava/lang/Object;
.source "ActionBarPolicy.java"


# instance fields
.field private mContext:Lccsanandroid/content/Context;


# direct methods
.method private constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lccsanandroidx/appcompat/view/ActionBarPolicy;->mContext:Lccsanandroid/content/Context;

    .line 48
    return-void
.end method

.method public static get(Lccsanandroid/content/Context;)Lccsanandroidx/appcompat/view/ActionBarPolicy;
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 43
    new-instance v0, Lccsanandroidx/appcompat/view/ActionBarPolicy;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/view/ActionBarPolicy;-><init>(Lccsanandroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public enableHomeButtonByDefault()Z
    .locals 2

    .line 110
    iget-object v0, p0, Lccsanandroidx/appcompat/view/ActionBarPolicy;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Lccsanandroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEmbeddedMenuWidthLimit()I
    .locals 1

    .line 86
    iget-object v0, p0, Lccsanandroidx/appcompat/view/ActionBarPolicy;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Lccsanandroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getMaxActionButtons()I
    .locals 6

    .line 56
    iget-object v0, p0, Lccsanandroidx/appcompat/view/ActionBarPolicy;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v0

    .line 57
    .local v0, "configuration":Lccsanandroid/content/res/Configuration;
    iget v1, v0, Lccsanandroid/content/res/Configuration;->screenWidthDp:I

    .line 58
    .local v1, "widthDp":I
    iget v2, v0, Lccsanandroid/content/res/Configuration;->screenHeightDp:I

    .line 59
    .local v2, "heightDp":I
    iget v3, v0, Lccsanandroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 61
    .local v3, "smallest":I
    const/16 v4, 0x258

    if-gt v3, v4, :cond_6

    if-gt v1, v4, :cond_6

    const/16 v4, 0x2d0

    const/16 v5, 0x3c0

    if-le v1, v5, :cond_0

    if-gt v2, v4, :cond_6

    :cond_0
    if-le v1, v4, :cond_1

    if-le v2, v5, :cond_1

    goto :goto_1

    .line 65
    :cond_1
    const/16 v4, 0x1f4

    if-ge v1, v4, :cond_5

    const/16 v4, 0x1e0

    const/16 v5, 0x280

    if-le v1, v5, :cond_2

    if-gt v2, v4, :cond_5

    :cond_2
    if-le v1, v4, :cond_3

    if-le v2, v5, :cond_3

    goto :goto_0

    .line 69
    :cond_3
    const/16 v4, 0x168

    if-lt v1, v4, :cond_4

    .line 71
    const/4 v4, 0x3

    return v4

    .line 73
    :cond_4
    const/4 v4, 0x2

    return v4

    .line 68
    :cond_5
    :goto_0
    const/4 v4, 0x4

    return v4

    .line 64
    :cond_6
    :goto_1
    const/4 v4, 0x5

    return v4
.end method

.method public getStackedTabMaxWidth()I
    .locals 2

    .line 115
    iget-object v0, p0, Lccsanandroidx/appcompat/view/ActionBarPolicy;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccsanandroidx/appcompat/R$dimen;->abc_action_bar_stacked_tab_max_width:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getTabContainerHeight()I
    .locals 5

    .line 94
    iget-object v0, p0, Lccsanandroidx/appcompat/view/ActionBarPolicy;->mContext:Lccsanandroid/content/Context;

    sget-object v1, Lccsanandroidx/appcompat/R$styleable;->ActionBar:[I

    sget v2, Lccsanandroidx/appcompat/R$attr;->actionBarStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[III)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    sget v1, Lccsanandroidx/appcompat/R$styleable;->ActionBar_height:I

    invoke-virtual {v0, v1, v4}, Lccsanandroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    .line 97
    .local v1, "height":I
    iget-object v2, p0, Lccsanandroidx/appcompat/view/ActionBarPolicy;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v2}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v2

    .line 98
    .local v2, "r":Lccsanandroid/content/res/Resources;
    invoke-virtual {p0}, Lccsanandroidx/appcompat/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    sget v3, Lccsanandroidx/appcompat/R$dimen;->abc_action_bar_stacked_max_height:I

    .line 101
    invoke-virtual {v2, v3}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 100
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 103
    :cond_0
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 104
    return v1
.end method

.method public hasEmbeddedTabs()Z
    .locals 2

    .line 90
    iget-object v0, p0, Lccsanandroidx/appcompat/view/ActionBarPolicy;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccsanandroidx/appcompat/R$bool;->abc_action_bar_embed_tabs:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public showsOverflowMenuButton()Z
    .locals 3

    .line 78
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    .line 79
    return v1

    .line 81
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/view/ActionBarPolicy;->mContext:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsanandroid/view/ViewConfiguration;->get(Lccsanandroid/content/Context;)Lccsanandroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method
