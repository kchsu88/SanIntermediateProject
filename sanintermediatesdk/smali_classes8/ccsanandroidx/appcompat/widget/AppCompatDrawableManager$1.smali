.class Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"

# interfaces
.implements Lccsanandroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->preload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

.field private final COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

.field private final COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

.field private final TINT_CHECKABLE_BUTTON_LIST:[I

.field private final TINT_COLOR_CONTROL_NORMAL:[I

.field private final TINT_COLOR_CONTROL_STATE_LIST:[I


# direct methods
.method constructor <init>()V
    .locals 10

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x3

    new-array v1, v0, [I

    sget v2, Lccsanandroidx/appcompat/R$drawable;->abc_textfield_search_default_mtrl_alpha:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lccsanandroidx/appcompat/R$drawable;->abc_textfield_default_mtrl_alpha:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lccsanandroidx/appcompat/R$drawable;->abc_ab_share_pack_mtrl_alpha:I

    const/4 v5, 0x2

    aput v2, v1, v5

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    .line 74
    const/4 v1, 0x7

    new-array v2, v1, [I

    sget v6, Lccsanandroidx/appcompat/R$drawable;->ccsan_ccsan_ccsan_ccsan_abc_ic_commit_search_api_mtrl_alpha:I

    aput v6, v2, v3

    sget v6, Lccsanandroidx/appcompat/R$drawable;->ccsan_abc_seekbar_tick_mark_material:I

    aput v6, v2, v4

    sget v6, Lccsanandroidx/appcompat/R$drawable;->ccsan_ccsan_ccsan_ccsan_ccsan_abc_ic_menu_share_mtrl_alpha:I

    aput v6, v2, v5

    sget v6, Lccsanandroidx/appcompat/R$drawable;->ccsan_ccsan_ccsan_ccsan_ccsan_ccsan_ccsan_ccsan_ccsan_ccsan_abc_ic_menu_copy_mtrl_am_alpha:I

    aput v6, v2, v0

    sget v6, Lccsanandroidx/appcompat/R$drawable;->ccsan_ccsan_ccsan_ccsan_ccsan_ccsan_ccsan_ccsan_ccsan_ccsan_abc_ic_menu_cut_mtrl_alpha:I

    const/4 v7, 0x4

    aput v6, v2, v7

    sget v6, Lccsanandroidx/appcompat/R$drawable;->ccsan_ccsan_ccsan_ccsan_ccsan_abc_ic_menu_selectall_mtrl_alpha:I

    const/4 v8, 0x5

    aput v6, v2, v8

    sget v6, Lccsanandroidx/appcompat/R$drawable;->ccsan_ccsan_ccsan_ccsan_ccsan_abc_ic_menu_paste_mtrl_am_alpha:I

    const/4 v9, 0x6

    aput v6, v2, v9

    iput-object v2, p0, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;->TINT_COLOR_CONTROL_NORMAL:[I

    .line 88
    const/16 v2, 0xa

    new-array v2, v2, [I

    sget v6, Lccsanandroidx/appcompat/R$drawable;->abc_textfield_activated_mtrl_alpha:I

    aput v6, v2, v3

    sget v6, Lccsanandroidx/appcompat/R$drawable;->abc_textfield_search_activated_mtrl_alpha:I

    aput v6, v2, v4

    sget v6, Lccsanandroidx/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    aput v6, v2, v5

    sget v6, Lccsanandroidx/appcompat/R$drawable;->ccsan_abc_text_cursor_material:I

    aput v6, v2, v0

    sget v6, Lccsanandroidx/appcompat/R$drawable;->ccsan_ccsan_ccsan_ccsan_ccsan_abc_text_select_handle_left_mtrl_dark:I

    aput v6, v2, v7

    sget v6, Lccsanandroidx/appcompat/R$drawable;->ccsan_ccsan_ccsan_ccsan_abc_text_select_handle_middle_mtrl_dark:I

    aput v6, v2, v8

    sget v6, Lccsanandroidx/appcompat/R$drawable;->ccsan_ccsan_ccsan_ccsan_ccsan_abc_text_select_handle_right_mtrl_dark:I

    aput v6, v2, v9

    sget v6, Lccsanandroidx/appcompat/R$drawable;->ccsan_ccsan_ccsan_ccsan_ccsan_abc_text_select_handle_left_mtrl_light:I

    aput v6, v2, v1

    sget v1, Lccsanandroidx/appcompat/R$drawable;->ccsan_ccsan_ccsan_ccsan_abc_text_select_handle_middle_mtrl_light:I

    const/16 v6, 0x8

    aput v1, v2, v6

    sget v1, Lccsanandroidx/appcompat/R$drawable;->ccsan_ccsan_ccsan_ccsan_ccsan_abc_text_select_handle_right_mtrl_light:I

    const/16 v6, 0x9

    aput v1, v2, v6

    iput-object v2, p0, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    .line 106
    new-array v1, v0, [I

    sget v2, Lccsanandroidx/appcompat/R$drawable;->abc_popup_background_mtrl_mult:I

    aput v2, v1, v3

    sget v2, Lccsanandroidx/appcompat/R$drawable;->ccsan_abc_cab_background_internal_bg:I

    aput v2, v1, v4

    sget v2, Lccsanandroidx/appcompat/R$drawable;->abc_menu_hardkey_panel_mtrl_mult:I

    aput v2, v1, v5

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    .line 116
    new-array v1, v5, [I

    sget v2, Lccsanandroidx/appcompat/R$drawable;->ccsan_abc_tab_indicator_material:I

    aput v2, v1, v3

    sget v2, Lccsanandroidx/appcompat/R$drawable;->ccsan_abc_textfield_search_material:I

    aput v2, v1, v4

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;->TINT_COLOR_CONTROL_STATE_LIST:[I

    .line 126
    new-array v1, v7, [I

    sget v2, Lccsanandroidx/appcompat/R$drawable;->ccsan_abc_btn_check_material:I

    aput v2, v1, v3

    sget v2, Lccsanandroidx/appcompat/R$drawable;->ccsan_abc_btn_radio_material:I

    aput v2, v1, v4

    sget v2, Lccsanandroidx/appcompat/R$drawable;->ccsan_ccsan_abc_btn_check_material_anim:I

    aput v2, v1, v5

    sget v2, Lccsanandroidx/appcompat/R$drawable;->ccsan_ccsan_abc_btn_radio_material_anim:I

    aput v2, v1, v0

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;->TINT_CHECKABLE_BUTTON_LIST:[I

    return-void
.end method

.method private arrayContains([II)Z
    .locals 4
    .param p1, "array"    # [I
    .param p2, "value"    # I

    .line 291
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    .line 292
    .local v3, "id":I
    if-ne v3, p2, :cond_0

    .line 293
    const/4 v0, 0x1

    return v0

    .line 291
    .end local v3    # "id":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 296
    :cond_1
    return v1
.end method

.method private createBorderlessButtonColorStateList(Lccsanandroid/content/Context;)Lccsanandroid/content/res/ColorStateList;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;->createButtonColorStateList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private createButtonColorStateList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;
    .locals 6
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "baseColor"    # I

    .line 152
    const/4 v0, 0x4

    new-array v1, v0, [[I

    .line 153
    .local v1, "states":[[I
    new-array v0, v0, [I

    .line 154
    .local v0, "colors":[I
    const/4 v2, 0x0

    .line 156
    .local v2, "i":I
    sget v3, Lccsanandroidx/appcompat/R$attr;->colorControlHighlight:I

    invoke-static {p1, v3}, Lccsanandroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Lccsanandroid/content/Context;I)I

    move-result v3

    .line 158
    .local v3, "colorControlHighlight":I
    sget v4, Lccsanandroidx/appcompat/R$attr;->colorButtonNormal:I

    invoke-static {p1, v4}, Lccsanandroidx/appcompat/widget/ThemeUtils;->getDisabledThemeAttrColor(Lccsanandroid/content/Context;I)I

    move-result v4

    .line 162
    .local v4, "disabledColor":I
    sget-object v5, Lccsanandroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v5, v1, v2

    .line 163
    aput v4, v0, v2

    .line 164
    add-int/lit8 v2, v2, 0x1

    .line 166
    sget-object v5, Lccsanandroidx/appcompat/widget/ThemeUtils;->PRESSED_STATE_SET:[I

    aput-object v5, v1, v2

    .line 167
    invoke-static {v3, p2}, Lccsanandroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v5

    aput v5, v0, v2

    .line 168
    add-int/lit8 v2, v2, 0x1

    .line 170
    sget-object v5, Lccsanandroidx/appcompat/widget/ThemeUtils;->FOCUSED_STATE_SET:[I

    aput-object v5, v1, v2

    .line 171
    invoke-static {v3, p2}, Lccsanandroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v5

    aput v5, v0, v2

    .line 172
    add-int/lit8 v2, v2, 0x1

    .line 175
    sget-object v5, Lccsanandroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v5, v1, v2

    .line 176
    aput p2, v0, v2

    .line 177
    add-int/lit8 v2, v2, 0x1

    .line 179
    new-instance v5, Lccsanandroid/content/res/ColorStateList;

    invoke-direct {v5, v1, v0}, Lccsanandroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v5
.end method

.method private createColoredButtonColorStateList(Lccsanandroid/content/Context;)Lccsanandroid/content/res/ColorStateList;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 146
    sget v0, Lccsanandroidx/appcompat/R$attr;->colorAccent:I

    .line 147
    invoke-static {p1, v0}, Lccsanandroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Lccsanandroid/content/Context;I)I

    move-result v0

    .line 146
    invoke-direct {p0, p1, v0}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;->createButtonColorStateList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private createDefaultButtonColorStateList(Lccsanandroid/content/Context;)Lccsanandroid/content/res/ColorStateList;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 134
    sget v0, Lccsanandroidx/appcompat/R$attr;->colorButtonNormal:I

    .line 135
    invoke-static {p1, v0}, Lccsanandroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Lccsanandroid/content/Context;I)I

    move-result v0

    .line 134
    invoke-direct {p0, p1, v0}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;->createButtonColorStateList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private createSwitchThumbColorStateList(Lccsanandroid/content/Context;)Lccsanandroid/content/res/ColorStateList;
    .locals 6
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 183
    const/4 v0, 0x3

    new-array v1, v0, [[I

    .line 184
    .local v1, "states":[[I
    new-array v0, v0, [I

    .line 185
    .local v0, "colors":[I
    const/4 v2, 0x0

    .line 187
    .local v2, "i":I
    sget v3, Lccsanandroidx/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {p1, v3}, Lccsanandroidx/appcompat/widget/ThemeUtils;->getThemeAttrColorStateList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v3

    .line 190
    .local v3, "thumbColor":Lccsanandroid/content/res/ColorStateList;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lccsanandroid/content/res/ColorStateList;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    sget-object v4, Lccsanandroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v4, v1, v2

    .line 196
    aget-object v4, v1, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    aput v4, v0, v2

    .line 197
    add-int/lit8 v2, v2, 0x1

    .line 199
    sget-object v4, Lccsanandroidx/appcompat/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v4, v1, v2

    .line 200
    sget v4, Lccsanandroidx/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v4}, Lccsanandroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Lccsanandroid/content/Context;I)I

    move-result v4

    aput v4, v0, v2

    .line 201
    add-int/lit8 v2, v2, 0x1

    .line 204
    sget-object v4, Lccsanandroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v4, v1, v2

    .line 205
    invoke-virtual {v3}, Lccsanandroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    aput v4, v0, v2

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    :cond_0
    sget-object v4, Lccsanandroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v4, v1, v2

    .line 212
    sget v4, Lccsanandroidx/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {p1, v4}, Lccsanandroidx/appcompat/widget/ThemeUtils;->getDisabledThemeAttrColor(Lccsanandroid/content/Context;I)I

    move-result v4

    aput v4, v0, v2

    .line 214
    add-int/lit8 v2, v2, 0x1

    .line 216
    sget-object v4, Lccsanandroidx/appcompat/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v4, v1, v2

    .line 217
    sget v4, Lccsanandroidx/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v4}, Lccsanandroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Lccsanandroid/content/Context;I)I

    move-result v4

    aput v4, v0, v2

    .line 218
    add-int/lit8 v2, v2, 0x1

    .line 221
    sget-object v4, Lccsanandroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v4, v1, v2

    .line 222
    sget v4, Lccsanandroidx/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {p1, v4}, Lccsanandroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Lccsanandroid/content/Context;I)I

    move-result v4

    aput v4, v0, v2

    .line 223
    add-int/lit8 v2, v2, 0x1

    .line 226
    :goto_0
    new-instance v4, Lccsanandroid/content/res/ColorStateList;

    invoke-direct {v4, v1, v0}, Lccsanandroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v4
.end method

.method private setPorterDuffColorFilter(Lccsanandroid/graphics/drawable/Drawable;ILccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "d"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p2, "color"    # I
    .param p3, "mode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 244
    invoke-static {p1}, Lccsanandroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Lccsanandroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p1}, Lccsanandroid/graphics/drawable/Drawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 247
    :cond_0
    if-nez p3, :cond_1

    invoke-static {}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->access$000()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    .line 248
    :cond_1
    move-object v0, p3

    .line 247
    :goto_0
    invoke-static {p2, v0}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILccsanandroid/graphics/PorterDuff$Mode;)Lccsanandroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/drawable/Drawable;->setColorFilter(Lccsanandroid/graphics/ColorFilter;)V

    .line 249
    return-void
.end method


# virtual methods
.method public createDrawableFor(Lccsanandroidx/appcompat/widget/ResourceManagerInternal;Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "resourceManager"    # Lccsanandroidx/appcompat/widget/ResourceManagerInternal;
    .param p2, "context"    # Lccsanandroid/content/Context;
    .param p3, "resId"    # I

    .line 232
    sget v0, Lccsanandroidx/appcompat/R$drawable;->ccsan_abc_cab_background_top_material:I

    if-ne p3, v0, :cond_0

    .line 233
    new-instance v0, Lccsanandroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Lccsanandroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    sget v3, Lccsanandroidx/appcompat/R$drawable;->ccsan_abc_cab_background_internal_bg:I

    .line 234
    invoke-virtual {p1, p2, v3}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lccsanandroidx/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    .line 236
    invoke-virtual {p1, p2, v3}, Lccsanandroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lccsanandroid/graphics/drawable/LayerDrawable;-><init>([Lccsanandroid/graphics/drawable/Drawable;)V

    .line 233
    return-object v0

    .line 240
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTintListForDrawableRes(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "resId"    # I

    .line 303
    sget v0, Lccsanandroidx/appcompat/R$drawable;->ccsan_ccsan_abc_edit_text_material:I

    if-ne p2, v0, :cond_0

    .line 304
    sget v0, Lccsanandroidx/appcompat/R$color;->ccsan_ccsan_abc_tint_edittext:I

    invoke-static {p1, v0}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 305
    :cond_0
    sget v0, Lccsanandroidx/appcompat/R$drawable;->abc_switch_track_mtrl_alpha:I

    if-ne p2, v0, :cond_1

    .line 306
    sget v0, Lccsanandroidx/appcompat/R$color;->ccsan_ccsan_abc_tint_switch_track:I

    invoke-static {p1, v0}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 307
    :cond_1
    sget v0, Lccsanandroidx/appcompat/R$drawable;->ccsan_abc_switch_thumb_material:I

    if-ne p2, v0, :cond_2

    .line 308
    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;->createSwitchThumbColorStateList(Lccsanandroid/content/Context;)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 309
    :cond_2
    sget v0, Lccsanandroidx/appcompat/R$drawable;->ccsan_abc_btn_default_mtrl_shape:I

    if-ne p2, v0, :cond_3

    .line 310
    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;->createDefaultButtonColorStateList(Lccsanandroid/content/Context;)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 311
    :cond_3
    sget v0, Lccsanandroidx/appcompat/R$drawable;->ccsan_abc_btn_borderless_material:I

    if-ne p2, v0, :cond_4

    .line 312
    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;->createBorderlessButtonColorStateList(Lccsanandroid/content/Context;)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 313
    :cond_4
    sget v0, Lccsanandroidx/appcompat/R$drawable;->ccsan_ccsan_abc_btn_colored_material:I

    if-ne p2, v0, :cond_5

    .line 314
    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;->createColoredButtonColorStateList(Lccsanandroid/content/Context;)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 315
    :cond_5
    sget v0, Lccsanandroidx/appcompat/R$drawable;->abc_spinner_mtrl_am_alpha:I

    if-eq p2, v0, :cond_b

    sget v0, Lccsanandroidx/appcompat/R$drawable;->ccsan_abc_spinner_textfield_background_material:I

    if-ne p2, v0, :cond_6

    goto :goto_0

    .line 318
    :cond_6
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;->TINT_COLOR_CONTROL_NORMAL:[I

    invoke-direct {p0, v0, p2}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;->arrayContains([II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 319
    sget v0, Lccsanandroidx/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v0}, Lccsanandroidx/appcompat/widget/ThemeUtils;->getThemeAttrColorStateList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 320
    :cond_7
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;->TINT_COLOR_CONTROL_STATE_LIST:[I

    invoke-direct {p0, v0, p2}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;->arrayContains([II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 321
    sget v0, Lccsanandroidx/appcompat/R$color;->ccsan_ccsan_abc_tint_default:I

    invoke-static {p1, v0}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 322
    :cond_8
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;->TINT_CHECKABLE_BUTTON_LIST:[I

    invoke-direct {p0, v0, p2}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;->arrayContains([II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 323
    sget v0, Lccsanandroidx/appcompat/R$color;->ccsan_ccsan_abc_tint_btn_checkable:I

    invoke-static {p1, v0}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 324
    :cond_9
    sget v0, Lccsanandroidx/appcompat/R$drawable;->ccsan_abc_seekbar_thumb_material:I

    if-ne p2, v0, :cond_a

    .line 325
    sget v0, Lccsanandroidx/appcompat/R$color;->ccsan_ccsan_abc_tint_seek_thumb:I

    invoke-static {p1, v0}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 327
    :cond_a
    const/4 v0, 0x0

    return-object v0

    .line 317
    :cond_b
    :goto_0
    sget v0, Lccsanandroidx/appcompat/R$color;->ccsan_ccsan_abc_tint_spinner:I

    invoke-static {p1, v0}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getTintModeForDrawableRes(I)Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 2
    .param p1, "resId"    # I

    .line 381
    const/4 v0, 0x0

    .line 383
    .local v0, "mode":Lccsanandroid/graphics/PorterDuff$Mode;
    sget v1, Lccsanandroidx/appcompat/R$drawable;->ccsan_abc_switch_thumb_material:I

    if-ne p1, v1, :cond_0

    .line 384
    sget-object v0, Lccsanandroid/graphics/PorterDuff$Mode;->MULTIPLY:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 387
    :cond_0
    return-object v0
.end method

.method public tintDrawable(Lccsanandroid/content/Context;ILccsanandroid/graphics/drawable/Drawable;)Z
    .locals 7
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 254
    sget v0, Lccsanandroidx/appcompat/R$drawable;->ccsan_abc_seekbar_track_material:I

    const/4 v1, 0x1

    const v2, 0x102000d

    const v3, 0x102000f

    const/high16 v4, 0x1020000

    if-ne p2, v0, :cond_0

    .line 255
    move-object v0, p3

    check-cast v0, Lccsanandroid/graphics/drawable/LayerDrawable;

    .line 256
    .local v0, "ld":Lccsanandroid/graphics/drawable/LayerDrawable;
    nop

    .line 257
    invoke-virtual {v0, v4}, Lccsanandroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Lccsanandroidx/appcompat/R$attr;->colorControlNormal:I

    .line 258
    invoke-static {p1, v5}, Lccsanandroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Lccsanandroid/content/Context;I)I

    move-result v5

    .line 259
    invoke-static {}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->access$000()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v6

    .line 256
    invoke-direct {p0, v4, v5, v6}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;->setPorterDuffColorFilter(Lccsanandroid/graphics/drawable/Drawable;ILccsanandroid/graphics/PorterDuff$Mode;)V

    .line 260
    nop

    .line 261
    invoke-virtual {v0, v3}, Lccsanandroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lccsanandroidx/appcompat/R$attr;->colorControlNormal:I

    .line 262
    invoke-static {p1, v4}, Lccsanandroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Lccsanandroid/content/Context;I)I

    move-result v4

    .line 263
    invoke-static {}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->access$000()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v5

    .line 260
    invoke-direct {p0, v3, v4, v5}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;->setPorterDuffColorFilter(Lccsanandroid/graphics/drawable/Drawable;ILccsanandroid/graphics/PorterDuff$Mode;)V

    .line 264
    nop

    .line 265
    invoke-virtual {v0, v2}, Lccsanandroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v3, Lccsanandroidx/appcompat/R$attr;->colorControlActivated:I

    .line 266
    invoke-static {p1, v3}, Lccsanandroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Lccsanandroid/content/Context;I)I

    move-result v3

    .line 267
    invoke-static {}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->access$000()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v4

    .line 264
    invoke-direct {p0, v2, v3, v4}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;->setPorterDuffColorFilter(Lccsanandroid/graphics/drawable/Drawable;ILccsanandroid/graphics/PorterDuff$Mode;)V

    .line 268
    return v1

    .line 269
    .end local v0    # "ld":Lccsanandroid/graphics/drawable/LayerDrawable;
    :cond_0
    sget v0, Lccsanandroidx/appcompat/R$drawable;->ccsan_ccsan_abc_ratingbar_material:I

    if-eq p2, v0, :cond_2

    sget v0, Lccsanandroidx/appcompat/R$drawable;->ccsan_ccsan_abc_ratingbar_indicator_material:I

    if-eq p2, v0, :cond_2

    sget v0, Lccsanandroidx/appcompat/R$drawable;->ccsan_ccsan_abc_ratingbar_small_material:I

    if-ne p2, v0, :cond_1

    goto :goto_0

    .line 287
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 272
    :cond_2
    :goto_0
    move-object v0, p3

    check-cast v0, Lccsanandroid/graphics/drawable/LayerDrawable;

    .line 273
    .restart local v0    # "ld":Lccsanandroid/graphics/drawable/LayerDrawable;
    nop

    .line 274
    invoke-virtual {v0, v4}, Lccsanandroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Lccsanandroidx/appcompat/R$attr;->colorControlNormal:I

    .line 275
    invoke-static {p1, v5}, Lccsanandroidx/appcompat/widget/ThemeUtils;->getDisabledThemeAttrColor(Lccsanandroid/content/Context;I)I

    move-result v5

    .line 276
    invoke-static {}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->access$000()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v6

    .line 273
    invoke-direct {p0, v4, v5, v6}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;->setPorterDuffColorFilter(Lccsanandroid/graphics/drawable/Drawable;ILccsanandroid/graphics/PorterDuff$Mode;)V

    .line 277
    nop

    .line 278
    invoke-virtual {v0, v3}, Lccsanandroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lccsanandroidx/appcompat/R$attr;->colorControlActivated:I

    .line 279
    invoke-static {p1, v4}, Lccsanandroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Lccsanandroid/content/Context;I)I

    move-result v4

    .line 280
    invoke-static {}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->access$000()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v5

    .line 277
    invoke-direct {p0, v3, v4, v5}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;->setPorterDuffColorFilter(Lccsanandroid/graphics/drawable/Drawable;ILccsanandroid/graphics/PorterDuff$Mode;)V

    .line 281
    nop

    .line 282
    invoke-virtual {v0, v2}, Lccsanandroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v3, Lccsanandroidx/appcompat/R$attr;->colorControlActivated:I

    .line 283
    invoke-static {p1, v3}, Lccsanandroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Lccsanandroid/content/Context;I)I

    move-result v3

    .line 284
    invoke-static {}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->access$000()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v4

    .line 281
    invoke-direct {p0, v2, v3, v4}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;->setPorterDuffColorFilter(Lccsanandroid/graphics/drawable/Drawable;ILccsanandroid/graphics/PorterDuff$Mode;)V

    .line 285
    return v1
.end method

.method public tintDrawableUsingColorFilter(Lccsanandroid/content/Context;ILccsanandroid/graphics/drawable/Drawable;)Z
    .locals 6
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 333
    invoke-static {}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->access$000()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 334
    .local v0, "tintMode":Lccsanandroid/graphics/PorterDuff$Mode;
    const/4 v1, 0x0

    .line 335
    .local v1, "colorAttrSet":Z
    const/4 v2, 0x0

    .line 336
    .local v2, "colorAttr":I
    const/4 v3, -0x1

    .line 338
    .local v3, "alpha":I
    iget-object v4, p0, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    invoke-direct {p0, v4, p2}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;->arrayContains([II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 339
    sget v2, Lccsanandroidx/appcompat/R$attr;->colorControlNormal:I

    .line 340
    const/4 v1, 0x1

    goto :goto_0

    .line 341
    :cond_0
    iget-object v4, p0, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    invoke-direct {p0, v4, p2}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;->arrayContains([II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 342
    sget v2, Lccsanandroidx/appcompat/R$attr;->colorControlActivated:I

    .line 343
    const/4 v1, 0x1

    goto :goto_0

    .line 344
    :cond_1
    iget-object v4, p0, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    invoke-direct {p0, v4, p2}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager$1;->arrayContains([II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 345
    const v2, 0x1010031

    .line 346
    const/4 v1, 0x1

    .line 347
    sget-object v0, Lccsanandroid/graphics/PorterDuff$Mode;->MULTIPLY:Lccsanandroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 348
    :cond_2
    sget v4, Lccsanandroidx/appcompat/R$drawable;->abc_list_divider_mtrl_alpha:I

    if-ne p2, v4, :cond_3

    .line 349
    const v2, 0x1010030

    .line 350
    const/4 v1, 0x1

    .line 351
    const v4, 0x42233333    # 40.8f

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto :goto_0

    .line 352
    :cond_3
    sget v4, Lccsanandroidx/appcompat/R$drawable;->ccsan_ccsan_ccsan_abc_dialog_material_background:I

    if-ne p2, v4, :cond_4

    .line 353
    const v2, 0x1010031

    .line 354
    const/4 v1, 0x1

    .line 357
    :cond_4
    :goto_0
    if-eqz v1, :cond_7

    .line 358
    invoke-static {p3}, Lccsanandroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Lccsanandroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 359
    invoke-virtual {p3}, Lccsanandroid/graphics/drawable/Drawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 362
    :cond_5
    invoke-static {p1, v2}, Lccsanandroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Lccsanandroid/content/Context;I)I

    move-result v4

    .line 363
    .local v4, "color":I
    invoke-static {v4, v0}, Lccsanandroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILccsanandroid/graphics/PorterDuff$Mode;)Lccsanandroid/graphics/PorterDuffColorFilter;

    move-result-object v5

    invoke-virtual {p3, v5}, Lccsanandroid/graphics/drawable/Drawable;->setColorFilter(Lccsanandroid/graphics/ColorFilter;)V

    .line 365
    const/4 v5, -0x1

    if-eq v3, v5, :cond_6

    .line 366
    invoke-virtual {p3, v3}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 374
    :cond_6
    const/4 v5, 0x1

    return v5

    .line 376
    .end local v4    # "color":I
    :cond_7
    const/4 v4, 0x0

    return v4
.end method
