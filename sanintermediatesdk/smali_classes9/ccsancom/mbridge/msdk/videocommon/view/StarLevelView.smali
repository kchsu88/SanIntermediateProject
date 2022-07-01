.class public Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;
.super Lccsanandroid/widget/LinearLayout;
.source "StarLevelView.java"


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 20
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;->setOrientation(I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 15
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;->setOrientation(I)V

    .line 16
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 26
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;->setOrientation(I)V

    .line 27
    return-void
.end method


# virtual methods
.method public initScore(D)V
    .locals 9

    .line 30
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    double-to-int v2, p1

    const-string v3, "mbridge_video_common_full_star"

    const-string v4, "drawable"

    const/4 v5, -0x2

    const/4 v6, 0x5

    if-ge v1, v2, :cond_1

    .line 31
    new-instance v2, Lccsanandroid/widget/ImageView;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;->getContext()Lccsanandroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;)V

    .line 32
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;->getContext()Lccsanandroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3, v4}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsanandroid/widget/ImageView;->setImageResource(I)V

    .line 33
    new-instance v3, Lccsanandroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 34
    if-nez v1, :cond_0

    goto :goto_1

    .line 37
    :cond_0
    invoke-virtual {v3, v6, v0, v6, v0}, Lccsanandroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 40
    :goto_1
    invoke-virtual {p0, v2, v3}, Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    :cond_1
    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    mul-double p1, p1, v7

    sub-double/2addr v1, p1

    double-to-int p1, v1

    .line 44
    if-gtz p1, :cond_2

    .line 45
    return-void

    .line 47
    :cond_2
    const/4 p2, 0x1

    if-le p1, p2, :cond_4

    const/16 v1, 0xa

    if-ge p1, v1, :cond_4

    .line 48
    if-lez p1, :cond_3

    if-ge p1, v6, :cond_3

    .line 49
    new-instance v1, Lccsanandroid/widget/ImageView;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;)V

    .line 50
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lccsanandroid/widget/ImageView;->setImageResource(I)V

    .line 51
    new-instance v2, Lccsanandroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52
    invoke-virtual {v2, v6, v0, v6, v0}, Lccsanandroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 53
    invoke-virtual {p0, v1, v2}, Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 54
    goto :goto_2

    .line 55
    :cond_3
    new-instance v1, Lccsanandroid/widget/ImageView;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;)V

    .line 56
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lccsanandroid/widget/ImageView;->setImageResource(I)V

    .line 57
    new-instance v2, Lccsanandroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 58
    invoke-virtual {v2, v6, v0, v6, v0}, Lccsanandroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 59
    invoke-virtual {p0, v1, v2}, Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 63
    :cond_4
    :goto_2
    div-int/lit8 v1, p1, 0xa

    .line 64
    if-lt v1, p2, :cond_7

    .line 65
    mul-int/lit8 p2, v1, 0xa

    rem-int/2addr p1, p2

    .line 66
    const-string p2, "mbridge_video_common_full_while_star"

    if-lez p1, :cond_5

    if-ge p1, v6, :cond_5

    .line 67
    new-instance p1, Lccsanandroid/widget/ImageView;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;)V

    .line 69
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2, v4}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lccsanandroid/widget/ImageView;->setImageResource(I)V

    .line 70
    new-instance v2, Lccsanandroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 71
    invoke-virtual {v2, v6, v0, v6, v0}, Lccsanandroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 72
    invoke-virtual {p0, p1, v2}, Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 73
    :cond_5
    if-lt p1, v6, :cond_6

    const/16 v2, 0x9

    if-gt p1, v2, :cond_6

    .line 74
    new-instance p1, Lccsanandroid/widget/ImageView;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;)V

    .line 76
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "mbridge_video_common_half_star"

    invoke-static {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lccsanandroid/widget/ImageView;->setImageResource(I)V

    .line 77
    new-instance v2, Lccsanandroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 78
    invoke-virtual {v2, v6, v0, v6, v0}, Lccsanandroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 79
    invoke-virtual {p0, p1, v2}, Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 73
    :cond_6
    :goto_3
    nop

    .line 82
    :goto_4
    const/4 p1, 0x0

    :goto_5
    if-ge p1, v1, :cond_7

    .line 83
    new-instance v2, Lccsanandroid/widget/ImageView;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;)V

    .line 85
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3, p2, v4}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsanandroid/widget/ImageView;->setImageResource(I)V

    .line 86
    new-instance v3, Lccsanandroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 87
    invoke-virtual {v3, v6, v0, v6, v0}, Lccsanandroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 88
    invoke-virtual {p0, v2, v3}, Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 82
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 94
    :cond_7
    return-void
.end method
