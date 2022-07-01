.class public Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;
.super Ljava/lang/Object;
.source "FullViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/nativex/view/mbfullview/a$a;
    }
.end annotation


# static fields
.field private static volatile b:Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;->a:Ljava/lang/ref/WeakReference;

    .line 39
    return-void
.end method

.method private a(Z)F
    .locals 3

    .line 130
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/content/Context;

    .line 131
    nop

    .line 132
    if-eqz v1, :cond_1

    .line 133
    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->i(Lccsanandroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    .line 134
    if-eqz p1, :cond_0

    .line 135
    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->k(Lccsanandroid/content/Context;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    int-to-float p1, p1

    add-float v0, v2, p1

    goto :goto_0

    .line 134
    :cond_0
    move v0, v2

    .line 139
    :cond_1
    :goto_0
    return v0

    .line 140
    :catchall_0
    move-exception p1

    .line 141
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    return v0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;Lccsanandroid/graphics/Bitmap;I)Lccsanandroid/graphics/Bitmap;
    .locals 6

    .line 32
    nop

    .line 1221
    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result p0

    .line 1222
    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget-object v1, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    .line 1221
    invoke-static {p0, v0, v1}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object p0

    .line 1223
    new-instance v0, Lccsanandroid/graphics/Canvas;

    invoke-direct {v0, p0}, Lccsanandroid/graphics/Canvas;-><init>(Lccsanandroid/graphics/Bitmap;)V

    .line 1224
    new-instance v1, Lccsanandroid/graphics/Paint;

    invoke-direct {v1}, Lccsanandroid/graphics/Paint;-><init>()V

    .line 1225
    nop

    .line 1227
    new-instance v2, Lccsanandroid/graphics/Rect;

    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Lccsanandroid/graphics/Rect;-><init>(IIII)V

    .line 1228
    new-instance v3, Lccsanandroid/graphics/RectF;

    invoke-direct {v3, v2}, Lccsanandroid/graphics/RectF;-><init>(Lccsanandroid/graphics/Rect;)V

    .line 1229
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lccsanandroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1230
    invoke-virtual {v0, v5, v5, v5, v5}, Lccsanandroid/graphics/Canvas;->drawARGB(IIII)V

    .line 1231
    const v4, -0xbdbdbe

    invoke-virtual {v1, v4}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 1232
    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    .line 1234
    int-to-float p2, p2

    invoke-virtual {v0, v3, p2, p2, v1}, Lccsanandroid/graphics/Canvas;->drawRoundRect(Lccsanandroid/graphics/RectF;FFLccsanandroid/graphics/Paint;)V

    .line 1235
    new-instance p2, Lccsanandroid/graphics/PorterDuffXfermode;

    sget-object v3, Lccsanandroid/graphics/PorterDuff$Mode;->SRC_IN:Lccsanandroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v3}, Lccsanandroid/graphics/PorterDuffXfermode;-><init>(Lccsanandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, p2}, Lccsanandroid/graphics/Paint;->setXfermode(Lccsanandroid/graphics/Xfermode;)Lccsanandroid/graphics/Xfermode;

    .line 1236
    invoke-virtual {v0, p1, v2, v2, v1}, Lccsanandroid/graphics/Canvas;->drawBitmap(Lccsanandroid/graphics/Bitmap;Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Paint;)V

    .line 1237
    nop

    .line 32
    return-object p0
.end method

.method public static a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;
    .locals 2

    .line 42
    sget-object v0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;->b:Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;

    if-nez v0, :cond_1

    .line 43
    const-class v0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;->b:Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;-><init>(Lccsanandroid/content/Context;)V

    sput-object v1, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;->b:Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;

    .line 47
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 49
    :cond_1
    :goto_0
    sget-object p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;->b:Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;

    return-object p0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;Lccsanandroid/view/View;)V
    .locals 2

    .line 32
    nop

    .line 2195
    if-nez p1, :cond_0

    .line 2196
    goto :goto_0

    .line 2198
    :cond_0
    new-instance p0, Lccsanandroid/view/animation/AlphaAnimation;

    const v0, 0x3e4ccccd    # 0.2f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lccsanandroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2199
    const-wide/16 v0, 0x320

    invoke-virtual {p0, v0, v1}, Lccsanandroid/view/animation/Animation;->setDuration(J)V

    .line 2200
    new-instance v0, Lccsanandroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Lccsanandroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lccsanandroid/view/animation/Animation;->setInterpolator(Lccsanandroid/view/animation/Interpolator;)V

    .line 2201
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lccsanandroid/view/animation/Animation;->setRepeatCount(I)V

    .line 2202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccsanandroid/view/animation/Animation;->setRepeatMode(I)V

    .line 2203
    invoke-virtual {p1, p0}, Lccsanandroid/view/View;->startAnimation(Lccsanandroid/view/animation/Animation;)V

    .line 32
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;)V
    .locals 2

    .line 241
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 242
    new-instance v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 243
    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 244
    iget-object p2, p2, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->i:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {p2, p1}, Lccsanandroid/widget/RelativeLayout;->addView(Lccsanandroid/view/View;)V

    .line 246
    :cond_0
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;)V
    .locals 2

    .line 73
    sget-object v0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a$2;->a:[I

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 88
    :pswitch_0
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getMBridgeFullTvInstall()Lccsanandroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdCall()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    goto :goto_0

    .line 75
    :pswitch_1
    check-cast p3, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;

    .line 76
    if-eqz p3, :cond_1

    .line 77
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/content/Context;

    .line 78
    if-eqz p1, :cond_0

    .line 79
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/c/b;

    move-result-object p1

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a$a;

    invoke-direct {v1, p0, p3}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a$a;-><init>(Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;)V

    invoke-virtual {p1, v0, v1}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/c/c;)V

    .line 81
    :cond_0
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;->getMBridgeFullViewDisplayTitle()Lccsanandroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;->getMBridgeFullViewDisplayDscription()Lccsanandroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAppDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;->getMBridgeFullTvInstall()Lccsanandroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdCall()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/MBridgeTopFullView;->getStarLevelLayoutView()Lccsancom/mbridge/msdk/nativex/view/mbfullview/StarLevelLayoutView;

    move-result-object p1

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRating()D

    move-result-wide p2

    double-to-int p2, p2

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/StarLevelLayoutView;->setRating(I)V

    .line 94
    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;Z)V
    .locals 2

    .line 249
    nop

    .line 251
    if-eqz p1, :cond_1

    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 252
    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x1002

    :goto_0
    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->setSystemUiVisibility(I)V

    .line 254
    :cond_1
    return-void
.end method

.method public final a(ZLccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;I)V
    .locals 4

    .line 108
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/Context;

    .line 109
    if-eqz v0, :cond_3

    .line 111
    const/16 v1, 0xc

    const/high16 v2, 0x42340000    # 45.0f

    if-eqz p1, :cond_2

    .line 112
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;->a(Z)F

    move-result p1

    .line 113
    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr p1, v3

    float-to-int p1, p1

    .line 114
    new-instance v3, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v0, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v2

    invoke-direct {v3, p1, v2}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 115
    const/16 p1, 0xb

    invoke-virtual {v3, p1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 116
    invoke-virtual {v3, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 117
    const/high16 p1, 0x41200000    # 10.0f

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result p1

    iput p1, v3, Lccsanandroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 118
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Lccsanandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 119
    :goto_0
    const/high16 p3, 0x41000000    # 8.0f

    if-eqz p1, :cond_1

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->k(Lccsanandroid/content/Context;)I

    move-result p1

    invoke-static {v0, p3}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result p3

    add-int/2addr p1, p3

    goto :goto_1

    :cond_1
    invoke-static {v0, p3}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result p1

    :goto_1
    iput p1, v3, Lccsanandroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 120
    goto :goto_2

    .line 121
    :cond_2
    new-instance v3, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    const/4 p1, -0x1

    invoke-static {v0, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result p3

    invoke-direct {v3, p1, p3}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 122
    invoke-virtual {v3, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 124
    :goto_2
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getmAnimationContent()Lccsanandroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v3}, Lccsanandroid/widget/FrameLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 126
    :cond_3
    return-void
.end method

.method public final a(ZZLccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;)V
    .locals 5

    .line 147
    const-string v0, "#ff264870"

    invoke-static {v0}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 148
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getmAnimationPlayer()Lccsanandroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 149
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/content/Context;

    .line 150
    const-string v2, "drawable"

    if-nez p1, :cond_1

    .line 151
    iget-object v0, p3, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->style:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;

    sget-object v3, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;->b:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;

    if-ne v0, v3, :cond_0

    .line 152
    goto :goto_0

    .line 154
    :cond_0
    if-eqz v1, :cond_4

    .line 155
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getmAnimationContent()Lccsanandroid/widget/FrameLayout;

    move-result-object p1

    const-string p2, "mbridge_nativex_cta_por_pre"

    invoke-static {v1, p2, v2}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 156
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getmAnimationPlayer()Lccsanandroid/widget/LinearLayout;

    move-result-object p1

    invoke-static {v1, p2, v2}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lccsanandroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 160
    :cond_1
    iget-object v3, p3, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->style:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;

    sget-object v4, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;->a:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView$a;

    if-ne v3, v4, :cond_2

    .line 161
    if-eqz v1, :cond_2

    .line 162
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getmAnimationContent()Lccsanandroid/widget/FrameLayout;

    move-result-object v3

    const-string v4, "mbridge_nativex_fullview_background"

    invoke-static {v1, v4, v2}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lccsanandroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 163
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getmAnimationPlayer()Lccsanandroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 166
    :cond_2
    if-eqz p2, :cond_3

    .line 167
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getmAnimationPlayer()Lccsanandroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/widget/LinearLayout;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 169
    :cond_3
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getmAnimationPlayer()Lccsanandroid/widget/LinearLayout;

    move-result-object v0

    const-string v1, "#ff4c8fdf"

    invoke-static {v1}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 170
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getmAnimationPlayer()Lccsanandroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/widget/LinearLayout;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 172
    :goto_0
    nop

    .line 1177
    if-eqz p2, :cond_4

    .line 1178
    new-instance p2, Lccsanandroid/os/Handler;

    invoke-direct {p2}, Lccsanandroid/os/Handler;-><init>()V

    new-instance v0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a$1;

    invoke-direct {v0, p0, p3, p1}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a$1;-><init>(Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;Z)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p2, v0, v1, v2}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 174
    :cond_4
    :goto_1
    return-void
.end method
