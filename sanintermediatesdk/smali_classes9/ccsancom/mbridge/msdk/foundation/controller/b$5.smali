.class final Lccsancom/mbridge/msdk/foundation/controller/b$5;
.super Ljava/lang/Object;
.source "SDKController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/controller/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/controller/b;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/controller/b;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/b$5;->a:Lccsancom/mbridge/msdk/foundation/controller/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 406
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/c/a;->a()Lccsancom/mbridge/msdk/foundation/same/report/c/a;

    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/b$5;->a:Lccsancom/mbridge/msdk/foundation/controller/b;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/controller/b;->c(Lccsancom/mbridge/msdk/foundation/controller/b;)Lccsanandroid/content/Context;

    move-result-object v0

    .line 1026
    const/4 v1, 0x0

    const/16 v2, 0x14

    if-nez v0, :cond_0

    .line 1027
    goto :goto_0

    .line 1030
    :cond_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v3

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/db/m;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/m;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/db/m;->a()I

    move-result v3

    if-lez v3, :cond_1

    .line 1031
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/m;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/m;

    move-result-object v0

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/db/m;->a(I)Ljava/util/List;

    move-result-object v0

    .line 1032
    goto :goto_1

    .line 1034
    :cond_1
    :goto_0
    move-object v0, v1

    .line 406
    :goto_1
    nop

    .line 407
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 408
    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/controller/b$5;->a:Lccsancom/mbridge/msdk/foundation/controller/b;

    iget-object v3, v3, Lccsancom/mbridge/msdk/foundation/controller/b;->g:Lccsanandroid/os/Handler;

    invoke-virtual {v3}, Lccsanandroid/os/Handler;->obtainMessage()Lccsanandroid/os/Message;

    move-result-object v3

    .line 409
    const/4 v4, 0x2

    iput v4, v3, Lccsanandroid/os/Message;->what:I

    .line 410
    iput-object v0, v3, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    .line 411
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/b$5;->a:Lccsancom/mbridge/msdk/foundation/controller/b;

    iget-object v0, v0, Lccsancom/mbridge/msdk/foundation/controller/b;->g:Lccsanandroid/os/Handler;

    invoke-virtual {v0, v3}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 413
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/b$5;->a:Lccsancom/mbridge/msdk/foundation/controller/b;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/controller/b;->c(Lccsancom/mbridge/msdk/foundation/controller/b;)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    .line 414
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/c;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/c;

    move-result-object v3

    .line 415
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/db/c;->a()I

    move-result v4

    if-lt v4, v2, :cond_3

    .line 416
    invoke-virtual {v3, v2}, Lccsancom/mbridge/msdk/foundation/db/c;->a(I)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/entity/c;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 417
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v4

    .line 418
    iput-object v3, v4, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    .line 419
    const/4 v3, 0x4

    iput v3, v4, Lccsanandroid/os/Message;->what:I

    .line 420
    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/controller/b$5;->a:Lccsancom/mbridge/msdk/foundation/controller/b;

    iget-object v3, v3, Lccsancom/mbridge/msdk/foundation/controller/b;->g:Lccsanandroid/os/Handler;

    invoke-virtual {v3, v4}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 422
    :cond_3
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/k;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/k;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/db/k;->a()I

    move-result v3

    if-le v3, v2, :cond_8

    .line 424
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/db/k;->a(I)Ljava/util/List;

    move-result-object v0

    .line 1130
    nop

    .line 1131
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 1132
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/g;

    .line 1134
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v3

    const-string v4, "authority_general_data"

    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "&fb="

    const-string v5, "&key=2000006"

    const-string v6, "&unit_id="

    const-string v7, "&num="

    const-string v8, "&time="

    const-string v9, "ad_source_id="

    if-eqz v3, :cond_4

    .line 1135
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/g;->b()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/g;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1136
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/g;->d()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/g;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1140
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/g;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&network_str="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/g;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&network_type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/g;->h()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1146
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/g;->b()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1148
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/g;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1147
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/g;->d()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/g;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1151
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/g;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1155
    :goto_3
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/g;->a()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 1156
    const-string v3, "&hb=1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1158
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&timeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/g;->g()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1159
    goto/16 :goto_2

    .line 1160
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 1162
    :cond_7
    nop

    .line 424
    :goto_4
    nop

    .line 425
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v0

    .line 426
    iput-object v1, v0, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    .line 427
    const/4 v1, 0x5

    iput v1, v0, Lccsanandroid/os/Message;->what:I

    .line 428
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/controller/b$5;->a:Lccsancom/mbridge/msdk/foundation/controller/b;

    iget-object v1, v1, Lccsancom/mbridge/msdk/foundation/controller/b;->g:Lccsanandroid/os/Handler;

    invoke-virtual {v1, v0}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 430
    :cond_8
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/b/c;->h:Lccsancom/mbridge/msdk/foundation/same/b/c;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/b/e;->b(Lccsancom/mbridge/msdk/foundation/same/b/c;)Ljava/lang/String;

    move-result-object v0

    .line 431
    const-string v1, "/"

    .line 432
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 434
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_9

    .line 435
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_9

    aget-object v5, v2, v4

    .line 436
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v5

    .line 438
    iput-object v6, v5, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    .line 439
    const/4 v6, 0x3

    iput v6, v5, Lccsanandroid/os/Message;->what:I

    .line 440
    iget-object v6, p0, Lccsancom/mbridge/msdk/foundation/controller/b$5;->a:Lccsancom/mbridge/msdk/foundation/controller/b;

    iget-object v6, v6, Lccsancom/mbridge/msdk/foundation/controller/b;->g:Lccsanandroid/os/Handler;

    invoke-virtual {v6, v5}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 435
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 447
    :cond_9
    goto :goto_6

    .line 445
    :catch_0
    move-exception v0

    .line 446
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDKController"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :goto_6
    return-void
.end method
