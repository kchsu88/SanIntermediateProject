.class Lccsanandroidx/core/graphics/BlendModeUtils;
.super Ljava/lang/Object;
.source "BlendModeUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static obtainBlendModeFromCompat(Lccsanandroidx/core/graphics/BlendModeCompat;)Lccsanandroid/graphics/BlendMode;
    .locals 2
    .param p0, "blendModeCompat"    # Lccsanandroidx/core/graphics/BlendModeCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blendModeCompat"
        }
    .end annotation

    .line 35
    sget-object v0, Lccsanandroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    invoke-virtual {p0}, Lccsanandroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 93
    :pswitch_0
    sget-object v0, Lccsanandroid/graphics/BlendMode;->LUMINOSITY:Lccsanandroid/graphics/BlendMode;

    return-object v0

    .line 91
    :pswitch_1
    sget-object v0, Lccsanandroid/graphics/BlendMode;->COLOR:Lccsanandroid/graphics/BlendMode;

    return-object v0

    .line 89
    :pswitch_2
    sget-object v0, Lccsanandroid/graphics/BlendMode;->SATURATION:Lccsanandroid/graphics/BlendMode;

    return-object v0

    .line 87
    :pswitch_3
    sget-object v0, Lccsanandroid/graphics/BlendMode;->HUE:Lccsanandroid/graphics/BlendMode;

    return-object v0

    .line 85
    :pswitch_4
    sget-object v0, Lccsanandroid/graphics/BlendMode;->MULTIPLY:Lccsanandroid/graphics/BlendMode;

    return-object v0

    .line 83
    :pswitch_5
    sget-object v0, Lccsanandroid/graphics/BlendMode;->EXCLUSION:Lccsanandroid/graphics/BlendMode;

    return-object v0

    .line 81
    :pswitch_6
    sget-object v0, Lccsanandroid/graphics/BlendMode;->DIFFERENCE:Lccsanandroid/graphics/BlendMode;

    return-object v0

    .line 79
    :pswitch_7
    sget-object v0, Lccsanandroid/graphics/BlendMode;->SOFT_LIGHT:Lccsanandroid/graphics/BlendMode;

    return-object v0

    .line 77
    :pswitch_8
    sget-object v0, Lccsanandroid/graphics/BlendMode;->HARD_LIGHT:Lccsanandroid/graphics/BlendMode;

    return-object v0

    .line 75
    :pswitch_9
    sget-object v0, Lccsanandroid/graphics/BlendMode;->COLOR_BURN:Lccsanandroid/graphics/BlendMode;

    return-object v0

    .line 73
    :pswitch_a
    sget-object v0, Lccsanandroid/graphics/BlendMode;->COLOR_DODGE:Lccsanandroid/graphics/BlendMode;

    return-object v0

    .line 71
    :pswitch_b
    sget-object v0, Lccsanandroid/graphics/BlendMode;->LIGHTEN:Lccsanandroid/graphics/BlendMode;

    return-object v0

    .line 69
    :pswitch_c
    sget-object v0, Lccsanandroid/graphics/BlendMode;->DARKEN:Lccsanandroid/graphics/BlendMode;

    return-object v0

    .line 67
    :pswitch_d
    sget-object v0, Lccsanandroid/graphics/BlendMode;->OVERLAY:Lccsanandroid/graphics/BlendMode;

    return-object v0

    .line 65
    :pswitch_e
    sget-object v0, Lccsanandroid/graphics/BlendMode;->SCREEN:Lccsanandroid/graphics/BlendMode;

    return-object v0

    .line 63
    :pswitch_f
    sget-object v0, Lccsanandroid/graphics/BlendMode;->MODULATE:Lccsanandroid/graphics/BlendMode;

    return-object v0

    .line 61
    :pswitch_10
    sget-object v0, Lccsanandroid/graphics/BlendMode;->PLUS:Lccsanandroid/graphics/BlendMode;

    return-object v0

    .line 59
    :pswitch_11
    sget-object v0, Lccsanandroid/graphics/BlendMode;->XOR:Lccsanandroid/graphics/BlendMode;

    return-object v0

    .line 57
    :pswitch_12
    sget-object v0, Lccsanandroid/graphics/BlendMode;->DST_ATOP:Lccsanandroid/graphics/BlendMode;

    return-object v0

    .line 55
    :pswitch_13
    sget-object v0, Lccsanandroid/graphics/BlendMode;->SRC_ATOP:Lccsanandroid/graphics/BlendMode;

    return-object v0

    .line 53
    :pswitch_14
    sget-object v0, Lccsanandroid/graphics/BlendMode;->DST_OUT:Lccsanandroid/graphics/BlendMode;

    return-object v0

    .line 51
    :pswitch_15
    sget-object v0, Lccsanandroid/graphics/BlendMode;->SRC_OUT:Lccsanandroid/graphics/BlendMode;

    return-object v0

    .line 49
    :pswitch_16
    sget-object v0, Lccsanandroid/graphics/BlendMode;->DST_IN:Lccsanandroid/graphics/BlendMode;

    return-object v0

    .line 47
    :pswitch_17
    sget-object v0, Lccsanandroid/graphics/BlendMode;->SRC_IN:Lccsanandroid/graphics/BlendMode;

    return-object v0

    .line 45
    :pswitch_18
    sget-object v0, Lccsanandroid/graphics/BlendMode;->DST_OVER:Lccsanandroid/graphics/BlendMode;

    return-object v0

    .line 43
    :pswitch_19
    sget-object v0, Lccsanandroid/graphics/BlendMode;->SRC_OVER:Lccsanandroid/graphics/BlendMode;

    return-object v0

    .line 41
    :pswitch_1a
    sget-object v0, Lccsanandroid/graphics/BlendMode;->DST:Lccsanandroid/graphics/BlendMode;

    return-object v0

    .line 39
    :pswitch_1b
    sget-object v0, Lccsanandroid/graphics/BlendMode;->SRC:Lccsanandroid/graphics/BlendMode;

    return-object v0

    .line 37
    :pswitch_1c
    sget-object v0, Lccsanandroid/graphics/BlendMode;->CLEAR:Lccsanandroid/graphics/BlendMode;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static obtainPorterDuffFromCompat(Lccsanandroidx/core/graphics/BlendModeCompat;)Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 3
    .param p0, "blendModeCompat"    # Lccsanandroidx/core/graphics/BlendModeCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blendModeCompat"
        }
    .end annotation

    .line 101
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 102
    sget-object v1, Lccsanandroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    invoke-virtual {p0}, Lccsanandroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 141
    return-object v0

    .line 139
    :pswitch_0
    sget-object v0, Lccsanandroid/graphics/PorterDuff$Mode;->LIGHTEN:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 137
    :pswitch_1
    sget-object v0, Lccsanandroid/graphics/PorterDuff$Mode;->DARKEN:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 135
    :pswitch_2
    sget-object v0, Lccsanandroid/graphics/PorterDuff$Mode;->OVERLAY:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 133
    :pswitch_3
    sget-object v0, Lccsanandroid/graphics/PorterDuff$Mode;->SCREEN:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 131
    :pswitch_4
    sget-object v0, Lccsanandroid/graphics/PorterDuff$Mode;->MULTIPLY:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 128
    :pswitch_5
    sget-object v0, Lccsanandroid/graphics/PorterDuff$Mode;->ADD:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 126
    :pswitch_6
    sget-object v0, Lccsanandroid/graphics/PorterDuff$Mode;->XOR:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 124
    :pswitch_7
    sget-object v0, Lccsanandroid/graphics/PorterDuff$Mode;->DST_ATOP:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 122
    :pswitch_8
    sget-object v0, Lccsanandroid/graphics/PorterDuff$Mode;->SRC_ATOP:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 120
    :pswitch_9
    sget-object v0, Lccsanandroid/graphics/PorterDuff$Mode;->DST_OUT:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 118
    :pswitch_a
    sget-object v0, Lccsanandroid/graphics/PorterDuff$Mode;->SRC_OUT:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 116
    :pswitch_b
    sget-object v0, Lccsanandroid/graphics/PorterDuff$Mode;->DST_IN:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 114
    :pswitch_c
    sget-object v0, Lccsanandroid/graphics/PorterDuff$Mode;->SRC_IN:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 112
    :pswitch_d
    sget-object v0, Lccsanandroid/graphics/PorterDuff$Mode;->DST_OVER:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 110
    :pswitch_e
    sget-object v0, Lccsanandroid/graphics/PorterDuff$Mode;->SRC_OVER:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 108
    :pswitch_f
    sget-object v0, Lccsanandroid/graphics/PorterDuff$Mode;->DST:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 106
    :pswitch_10
    sget-object v0, Lccsanandroid/graphics/PorterDuff$Mode;->SRC:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 104
    :pswitch_11
    sget-object v0, Lccsanandroid/graphics/PorterDuff$Mode;->CLEAR:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 144
    :cond_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
