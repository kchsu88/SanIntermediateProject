.class public Lccsancom/mbridge/msdk/video/module/a/a/k;
.super Lccsancom/mbridge/msdk/video/module/a/a/f;
.source "StatisticsOnNotifyListener.java"


# instance fields
.field protected a:Z

.field protected b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field protected c:Z

.field protected d:Lccsancom/mbridge/msdk/videocommon/download/a;

.field protected e:Lccsancom/mbridge/msdk/videocommon/b/c;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Lccsancom/mbridge/msdk/video/module/a/a;

.field protected i:I

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/videocommon/download/a;Lccsancom/mbridge/msdk/videocommon/b/c;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/video/module/a/a;IZ)V
    .locals 3

    .line 53
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/a/a/f;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->c:Z

    .line 45
    new-instance v1, Lccsancom/mbridge/msdk/video/module/a/a/f;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/video/module/a/a/f;-><init>()V

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->h:Lccsancom/mbridge/msdk/video/module/a/a;

    .line 47
    const/4 v1, 0x1

    iput v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->i:I

    .line 49
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->j:Z

    .line 50
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->k:Z

    .line 51
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->l:Z

    .line 54
    if-nez p8, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p5}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    if-eqz p6, :cond_0

    .line 55
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 56
    iput-object p4, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->g:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->f:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->d:Lccsancom/mbridge/msdk/videocommon/download/a;

    .line 59
    iput-object p3, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->e:Lccsancom/mbridge/msdk/videocommon/b/c;

    .line 60
    iput-object p6, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->h:Lccsancom/mbridge/msdk/video/module/a/a;

    .line 61
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->a:Z

    .line 62
    iput p7, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->i:I

    .line 63
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->c:Z

    goto :goto_0

    .line 64
    :cond_0
    if-eqz p8, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p5}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result p8

    if-eqz p8, :cond_1

    if-eqz p6, :cond_1

    .line 65
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 66
    iput-object p4, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->g:Ljava/lang/String;

    .line 67
    iput-object p5, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->f:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->d:Lccsancom/mbridge/msdk/videocommon/download/a;

    .line 69
    iput-object p3, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->e:Lccsancom/mbridge/msdk/videocommon/b/c;

    .line 70
    iput-object p6, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->h:Lccsancom/mbridge/msdk/video/module/a/a;

    .line 71
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->a:Z

    .line 72
    iput p7, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->i:I

    .line 73
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->c:Z

    .line 75
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 95
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    .line 96
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/m;->n(Lccsanandroid/content/Context;)I

    move-result v7

    .line 97
    new-instance v0, Lccsancom/mbridge/msdk/foundation/entity/m;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 98
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->f:Ljava/lang/String;

    const-string v2, "2000061"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lccsancom/mbridge/msdk/foundation/entity/m;->a:I

    goto :goto_0

    :cond_0
    sget v1, Lccsancom/mbridge/msdk/foundation/entity/m;->b:I

    :goto_0
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/m;->a(I)V

    .line 100
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/same/report/b;->b(Lccsancom/mbridge/msdk/foundation/entity/m;Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 102
    :cond_1
    return-void
.end method

.method public final a(I)V
    .locals 3

    .line 84
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    .line 85
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 88
    :pswitch_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->i:I

    invoke-static {v0, v1, p1, v2}, Lccsancom/mbridge/msdk/video/module/b/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;II)V

    .line 92
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(ILjava/lang/Object;)V
    .locals 1

    .line 79
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/module/a/a/f;->a(ILjava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->h:Lccsancom/mbridge/msdk/video/module/a/a;

    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 81
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 10

    .line 105
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/m;->n(Lccsanandroid/content/Context;)I

    move-result v7

    .line 107
    new-instance v0, Lccsancom/mbridge/msdk/foundation/entity/m;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 108
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->f:Ljava/lang/String;

    const-string v2, "2000062"

    move-object v1, v0

    move v8, p1

    move-object v9, p2

    invoke-direct/range {v1 .. v9}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 109
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->f:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lccsancom/mbridge/msdk/foundation/same/report/b;->c(Lccsancom/mbridge/msdk/foundation/entity/m;Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 111
    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 8

    .line 316
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->a:Z

    if-eqz v0, :cond_2

    .line 317
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/p;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/p;

    move-result-object v0

    .line 318
    const/4 v1, 0x0

    .line 319
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 320
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/m;->n(Lccsanandroid/content/Context;)I

    move-result v4

    .line 321
    new-instance v1, Lccsancom/mbridge/msdk/foundation/entity/m;

    const-string v3, "2000021"

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 322
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lccsancom/mbridge/msdk/foundation/tools/m;->a(Lccsanandroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    goto :goto_0

    .line 325
    :cond_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 326
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/m;->n(Lccsanandroid/content/Context;)I

    move-result v4

    .line 327
    new-instance v1, Lccsancom/mbridge/msdk/foundation/entity/m;

    const-string v3, "2000021"

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 328
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lccsancom/mbridge/msdk/foundation/tools/m;->a(Lccsanandroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 332
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 333
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/m;->e(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->p(Ljava/lang/String;)V

    .line 335
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 336
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 337
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->f:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->m(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/db/p;->a(Lccsancom/mbridge/msdk/foundation/entity/m;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :cond_2
    goto :goto_1

    .line 341
    :catch_0
    move-exception p1

    .line 342
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 344
    :goto_1
    return-void
.end method

.method public final b()V
    .locals 4

    .line 143
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->f:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    .line 144
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/i;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/i;

    move-result-object v0

    .line 146
    new-instance v1, Lccsancom/mbridge/msdk/foundation/entity/e;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/foundation/entity/e;-><init>()V

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/e;->a(J)V

    .line 148
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/e;->b(Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/e;->a(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/db/i;->a(Lccsancom/mbridge/msdk/foundation/entity/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_0
    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotifyListener"

    invoke-static {v2, v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    :goto_0
    return-void
.end method

.method public final b(I)V
    .locals 4

    .line 114
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_5

    .line 115
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p1, v1, :cond_0

    if-ne p1, v2, :cond_5

    .line 117
    :cond_0
    const-string v1, "endscreen_type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    const-string v1, "endscreen_type=1"

    const-string v3, "endscreen_type=2"

    if-ne p1, v2, :cond_1

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 120
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 123
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 124
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 128
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    const-string v0, "&endscreen_type="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 132
    :cond_3
    const-string v0, "?endscreen_type="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_4
    :goto_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNoticeUrl(Ljava/lang/String;)V

    .line 139
    :cond_5
    return-void
.end method

.method public final c()V
    .locals 3

    .line 159
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->f:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/videocommon/a/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    .line 163
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/f/b;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lccsancom/mbridge/msdk/video/module/a/a/k$1;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/video/module/a/a/k$1;-><init>(Lccsancom/mbridge/msdk/video/module/a/a/k;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotifyListener"

    invoke-static {v2, v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    :goto_0
    return-void
.end method

.method protected final d()V
    .locals 2

    .line 187
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->d:Lccsancom/mbridge/msdk/videocommon/download/a;

    if-eqz v0, :cond_0

    .line 188
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/videocommon/download/a;->b(Z)V

    .line 190
    :cond_0
    return-void
.end method

.method protected final e()V
    .locals 10

    .line 195
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/a/d;->a:Ljava/util/Map;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->k:Z

    .line 198
    return-void

    .line 202
    :cond_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/a/d;->a:Ljava/util/Map;

    if-eqz v0, :cond_3

    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/a/d;->a:Ljava/util/Map;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 204
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->k:Z

    if-nez v0, :cond_3

    .line 207
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/a/d;->a:Ljava/util/Map;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const/4 v8, 0x0

    .line 209
    const/4 v9, 0x1

    .line 211
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v0

    .line 212
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getSpareOfferFlag()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "&tmorl="

    if-ne v2, v1, :cond_1

    .line 213
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&to=1&cbt="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCbt()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->i:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    .line 215
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&to=0&cbt="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCbt()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->i:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 217
    :goto_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->c:Z

    if-nez v0, :cond_2

    .line 218
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v6, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->f:Ljava/lang/String;

    invoke-static/range {v4 .. v9}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 219
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/a/a/k;->c()V

    .line 221
    :cond_2
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->k:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 225
    :cond_3
    goto :goto_1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 226
    :goto_1
    return-void
.end method

.method protected final f()V
    .locals 7

    .line 230
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->a:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->j:Z

    .line 232
    const/4 v5, 0x0

    .line 233
    const/4 v6, 0x1

    .line 234
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v1

    .line 235
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getSpareOfferFlag()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "&tmorl="

    if-ne v2, v0, :cond_0

    .line 236
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&to=1&cbt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCbt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&to=0&cbt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCbt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 240
    :goto_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->f:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 241
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/video/module/b/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 242
    nop

    .line 1269
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lccsancom/mbridge/msdk/video/module/a/a/k$2;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/video/module/a/a/k$2;-><init>(Lccsancom/mbridge/msdk/video/module/a/a/k;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1279
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 243
    nop

    .line 1283
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->a:Z

    if-eqz v0, :cond_1

    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/a/d;->d:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1284
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1285
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->f:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    const-string v2, "reward"

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/same/a/d;->b(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    :cond_1
    goto :goto_1

    .line 245
    :catchall_0
    move-exception v0

    .line 246
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotifyListener"

    invoke-static {v2, v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    :goto_1
    return-void
.end method

.method protected final g()V
    .locals 8

    .line 252
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    .line 253
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->l:Z

    .line 254
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->c:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPv_urls()Ljava/util/List;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 257
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 258
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->f:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    goto :goto_0

    .line 265
    :cond_0
    goto :goto_1

    .line 263
    :catchall_0
    move-exception v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotifyListener"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :goto_1
    return-void
.end method

.method protected final h()V
    .locals 4

    .line 291
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->d:Lccsancom/mbridge/msdk/videocommon/download/a;

    if-eqz v0, :cond_1

    .line 292
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/download/a;->g()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->d:Lccsancom/mbridge/msdk/videocommon/download/a;

    .line 293
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/download/a;->g()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->d:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/download/a;->g()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/db/o;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/o;

    move-result-object v1

    .line 296
    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/foundation/db/o;->b(Ljava/lang/String;)V

    .line 298
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->d:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/download/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/k;->d:Lccsancom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/download/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 300
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 303
    if-eqz v0, :cond_1

    .line 304
    const-string v0, "NotifyListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEL File :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :cond_1
    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 312
    :goto_0
    return-void
.end method
