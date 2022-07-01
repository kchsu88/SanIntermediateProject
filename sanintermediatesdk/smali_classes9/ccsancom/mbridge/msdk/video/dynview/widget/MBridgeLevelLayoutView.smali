.class public Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;
.super Lccsanandroid/widget/LinearLayout;
.source "MBridgeLevelLayoutView.java"


# instance fields
.field private a:D

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method private a()V
    .locals 12

    .line 74
    nop

    .line 75
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->c:Z

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Lccsanandroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 77
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->getContext()Lccsanandroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->dip2px(Lccsanandroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v3, v4, v3, v3}, Lccsanandroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 78
    new-instance v4, Lccsanandroid/widget/LinearLayout;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->getContext()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 79
    invoke-virtual {v4, v3}, Lccsanandroid/widget/LinearLayout;->setOrientation(I)V

    .line 80
    invoke-virtual {v4, v0}, Lccsanandroid/widget/LinearLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 81
    new-instance v5, Lccsanandroid/widget/LinearLayout;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->getContext()Lccsanandroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 82
    invoke-virtual {v5, v3}, Lccsanandroid/widget/LinearLayout;->setOrientation(I)V

    .line 83
    invoke-virtual {v5, v0}, Lccsanandroid/widget/LinearLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 75
    :cond_0
    move-object v4, v2

    move-object v5, v4

    .line 85
    :goto_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->removeAllViews()V

    .line 87
    const-string v0, "drawable"

    if-eqz v5, :cond_1

    .line 88
    new-instance v6, Lccsanandroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->getContext()Lccsanandroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v7, v8}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->dip2px(Lccsanandroid/content/Context;F)I

    move-result v7

    invoke-direct {v6, v1, v7}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 89
    new-instance v1, Lccsanandroid/widget/TextView;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->getContext()Lccsanandroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Lccsanandroid/widget/TextView;-><init>(Lccsanandroid/content/Context;)V

    .line 90
    const/4 v7, 0x1

    invoke-static {v7}, Lccsanandroid/graphics/Typeface;->defaultFromStyle(I)Lccsanandroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v1, v8}, Lccsanandroid/widget/TextView;->setTypeface(Lccsanandroid/graphics/Typeface;)V

    .line 91
    const-string v8, "("

    invoke-virtual {v1, v8}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const-string v8, "#5f5f5f"

    invoke-static {v8}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v9}, Lccsanandroid/widget/TextView;->setTextColor(I)V

    .line 93
    new-instance v9, Lccsanandroid/widget/TextView;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->getContext()Lccsanandroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lccsanandroid/widget/TextView;-><init>(Lccsanandroid/content/Context;)V

    .line 94
    invoke-static {v7}, Lccsanandroid/graphics/Typeface;->defaultFromStyle(I)Lccsanandroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v9, v7}, Lccsanandroid/widget/TextView;->setTypeface(Lccsanandroid/graphics/Typeface;)V

    .line 95
    const/16 v7, 0x11

    invoke-virtual {v9, v7}, Lccsanandroid/widget/TextView;->setGravity(I)V

    .line 96
    invoke-static {v8}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v9, v7}, Lccsanandroid/widget/TextView;->setTextColor(I)V

    .line 97
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->getContext()Lccsanandroid/content/Context;

    move-result-object v8

    const-string v10, "mbridge_reward_user"

    invoke-static {v8, v10, v0}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lccsanandroid/content/res/Resources;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 99
    invoke-virtual {v7}, Lccsanandroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v8

    invoke-virtual {v7}, Lccsanandroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v10

    invoke-virtual {v7, v3, v3, v8, v10}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 100
    invoke-virtual {v9, v7, v2, v2, v2}, Lccsanandroid/widget/TextView;->setCompoundDrawables(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->b:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " )"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v5, v1, v6}, Lccsanandroid/widget/LinearLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 103
    invoke-virtual {v5, v9, v6}, Lccsanandroid/widget/LinearLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 106
    :cond_1
    iget-wide v1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->a:D

    .line 107
    const-wide/16 v6, 0x0

    cmpl-double v8, v1, v6

    if-nez v8, :cond_2

    .line 108
    const-wide/high16 v1, 0x4014000000000000L    # 5.0

    .line 110
    :cond_2
    const/4 v6, 0x0

    .line 111
    :goto_1
    const/4 v7, 0x5

    if-ge v6, v7, :cond_5

    .line 112
    new-instance v7, Lccsanandroid/widget/ImageView;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->getContext()Lccsanandroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;)V

    .line 113
    new-instance v8, Lccsanandroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->getContext()Lccsanandroid/content/Context;

    move-result-object v9

    const/high16 v10, 0x41500000    # 13.0f

    invoke-static {v9, v10}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->dip2px(Lccsanandroid/content/Context;F)I

    move-result v9

    invoke-direct {v8, v3, v9}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 114
    int-to-double v9, v6

    cmpg-double v11, v9, v1

    if-gez v11, :cond_3

    .line 115
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->getContext()Lccsanandroid/content/Context;

    move-result-object v9

    const-string v10, "mbridge_download_message_dialog_star_sel"

    invoke-static {v9, v10, v0}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Lccsanandroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 117
    :cond_3
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->getContext()Lccsanandroid/content/Context;

    move-result-object v9

    const-string v10, "mbridge_download_message_dilaog_star_nor"

    invoke-static {v9, v10, v0}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Lccsanandroid/widget/ImageView;->setImageResource(I)V

    .line 119
    :goto_2
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v8, Lccsanandroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 120
    if-eqz v4, :cond_4

    .line 121
    invoke-virtual {v4, v7, v8}, Lccsanandroid/widget/LinearLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 123
    :cond_4
    invoke-virtual {p0, v7, v8}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 125
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 126
    goto :goto_1

    .line 127
    :cond_5
    if-eqz v4, :cond_6

    if-eqz v4, :cond_6

    .line 128
    invoke-virtual {p0, v4}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->addView(Lccsanandroid/view/View;)V

    .line 129
    invoke-virtual {p0, v5}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->addView(Lccsanandroid/view/View;)V

    .line 132
    :cond_6
    return-void
.end method

.method public static dip2px(Lccsanandroid/content/Context;F)I
    .locals 1

    .line 135
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 136
    return v0

    .line 137
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p0

    .line 138
    if-nez p0, :cond_1

    .line 139
    return v0

    .line 140
    :cond_1
    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Lccsanandroid/util/DisplayMetrics;->density:F

    .line 141
    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method


# virtual methods
.method public setRating(I)V
    .locals 2

    .line 66
    int-to-double v0, p1

    iput-wide v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->a:D

    .line 67
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->a()V

    .line 68
    return-void
.end method

.method public setRatingAndUser(DI)V
    .locals 2

    .line 50
    iput-wide p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->a:D

    .line 52
    if-nez p3, :cond_0

    .line 53
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    const-wide/high16 v0, 0x4022000000000000L    # 9.0

    mul-double p1, p1, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p1, v0

    const-wide v0, 0x40c3880000000000L    # 10000.0

    mul-double p1, p1, v0

    double-to-int p3, p1

    .line 55
    :cond_0
    iput p3, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->b:I

    .line 56
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->c:Z

    .line 57
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->a()V

    .line 58
    return-void
.end method
