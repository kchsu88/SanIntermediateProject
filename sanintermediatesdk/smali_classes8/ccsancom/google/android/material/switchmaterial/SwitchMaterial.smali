.class public Lccsancom/google/android/material/switchmaterial/SwitchMaterial;
.super Lccsanandroidx/appcompat/widget/SwitchCompat;
.source "SwitchMaterial.java"


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final ENABLED_CHECKED_STATES:[[I


# instance fields
.field private final elevationOverlayProvider:Lccsancom/google/android/material/elevation/ElevationOverlayProvider;

.field private materialThemeColorsThumbTintList:Lccsanandroid/content/res/ColorStateList;

.field private materialThemeColorsTrackTintList:Lccsanandroid/content/res/ColorStateList;

.field private useMaterialThemeColors:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 46
    sget v0, Lccsancom/google/android/material/R$style;->Widget_MaterialComponents_CompoundButton_Switch:I

    sput v0, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->DEF_STYLE_RES:I

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->ENABLED_CHECKED_STATES:[[I

    return-void

    :array_0
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data

    :array_2
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data

    :array_3
    .array-data 4
        -0x101009e
        -0x10100a0
    .end array-data
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 66
    sget v0, Lccsancom/google/android/material/R$attr;->switchStyle:I

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 70
    sget v4, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v4}, Lccsancom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lccsanandroidx/appcompat/widget/SwitchCompat;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 72
    invoke-virtual {p0}, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    .line 74
    new-instance v0, Lccsancom/google/android/material/elevation/ElevationOverlayProvider;

    invoke-direct {v0, p1}, Lccsancom/google/android/material/elevation/ElevationOverlayProvider;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->elevationOverlayProvider:Lccsancom/google/android/material/elevation/ElevationOverlayProvider;

    .line 76
    sget-object v2, Lccsancom/google/android/material/R$styleable;->SwitchMaterial:[I

    const/4 v6, 0x0

    new-array v5, v6, [I

    .line 77
    move-object v0, p1

    move-object v1, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lccsancom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    .local v0, "attributes":Lccsanandroid/content/res/TypedArray;
    sget v1, Lccsancom/google/android/material/R$styleable;->SwitchMaterial_useMaterialThemeColors:I

    .line 81
    invoke-virtual {v0, v1, v6}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->useMaterialThemeColors:Z

    .line 83
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 84
    return-void
.end method

.method private getMaterialThemeColorsThumbTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 8

    .line 121
    iget-object v0, p0, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsThumbTintList:Lccsanandroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    .line 122
    sget v0, Lccsancom/google/android/material/R$attr;->colorSurface:I

    invoke-static {p0, v0}, Lccsancom/google/android/material/color/MaterialColors;->getColor(Lccsanandroid/view/View;I)I

    move-result v0

    .line 123
    .local v0, "colorSurface":I
    sget v1, Lccsancom/google/android/material/R$attr;->colorControlActivated:I

    invoke-static {p0, v1}, Lccsancom/google/android/material/color/MaterialColors;->getColor(Lccsanandroid/view/View;I)I

    move-result v1

    .line 124
    .local v1, "colorControlActivated":I
    invoke-virtual {p0}, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccsancom/google/android/material/R$dimen;->mtrl_switch_thumb_elevation:I

    invoke-virtual {v2, v3}, Lccsanandroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 125
    .local v2, "thumbElevation":F
    iget-object v3, p0, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->elevationOverlayProvider:Lccsancom/google/android/material/elevation/ElevationOverlayProvider;

    invoke-virtual {v3}, Lccsancom/google/android/material/elevation/ElevationOverlayProvider;->isThemeElevationOverlayEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    invoke-static {p0}, Lccsancom/google/android/material/internal/ViewUtils;->getParentAbsoluteElevation(Lccsanandroid/view/View;)F

    move-result v3

    add-float/2addr v2, v3

    .line 128
    :cond_0
    iget-object v3, p0, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->elevationOverlayProvider:Lccsancom/google/android/material/elevation/ElevationOverlayProvider;

    .line 129
    invoke-virtual {v3, v0, v2}, Lccsancom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlayIfNeeded(IF)I

    move-result v3

    .line 131
    .local v3, "colorThumbOff":I
    sget-object v4, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->ENABLED_CHECKED_STATES:[[I

    array-length v5, v4

    new-array v5, v5, [I

    .line 132
    .local v5, "switchThumbColorsList":[I
    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 133
    invoke-static {v0, v1, v7}, Lccsancom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v7

    aput v7, v5, v6

    .line 134
    const/4 v6, 0x1

    aput v3, v5, v6

    .line 135
    const/4 v6, 0x2

    const v7, 0x3ec28f5c    # 0.38f

    .line 136
    invoke-static {v0, v1, v7}, Lccsancom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v7

    aput v7, v5, v6

    .line 137
    const/4 v6, 0x3

    aput v3, v5, v6

    .line 138
    new-instance v6, Lccsanandroid/content/res/ColorStateList;

    invoke-direct {v6, v4, v5}, Lccsanandroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v6, p0, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsThumbTintList:Lccsanandroid/content/res/ColorStateList;

    .line 141
    .end local v0    # "colorSurface":I
    .end local v1    # "colorControlActivated":I
    .end local v2    # "thumbElevation":F
    .end local v3    # "colorThumbOff":I
    .end local v5    # "switchThumbColorsList":[I
    :cond_1
    iget-object v0, p0, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsThumbTintList:Lccsanandroid/content/res/ColorStateList;

    return-object v0
.end method

.method private getMaterialThemeColorsTrackTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 8

    .line 145
    iget-object v0, p0, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsTrackTintList:Lccsanandroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 146
    sget-object v0, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->ENABLED_CHECKED_STATES:[[I

    array-length v1, v0

    new-array v1, v1, [I

    .line 147
    .local v1, "switchTrackColorsList":[I
    sget v2, Lccsancom/google/android/material/R$attr;->colorSurface:I

    invoke-static {p0, v2}, Lccsancom/google/android/material/color/MaterialColors;->getColor(Lccsanandroid/view/View;I)I

    move-result v2

    .line 148
    .local v2, "colorSurface":I
    sget v3, Lccsancom/google/android/material/R$attr;->colorControlActivated:I

    invoke-static {p0, v3}, Lccsancom/google/android/material/color/MaterialColors;->getColor(Lccsanandroid/view/View;I)I

    move-result v3

    .line 149
    .local v3, "colorControlActivated":I
    sget v4, Lccsancom/google/android/material/R$attr;->colorOnSurface:I

    invoke-static {p0, v4}, Lccsancom/google/android/material/color/MaterialColors;->getColor(Lccsanandroid/view/View;I)I

    move-result v4

    .line 150
    .local v4, "colorOnSurface":I
    const/4 v5, 0x0

    const v6, 0x3f0a3d71    # 0.54f

    .line 151
    invoke-static {v2, v3, v6}, Lccsancom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v6

    aput v6, v1, v5

    .line 152
    const/4 v5, 0x1

    const v6, 0x3ea3d70a    # 0.32f

    .line 153
    invoke-static {v2, v4, v6}, Lccsancom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v6

    aput v6, v1, v5

    .line 154
    const/4 v5, 0x2

    .line 155
    const v6, 0x3df5c28f    # 0.12f

    invoke-static {v2, v3, v6}, Lccsancom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v7

    aput v7, v1, v5

    .line 157
    const/4 v5, 0x3

    .line 158
    invoke-static {v2, v4, v6}, Lccsancom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v6

    aput v6, v1, v5

    .line 159
    new-instance v5, Lccsanandroid/content/res/ColorStateList;

    invoke-direct {v5, v0, v1}, Lccsanandroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v5, p0, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsTrackTintList:Lccsanandroid/content/res/ColorStateList;

    .line 162
    .end local v1    # "switchTrackColorsList":[I
    .end local v2    # "colorSurface":I
    .end local v3    # "colorControlActivated":I
    .end local v4    # "colorOnSurface":I
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsTrackTintList:Lccsanandroid/content/res/ColorStateList;

    return-object v0
.end method


# virtual methods
.method public isUseMaterialThemeColors()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->useMaterialThemeColors:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 88
    invoke-super {p0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->onAttachedToWindow()V

    .line 90
    iget-boolean v0, p0, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->useMaterialThemeColors:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->getThumbTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0}, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsThumbTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->setThumbTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 93
    :cond_0
    iget-boolean v0, p0, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->useMaterialThemeColors:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->getTrackTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 94
    invoke-direct {p0}, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsTrackTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->setTrackTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 96
    :cond_1
    return-void
.end method

.method public setUseMaterialThemeColors(Z)V
    .locals 1
    .param p1, "useMaterialThemeColors"    # Z

    .line 105
    iput-boolean p1, p0, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->useMaterialThemeColors:Z

    .line 106
    if-eqz p1, :cond_0

    .line 107
    invoke-direct {p0}, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsThumbTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->setThumbTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 108
    invoke-direct {p0}, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsTrackTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->setTrackTintList(Lccsanandroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 110
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->setThumbTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 111
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/switchmaterial/SwitchMaterial;->setTrackTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 113
    :goto_0
    return-void
.end method
