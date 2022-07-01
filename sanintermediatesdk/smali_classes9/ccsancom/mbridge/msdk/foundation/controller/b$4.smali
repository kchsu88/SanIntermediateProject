.class final Lccsancom/mbridge/msdk/foundation/controller/b$4;
.super Lccsanandroid/os/Handler;
.source "SDKController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/foundation/controller/b;
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

    .line 317
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/b$4;->a:Lccsancom/mbridge/msdk/foundation/controller/b;

    invoke-direct {p0}, Lccsanandroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Lccsanandroid/os/Message;)V
    .locals 7

    .line 320
    :try_start_0
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    .line 321
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 339
    :pswitch_1
    iget-object p1, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lccsancom/mbridge/msdk/b/a;

    .line 340
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/b/a;->l()I

    move-result p1

    if-ne p1, v1, :cond_6

    .line 341
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/b$4;->a:Lccsancom/mbridge/msdk/foundation/controller/b;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/controller/b;->c(Lccsancom/mbridge/msdk/foundation/controller/b;)Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/report/b/a;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/report/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/same/report/b/a;->a()V

    goto/16 :goto_2

    .line 380
    :pswitch_2
    iget-object v0, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 381
    iget-object p1, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 382
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 383
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a()Lccsancom/mbridge/msdk/foundation/same/report/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/same/report/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a()Lccsancom/mbridge/msdk/foundation/same/report/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_0
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/report/c;

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/controller/b$4;->a:Lccsancom/mbridge/msdk/foundation/controller/b;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/controller/b;->c(Lccsancom/mbridge/msdk/foundation/controller/b;)Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lccsancom/mbridge/msdk/foundation/same/report/c;-><init>(Lccsanandroid/content/Context;I)V

    const-string v1, "device_data"

    invoke-virtual {v0, v1, p1, v2, v2}, Lccsancom/mbridge/msdk/foundation/same/report/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/out/Frame;)V

    .line 390
    :cond_1
    :goto_0
    goto/16 :goto_2

    .line 369
    :pswitch_3
    iget-object p1, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 370
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 371
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a()Lccsancom/mbridge/msdk/foundation/same/report/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/same/report/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a()Lccsancom/mbridge/msdk/foundation/same/report/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 374
    :cond_2
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/report/c;

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/controller/b$4;->a:Lccsancom/mbridge/msdk/foundation/controller/b;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/controller/b;->c(Lccsancom/mbridge/msdk/foundation/controller/b;)Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lccsancom/mbridge/msdk/foundation/same/report/c;-><init>(Lccsanandroid/content/Context;I)V

    const-string v1, "load_duration"

    invoke-virtual {v0, v1, p1, v2, v2}, Lccsancom/mbridge/msdk/foundation/same/report/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/out/Frame;)V

    goto/16 :goto_2

    .line 358
    :pswitch_4
    iget-object p1, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 359
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 360
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a()Lccsancom/mbridge/msdk/foundation/same/report/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/same/report/a;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 361
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a()Lccsancom/mbridge/msdk/foundation/same/report/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 363
    :cond_3
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/report/c;

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/controller/b$4;->a:Lccsancom/mbridge/msdk/foundation/controller/b;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/controller/b;->c(Lccsancom/mbridge/msdk/foundation/controller/b;)Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lccsancom/mbridge/msdk/foundation/same/report/c;-><init>(Lccsanandroid/content/Context;I)V

    const-string v1, "click_duration"

    invoke-virtual {v0, v1, p1, v2, v2}, Lccsancom/mbridge/msdk/foundation/same/report/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/out/Frame;)V

    goto :goto_2

    .line 345
    :pswitch_5
    iget-object p1, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    .line 346
    if-eqz p1, :cond_6

    .line 347
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/o;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 349
    const-string v1, "===="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 350
    array-length v1, v0

    if-lez v1, :cond_4

    .line 351
    aget-object v0, v0, v3

    .line 352
    new-instance v1, Lccsancom/mbridge/msdk/foundation/same/report/c;

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/controller/b$4;->a:Lccsancom/mbridge/msdk/foundation/controller/b;

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/controller/b;->c(Lccsancom/mbridge/msdk/foundation/controller/b;)Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/mbridge/msdk/foundation/same/report/c;-><init>(Lccsanandroid/content/Context;)V

    invoke-virtual {v1, v0, p1}, Lccsancom/mbridge/msdk/foundation/same/report/c;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 355
    :cond_4
    goto :goto_2

    .line 323
    :pswitch_6
    iget-object v0, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_6

    .line 324
    iget-object p1, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 325
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 326
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/report/c;

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/controller/b$4;->a:Lccsancom/mbridge/msdk/foundation/controller/b;

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/controller/b;->c(Lccsancom/mbridge/msdk/foundation/controller/b;)Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lccsancom/mbridge/msdk/foundation/same/report/c;-><init>(Lccsanandroid/content/Context;I)V

    .line 327
    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 328
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/mbridge/msdk/foundation/entity/k;

    .line 329
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 330
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v2, v6, :cond_5

    .line 331
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 333
    :cond_5
    invoke-virtual {v0, v4, v5}, Lccsancom/mbridge/msdk/foundation/same/report/c;->a(Lccsancom/mbridge/msdk/foundation/entity/k;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 397
    :cond_6
    :goto_2
    goto :goto_3

    .line 395
    :catch_0
    move-exception p1

    .line 396
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SDKController"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
