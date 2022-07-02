.class public final Lccsancom/mbridge/msdk/video/dynview/i/a;
.super Ljava/lang/Object;
.source "DataEnergizeWrapper.java"


# instance fields
.field private a:Lccsancom/mbridge/msdk/video/dynview/h/b/b;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsanandroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 2

    .line 280
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, p1, v1}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private a()Lccsanandroid/graphics/Bitmap;
    .locals 3

    .line 288
    nop

    .line 290
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lccsanandroid/graphics/Bitmap$Config;->ARGB_4444:Lccsanandroid/graphics/Bitmap$Config;

    const/16 v2, 0x64

    invoke-static {v2, v2, v1}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    .line 291
    const-string v1, "#FF0000"

    invoke-static {v1}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    goto :goto_0

    .line 292
    :catch_0
    move-exception v1

    .line 293
    sget-boolean v2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 294
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 297
    :cond_0
    :goto_0
    return-object v0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/dynview/i/a;Lccsancom/mbridge/msdk/video/dynview/b;Lccsanandroid/view/View;)V
    .locals 2

    .line 43
    nop

    .line 1274
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/i/a;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1275
    new-instance v0, Lccsancom/mbridge/msdk/video/dynview/g/b;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/video/dynview/g/b;-><init>()V

    iget-object p0, p0, Lccsancom/mbridge/msdk/video/dynview/i/a;->b:Ljava/util/Map;

    .line 2026
    if-eqz p2, :cond_0

    .line 2027
    invoke-static {}, Lccsancom/mbridge/msdk/video/dynview/h/a/a;->a()Lccsancom/mbridge/msdk/video/dynview/h/a/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lccsancom/mbridge/msdk/video/dynview/h/a/a;->a(Ljava/util/Map;Lccsancom/mbridge/msdk/video/dynview/b;Lccsanandroid/view/View;)V

    .line 43
    :cond_0
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/dynview/i/a;Ljava/util/Map;)V
    .locals 2

    .line 43
    nop

    .line 1265
    if-eqz p1, :cond_0

    const-string v0, "choice_one_callback"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1266
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lccsancom/mbridge/msdk/video/dynview/d/a;

    if-eqz v1, :cond_0

    .line 1267
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/video/dynview/d/a;

    invoke-interface {p1}, Lccsancom/mbridge/msdk/video/dynview/d/a;->a()V

    .line 1268
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/dynview/i/a;->b()V

    .line 43
    :cond_0
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/dynview/i/a;Ljava/util/Map;Ljava/util/List;I)V
    .locals 3

    .line 43
    nop

    .line 1256
    if-eqz p1, :cond_0

    const-string v0, "choice_one_callback"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1257
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lccsancom/mbridge/msdk/video/dynview/d/a;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1258
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/video/dynview/d/a;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/video/dynview/d/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 1259
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/dynview/i/a;->b()V

    .line 43
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Lccsanandroid/widget/ImageView;)V
    .locals 2

    .line 219
    invoke-virtual {p2}, Lccsanandroid/widget/ImageView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/c/b;

    move-result-object v0

    new-instance v1, Lccsancom/mbridge/msdk/video/dynview/i/a$5;

    invoke-direct {v1, p0, p2}, Lccsancom/mbridge/msdk/video/dynview/i/a$5;-><init>(Lccsancom/mbridge/msdk/video/dynview/i/a;Lccsanandroid/widget/ImageView;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/c/c;)V

    .line 232
    return-void
.end method

.method private a(Ljava/lang/String;Lccsanandroid/widget/ImageView;Lccsancom/mbridge/msdk/video/dynview/b;Lccsanandroid/view/View;)V
    .locals 8

    .line 235
    invoke-virtual {p2}, Lccsanandroid/widget/ImageView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/c/b;

    move-result-object v0

    new-instance v7, Lccsancom/mbridge/msdk/video/dynview/i/a$6;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lccsancom/mbridge/msdk/video/dynview/i/a$6;-><init>(Lccsancom/mbridge/msdk/video/dynview/i/a;Lccsanandroid/widget/ImageView;Ljava/lang/String;Lccsancom/mbridge/msdk/video/dynview/b;Lccsanandroid/view/View;)V

    invoke-virtual {v0, p1, v7}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/c/c;)V

    .line 253
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/dynview/i/a;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/video/dynview/i/a;->c:Z

    return p0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/dynview/i/a;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/dynview/i/a;->c:Z

    return p1
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/video/dynview/i/a;)Ljava/util/Map;
    .locals 0

    .line 43
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/dynview/i/a;->b:Ljava/util/Map;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 301
    invoke-static {}, Lccsancom/mbridge/msdk/video/dynview/h/a/a;->a()Lccsancom/mbridge/msdk/video/dynview/h/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/dynview/h/a/a;->b()V

    .line 302
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/i/a;->a:Lccsancom/mbridge/msdk/video/dynview/h/b/b;

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/dynview/h/b/b;->b()V

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/i/a;->a:Lccsancom/mbridge/msdk/video/dynview/h/b/b;

    .line 306
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/i/a;->b:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 307
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 309
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/i/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 311
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 313
    if-eqz v1, :cond_1

    .line 314
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/graphics/Bitmap;

    invoke-virtual {v2}, Lccsanandroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 315
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/graphics/Bitmap;

    invoke-virtual {v1}, Lccsanandroid/graphics/Bitmap;->recycle()V

    .line 318
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 322
    :cond_2
    goto :goto_1

    .line 320
    :catch_0
    move-exception v0

    .line 321
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 324
    :cond_3
    :goto_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/i/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 326
    :cond_4
    return-void
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/video/dynview/i/a;)Lccsanandroid/graphics/Bitmap;
    .locals 0

    .line 43
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/dynview/i/a;->a()Lccsanandroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lccsancom/mbridge/msdk/video/dynview/b;Lccsanandroid/view/View;Ljava/util/Map;Lccsancom/mbridge/msdk/video/dynview/d/b;)V
    .locals 10

    .line 50
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/i/a;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/i/a;->b:Ljava/util/Map;

    .line 53
    :cond_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/dynview/b;->g()Ljava/util/List;

    move-result-object v0

    .line 54
    invoke-virtual {p2}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    .line 55
    if-nez v1, :cond_1

    .line 56
    sget-object p1, Lccsancom/mbridge/msdk/video/dynview/c/a;->b:Lccsancom/mbridge/msdk/video/dynview/c/a;

    invoke-interface {p4, p1}, Lccsancom/mbridge/msdk/video/dynview/d/b;->a(Lccsancom/mbridge/msdk/video/dynview/c/a;)V

    .line 57
    return-void

    .line 59
    :cond_1
    nop

    .line 60
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v4, :cond_2

    .line 61
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 62
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    goto :goto_0

    .line 64
    :cond_2
    move-object v5, v3

    :goto_0
    if-nez v3, :cond_3

    if-eqz p4, :cond_3

    .line 65
    sget-object p1, Lccsancom/mbridge/msdk/video/dynview/c/a;->d:Lccsancom/mbridge/msdk/video/dynview/c/a;

    invoke-interface {p4, p1}, Lccsancom/mbridge/msdk/video/dynview/d/b;->a(Lccsancom/mbridge/msdk/video/dynview/c/a;)V

    .line 66
    return-void

    .line 68
    :cond_3
    if-nez v5, :cond_4

    if-eqz p4, :cond_4

    .line 69
    sget-object p1, Lccsancom/mbridge/msdk/video/dynview/c/a;->d:Lccsancom/mbridge/msdk/video/dynview/c/a;

    invoke-interface {p4, p1}, Lccsancom/mbridge/msdk/video/dynview/d/b;->a(Lccsancom/mbridge/msdk/video/dynview/c/a;)V

    .line 70
    return-void

    .line 73
    :cond_4
    const-string v6, "mbridge_top_item_rl"

    invoke-direct {p0, v6}, Lccsancom/mbridge/msdk/video/dynview/i/a;->a(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v6

    check-cast v6, Lccsanandroid/widget/RelativeLayout;

    .line 74
    if-eqz v6, :cond_5

    .line 75
    new-instance v7, Lccsancom/mbridge/msdk/video/dynview/i/a$1;

    invoke-direct {v7, p0, p3, v0}, Lccsancom/mbridge/msdk/video/dynview/i/a$1;-><init>(Lccsancom/mbridge/msdk/video/dynview/i/a;Ljava/util/Map;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Lccsanandroid/widget/RelativeLayout;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 87
    :cond_5
    const-string v6, "mbridge_top_iv"

    invoke-direct {p0, v6}, Lccsancom/mbridge/msdk/video/dynview/i/a;->a(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v6

    check-cast v6, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;

    .line 88
    if-eqz v6, :cond_6

    .line 89
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v6, p1, p2}, Lccsancom/mbridge/msdk/video/dynview/i/a;->a(Ljava/lang/String;Lccsanandroid/widget/ImageView;Lccsancom/mbridge/msdk/video/dynview/b;Lccsanandroid/view/View;)V

    .line 92
    :cond_6
    const-string v6, "mbridge_top_icon_iv"

    invoke-direct {p0, v6}, Lccsancom/mbridge/msdk/video/dynview/i/a;->a(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v6

    check-cast v6, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;

    .line 93
    if-eqz v6, :cond_7

    .line 94
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIconUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lccsancom/mbridge/msdk/video/dynview/i/a;->a(Ljava/lang/String;Lccsanandroid/widget/ImageView;)V

    .line 97
    :cond_7
    const-string v6, "mbridge_top_title_tv"

    invoke-direct {p0, v6}, Lccsancom/mbridge/msdk/video/dynview/i/a;->a(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v6

    check-cast v6, Lccsanandroid/widget/TextView;

    .line 98
    if-eqz v6, :cond_9

    .line 100
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 101
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 103
    :cond_8
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 108
    :cond_9
    :goto_1
    const-string v6, "mbridge_bottom_item_rl"

    invoke-direct {p0, v6}, Lccsancom/mbridge/msdk/video/dynview/i/a;->a(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v6

    check-cast v6, Lccsanandroid/widget/RelativeLayout;

    .line 109
    if-eqz v6, :cond_a

    .line 110
    new-instance v7, Lccsancom/mbridge/msdk/video/dynview/i/a$2;

    invoke-direct {v7, p0, p3, v0}, Lccsancom/mbridge/msdk/video/dynview/i/a$2;-><init>(Lccsancom/mbridge/msdk/video/dynview/i/a;Ljava/util/Map;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Lccsanandroid/widget/RelativeLayout;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 122
    :cond_a
    const-string v0, "mbridge_bottom_iv"

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/video/dynview/i/a;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;

    .line 123
    if-eqz v0, :cond_b

    .line 124
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v0, p1, p2}, Lccsancom/mbridge/msdk/video/dynview/i/a;->a(Ljava/lang/String;Lccsanandroid/widget/ImageView;Lccsancom/mbridge/msdk/video/dynview/b;Lccsanandroid/view/View;)V

    .line 128
    :cond_b
    const-string v0, "mbridge_bottom_icon_iv"

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/video/dynview/i/a;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;

    .line 129
    if-eqz v0, :cond_c

    .line 130
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIconUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lccsancom/mbridge/msdk/video/dynview/i/a;->a(Ljava/lang/String;Lccsanandroid/widget/ImageView;)V

    .line 134
    :cond_c
    const-string v0, "mbridge_bottom_title_tv"

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/video/dynview/i/a;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/TextView;

    .line 135
    if-eqz v0, :cond_d

    .line 136
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_d
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/dynview/b;->e()I

    move-result v3

    .line 1158
    nop

    .line 1159
    const-string v5, "cltp"

    invoke-static {v0, v5}, Lccsancom/mbridge/msdk/foundation/tools/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1160
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-wide/16 v6, 0x0

    if-nez v5, :cond_e

    .line 1161
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_2

    .line 1160
    :cond_e
    move-wide v8, v6

    .line 1163
    :goto_2
    cmp-long v0, v8, v6

    if-eqz v0, :cond_10

    .line 1165
    const-string v0, "mbridge_choice_one_countdown_tv"

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/video/dynview/i/a;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;

    .line 1166
    invoke-virtual {p2}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v5, v6}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v5

    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setRadius(I)V

    .line 1167
    const-string v5, "#60000000"

    invoke-static {v5}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setBackgroundColor(I)V

    .line 1168
    const/high16 v5, 0x41300000    # 11.0f

    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setTextSize(F)V

    .line 1169
    const-string v5, "#FFFFFFFF"

    invoke-static {v5}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setTextColor(I)V

    .line 1170
    invoke-virtual {v1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v5

    const-string v6, "#60e3eaec"

    invoke-static {v6}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setStrokeData(II)V

    .line 1172
    const/4 v5, 0x2

    if-ne v3, v5, :cond_f

    .line 1173
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lccsanandroid/widget/FrameLayout$LayoutParams;

    .line 1174
    if-eqz v3, :cond_f

    .line 1175
    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->e(Lccsanandroid/content/Context;)I

    move-result v5

    .line 1176
    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v1, v6}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v6

    .line 1177
    invoke-virtual {v3, v6, v6, v5, v6}, Lccsanandroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1181
    :cond_f
    if-eqz v0, :cond_10

    .line 1182
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setVisibility(I)V

    .line 1183
    new-instance v2, Lccsancom/mbridge/msdk/video/dynview/i/a$3;

    invoke-direct {v2, p0, p3}, Lccsancom/mbridge/msdk/video/dynview/i/a$3;-><init>(Lccsancom/mbridge/msdk/video/dynview/i/a;Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 1192
    new-instance v2, Lccsancom/mbridge/msdk/video/dynview/h/b/b;

    invoke-direct {v2}, Lccsancom/mbridge/msdk/video/dynview/h/b/b;-><init>()V

    const-wide/16 v5, 0x3e8

    mul-long v8, v8, v5

    .line 1193
    invoke-virtual {v2, v8, v9}, Lccsancom/mbridge/msdk/video/dynview/h/b/b;->b(J)Lccsancom/mbridge/msdk/video/dynview/h/b/b;

    move-result-object v2

    .line 1194
    invoke-virtual {v2, v5, v6}, Lccsancom/mbridge/msdk/video/dynview/h/b/b;->a(J)Lccsancom/mbridge/msdk/video/dynview/h/b/b;

    move-result-object v2

    new-instance v3, Lccsancom/mbridge/msdk/video/dynview/i/a$4;

    invoke-direct {v3, p0, v0, p3}, Lccsancom/mbridge/msdk/video/dynview/i/a$4;-><init>(Lccsancom/mbridge/msdk/video/dynview/i/a;Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;Ljava/util/Map;)V

    .line 1195
    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/video/dynview/h/b/b;->a(Lccsancom/mbridge/msdk/video/dynview/h/b/a;)Lccsancom/mbridge/msdk/video/dynview/h/b/b;

    move-result-object p3

    iput-object p3, p0, Lccsancom/mbridge/msdk/video/dynview/i/a;->a:Lccsancom/mbridge/msdk/video/dynview/h/b/b;

    .line 1212
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/video/dynview/h/b/b;->a()V

    .line 140
    :cond_10
    invoke-virtual {p2}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lccsancom/mbridge/msdk/foundation/tools/m;->c(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "zh"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_12

    .line 141
    const-string p3, "mbridge_reward_choice_one_like_iv"

    invoke-direct {p0, p3}, Lccsancom/mbridge/msdk/video/dynview/i/a;->a(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p2

    check-cast p2, Lccsanandroid/widget/ImageView;

    .line 143
    if-eqz p1, :cond_12

    if-eqz p2, :cond_12

    .line 144
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/dynview/b;->e()I

    move-result p1

    const-string p3, "drawable"

    if-ne p1, v4, :cond_11

    .line 145
    invoke-virtual {v1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    const-string v0, "ccsan_ccsan_mbridge_choice_video_title_en_por"

    invoke-static {p1, v0, p3}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lccsanandroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 147
    :cond_11
    invoke-virtual {v1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    const-string v0, "ccsan_ccsan_mbridge_choice_video_title_en_land"

    invoke-static {p1, v0, p3}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lccsanandroid/widget/ImageView;->setImageResource(I)V

    .line 151
    :cond_12
    :goto_3
    if-eqz p4, :cond_13

    .line 152
    invoke-interface {p4}, Lccsancom/mbridge/msdk/video/dynview/d/b;->a()V

    .line 154
    :cond_13
    return-void
.end method
