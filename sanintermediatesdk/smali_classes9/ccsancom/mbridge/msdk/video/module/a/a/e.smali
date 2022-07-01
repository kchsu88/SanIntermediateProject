.class public Lccsancom/mbridge/msdk/video/module/a/a/e;
.super Ljava/lang/Object;
.source "DefaultImageLoaderListener.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/same/c/c;


# instance fields
.field private a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field protected b:Lccsanandroid/widget/ImageView;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lccsanandroid/widget/ImageView;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/a/a/e;->b:Lccsanandroid/widget/ImageView;

    .line 29
    return-void
.end method

.method public constructor <init>(Lccsanandroid/widget/ImageView;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/a/a/e;->b:Lccsanandroid/widget/ImageView;

    .line 32
    iput-object p2, p0, Lccsancom/mbridge/msdk/video/module/a/a/e;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 33
    iput-object p3, p0, Lccsancom/mbridge/msdk/video/module/a/a/e;->c:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 61
    const-string p2, "ImageLoaderListener"

    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/p;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/p;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/e;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v1, :cond_0

    .line 63
    const-string v0, "campaign is null"

    invoke-static {p2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void

    .line 67
    :cond_0
    new-instance v1, Lccsancom/mbridge/msdk/foundation/entity/m;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>()V

    .line 68
    const-string v2, "2000044"

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/m;->o(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/tools/m;->n(Lccsanandroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/m;->b(I)V

    .line 70
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/e;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/e;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/m;->d(Ljava/lang/String;)V

    .line 72
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/e;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/e;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 74
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/m;->m(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->p(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/db/p;->a(Lccsancom/mbridge/msdk/foundation/entity/m;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "desc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onSuccessLoad(Lccsanandroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    .line 39
    if-nez p1, :cond_0

    .line 40
    :try_start_0
    const-string p1, "ImageLoaderListener"

    const-string p2, "bitmap=null"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void

    .line 43
    :cond_0
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/a/a/e;->b:Lccsanandroid/widget/ImageView;

    if-eqz p2, :cond_1

    .line 44
    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_1

    .line 45
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/a/a/e;->b:Lccsanandroid/widget/ImageView;

    invoke-virtual {p2, p1}, Lccsanandroid/widget/ImageView;->setImageBitmap(Lccsanandroid/graphics/Bitmap;)V

    .line 46
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/a/a/e;->b:Lccsanandroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lccsanandroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_1
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_2

    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    :cond_2
    :goto_0
    return-void
.end method
