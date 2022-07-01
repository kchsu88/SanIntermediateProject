.class public Lccsancom/mbridge/msdk/mbbanner/common/c/b;
.super Ljava/lang/Object;
.source "BannerLoader.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lccsanandroid/content/Context;

.field private c:I

.field private d:Lccsancom/mbridge/msdk/mbbanner/common/a/c;

.field private e:Lccsancom/mbridge/msdk/mbbanner/common/util/a;

.field private f:Lccsancom/mbridge/msdk/mbbanner/common/b/b;

.field private g:Lccsancom/mbridge/msdk/mbbanner/common/b/d;

.field private volatile h:Z

.field private i:Ljava/util/Timer;

.field private volatile j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile k:Z

.field private volatile l:Z

.field private volatile m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/mbbanner/common/a/c;Lccsancom/mbridge/msdk/mbbanner/common/b/b;Lccsancom/mbridge/msdk/mbbanner/common/util/a;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->c:I

    .line 53
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->h:Z

    .line 54
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->i:Ljava/util/Timer;

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->j:Ljava/util/List;

    .line 57
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->k:Z

    .line 58
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->l:Z

    .line 60
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->m:Z

    .line 65
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->b:Lccsanandroid/content/Context;

    .line 66
    iput-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->d:Lccsancom/mbridge/msdk/mbbanner/common/a/c;

    .line 67
    iput-object p3, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->f:Lccsancom/mbridge/msdk/mbbanner/common/b/b;

    .line 68
    iput-object p4, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->e:Lccsancom/mbridge/msdk/mbbanner/common/util/a;

    .line 69
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 296
    nop

    .line 297
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_5

    .line 298
    const/4 v0, 0x0

    .line 300
    :try_start_0
    sget-object v2, Lccsancom/mbridge/msdk/foundation/same/b/c;->g:Lccsancom/mbridge/msdk/foundation/same/b/c;

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/same/b/e;->b(Lccsancom/mbridge/msdk/foundation/same/b/c;)Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/tools/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 302
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    nop

    :goto_0
    const-string v4, ".html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 304
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-static {p2}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/net/Uri;->getPath()Ljava/lang/String;

    .line 306
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 307
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 308
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 309
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    nop

    .line 315
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 319
    goto :goto_1

    .line 317
    :catch_0
    move-exception v1

    .line 318
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 320
    nop

    .line 322
    :goto_1
    move-object v1, v0

    goto :goto_4

    .line 313
    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_6

    .line 310
    :catch_1
    move-exception v0

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_2

    .line 313
    :catchall_1
    move-exception p1

    goto :goto_6

    .line 310
    :catch_2
    move-exception v2

    .line 311
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 314
    if-eqz v0, :cond_1

    .line 315
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 317
    :catch_3
    move-exception v0

    .line 318
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 320
    goto :goto_4

    .line 319
    :cond_1
    :goto_3
    nop

    .line 322
    :goto_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_5

    .line 327
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v3, p2, v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->a(Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_9

    .line 324
    :cond_3
    :goto_5
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v3, p2, v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->a(Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_9

    .line 314
    :goto_6
    if-eqz v0, :cond_4

    .line 315
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    .line 317
    :catch_4
    move-exception p2

    .line 318
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 319
    :cond_4
    :goto_7
    nop

    .line 320
    :goto_8
    throw p1

    .line 332
    :cond_5
    :goto_9
    return-object v1
.end method

.method private a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    if-eqz p2, :cond_7

    .line 252
    :try_start_0
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 254
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object p2

    .line 255
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 256
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 257
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOfferType()I

    move-result v3

    const/16 v4, 0x63

    if-eq v3, v4, :cond_6

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerHtml()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 258
    :cond_0
    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 259
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->b:Lccsanandroid/content/Context;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lccsancom/mbridge/msdk/foundation/tools/u;->c(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    :goto_1
    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRtinsType(I)V

    .line 261
    :cond_2
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getWtick()I

    move-result v3

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->b:Lccsanandroid/content/Context;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lccsancom/mbridge/msdk/foundation/tools/u;->c(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 266
    :cond_3
    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 267
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 269
    :cond_4
    sget v3, Lccsancom/mbridge/msdk/foundation/same/a;->u:I

    invoke-static {p1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;I)V

    goto :goto_3

    .line 263
    :cond_5
    :goto_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 275
    :catch_0
    move-exception p1

    .line 276
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 277
    :cond_7
    nop

    .line 278
    :goto_4
    return-object v0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbbanner/common/c/b;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .locals 6

    .line 43
    nop

    .line 3196
    if-nez p2, :cond_0

    .line 3197
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->e:Lccsancom/mbridge/msdk/mbbanner/common/util/a;

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->f:Lccsancom/mbridge/msdk/mbbanner/common/b/b;

    const-string v1, "campaignUnit is NULL!"

    invoke-virtual {p2, v0, v1, p1}, Lccsancom/mbridge/msdk/mbbanner/common/util/a;->a(Lccsancom/mbridge/msdk/mbbanner/common/b/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 3198
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->g:Lccsancom/mbridge/msdk/mbbanner/common/b/d;

    invoke-interface {p0, p1}, Lccsancom/mbridge/msdk/mbbanner/common/b/d;->a(Ljava/lang/String;)V

    .line 3199
    goto/16 :goto_5

    .line 3202
    :cond_0
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)Ljava/util/List;

    move-result-object v0

    .line 3203
    nop

    .line 3345
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lccsancom/mbridge/msdk/mbbanner/common/c/b$3;

    invoke-direct {v2, p0, p2}, Lccsancom/mbridge/msdk/mbbanner/common/c/b$3;-><init>(Lccsancom/mbridge/msdk/mbbanner/common/c/b;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3356
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 3204
    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_4

    .line 3210
    :cond_1
    const v1, 0xea60

    .line 4120
    new-instance v2, Lccsancom/mbridge/msdk/mbbanner/common/c/b$1;

    invoke-direct {v2, p0, p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/b$1;-><init>(Lccsancom/mbridge/msdk/mbbanner/common/c/b;Ljava/lang/String;)V

    .line 4129
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->i:Ljava/util/Timer;

    int-to-long v4, v1

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 3212
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getSessionId()Ljava/lang/String;

    move-result-object p2

    .line 4365
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->d:Lccsancom/mbridge/msdk/mbbanner/common/a/c;

    invoke-virtual {v1, p2}, Lccsancom/mbridge/msdk/mbbanner/common/a/c;->a(Ljava/lang/String;)V

    .line 3213
    nop

    .line 4387
    iget p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->c:I

    .line 4389
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 4390
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr p2, v2

    .line 4393
    :cond_2
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->d:Lccsancom/mbridge/msdk/mbbanner/common/a/c;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/mbbanner/common/a/c;->c()I

    move-result v2

    if-le p2, v2, :cond_3

    .line 4394
    const/4 p2, 0x0

    .line 4397
    :cond_3
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4398
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->d:Lccsancom/mbridge/msdk/mbbanner/common/a/c;

    invoke-virtual {v2, p2}, Lccsancom/mbridge/msdk/mbbanner/common/a/c;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4402
    :cond_4
    goto :goto_0

    .line 4400
    :catch_0
    move-exception p2

    .line 4401
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3216
    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 3217
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 3218
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_6

    .line 3219
    nop

    .line 5336
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 5337
    new-instance v3, Lccsancom/mbridge/msdk/mbbanner/common/b/e;

    invoke-direct {v3, p0, p1}, Lccsancom/mbridge/msdk/mbbanner/common/b/e;-><init>(Lccsancom/mbridge/msdk/mbbanner/common/c/b;Ljava/lang/String;)V

    .line 5338
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/g;->a()Lccsancom/mbridge/msdk/videocommon/download/g;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lccsancom/mbridge/msdk/videocommon/download/g;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/download/g$a;)V

    .line 3221
    :cond_5
    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 3222
    nop

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 3223
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setBannerUrl(Ljava/lang/String;)V

    .line 3224
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2, v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setHasMBTplMark(Z)V

    .line 3222
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3228
    :cond_6
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerHtml()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 3229
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 3230
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3232
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 3233
    nop

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 3234
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setBannerHtml(Ljava/lang/String;)V

    .line 3235
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    const-string v4, "<MBTPLMARK>"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setHasMBTplMark(Z)V

    .line 3233
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3238
    :cond_7
    goto :goto_3

    .line 3239
    :cond_8
    iput-boolean v4, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->l:Z

    .line 3240
    iput-boolean v4, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->k:Z

    .line 3244
    :cond_9
    :goto_3
    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_5

    .line 3205
    :cond_a
    :goto_4
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->e:Lccsancom/mbridge/msdk/mbbanner/common/util/a;

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->f:Lccsancom/mbridge/msdk/mbbanner/common/b/b;

    const-string v1, "Need show campaign list is NULL!"

    invoke-virtual {p2, v0, v1, p1}, Lccsancom/mbridge/msdk/mbbanner/common/util/a;->a(Lccsancom/mbridge/msdk/mbbanner/common/b/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 3206
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->g:Lccsancom/mbridge/msdk/mbbanner/common/b/d;

    invoke-interface {p0, p1}, Lccsancom/mbridge/msdk/mbbanner/common/b/d;->a(Ljava/lang/String;)V

    .line 3207
    nop

    .line 43
    :goto_5
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 72
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->m:Z

    if-nez v0, :cond_1

    .line 73
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->k:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->l:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->h:Z

    .line 75
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->m:Z

    .line 77
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->i:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 78
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->e:Lccsancom/mbridge/msdk/mbbanner/common/util/a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->f:Lccsancom/mbridge/msdk/mbbanner/common/b/b;

    invoke-virtual {v0, v1, p1}, Lccsancom/mbridge/msdk/mbbanner/common/util/a;->a(Lccsancom/mbridge/msdk/mbbanner/common/b/b;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->g:Lccsancom/mbridge/msdk/mbbanner/common/b/d;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/mbbanner/common/b/d;->a(Ljava/lang/String;)V

    .line 82
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .line 282
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 283
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 284
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 286
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->j:Ljava/util/List;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    new-instance v1, Lccsancom/mbridge/msdk/mbbanner/common/b/f;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/mbbanner/common/b/f;-><init>(Lccsancom/mbridge/msdk/mbbanner/common/c/b;Ljava/lang/String;)V

    .line 289
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->b:Lccsanandroid/content/Context;

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/c/b;

    move-result-object v2

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/c/c;)V

    .line 291
    :cond_0
    goto :goto_0

    .line 293
    :cond_1
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbbanner/common/c/b;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->h:Z

    return p0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbbanner/common/c/b;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->h:Z

    return p1
.end method

.method private b(Ljava/lang/String;)I
    .locals 2

    .line 370
    nop

    .line 372
    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->d:Lccsancom/mbridge/msdk/mbbanner/common/a/c;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbbanner/common/a/c;->b()I

    move-result v0

    .line 374
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->d:Lccsancom/mbridge/msdk/mbbanner/common/a/c;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/mbbanner/common/a/c;->c()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v0, v1, :cond_0

    .line 375
    goto :goto_0

    .line 377
    :cond_0
    move p1, v0

    .line 381
    :goto_0
    goto :goto_1

    .line 379
    :catch_0
    move-exception v0

    .line 380
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 382
    :goto_1
    return p1
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/mbbanner/common/c/b;)Lccsancom/mbridge/msdk/mbbanner/common/b/b;
    .locals 0

    .line 43
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->f:Lccsancom/mbridge/msdk/mbbanner/common/b/b;

    return-object p0
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/mbbanner/common/c/b;)Lccsancom/mbridge/msdk/mbbanner/common/util/a;
    .locals 0

    .line 43
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->e:Lccsancom/mbridge/msdk/mbbanner/common/util/a;

    return-object p0
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/mbbanner/common/c/b;)Lccsancom/mbridge/msdk/mbbanner/common/b/d;
    .locals 0

    .line 43
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->g:Lccsancom/mbridge/msdk/mbbanner/common/b/d;

    return-object p0
.end method

.method static synthetic e(Lccsancom/mbridge/msdk/mbbanner/common/c/b;)Lccsanandroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->b:Lccsanandroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 1

    .line 92
    const/4 v0, 0x1

    if-nez p4, :cond_0

    .line 93
    nop

    .line 95
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->i:Ljava/util/Timer;

    invoke-virtual {p2}, Ljava/util/Timer;->cancel()V

    .line 96
    nop

    .line 1085
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->h:Z

    .line 1086
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->e:Lccsancom/mbridge/msdk/mbbanner/common/util/a;

    iget-object p3, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->f:Lccsancom/mbridge/msdk/mbbanner/common/b/b;

    invoke-virtual {p2, p3, p1}, Lccsancom/mbridge/msdk/mbbanner/common/util/a;->b(Lccsancom/mbridge/msdk/mbbanner/common/b/b;Ljava/lang/String;)V

    .line 1087
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->g:Lccsancom/mbridge/msdk/mbbanner/common/b/d;

    invoke-interface {p2, p1}, Lccsancom/mbridge/msdk/mbbanner/common/b/d;->a(Ljava/lang/String;)V

    .line 97
    return-void

    .line 100
    :cond_0
    if-ne p2, v0, :cond_2

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->j:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 103
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->j:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_1

    .line 104
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->a(Ljava/lang/String;)V

    .line 106
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 108
    :cond_2
    const/4 p3, 0x2

    if-ne p2, p3, :cond_3

    .line 109
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->l:Z

    .line 110
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_3
    const/4 p3, 0x3

    if-ne p2, p3, :cond_4

    .line 113
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->k:Z

    .line 114
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->a(Ljava/lang/String;)V

    .line 117
    :cond_4
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/mbbanner/common/a/b;Lccsancom/mbridge/msdk/mbbanner/common/b/d;)V
    .locals 7

    .line 135
    :try_start_0
    iput-object p4, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->g:Lccsancom/mbridge/msdk/mbbanner/common/b/d;

    .line 137
    new-instance p4, Lccsancom/mbridge/msdk/mbbanner/common/c/b$2;

    invoke-direct {p4, p0}, Lccsancom/mbridge/msdk/mbbanner/common/c/b$2;-><init>(Lccsancom/mbridge/msdk/mbbanner/common/c/b;)V

    .line 159
    nop

    .line 2071
    iput-object p2, p4, Lccsancom/mbridge/msdk/foundation/same/net/f;->d:Ljava/lang/String;

    .line 160
    nop

    .line 2075
    iput-object p1, p4, Lccsancom/mbridge/msdk/foundation/same/net/f;->e:Ljava/lang/String;

    .line 161
    const/16 p1, 0x128

    .line 2079
    iput p1, p4, Lccsancom/mbridge/msdk/foundation/same/net/f;->f:I

    .line 163
    new-instance p1, Lccsancom/mbridge/msdk/mbbanner/common/e/a;

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->b:Lccsanandroid/content/Context;

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/mbbanner/common/e/a;-><init>(Lccsanandroid/content/Context;)V

    .line 164
    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->c:I

    .line 165
    const/4 v1, 0x0

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->b:Lccsanandroid/content/Context;

    .line 166
    nop

    .line 2361
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->d:Lccsancom/mbridge/msdk/mbbanner/common/a/c;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbbanner/common/a/c;->a()Ljava/lang/String;

    move-result-object v4

    .line 166
    iget v5, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->c:I

    .line 165
    move-object v3, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lccsancom/mbridge/msdk/mbbanner/common/a/d;->a(ZLccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILccsancom/mbridge/msdk/mbbanner/common/a/b;)Lccsancom/mbridge/msdk/foundation/same/net/h/d;

    move-result-object v0

    .line 168
    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/tools/u;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    const-string v2, "j"

    invoke-virtual {v0, v2, v1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_0
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/mbbanner/common/a/b;->c()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 176
    invoke-virtual {p4, p3}, Lccsancom/mbridge/msdk/mbbanner/common/f/a;->a(Ljava/lang/String;)V

    .line 177
    const/4 v1, 0x1

    goto :goto_0

    .line 179
    :cond_1
    const/4 v1, 0x0

    .line 181
    :goto_0
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->e:Lccsancom/mbridge/msdk/mbbanner/common/util/a;

    invoke-virtual {v3, v1}, Lccsancom/mbridge/msdk/mbbanner/common/util/a;->a(Z)V

    .line 182
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_2

    .line 183
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v1

    invoke-virtual {v1, p3}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v2, p3, v0, p4}, Lccsancom/mbridge/msdk/mbbanner/common/e/a;->b(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/e;)V

    goto :goto_1

    .line 185
    :cond_2
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v1

    invoke-virtual {v1, p3}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v2, p3, v0, p4}, Lccsancom/mbridge/msdk/mbbanner/common/e/a;->a(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_1
    goto :goto_2

    .line 187
    :catch_0
    move-exception p1

    .line 188
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    iget-object p3, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->e:Lccsancom/mbridge/msdk/mbbanner/common/util/a;

    iget-object p4, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->f:Lccsancom/mbridge/msdk/mbbanner/common/b/b;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p4, p1, p2}, Lccsancom/mbridge/msdk/mbbanner/common/util/a;->a(Lccsancom/mbridge/msdk/mbbanner/common/b/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->g:Lccsancom/mbridge/msdk/mbbanner/common/b/d;

    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/mbbanner/common/b/d;->a(Ljava/lang/String;)V

    .line 192
    :goto_2
    return-void
.end method
