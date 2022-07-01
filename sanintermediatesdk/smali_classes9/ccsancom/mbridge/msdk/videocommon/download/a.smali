.class public final Lccsancom/mbridge/msdk/videocommon/download/a;
.super Ljava/lang/Object;
.source "CampaignDownLoadTask.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private A:Z

.field private B:I

.field private C:Ljava/io/File;

.field private D:Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;

.field private E:Lccsancom/mbridge/msdk/foundation/download/OnProgressStateListener;

.field private a:Z

.field private b:I

.field private c:I

.field private d:Z

.field private volatile e:I

.field private f:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lccsancom/mbridge/msdk/videocommon/download/d;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lccsancom/mbridge/msdk/videocommon/listener/a;

.field private h:Lccsancom/mbridge/msdk/videocommon/listener/a;

.field private i:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field private j:Ljava/lang/String;

.field private k:Lccsanandroid/content/Context;

.field private l:J

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:J

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:J

.field private s:I

.field private t:Z

.field private u:Lccsancom/mbridge/msdk/foundation/db/o;

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

.field private y:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

.field private z:I


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;I)V
    .locals 18

    .line 96
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v2, 0x0

    iput-boolean v2, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->a:Z

    .line 49
    const/4 v3, 0x1

    iput v3, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->b:I

    .line 53
    iput-boolean v2, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->d:Z

    .line 55
    iput v2, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->e:I

    .line 57
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 72
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->o:J

    .line 76
    iput-boolean v2, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->q:Z

    .line 80
    const/16 v6, 0x64

    iput v6, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->s:I

    .line 81
    iput-boolean v2, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->t:Z

    .line 84
    iput-boolean v2, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->v:Z

    .line 618
    new-instance v6, Lccsancom/mbridge/msdk/videocommon/download/a$1;

    invoke-direct {v6, v1}, Lccsancom/mbridge/msdk/videocommon/download/a$1;-><init>(Lccsancom/mbridge/msdk/videocommon/download/a;)V

    iput-object v6, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->D:Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;

    .line 674
    new-instance v6, Lccsancom/mbridge/msdk/videocommon/download/a$2;

    invoke-direct {v6, v1}, Lccsancom/mbridge/msdk/videocommon/download/a$2;-><init>(Lccsancom/mbridge/msdk/videocommon/download/a;)V

    iput-object v6, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->E:Lccsancom/mbridge/msdk/foundation/download/OnProgressStateListener;

    .line 97
    if-nez p1, :cond_0

    if-nez v0, :cond_0

    .line 98
    return-void

    .line 100
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->r:J

    .line 101
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v6

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v6

    iput-object v6, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->k:Lccsanandroid/content/Context;

    .line 102
    iput-object v0, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->i:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 103
    move-object/from16 v6, p3

    iput-object v6, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->j:Ljava/lang/String;

    .line 104
    move/from16 v6, p4

    iput v6, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->b:I

    .line 105
    if-eqz v0, :cond_1

    .line 106
    invoke-virtual/range {p2 .. p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    .line 108
    :cond_1
    iget-object v0, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    .line 1710
    nop

    .line 1711
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, ""

    if-nez v6, :cond_2

    .line 1712
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1713
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1711
    :cond_2
    move-object v0, v7

    .line 1724
    :goto_0
    nop

    .line 108
    iput-object v0, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->w:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lccsancom/mbridge/msdk/foundation/same/b/c;->c:Lccsancom/mbridge/msdk/foundation/same/b/c;

    invoke-static {v6}, Lccsancom/mbridge/msdk/foundation/same/b/e;->b(Lccsancom/mbridge/msdk/foundation/same/b/c;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->n:Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->n:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->w:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->p:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->i:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " videoLocalPath:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " videoUrl: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->i:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->s:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "CampaignDownLoadTask"

    invoke-static {v6, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    nop

    .line 2185
    :try_start_0
    iget-object v0, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2186
    goto/16 :goto_4

    .line 2188
    :cond_3
    const/4 v0, 0x0

    .line 2189
    iget-object v8, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->n:Ljava/lang/String;

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 2190
    new-instance v0, Ljava/io/File;

    iget-object v8, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->n:Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2191
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_4

    .line 2192
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2196
    :cond_4
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2197
    iget-object v8, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->C:Ljava/io/File;

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_6

    .line 2198
    :cond_5
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/.nomedia"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v8, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->C:Ljava/io/File;

    .line 2199
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2200
    iget-object v0, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->C:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 2204
    :cond_6
    nop

    .line 2404
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/o;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/o;

    move-result-object v0

    .line 2406
    iget-object v8, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v8, v7}, Lccsancom/mbridge/msdk/foundation/db/o;->a(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/l;

    move-result-object v8

    .line 2407
    const/4 v9, 0x5

    if-eqz v8, :cond_d

    .line 2408
    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/entity/l;->b()J

    move-result-wide v10

    iput-wide v10, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->o:J

    .line 2409
    iget v0, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->e:I

    const/4 v10, 0x2

    if-eq v0, v10, :cond_7

    .line 2410
    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/entity/l;->d()I

    move-result v0

    iput v0, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->e:I

    .line 2412
    :cond_7
    iget v0, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->e:I

    if-ne v0, v3, :cond_8

    .line 2413
    iput v10, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->e:I

    .line 2415
    :cond_8
    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/entity/l;->c()I

    move-result v0

    int-to-long v10, v0

    iput-wide v10, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->l:J

    .line 2416
    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/entity/l;->a()J

    move-result-wide v10

    cmp-long v0, v10, v4

    if-lez v0, :cond_9

    .line 2417
    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/entity/l;->a()J

    move-result-wide v10

    iput-wide v10, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->r:J

    .line 2420
    :cond_9
    iget v0, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->e:I

    if-ne v0, v9, :cond_b

    .line 2421
    new-instance v0, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->n:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->w:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2423
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->n:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->w:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->p:Ljava/lang/String;

    goto :goto_1

    .line 2426
    :cond_a
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/videocommon/download/a;->o()V

    goto :goto_1

    .line 2428
    :cond_b
    iget v0, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->e:I

    if-eqz v0, :cond_c

    .line 2429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->n:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->w:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->p:Ljava/lang/String;

    goto :goto_2

    .line 2428
    :cond_c
    :goto_1
    goto :goto_2

    .line 2432
    :cond_d
    iget-object v8, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    iget-wide v10, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->r:J

    invoke-virtual {v0, v8, v10, v11}, Lccsancom/mbridge/msdk/foundation/db/o;->a(Ljava/lang/String;J)V

    .line 2205
    :goto_2
    iget-object v14, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    .line 3223
    invoke-static {v14}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3224
    iget-object v0, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->h:Lccsancom/mbridge/msdk/videocommon/listener/a;

    const-string v2, "VideoUrl is NULL, Please check it."

    invoke-interface {v0, v2, v7}, Lccsancom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3225
    goto/16 :goto_3

    .line 3228
    :cond_e
    iget v0, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->e:I

    if-ne v0, v3, :cond_f

    .line 3229
    const-string v0, "Run : Task is RUNNING, Will return."

    invoke-static {v6, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3230
    goto/16 :goto_3

    .line 3233
    :cond_f
    iget v0, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->e:I

    if-ne v0, v9, :cond_12

    .line 3234
    const-string v0, "Run : Video Done, Will callback."

    invoke-static {v6, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3235
    iget-object v0, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->g:Lccsancom/mbridge/msdk/videocommon/listener/a;

    if-eqz v0, :cond_10

    .line 3236
    iget-object v2, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    invoke-interface {v0, v2}, Lccsancom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;)V

    .line 3238
    :cond_10
    iget-object v0, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->h:Lccsancom/mbridge/msdk/videocommon/listener/a;

    if-eqz v0, :cond_11

    .line 3239
    iget-object v2, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    invoke-interface {v0, v2}, Lccsancom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;)V

    .line 3241
    :cond_11
    goto :goto_3

    .line 3244
    :cond_12
    iget v0, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->b:I

    const/4 v7, 0x3

    if-ne v0, v7, :cond_13

    .line 3245
    const-string v0, "Run : Dlnet is 3, Will callback."

    invoke-static {v6, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3246
    invoke-virtual {v1, v4, v5, v2}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(JZ)V

    .line 3247
    goto :goto_3

    .line 3250
    :cond_13
    iget-object v0, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->i:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getReady_rate()I

    move-result v0

    if-nez v0, :cond_15

    .line 3251
    iget-object v0, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->g:Lccsancom/mbridge/msdk/videocommon/listener/a;

    if-eqz v0, :cond_14

    .line 3252
    iget-object v2, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    invoke-interface {v0, v2}, Lccsancom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;)V

    .line 3254
    :cond_14
    iget-object v0, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->h:Lccsancom/mbridge/msdk/videocommon/listener/a;

    if-eqz v0, :cond_15

    .line 3255
    iget-object v2, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    invoke-interface {v0, v2}, Lccsancom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;)V

    .line 3259
    :cond_15
    new-instance v0, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    new-instance v13, Ljava/lang/Object;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    iget-object v15, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->w:Ljava/lang/String;

    const/16 v16, 0x64

    sget-object v17, Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;->DOWNLOAD_RESOURCE_TYPE_VIDEO:Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    move-object v12, v0

    invoke-direct/range {v12 .. v17}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILccsancom/mbridge/msdk/foundation/download/DownloadResourceType;)V

    iput-object v0, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->y:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 3260
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager;->getInstance()Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager;

    move-result-object v0

    iget-object v2, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->y:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager;->download(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;

    move-result-object v0

    const-wide/16 v4, 0x7530

    .line 3261
    invoke-virtual {v0, v4, v5}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->withReadTimeout(J)Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;

    move-result-object v0

    const-wide/16 v4, 0x4e20

    .line 3262
    invoke-virtual {v0, v4, v5}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->withConnectTimeout(J)Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;

    move-result-object v0

    sget-object v2, Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;->HIGH:Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

    .line 3263
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->withDownloadPriority(Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;

    move-result-object v0

    .line 3264
    invoke-interface {v0, v3}, Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;->withHttpRetryCounter(I)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;

    move-result-object v0

    iget-object v2, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->n:Ljava/lang/String;

    .line 3265
    invoke-interface {v0, v2}, Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;->withDirectoryPathInternal(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;

    move-result-object v0

    iget-object v2, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->D:Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;

    .line 3266
    invoke-interface {v0, v2}, Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;->withDownloadStateListener(Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;

    move-result-object v0

    iget-object v2, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->E:Lccsancom/mbridge/msdk/foundation/download/OnProgressStateListener;

    .line 3267
    invoke-interface {v0, v2}, Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;->withProgressStateListener(Lccsancom/mbridge/msdk/foundation/download/OnProgressStateListener;)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;

    move-result-object v0

    .line 3268
    invoke-interface {v0}, Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;->build()Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    move-result-object v0

    iput-object v0, v1, Lccsancom/mbridge/msdk/videocommon/download/a;->x:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2208
    :goto_3
    goto :goto_4

    .line 2206
    :catch_0
    move-exception v0

    .line 2207
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_4
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/videocommon/download/a;I)I
    .locals 0

    .line 37
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->e:I

    return p1
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/videocommon/download/a;J)J
    .locals 0

    .line 37
    iput-wide p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->o:J

    return-wide p1
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/videocommon/download/a;)Lccsancom/mbridge/msdk/foundation/db/o;
    .locals 0

    .line 37
    iget-object p0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->u:Lccsancom/mbridge/msdk/foundation/db/o;

    return-object p0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/videocommon/download/a;Lccsancom/mbridge/msdk/foundation/db/o;)Lccsancom/mbridge/msdk/foundation/db/o;
    .locals 0

    .line 37
    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->u:Lccsancom/mbridge/msdk/foundation/db/o;

    return-object p1
.end method

.method private a(ILjava/lang/String;)V
    .locals 13

    .line 551
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/p;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/p;

    move-result-object v0

    .line 553
    iget-wide v1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->r:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 554
    goto :goto_0

    .line 556
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->r:J

    sub-long v3, v1, v3

    .line 559
    :goto_0
    new-instance v1, Lccsancom/mbridge/msdk/foundation/entity/m;

    iget-object v6, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->k:Lccsanandroid/content/Context;

    iget-object v7, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->i:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    iget-wide v10, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->l:J

    iget v12, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->B:I

    move-object v5, v1

    move v8, p1

    invoke-direct/range {v5 .. v12}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;ILjava/lang/String;JI)V

    .line 560
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->i:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 561
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->i:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->e(Ljava/lang/String;)V

    .line 562
    invoke-virtual {v1, p2}, Lccsancom/mbridge/msdk/foundation/entity/m;->p(Ljava/lang/String;)V

    .line 563
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->i:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 564
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->j:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->m(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/db/p;->a(Lccsancom/mbridge/msdk/foundation/entity/m;)J

    .line 566
    return-void
.end method

.method private a(JI)V
    .locals 7

    .line 445
    iput-wide p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->o:J

    .line 447
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->s:I

    int-to-long v1, v0

    iget-wide v3, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->l:J

    mul-long v1, v1, v3

    .line 448
    const-wide/16 v3, 0x64

    mul-long v3, v3, p1

    const/4 v5, 0x1

    cmp-long v6, v3, v1

    if-ltz v6, :cond_4

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->t:Z

    if-nez v1, :cond_4

    const/4 v1, 0x4

    if-eq p3, v1, :cond_4

    .line 449
    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 450
    const/4 v0, 0x5

    if-eq p3, v0, :cond_0

    .line 451
    iput v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->e:I

    .line 452
    return-void

    .line 455
    :cond_0
    iput-boolean v5, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->t:Z

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateListener : state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " progress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CampaignDownLoadTask"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    nop

    .line 460
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/download/a;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 461
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->g:Lccsancom/mbridge/msdk/videocommon/listener/a;

    if-eqz v0, :cond_1

    .line 462
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;)V

    .line 464
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->h:Lccsancom/mbridge/msdk/videocommon/listener/a;

    if-eqz v0, :cond_4

    .line 465
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 468
    :cond_2
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->g:Lccsancom/mbridge/msdk/videocommon/listener/a;

    const-string v2, "file is not effective "

    if-eqz v1, :cond_3

    .line 469
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Lccsancom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_3
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->h:Lccsancom/mbridge/msdk/videocommon/listener/a;

    if-eqz v1, :cond_4

    .line 472
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lccsancom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->a:Z

    if-nez v0, :cond_6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_6

    .line 477
    iput-boolean v5, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->a:Z

    .line 478
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->u:Lccsancom/mbridge/msdk/foundation/db/o;

    if-nez v0, :cond_5

    .line 479
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/o;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/o;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->u:Lccsancom/mbridge/msdk/foundation/db/o;

    .line 481
    :cond_5
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->u:Lccsancom/mbridge/msdk/foundation/db/o;

    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->e:I

    invoke-virtual {v0, v1, p1, p2, v2}, Lccsancom/mbridge/msdk/foundation/db/o;->a(Ljava/lang/String;JI)J

    .line 483
    :cond_6
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_8

    .line 484
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/videocommon/download/d;

    .line 485
    if-eqz v1, :cond_7

    .line 486
    invoke-interface {v1, p1, p2, p3}, Lccsancom/mbridge/msdk/videocommon/download/d;->a(JI)V

    .line 488
    :cond_7
    goto :goto_1

    .line 491
    :cond_8
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/videocommon/download/a;ILjava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/videocommon/download/a;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/videocommon/download/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/videocommon/download/a;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->d:Z

    return p1
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/videocommon/download/a;J)J
    .locals 0

    .line 37
    iput-wide p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->l:J

    return-wide p1
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/videocommon/download/a;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 0

    .line 37
    iget-object p0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->i:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object p0
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/videocommon/download/a;I)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/videocommon/download/a;->e(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/videocommon/download/a;I)I
    .locals 0

    .line 37
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->z:I

    return p1
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/videocommon/download/a;)J
    .locals 2

    .line 37
    iget-wide v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->l:J

    return-wide v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    .line 569
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 571
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a()Lccsancom/mbridge/msdk/foundation/same/report/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/same/report/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a()Lccsancom/mbridge/msdk/foundation/same/report/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a(Ljava/lang/String;)V

    .line 573
    return-void

    .line 575
    :cond_0
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/report/d/a;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/foundation/same/report/d/a;-><init>(Lccsanandroid/content/Context;)V

    .line 576
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->j:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lccsancom/mbridge/msdk/foundation/same/report/d;->a(Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/same/net/h/d;

    move-result-object p1

    .line 577
    const/4 v1, 0x0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v2

    iget-object v2, v2, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lccsancom/mbridge/msdk/foundation/same/report/d/a;->c(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    goto :goto_0

    .line 578
    :catch_0
    move-exception p1

    .line 579
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CampaignDownLoadTask"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/videocommon/download/a;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->p:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lccsancom/mbridge/msdk/videocommon/download/a;)I
    .locals 0

    .line 37
    iget p0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->e:I

    return p0
.end method

.method private e(I)Ljava/lang/String;
    .locals 4

    .line 597
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->i:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->j:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->i:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->i:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 600
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 601
    const-string v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2000077"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    const-string v2, "unit_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    const-string v2, "rid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->i:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    const-string v2, "rid_n="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->i:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    const-string v2, "package_name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    const-string v2, "app_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    const-string v2, "video_url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->i:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    const-string v2, "process_size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->o:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    const-string v2, "file_size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->l:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    const-string v2, "ready_rate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->s:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    const-string v2, "cd_rate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    const-string v2, "cid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->i:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    const-string v2, "type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    const-string v1, "video_download_status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 598
    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method static synthetic f(Lccsancom/mbridge/msdk/videocommon/download/a;)J
    .locals 2

    .line 37
    iget-wide v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->o:J

    return-wide v0
.end method

.method static synthetic g(Lccsancom/mbridge/msdk/videocommon/download/a;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lccsancom/mbridge/msdk/videocommon/download/a;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lccsancom/mbridge/msdk/videocommon/download/a;)Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;
    .locals 0

    .line 37
    iget-object p0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->x:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    return-object p0
.end method

.method static synthetic j(Lccsancom/mbridge/msdk/videocommon/download/a;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lccsancom/mbridge/msdk/videocommon/download/a;->p()V

    return-void
.end method

.method static synthetic k(Lccsancom/mbridge/msdk/videocommon/download/a;)I
    .locals 0

    .line 37
    iget p0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->s:I

    return p0
.end method

.method static synthetic l(Lccsancom/mbridge/msdk/videocommon/download/a;)I
    .locals 0

    .line 37
    iget p0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->c:I

    return p0
.end method

.method static synthetic m(Lccsancom/mbridge/msdk/videocommon/download/a;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->d:Z

    return p0
.end method

.method static synthetic n(Lccsancom/mbridge/msdk/videocommon/download/a;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->A:Z

    return p0
.end method

.method private o()V
    .locals 3

    .line 501
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->u:Lccsancom/mbridge/msdk/foundation/db/o;

    if-nez v0, :cond_0

    .line 502
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/o;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/o;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->u:Lccsancom/mbridge/msdk/foundation/db/o;

    .line 505
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->u:Lccsancom/mbridge/msdk/foundation/db/o;

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/db/o;->b(Ljava/lang/String;)V

    .line 506
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->p:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 508
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 510
    :catchall_0
    move-exception v1

    .line 511
    :try_start_1
    const-string v1, "CampaignDownLoadTask"

    const-string v2, "del DB or file failed"

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 513
    :cond_1
    :goto_0
    iput v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->e:I

    .line 514
    nop

    .line 515
    return-void

    .line 513
    :catchall_1
    move-exception v1

    iput v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->e:I

    .line 514
    throw v1
.end method

.method private p()V
    .locals 8

    .line 536
    const-string v0, "insertExcludeId"

    :try_start_0
    const-string v1, "com.mbridge.msdk.reward.a.a"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 537
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 538
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 539
    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->j:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->i:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string v1, "com.mbridge.msdk.mbnative.c.b"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 542
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 543
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    const-class v5, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    aput-object v5, v4, v7

    invoke-virtual {v1, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 544
    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->j:Ljava/lang/String;

    aput-object v3, v1, v6

    iget-object v3, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->i:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    aput-object v3, v1, v7

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    goto :goto_0

    .line 545
    :catch_0
    move-exception v0

    .line 546
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CampaignDownLoadTask"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .line 120
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->b:I

    .line 121
    return-void
.end method

.method public final a(II)V
    .locals 4

    .line 156
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->e:I

    .line 157
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->u:Lccsancom/mbridge/msdk/foundation/db/o;

    if-nez v0, :cond_0

    .line 158
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/o;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/o;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->u:Lccsancom/mbridge/msdk/foundation/db/o;

    .line 160
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->u:Lccsancom/mbridge/msdk/foundation/db/o;

    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3, p1}, Lccsancom/mbridge/msdk/foundation/db/o;->a(Ljava/lang/String;JI)J

    .line 161
    return-void
.end method

.method public final a(JZ)V
    .locals 6

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStateToDone \uff1a mProgressSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->o:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "  progressSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->z:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%   FileSize : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->l:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->i:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CampaignDownLoadTask"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->s:I

    const-wide/16 v2, 0x0

    const/16 v4, 0x64

    if-eq v0, v4, :cond_0

    if-nez v0, :cond_2

    .line 282
    :cond_0
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->b:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    iget-wide v4, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->l:J

    cmp-long v0, p1, v4

    if-eqz v0, :cond_2

    if-nez p3, :cond_2

    .line 283
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->p:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    nop

    .line 285
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 286
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 288
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "progressSize = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " fileSize = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->l:J

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " absFileSize = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string p1, "File size is not match witch download size."

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(Ljava/lang/String;)V

    .line 290
    return-void

    .line 294
    :cond_2
    const/4 p3, 0x5

    iput p3, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->e:I

    .line 295
    const/4 p3, 0x1

    const-string v0, ""

    invoke-direct {p0, p3, v0}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(ILjava/lang/String;)V

    .line 296
    iget-wide v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->l:J

    cmp-long p3, v0, v2

    if-eqz p3, :cond_3

    iget-object p3, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->u:Lccsancom/mbridge/msdk/foundation/db/o;

    if-eqz p3, :cond_3

    .line 297
    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    invoke-virtual {p3, v2, v0, v1}, Lccsancom/mbridge/msdk/foundation/db/o;->b(Ljava/lang/String;J)J

    .line 299
    :cond_3
    const/4 p3, 0x0

    iput-boolean p3, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->a:Z

    .line 300
    iget p3, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->e:I

    invoke-direct {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(JI)V

    .line 301
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->i:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 169
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/videocommon/download/d;)V
    .locals 1

    .line 361
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_0
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/videocommon/listener/a;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->g:Lccsancom/mbridge/msdk/videocommon/listener/a;

    .line 438
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 304
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->g:Lccsancom/mbridge/msdk/videocommon/listener/a;

    if-eqz v0, :cond_0

    .line 305
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lccsancom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->h:Lccsancom/mbridge/msdk/videocommon/listener/a;

    if-eqz v0, :cond_1

    .line 309
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lccsancom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video download stop : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CampaignDownLoadTask"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->e:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    iget p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->e:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    iget p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->e:I

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    .line 316
    iput v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->e:I

    .line 317
    iget-wide v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->o:J

    iget p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->e:I

    invoke-direct {p0, v0, v1, p1}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(JI)V

    .line 319
    :cond_2
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->v:Z

    .line 133
    return-void
.end method

.method public final b(I)V
    .locals 0

    .line 124
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->c:I

    .line 125
    return-void
.end method

.method public final b(Lccsancom/mbridge/msdk/videocommon/listener/a;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->h:Lccsancom/mbridge/msdk/videocommon/listener/a;

    .line 442
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 355
    invoke-direct {p0}, Lccsancom/mbridge/msdk/videocommon/download/a;->p()V

    .line 356
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(ILjava/lang/String;)V

    .line 357
    const/4 p1, 0x4

    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->e:I

    .line 358
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->q:Z

    .line 141
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->v:Z

    return v0
.end method

.method public final c()J
    .locals 2

    .line 136
    iget-wide v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->r:J

    return-wide v0
.end method

.method public final c(I)V
    .locals 0

    .line 172
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->s:I

    .line 173
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final d(I)V
    .locals 0

    .line 180
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->B:I

    .line 181
    return-void
.end method

.method public final e()J
    .locals 2

    .line 148
    iget-wide v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->l:J

    return-wide v0
.end method

.method public final f()I
    .locals 1

    .line 152
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->e:I

    return v0
.end method

.method public final g()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 1

    .line 164
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->i:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object v0
.end method

.method public final h()J
    .locals 2

    .line 176
    iget-wide v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->o:J

    return-wide v0
.end method

.method public final i()V
    .locals 2

    .line 322
    const-string v0, "CampaignDownLoadTask"

    const-string v1, "start()"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->x:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->start()Ljava/lang/String;

    .line 326
    :cond_0
    return-void
.end method

.method public final j()V
    .locals 9

    .line 330
    const-string v0, "CampaignDownLoadTask"

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->A:Z

    .line 332
    const-string v2, "resume()"

    invoke-static {v0, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->y:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    if-nez v2, :cond_0

    .line 334
    new-instance v2, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iget-object v5, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    iget-object v6, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->w:Ljava/lang/String;

    const/16 v7, 0x64

    sget-object v8, Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;->DOWNLOAD_RESOURCE_TYPE_VIDEO:Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILccsancom/mbridge/msdk/foundation/download/DownloadResourceType;)V

    iput-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->y:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 337
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager;->getInstance()Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->y:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager;->download(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;

    move-result-object v2

    const-wide/16 v3, 0x7530

    .line 338
    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->withReadTimeout(J)Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;

    move-result-object v2

    const-wide/16 v3, 0x4e20

    .line 339
    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->withConnectTimeout(J)Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;

    move-result-object v2

    sget-object v3, Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;->HIGH:Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

    .line 340
    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->withDownloadPriority(Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;

    move-result-object v2

    .line 341
    invoke-interface {v2, v1}, Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;->withHttpRetryCounter(I)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->n:Ljava/lang/String;

    .line 342
    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;->withDirectoryPathInternal(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->D:Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;

    .line 343
    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;->withDownloadStateListener(Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->E:Lccsancom/mbridge/msdk/foundation/download/OnProgressStateListener;

    .line 344
    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;->withProgressStateListener(Lccsancom/mbridge/msdk/foundation/download/OnProgressStateListener;)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;

    move-result-object v1

    .line 345
    invoke-interface {v1}, Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;->build()Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->x:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 347
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->start()Ljava/lang/String;

    .line 348
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/videocommon/download/a;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/videocommon/download/a;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    goto :goto_0

    .line 349
    :catch_0
    move-exception v1

    .line 350
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :goto_0
    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 7

    .line 367
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->b:I

    const-string v1, ""

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 368
    return-object v1

    .line 370
    :cond_0
    nop

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 375
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 376
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 377
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 378
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 379
    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->p:Ljava/lang/String;

    .line 380
    goto :goto_0

    .line 382
    :cond_1
    const-string v1, "file length is 0 "

    goto :goto_0

    .line 385
    :cond_2
    const-string v1, "file can not read "

    goto :goto_0

    .line 388
    :cond_3
    const-string v1, "file is not file "

    goto :goto_0

    .line 391
    :cond_4
    const-string v1, "file is not exist "
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    :goto_0
    goto :goto_1

    .line 393
    :catchall_0
    move-exception v0

    .line 394
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CampaignDownLoadTask"

    invoke-static {v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 397
    :goto_1
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->e:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 398
    invoke-direct {p0}, Lccsancom/mbridge/msdk/videocommon/download/a;->o()V

    .line 400
    :cond_5
    return-object v1
.end method

.method public final l()V
    .locals 1

    .line 494
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 495
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 498
    :cond_0
    return-void
.end method

.method public final m()V
    .locals 3

    .line 519
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/videocommon/download/a;->o()V

    .line 520
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->i:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 530
    iput v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->e:I

    .line 521
    return-void

    .line 523
    :cond_0
    :try_start_1
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object v1

    .line 524
    if-eqz v1, :cond_1

    .line 525
    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->i:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/videocommon/a/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 530
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 527
    :catch_0
    move-exception v1

    .line 528
    :try_start_2
    const-string v1, "CampaignDownLoadTask"

    const-string v2, "del file is failed"

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 530
    :cond_1
    :goto_0
    iput v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->e:I

    .line 531
    nop

    .line 532
    return-void

    .line 530
    :goto_1
    iput v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->e:I

    .line 531
    throw v1
.end method

.method public final n()Ljava/lang/String;
    .locals 2

    .line 586
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->p:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->p:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 592
    :cond_0
    goto :goto_0

    .line 590
    :catch_0
    move-exception v0

    .line 591
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CampaignDownLoadTask"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/a;->m:Ljava/lang/String;

    return-object v0
.end method
