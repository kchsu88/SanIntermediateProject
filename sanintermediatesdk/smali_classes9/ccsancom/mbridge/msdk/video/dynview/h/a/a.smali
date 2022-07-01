.class public Lccsancom/mbridge/msdk/video/dynview/h/a/a;
.super Ljava/lang/Object;
.source "ChoiceOneDrawBitBg.java"


# static fields
.field private static volatile a:Lccsancom/mbridge/msdk/video/dynview/h/a/a;


# instance fields
.field private b:Lccsanandroid/view/View;

.field private c:Lccsanandroid/graphics/Bitmap;

.field private d:Lccsanandroid/graphics/Bitmap;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static a()Lccsancom/mbridge/msdk/video/dynview/h/a/a;
    .locals 2

    .line 26
    sget-object v0, Lccsancom/mbridge/msdk/video/dynview/h/a/a;->a:Lccsancom/mbridge/msdk/video/dynview/h/a/a;

    if-nez v0, :cond_1

    .line 27
    const-class v0, Lccsancom/mbridge/msdk/video/dynview/h/a/a;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/video/dynview/h/a/a;->a:Lccsancom/mbridge/msdk/video/dynview/h/a/a;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lccsancom/mbridge/msdk/video/dynview/h/a/a;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/video/dynview/h/a/a;-><init>()V

    sput-object v1, Lccsancom/mbridge/msdk/video/dynview/h/a/a;->a:Lccsancom/mbridge/msdk/video/dynview/h/a/a;

    .line 31
    :cond_0
    sget-object v1, Lccsancom/mbridge/msdk/video/dynview/h/a/a;->a:Lccsancom/mbridge/msdk/video/dynview/h/a/a;

    monitor-exit v0

    return-object v1

    .line 32
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 34
    :cond_1
    sget-object v0, Lccsancom/mbridge/msdk/video/dynview/h/a/a;->a:Lccsancom/mbridge/msdk/video/dynview/h/a/a;

    return-object v0
.end method

.method private declared-synchronized a(IFFLccsanandroid/graphics/Bitmap;Lccsanandroid/graphics/Bitmap;)V
    .locals 1

    monitor-enter p0

    .line 89
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/dynview/f/a;->a()Lccsancom/mbridge/msdk/video/dynview/f/a$a;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/dynview/f/a$a;->a(I)Lccsancom/mbridge/msdk/video/dynview/f/a$b;

    move-result-object p1

    .line 91
    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/video/dynview/f/a$b;->a(F)Lccsancom/mbridge/msdk/video/dynview/f/a$b;

    move-result-object p1

    .line 92
    invoke-interface {p1, p3}, Lccsancom/mbridge/msdk/video/dynview/f/a$b;->b(F)Lccsancom/mbridge/msdk/video/dynview/f/a$b;

    move-result-object p1

    .line 93
    invoke-interface {p1, p4}, Lccsancom/mbridge/msdk/video/dynview/f/a$b;->a(Lccsanandroid/graphics/Bitmap;)Lccsancom/mbridge/msdk/video/dynview/f/a$b;

    move-result-object p1

    .line 94
    invoke-interface {p1, p5}, Lccsancom/mbridge/msdk/video/dynview/f/a$b;->b(Lccsanandroid/graphics/Bitmap;)Lccsancom/mbridge/msdk/video/dynview/f/a$b;

    move-result-object p1

    .line 95
    invoke-interface {p1}, Lccsancom/mbridge/msdk/video/dynview/f/a$b;->a()Lccsancom/mbridge/msdk/video/dynview/f/a;

    move-result-object p1

    .line 97
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/h/a/a;->b:Lccsanandroid/view/View;

    invoke-virtual {p2, p1}, Lccsanandroid/view/View;->setBackground(Lccsanandroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a(Ljava/util/Map;Lccsancom/mbridge/msdk/video/dynview/b;Lccsanandroid/view/View;)V
    .locals 6

    .line 49
    iput-object p3, p0, Lccsancom/mbridge/msdk/video/dynview/h/a/a;->b:Lccsanandroid/view/View;

    .line 50
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/dynview/b;->e()I

    move-result v1

    .line 51
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/dynview/b;->d()F

    move-result v2

    .line 52
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/dynview/b;->c()F

    move-result v3

    .line 53
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p3

    const/4 v0, 0x1

    if-le p3, v0, :cond_1

    .line 54
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/dynview/b;->g()Ljava/util/List;

    move-result-object p2

    .line 55
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, v0, :cond_1

    .line 57
    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsancom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 58
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsancom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lccsanandroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 59
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsancom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/graphics/Bitmap;

    .line 60
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lccsanandroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 61
    invoke-static {}, Lccsancom/mbridge/msdk/video/dynview/h/a;->a()Lccsancom/mbridge/msdk/video/dynview/h/a;

    move-result-object v5

    invoke-virtual {v5, v4, p3}, Lccsancom/mbridge/msdk/video/dynview/h/a;->a(Lccsanandroid/graphics/Bitmap;I)Lccsanandroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lccsancom/mbridge/msdk/video/dynview/h/a/a;->c:Lccsanandroid/graphics/Bitmap;

    .line 64
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lccsancom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 65
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lccsancom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lccsanandroid/graphics/Bitmap;

    if-eqz p3, :cond_1

    .line 66
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lccsancom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/graphics/Bitmap;

    .line 67
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_1

    .line 68
    invoke-static {}, Lccsancom/mbridge/msdk/video/dynview/h/a;->a()Lccsancom/mbridge/msdk/video/dynview/h/a;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lccsancom/mbridge/msdk/video/dynview/h/a;->a(Lccsanandroid/graphics/Bitmap;I)Lccsanandroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/h/a/a;->d:Lccsanandroid/graphics/Bitmap;

    .line 73
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/h/a/a;->c:Lccsanandroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/h/a/a;->d:Lccsanandroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 74
    iget-object v4, p0, Lccsancom/mbridge/msdk/video/dynview/h/a/a;->c:Lccsanandroid/graphics/Bitmap;

    iget-object v5, p0, Lccsancom/mbridge/msdk/video/dynview/h/a/a;->d:Lccsanandroid/graphics/Bitmap;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/video/dynview/h/a/a;->a(IFFLccsanandroid/graphics/Bitmap;Lccsanandroid/graphics/Bitmap;)V

    .line 76
    :cond_2
    return-void
.end method

.method public final b()V
    .locals 2

    .line 105
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/h/a/a;->b:Lccsanandroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 106
    iput-object v1, p0, Lccsancom/mbridge/msdk/video/dynview/h/a/a;->b:Lccsanandroid/view/View;

    .line 108
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/h/a/a;->c:Lccsanandroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsanandroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/h/a/a;->c:Lccsanandroid/graphics/Bitmap;

    invoke-virtual {v0}, Lccsanandroid/graphics/Bitmap;->recycle()V

    .line 110
    iput-object v1, p0, Lccsancom/mbridge/msdk/video/dynview/h/a/a;->c:Lccsanandroid/graphics/Bitmap;

    .line 113
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/h/a/a;->d:Lccsanandroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lccsanandroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 114
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/h/a/a;->d:Lccsanandroid/graphics/Bitmap;

    invoke-virtual {v0}, Lccsanandroid/graphics/Bitmap;->recycle()V

    .line 115
    iput-object v1, p0, Lccsancom/mbridge/msdk/video/dynview/h/a/a;->d:Lccsanandroid/graphics/Bitmap;

    .line 117
    :cond_2
    return-void
.end method
