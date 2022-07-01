.class public final Lccsancom/mbridge/msdk/video/dynview/i/b;
.super Ljava/lang/Object;
.source "UIEnergizeWrapper.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "mbridge_top_play_bg"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/i/b;->a:Ljava/lang/String;

    .line 34
    const-string v0, "mbridge_top_finger_bg"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/i/b;->b:Ljava/lang/String;

    .line 35
    const-string v0, "mbridge_bottom_play_bg"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/i/b;->c:Ljava/lang/String;

    .line 36
    const-string v0, "mbridge_bottom_finger_bg"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/i/b;->d:Ljava/lang/String;

    .line 38
    const-string v0, "mbridge_tv_count"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/i/b;->e:Ljava/lang/String;

    .line 40
    const-string v0, "mbridge_sound_switch"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/i/b;->f:Ljava/lang/String;

    .line 41
    const-string v0, "mbridge_top_control"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/i/b;->g:Ljava/lang/String;

    .line 42
    const-string v0, "mbridge_tv_title"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/i/b;->h:Ljava/lang/String;

    .line 43
    const-string v0, "mbridge_tv_desc"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/i/b;->i:Ljava/lang/String;

    .line 44
    const-string v0, "mbridge_tv_install"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/i/b;->j:Ljava/lang/String;

    .line 45
    const-string v0, "mbridge_sv_starlevel"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/i/b;->k:Ljava/lang/String;

    .line 46
    const-string v0, "mbridge_tv_cta"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/i/b;->l:Ljava/lang/String;

    .line 47
    const-string v0, "mbridge_native_ec_controller"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/i/b;->m:Ljava/lang/String;

    .line 48
    const-string v0, "mbridge_reward_shape_choice_rl"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/i/b;->n:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 2

    .line 243
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, p1, v1}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public final a(Lccsanandroid/view/View;)V
    .locals 7

    .line 54
    if-eqz p1, :cond_4

    instance-of v0, p1, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeFramLayout;

    if-eqz v0, :cond_4

    .line 55
    move-object v0, p1

    check-cast v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeFramLayout;

    .line 56
    new-instance v1, Lccsanandroid/animation/AnimatorSet;

    invoke-direct {v1}, Lccsanandroid/animation/AnimatorSet;-><init>()V

    .line 57
    nop

    .line 58
    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    .line 59
    if-eqz v2, :cond_4

    .line 62
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/dynview/i/b;->a:Ljava/lang/String;

    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/video/dynview/i/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsanandroid/widget/ImageView;

    .line 63
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/dynview/i/b;->b:Ljava/lang/String;

    invoke-direct {p0, v3}, Lccsancom/mbridge/msdk/video/dynview/i/b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v3

    check-cast v3, Lccsanandroid/widget/ImageView;

    .line 64
    iget-object v4, p0, Lccsancom/mbridge/msdk/video/dynview/i/b;->c:Ljava/lang/String;

    invoke-direct {p0, v4}, Lccsancom/mbridge/msdk/video/dynview/i/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v4

    check-cast v4, Lccsanandroid/widget/ImageView;

    .line 65
    iget-object v5, p0, Lccsancom/mbridge/msdk/video/dynview/i/b;->d:Ljava/lang/String;

    invoke-direct {p0, v5}, Lccsancom/mbridge/msdk/video/dynview/i/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/ImageView;

    .line 66
    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 67
    new-instance v6, Lccsancom/mbridge/msdk/video/dynview/g/b;

    invoke-direct {v6}, Lccsancom/mbridge/msdk/video/dynview/g/b;-><init>()V

    invoke-virtual {v6, v2}, Lccsancom/mbridge/msdk/video/dynview/g/b;->a(Lccsanandroid/view/View;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v2

    goto :goto_0

    .line 66
    :cond_0
    move-object v2, v5

    .line 69
    :goto_0
    if-eqz v3, :cond_1

    .line 70
    new-instance v6, Lccsancom/mbridge/msdk/video/dynview/g/b;

    invoke-direct {v6}, Lccsancom/mbridge/msdk/video/dynview/g/b;-><init>()V

    invoke-virtual {v6, v3}, Lccsancom/mbridge/msdk/video/dynview/g/b;->b(Lccsanandroid/view/View;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v3

    goto :goto_1

    .line 69
    :cond_1
    move-object v3, v5

    .line 73
    :goto_1
    if-eqz v4, :cond_2

    .line 74
    new-instance v6, Lccsancom/mbridge/msdk/video/dynview/g/b;

    invoke-direct {v6}, Lccsancom/mbridge/msdk/video/dynview/g/b;-><init>()V

    invoke-virtual {v6, v4}, Lccsancom/mbridge/msdk/video/dynview/g/b;->a(Lccsanandroid/view/View;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v4

    goto :goto_2

    .line 73
    :cond_2
    move-object v4, v5

    .line 77
    :goto_2
    if-eqz p1, :cond_3

    .line 78
    new-instance v5, Lccsancom/mbridge/msdk/video/dynview/g/b;

    invoke-direct {v5}, Lccsancom/mbridge/msdk/video/dynview/g/b;-><init>()V

    invoke-virtual {v5, p1}, Lccsancom/mbridge/msdk/video/dynview/g/b;->b(Lccsanandroid/view/View;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v5

    .line 80
    :cond_3
    if-eqz v2, :cond_4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    if-eqz v5, :cond_4

    .line 81
    const/4 p1, 0x4

    new-array p1, p1, [Lccsanandroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v2, p1, v6

    const/4 v2, 0x1

    aput-object v4, p1, v2

    const/4 v2, 0x2

    aput-object v3, p1, v2

    const/4 v2, 0x3

    aput-object v5, p1, v2

    invoke-virtual {v1, p1}, Lccsanandroid/animation/AnimatorSet;->playTogether([Lccsanandroid/animation/Animator;)V

    .line 82
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeFramLayout;->setAnimatorSet(Lccsanandroid/animation/AnimatorSet;)V

    .line 86
    :cond_4
    return-void
.end method

.method public final a(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/video/dynview/b;)V
    .locals 6

    .line 90
    if-eqz p1, :cond_4

    .line 91
    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    .line 92
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 93
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/dynview/i/b;->e:Ljava/lang/String;

    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/video/dynview/i/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;

    .line 94
    if-eqz v2, :cond_0

    .line 95
    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v0, v3}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setRadius(I)V

    .line 96
    const-string v3, "#60000000"

    invoke-static {v3}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setBackgroundColor(I)V

    .line 97
    const-string v3, "#ffFFFFFF"

    invoke-static {v3}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setTextColor(I)V

    .line 98
    const/high16 v3, 0x41300000    # 11.0f

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setTextSize(F)V

    .line 99
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v3}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v3

    const-string v4, "#60e3eaec"

    invoke-static {v4}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setStrokeData(II)V

    .line 101
    :cond_0
    nop

    .line 1114
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/dynview/i/b;->f:Ljava/lang/String;

    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/video/dynview/i/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/video/widget/SoundImageView;

    .line 1115
    const/high16 v3, 0x42700000    # 60.0f

    invoke-static {v0, v3}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v3

    .line 1116
    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v0, v4}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v5

    .line 1117
    if-eqz v2, :cond_1

    .line 1118
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/dynview/b;->e()I

    .line 1120
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/video/widget/SoundImageView;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    .line 1121
    invoke-virtual {v2, v5, v1, v1, v3}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 102
    :cond_1
    nop

    .line 1126
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/dynview/i/b;->g:Ljava/lang/String;

    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/video/dynview/i/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/FrameLayout;

    .line 1127
    invoke-static {v0, v4}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v0

    .line 1128
    if-eqz p1, :cond_3

    .line 1129
    new-instance v2, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1130
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/dynview/b;->e()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 1131
    sget v3, Lccsancom/mbridge/msdk/video/dynview/a/a;->a:I

    sget v4, Lccsancom/mbridge/msdk/video/dynview/a/a;->a:I

    invoke-virtual {v2, v3, v0, v4, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 1133
    :cond_2
    sget v3, Lccsancom/mbridge/msdk/video/dynview/a/a;->a:I

    invoke-virtual {v2, v0, v3, v0, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1135
    :goto_0
    invoke-virtual {p1, v2}, Lccsanandroid/widget/FrameLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 105
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/dynview/b;->f()Lccsanandroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 106
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/dynview/b;->f()Lccsanandroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    .line 107
    invoke-virtual {p1, v1, v1, v1, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 108
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/dynview/b;->f()Lccsanandroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsanandroid/view/View;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 111
    :cond_4
    return-void
.end method

.method public final b(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/video/dynview/b;)V
    .locals 9

    .line 142
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 143
    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_4

    .line 145
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/dynview/b;->e()I

    move-result v1

    .line 146
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 147
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/dynview/i/b;->n:Ljava/lang/String;

    const-string v3, "drawable"

    invoke-static {v0, v1, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 148
    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Lccsanandroid/content/res/Resources;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->setBackground(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 149
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/dynview/i/b;->h:Ljava/lang/String;

    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/video/dynview/i/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    .line 150
    const-string v3, "#FF000000"

    if-eqz v1, :cond_0

    .line 151
    invoke-static {v3}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lccsanandroid/widget/TextView;->setTextColor(I)V

    .line 153
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/dynview/i/b;->i:Ljava/lang/String;

    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/video/dynview/i/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    .line 154
    if-eqz v1, :cond_1

    .line 155
    invoke-static {v3}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lccsanandroid/widget/TextView;->setTextColor(I)V

    .line 157
    :cond_1
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v1

    .line 158
    goto :goto_0

    .line 159
    :cond_2
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v1

    .line 160
    invoke-virtual {p1}, Lccsanandroid/view/View;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 162
    :goto_0
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v0, v3}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v3

    .line 164
    iget-object v4, p0, Lccsancom/mbridge/msdk/video/dynview/i/b;->j:Ljava/lang/String;

    invoke-direct {p0, v4}, Lccsancom/mbridge/msdk/video/dynview/i/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v4

    check-cast v4, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;

    .line 165
    if-eqz v4, :cond_3

    .line 166
    sget-object v5, Lccsanandroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Lccsanandroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v6, 0x2

    new-array v6, v6, [I

    const-string v7, "#ff99cc00"

    invoke-static {v7}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    aput v7, v6, v8

    const-string v7, "#ff6d9b00"

    invoke-static {v7}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v2

    invoke-virtual {v4, v8, v5, v6}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setGradient(ILccsanandroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 167
    const-string v2, "#FFFFFF"

    invoke-static {v2}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setTextColor(I)V

    .line 168
    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v0, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v5}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setRadius(I)V

    .line 169
    invoke-virtual {v4, v2}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setTextSize(F)V

    .line 170
    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v4, v2}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setSpacing(F)V

    .line 171
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/dynview/b;->f()Lccsanandroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/dynview/b;->f()Lccsanandroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;

    if-eqz v2, :cond_3

    .line 172
    new-instance v2, Lccsancom/mbridge/msdk/video/dynview/g/b;

    invoke-direct {v2}, Lccsancom/mbridge/msdk/video/dynview/g/b;-><init>()V

    invoke-virtual {v2, v4}, Lccsancom/mbridge/msdk/video/dynview/g/b;->c(Lccsanandroid/view/View;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v2

    .line 173
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/dynview/b;->f()Lccsanandroid/view/View;

    move-result-object p2

    check-cast p2, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;

    invoke-virtual {p2, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->setObjectAnimator(Lccsanandroid/animation/ObjectAnimator;)V

    .line 176
    :cond_3
    invoke-virtual {p1}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_4

    .line 177
    new-instance p2, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p2, v2, v2}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 178
    invoke-virtual {p2, v1, v1, v1, v3}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 179
    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v0

    iput v0, p2, Lccsanandroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 180
    invoke-virtual {p1, p2}, Lccsanandroid/view/View;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 184
    :cond_4
    return-void
.end method

.method public final c(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/video/dynview/b;)V
    .locals 7

    .line 188
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 189
    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_5

    .line 192
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/dynview/i/b;->k:Ljava/lang/String;

    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/video/dynview/i/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;

    .line 193
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/dynview/b;->e()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 195
    invoke-virtual {v1, v3}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->setOrientation(I)V

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->setOrientation(I)V

    .line 200
    :cond_1
    :goto_0
    nop

    .line 1227
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/dynview/i/b;->m:Ljava/lang/String;

    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/video/dynview/i/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/RelativeLayout;

    .line 1228
    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v0, v4}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v4

    .line 1229
    if-eqz v1, :cond_3

    .line 1230
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/dynview/b;->e()I

    move-result p2

    const/4 v5, -0x1

    if-ne p2, v3, :cond_2

    .line 1231
    new-instance p2, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, v5, v5}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1232
    sget v5, Lccsancom/mbridge/msdk/video/dynview/a/a;->a:I

    invoke-virtual {p2, v4, v5, v4, v4}, Lccsanandroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1233
    invoke-virtual {v1, p2}, Lccsanandroid/widget/RelativeLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 1234
    goto :goto_1

    .line 1235
    :cond_2
    new-instance p2, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v5, v5}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1236
    sget v5, Lccsancom/mbridge/msdk/video/dynview/a/a;->a:I

    sget v6, Lccsancom/mbridge/msdk/video/dynview/a/a;->a:I

    invoke-virtual {p2, v5, v4, v6, v4}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1237
    invoke-virtual {v1, p2}, Lccsanandroid/widget/RelativeLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 202
    :cond_3
    :goto_1
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/i/b;->l:Ljava/lang/String;

    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/video/dynview/i/b;->a(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p2

    check-cast p2, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;

    .line 203
    if-eqz p2, :cond_5

    .line 204
    sget-object v1, Lccsanandroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Lccsanandroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const-string v5, "#ff99cc00"

    invoke-static {v5}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v2

    const-string v6, "#ff6d9b00"

    invoke-static {v6}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v3

    invoke-virtual {p2, v2, v1, v4}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setGradient(ILccsanandroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 205
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v1

    invoke-static {v5}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v1, v4}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setStrokeData(II)V

    .line 206
    const-string v1, "#FFFFFF"

    invoke-static {v1}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setTextColor(I)V

    .line 207
    const/high16 v1, 0x41c80000    # 25.0f

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v0

    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setRadius(I)V

    .line 208
    const/high16 v0, 0x41a80000    # 21.0f

    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setTextSize(F)V

    .line 209
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setSpacing(F)V

    .line 210
    new-instance v0, Lccsanandroid/animation/AnimatorSet;

    invoke-direct {v0}, Lccsanandroid/animation/AnimatorSet;-><init>()V

    .line 211
    new-instance v1, Lccsancom/mbridge/msdk/video/dynview/g/b;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/video/dynview/g/b;-><init>()V

    invoke-virtual {v1, p2}, Lccsancom/mbridge/msdk/video/dynview/g/b;->c(Lccsanandroid/view/View;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object p2

    .line 212
    new-array v1, v3, [Lccsanandroid/animation/Animator;

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lccsanandroid/animation/AnimatorSet;->playTogether([Lccsanandroid/animation/Animator;)V

    .line 213
    instance-of p2, p1, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeFramLayout;

    if-eqz p2, :cond_4

    .line 214
    move-object p2, p1

    check-cast p2, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeFramLayout;

    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeFramLayout;->setAnimatorSet(Lccsanandroid/animation/AnimatorSet;)V

    .line 216
    :cond_4
    instance-of p2, p1, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;

    if-eqz p2, :cond_5

    .line 217
    move-object p2, p1

    check-cast p2, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;

    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeRelativeLayout;->setAnimatorSet(Lccsanandroid/animation/AnimatorSet;)V

    .line 222
    :cond_5
    new-instance p2, Lccsancom/mbridge/msdk/video/dynview/g/b;

    invoke-direct {p2}, Lccsancom/mbridge/msdk/video/dynview/g/b;-><init>()V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, p1, v0, v1}, Lccsancom/mbridge/msdk/video/dynview/g/b;->c(Lccsanandroid/view/View;J)V

    .line 224
    :cond_6
    return-void
.end method
