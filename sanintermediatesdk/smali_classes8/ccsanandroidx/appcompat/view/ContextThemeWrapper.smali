.class public Lccsanandroidx/appcompat/view/ContextThemeWrapper;
.super Lccsanandroid/content/ContextWrapper;
.source "ContextThemeWrapper.java"


# instance fields
.field private mInflater:Lccsanandroid/view/LayoutInflater;

.field private mOverrideConfiguration:Lccsanandroid/content/res/Configuration;

.field private mResources:Lccsanandroid/content/res/Resources;

.field private mTheme:Lccsanandroid/content/res/Resources$Theme;

.field private mThemeResource:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsanandroid/content/ContextWrapper;-><init>(Lccsanandroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;I)V
    .locals 0
    .param p1, "base"    # Lccsanandroid/content/Context;
    .param p2, "themeResId"    # I

    .line 63
    invoke-direct {p0, p1}, Lccsanandroid/content/ContextWrapper;-><init>(Lccsanandroid/content/Context;)V

    .line 64
    iput p2, p0, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->mThemeResource:I

    .line 65
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1, "base"    # Lccsanandroid/content/Context;
    .param p2, "theme"    # Lccsanandroid/content/res/Resources$Theme;

    .line 77
    invoke-direct {p0, p1}, Lccsanandroid/content/ContextWrapper;-><init>(Lccsanandroid/content/Context;)V

    .line 78
    iput-object p2, p0, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->mTheme:Lccsanandroid/content/res/Resources$Theme;

    .line 79
    return-void
.end method

.method private getResourcesInternal()Lccsanandroid/content/res/Resources;
    .locals 5

    .line 113
    iget-object v0, p0, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->mResources:Lccsanandroid/content/res/Resources;

    if-nez v0, :cond_2

    .line 114
    iget-object v0, p0, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->mOverrideConfiguration:Lccsanandroid/content/res/Configuration;

    if-nez v0, :cond_0

    .line 115
    invoke-super {p0}, Lccsanandroid/content/ContextWrapper;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->mResources:Lccsanandroid/content/res/Resources;

    goto :goto_0

    .line 116
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 117
    iget-object v0, p0, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->mOverrideConfiguration:Lccsanandroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->createConfigurationContext(Lccsanandroid/content/res/Configuration;)Lccsanandroid/content/Context;

    move-result-object v0

    .line 118
    .local v0, "resContext":Lccsanandroid/content/Context;
    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->mResources:Lccsanandroid/content/res/Resources;

    .line 119
    .end local v0    # "resContext":Lccsanandroid/content/Context;
    goto :goto_0

    .line 120
    :cond_1
    invoke-super {p0}, Lccsanandroid/content/ContextWrapper;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    .line 121
    .local v0, "res":Lccsanandroid/content/res/Resources;
    new-instance v1, Lccsanandroid/content/res/Configuration;

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanandroid/content/res/Configuration;-><init>(Lccsanandroid/content/res/Configuration;)V

    .line 122
    .local v1, "newConfig":Lccsanandroid/content/res/Configuration;
    iget-object v2, p0, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->mOverrideConfiguration:Lccsanandroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Lccsanandroid/content/res/Configuration;->updateFrom(Lccsanandroid/content/res/Configuration;)I

    .line 123
    new-instance v2, Lccsanandroid/content/res/Resources;

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getAssets()Lccsanandroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lccsanandroid/content/res/Resources;-><init>(Lccsanandroid/content/res/AssetManager;Lccsanandroid/util/DisplayMetrics;Lccsanandroid/content/res/Configuration;)V

    iput-object v2, p0, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->mResources:Lccsanandroid/content/res/Resources;

    .line 126
    .end local v0    # "res":Lccsanandroid/content/res/Resources;
    .end local v1    # "newConfig":Lccsanandroid/content/res/Configuration;
    :cond_2
    :goto_0
    iget-object v0, p0, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->mResources:Lccsanandroid/content/res/Resources;

    return-object v0
.end method

.method private initializeTheme()V
    .locals 3

    .line 186
    iget-object v0, p0, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->mTheme:Lccsanandroid/content/res/Resources$Theme;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 187
    .local v0, "first":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p0}, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/content/res/Resources;->newTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v1

    iput-object v1, p0, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->mTheme:Lccsanandroid/content/res/Resources$Theme;

    .line 189
    invoke-virtual {p0}, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->getBaseContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v1

    .line 190
    .local v1, "theme":Lccsanandroid/content/res/Resources$Theme;
    if-eqz v1, :cond_1

    .line 191
    iget-object v2, p0, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->mTheme:Lccsanandroid/content/res/Resources$Theme;

    invoke-virtual {v2, v1}, Lccsanandroid/content/res/Resources$Theme;->setTo(Lccsanandroid/content/res/Resources$Theme;)V

    .line 194
    .end local v1    # "theme":Lccsanandroid/content/res/Resources$Theme;
    :cond_1
    iget-object v1, p0, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->mTheme:Lccsanandroid/content/res/Resources$Theme;

    iget v2, p0, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->mThemeResource:I

    invoke-virtual {p0, v1, v2, v0}, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->onApplyThemeResource(Lccsanandroid/content/res/Resources$Theme;IZ)V

    .line 195
    return-void
.end method


# virtual methods
.method public applyOverrideConfiguration(Lccsanandroid/content/res/Configuration;)V
    .locals 2
    .param p1, "overrideConfiguration"    # Lccsanandroid/content/res/Configuration;

    .line 97
    iget-object v0, p0, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->mResources:Lccsanandroid/content/res/Resources;

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->mOverrideConfiguration:Lccsanandroid/content/res/Configuration;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lccsanandroid/content/res/Configuration;

    invoke-direct {v0, p1}, Lccsanandroid/content/res/Configuration;-><init>(Lccsanandroid/content/res/Configuration;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->mOverrideConfiguration:Lccsanandroid/content/res/Configuration;

    .line 105
    return-void

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Override configuration has already been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getResources() or getAssets() has already been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected attachBaseContext(Lccsanandroid/content/Context;)V
    .locals 0
    .param p1, "newBase"    # Lccsanandroid/content/Context;

    .line 83
    invoke-super {p0, p1}, Lccsanandroid/content/ContextWrapper;->attachBaseContext(Lccsanandroid/content/Context;)V

    .line 84
    return-void
.end method

.method public getAssets()Lccsanandroid/content/res/AssetManager;
    .locals 1

    .line 200
    invoke-virtual {p0}, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getAssets()Lccsanandroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Lccsanandroid/content/res/Resources;
    .locals 1

    .line 109
    invoke-direct {p0}, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->getResourcesInternal()Lccsanandroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 161
    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->mInflater:Lccsanandroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->getBaseContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsanandroid/view/LayoutInflater;->cloneInContext(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->mInflater:Lccsanandroid/view/LayoutInflater;

    .line 165
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->mInflater:Lccsanandroid/view/LayoutInflater;

    return-object v0

    .line 167
    :cond_1
    invoke-virtual {p0}, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->getBaseContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Lccsanandroid/content/res/Resources$Theme;
    .locals 1

    .line 147
    iget-object v0, p0, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->mTheme:Lccsanandroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    .line 148
    return-object v0

    .line 151
    :cond_0
    iget v0, p0, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->mThemeResource:I

    if-nez v0, :cond_1

    .line 152
    sget v0, Lccsanandroidx/appcompat/R$style;->Theme_AppCompat_Light:I

    iput v0, p0, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->mThemeResource:I

    .line 154
    :cond_1
    invoke-direct {p0}, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->initializeTheme()V

    .line 156
    iget-object v0, p0, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->mTheme:Lccsanandroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public getThemeResId()I
    .locals 1

    .line 142
    iget v0, p0, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->mThemeResource:I

    return v0
.end method

.method protected onApplyThemeResource(Lccsanandroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Lccsanandroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .line 182
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lccsanandroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 183
    return-void
.end method

.method public setTheme(I)V
    .locals 1
    .param p1, "resid"    # I

    .line 131
    iget v0, p0, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->mThemeResource:I

    if-eq v0, p1, :cond_0

    .line 132
    iput p1, p0, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->mThemeResource:I

    .line 133
    invoke-direct {p0}, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->initializeTheme()V

    .line 135
    :cond_0
    return-void
.end method
