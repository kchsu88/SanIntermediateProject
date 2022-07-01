.class public Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;
.super Lccsancom/mbridge/msdk/mbsignalcommon/windvane/h;
.source "BaseVideoCommunication.java"

# interfaces
.implements Lccsancom/mbridge/msdk/video/signal/communication/IVideoCommunication;


# instance fields
.field protected d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/h;-><init>()V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 0

    .line 370
    nop

    .line 371
    packed-switch p1, :pswitch_data_0

    const-string p1, ""

    goto :goto_0

    .line 388
    :pswitch_0
    const-string p1, "sdkSetting"

    goto :goto_0

    .line 385
    :pswitch_1
    nop

    .line 386
    const-string p1, "device"

    goto :goto_0

    .line 382
    :pswitch_2
    nop

    .line 383
    const-string p1, "unitSetting"

    goto :goto_0

    .line 379
    :pswitch_3
    nop

    .line 380
    const-string p1, "appSetting"

    goto :goto_0

    .line 376
    :pswitch_4
    nop

    .line 377
    const-string p1, "unit_id"

    goto :goto_0

    .line 373
    :pswitch_5
    nop

    .line 374
    const-string p1, "sdk_info"

    .line 391
    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 616
    :try_start_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 617
    new-instance p2, Lccsanorg/json/JSONObject;

    invoke-direct {p2}, Lccsanorg/json/JSONObject;-><init>()V

    .line 618
    const-string v0, "code"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 619
    const-string v0, "message"

    const-string v1, "params is null"

    invoke-virtual {p2, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 620
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    invoke-virtual {p2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v1, 0x2

    invoke-static {p2, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    return-void

    .line 625
    :cond_0
    goto :goto_0

    .line 623
    :catch_0
    move-exception p1

    .line 624
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :goto_0
    return-void
.end method

.method private b(I)Ljava/lang/String;
    .locals 3

    .line 484
    const-string v0, ""

    .line 486
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 487
    const-string v2, "code"

    invoke-virtual {v1, v2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 488
    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 489
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 490
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    .line 495
    :cond_0
    goto :goto_0

    .line 493
    :catchall_0
    move-exception p1

    .line 494
    const-string p1, "JS-Video-Brigde"

    const-string v1, "code to string is error"

    invoke-static {p1, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :goto_0
    return-object v0
.end method


# virtual methods
.method public appendSubView(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 700
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 702
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->h(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    goto :goto_0

    .line 703
    :catchall_0
    move-exception p1

    .line 704
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "appendSubView error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    :goto_0
    return-void
.end method

.method public appendViewTo(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 710
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 712
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->i(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    goto :goto_0

    .line 713
    :catchall_0
    move-exception p1

    .line 714
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "appendViewTo error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    :goto_0
    return-void
.end method

.method public bringViewToFront(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 720
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 722
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->j(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    goto :goto_0

    .line 723
    :catchall_0
    move-exception p1

    .line 724
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bringViewToFront error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    :goto_0
    return-void
.end method

.method public broadcast(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 973
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 975
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->H(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    goto :goto_0

    .line 976
    :catchall_0
    move-exception p1

    .line 977
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "broadcast error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    :goto_0
    return-void
.end method

.method public cai(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .line 1232
    const-string v0, "cai"

    const-string v1, "exception: "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cai:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JS-Video-Brigde"

    invoke-static {v3, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1235
    nop

    .line 1236
    :try_start_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1237
    const-string p2, "packageName"

    invoke-virtual {v2, p2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1238
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1239
    const-string v2, "packageName is empty"

    invoke-static {p1, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1241
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lccsancom/mbridge/msdk/foundation/tools/u;->c(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1242
    const/4 v2, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    .line 1244
    :goto_0
    :try_start_1
    new-instance v4, Lccsanorg/json/JSONObject;

    invoke-direct {v4}, Lccsanorg/json/JSONObject;-><init>()V

    .line 1245
    const-string v5, "code"

    sget v6, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->b:I

    invoke-virtual {v4, v5, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1246
    new-instance v5, Lccsanorg/json/JSONObject;

    invoke-direct {v5}, Lccsanorg/json/JSONObject;-><init>()V

    .line 1247
    const-string v6, "result"

    invoke-virtual {v5, v6, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1248
    const-string p2, "data"

    invoke-virtual {v4, p2, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1249
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    invoke-virtual {v4}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4, v2}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1253
    goto :goto_1

    .line 1250
    :catch_0
    move-exception p2

    .line 1251
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1252
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lccsanorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1257
    :catchall_0
    move-exception p2

    .line 1258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1259
    invoke-static {v3, v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1254
    :catch_1
    move-exception p2

    .line 1255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsanorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1256
    invoke-static {v3, v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1262
    :cond_2
    :goto_1
    return-void
.end method

.method public clearAllCache(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 1197
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p2

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object p2

    const-string v0, "MBridgeH5CacheSP"

    .line 1198
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lccsanandroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Lccsanandroid/content/SharedPreferences;

    move-result-object p2

    .line 1199
    invoke-interface {p2}, Lccsanandroid/content/SharedPreferences;->edit()Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Lccsanandroid/content/SharedPreferences$Editor;->clear()Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Lccsanandroid/content/SharedPreferences$Editor;->apply()V

    .line 1200
    if-eqz p1, :cond_0

    .line 1201
    new-instance p2, Lccsanorg/json/JSONObject;

    invoke-direct {p2}, Lccsanorg/json/JSONObject;-><init>()V

    .line 1202
    const-string v0, "code"

    invoke-virtual {p2, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1203
    const-string v0, "message"

    const-string v1, "Success"

    invoke-virtual {p2, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1204
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    invoke-virtual {p2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v1, 0x2

    invoke-static {p2, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1208
    :cond_0
    goto :goto_0

    .line 1206
    :catchall_0
    move-exception p1

    .line 1207
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAllCache error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    :goto_0
    return-void
.end method

.method public click(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 120
    const-string v0, "JS-Video-Brigde"

    const-string v1, "click"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :try_start_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 123
    nop

    .line 124
    nop

    .line 126
    :try_start_1
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 127
    const-string p2, "type"

    invoke-virtual {v1, p2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    .line 128
    const-string v2, "pt"

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    goto :goto_0

    .line 129
    :catch_0
    move-exception p2

    .line 130
    const/4 v1, 0x1

    .line 131
    :try_start_2
    const-string v2, ""

    .line 132
    invoke-virtual {p2}, Lccsanorg/json/JSONException;->printStackTrace()V

    move-object v1, v2

    const/4 p2, 0x1

    .line 134
    :goto_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    if-eqz v2, :cond_0

    .line 135
    invoke-interface {v2}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object p1

    invoke-interface {p1, p2, v1}, Lccsancom/mbridge/msdk/video/signal/c;->click(ILjava/lang/String;)V

    goto :goto_1

    .line 137
    :cond_0
    if-eqz p1, :cond_1

    .line 138
    check-cast p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 139
    iget-object v2, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lccsancom/mbridge/msdk/video/signal/a/j;

    if-eqz v2, :cond_1

    .line 140
    iget-object p1, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/video/signal/a/j;

    .line 141
    if-eqz p1, :cond_1

    .line 142
    invoke-virtual {p1, p2, v1}, Lccsancom/mbridge/msdk/video/signal/a/j;->click(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    :cond_1
    :goto_1
    goto :goto_2

    .line 148
    :catchall_0
    move-exception p1

    .line 149
    const-string p2, "click error"

    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    :goto_2
    return-void
.end method

.method public closeAd(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 963
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 965
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->G(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 968
    goto :goto_0

    .line 966
    :catchall_0
    move-exception p1

    .line 967
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "closeAd error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    :goto_0
    return-void
.end method

.method public closeVideoOperte(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    .line 248
    const-string v0, "JS-Video-Brigde"

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    if-eqz v1, :cond_0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 250
    const-string p2, "close"

    invoke-virtual {v1, p2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    .line 251
    const-string v2, "view_visible"

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeVideoOperte,close:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",viewVisible:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v2}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v2

    invoke-interface {v2, p2, v1}, Lccsancom/mbridge/msdk/video/signal/i;->closeVideoOperate(II)V

    .line 254
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :cond_0
    goto :goto_0

    .line 256
    :catchall_0
    move-exception p1

    .line 257
    const-string p2, "closeOperte error"

    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 259
    :goto_0
    return-void
.end method

.method public closeWeb(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 983
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "type"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JS-Video-Brigde"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    :try_start_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 986
    return-void

    .line 988
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    if-eqz p1, :cond_1

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 989
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 990
    const-string p2, "status"

    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 991
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {p2}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSContainerModule()Lccsancom/mbridge/msdk/video/signal/e;

    move-result-object p2

    invoke-interface {p2}, Lccsancom/mbridge/msdk/video/signal/e;->hideAlertWebview()V

    .line 992
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {p2}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object p2

    invoke-interface {p2, p1}, Lccsancom/mbridge/msdk/video/signal/i;->hideAlertView(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 996
    :cond_1
    goto :goto_0

    .line 994
    :catchall_0
    move-exception p1

    .line 995
    const-string p2, "closeWeb"

    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 997
    :goto_0
    return-void
.end method

.method public createNativeEC(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 1078
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1080
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->M(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    goto :goto_0

    .line 1081
    :catchall_0
    move-exception p1

    .line 1082
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createNativeEC error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    :goto_0
    return-void
.end method

.method public createPlayerView(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 640
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 642
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    goto :goto_0

    .line 643
    :catchall_0
    move-exception p1

    .line 644
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createPlayerView error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    :goto_0
    return-void
.end method

.method public createSubPlayTemplateView(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 650
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 652
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    goto :goto_0

    .line 653
    :catchall_0
    move-exception p1

    .line 654
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createSubPlayTemplateView error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    :goto_0
    return-void
.end method

.method public createWebview(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 630
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 632
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    goto :goto_0

    .line 633
    :catchall_0
    move-exception p1

    .line 634
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createWebview error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    :goto_0
    return-void
.end method

.method public destroyComponent(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 660
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 662
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->d(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    goto :goto_0

    .line 663
    :catchall_0
    move-exception p1

    .line 664
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "destroyComponent error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    :goto_0
    return-void
.end method

.method public getAllCache(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    .line 1161
    const-string p2, "getAllCache error "

    const-string v0, "JS-Video-Brigde"

    .line 1162
    nop

    .line 1164
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v3

    const-string v4, "MBridgeH5CacheSP"

    .line 1165
    invoke-virtual {v3, v4, v1}, Lccsanandroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Lccsanandroid/content/SharedPreferences;

    move-result-object v3

    .line 1166
    new-instance v4, Lccsanorg/json/JSONObject;

    invoke-direct {v4}, Lccsanorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1167
    :try_start_1
    invoke-interface {v3}, Lccsanandroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 1168
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1169
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1170
    goto :goto_0

    .line 1171
    :cond_0
    const-string v2, "getAllCache Success"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1175
    goto :goto_2

    .line 1172
    :catchall_0
    move-exception v2

    goto :goto_1

    :catchall_1
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    .line 1173
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAllCache Error, reason is : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1178
    :goto_2
    :try_start_2
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3}, Lccsanorg/json/JSONObject;-><init>()V

    .line 1179
    const-string v5, "code"

    invoke-virtual {v3, v5, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1180
    const-string v1, "message"

    invoke-virtual {v3, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1181
    const-string v1, "data"

    if-eqz v4, :cond_1

    .line 1182
    :try_start_3
    invoke-virtual {v3, v1, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    goto :goto_3

    .line 1184
    :cond_1
    const-string v2, "{}"

    invoke-virtual {v3, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1186
    :goto_3
    if-eqz p1, :cond_2

    .line 1187
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v1

    invoke-virtual {v3}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1191
    :cond_2
    goto :goto_4

    .line 1189
    :catchall_2
    move-exception p1

    .line 1190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    :goto_4
    return-void
.end method

.method public getAppSetting(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    .line 1267
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1268
    const-string p2, "appid"

    const-string v1, ""

    invoke-virtual {v0, p2, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1270
    nop

    .line 1271
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 1273
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    const-string v3, "message"

    const-string v4, "code"

    if-nez v1, :cond_2

    .line 1274
    :try_start_1
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v1

    invoke-virtual {v1, p2}, Lccsancom/mbridge/msdk/b/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1275
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    .line 1276
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object p2

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/b/b;->b()Lccsancom/mbridge/msdk/b/a;

    move-result-object p2

    .line 1277
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/b/a;->ac()Ljava/lang/String;

    move-result-object p2

    .line 1278
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1279
    goto :goto_0

    .line 1280
    :cond_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1281
    const-string p2, "isDefault"

    invoke-virtual {v1, p2, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1284
    :goto_0
    if-eqz p1, :cond_1

    .line 1285
    invoke-virtual {v0, v4, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1286
    const-string p2, "Success"

    invoke-virtual {v0, v3, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1287
    const-string p2, "data"

    invoke-virtual {v0, p2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    goto :goto_1

    .line 1289
    :cond_1
    invoke-virtual {v0, v4, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1290
    const-string p2, "Get App Setting error, plz try again later."

    invoke-virtual {v0, v3, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1292
    :goto_1
    goto :goto_2

    .line 1293
    :cond_2
    invoke-virtual {v0, v4, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1294
    const-string p2, "Get App Setting error, because must give a appId."

    invoke-virtual {v0, v3, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1296
    :goto_2
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1299
    goto :goto_3

    .line 1297
    :catchall_0
    move-exception p1

    .line 1298
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAppSetting error : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    :goto_3
    return-void
.end method

.method public getComponentOptions(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 670
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 672
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->e(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    goto :goto_0

    .line 673
    :catchall_0
    move-exception p1

    .line 674
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getComponentOptions error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :goto_0
    return-void
.end method

.method public getCurrentProgress(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 280
    const-string p2, "JS-Video-Brigde"

    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    if-eqz v0, :cond_1

    .line 281
    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/i;->getCurrentProgress()Ljava/lang/String;

    move-result-object v0

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentProgress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 286
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :cond_1
    goto :goto_0

    .line 288
    :catchall_0
    move-exception p1

    .line 289
    const-string v0, "getCurrentProgress error"

    invoke-static {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    :goto_0
    return-void
.end method

.method public getCutout(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    .line 1214
    const-string p2, "JS-Video-Brigde"

    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/c;->i()Ljava/lang/String;

    move-result-object v0

    .line 1215
    invoke-static {p2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    const/4 v1, 0x2

    if-eqz p1, :cond_0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1218
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1220
    :cond_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 1221
    const-string v2, "code"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1222
    const-string v2, "message"

    const-string v3, "No notch data, plz try again later."

    invoke-virtual {v0, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1223
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v2

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1227
    :goto_0
    goto :goto_1

    .line 1225
    :catchall_0
    move-exception p1

    .line 1226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCutout error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    :goto_1
    return-void
.end method

.method public getFileInfo(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 529
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 531
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->L(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    goto :goto_0

    .line 532
    :catchall_0
    move-exception p1

    .line 533
    const-string p2, "JS-Video-Brigde"

    const-string v0, "getFileInfo error"

    invoke-static {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 535
    :goto_0
    return-void
.end method

.method public getRewardSetting(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    .line 1305
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object p2

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/videocommon/d/b;->b()Lccsancom/mbridge/msdk/videocommon/d/a;

    move-result-object p2

    .line 1306
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/videocommon/d/a;->j()Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 1307
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1309
    const-string v1, "message"

    const-string v2, "code"

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1310
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1311
    const-string v2, "Success"

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1312
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    goto :goto_0

    .line 1314
    :cond_0
    const/4 p2, 0x1

    invoke-virtual {v0, v2, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1315
    const-string p2, "Get Reward Setting error, plz try again later."

    invoke-virtual {v0, v1, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1317
    :goto_0
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1320
    goto :goto_1

    .line 1318
    :catchall_0
    move-exception p1

    .line 1319
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getRewardSetting error : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    :goto_1
    return-void
.end method

.method public getRewardUnitSetting(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    .line 1326
    const-string v0, ""

    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1327
    const-string p2, "appid"

    invoke-virtual {v1, p2, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1328
    const-string v2, "unitid"

    invoke-virtual {v1, v2, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1330
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 1332
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    const-string v4, "message"

    const-string v5, "code"

    if-nez v2, :cond_1

    :try_start_1
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1333
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Lccsancom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object p2

    .line 1334
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/videocommon/d/c;->C()Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 1336
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1337
    const/4 v0, 0x0

    invoke-virtual {v1, v5, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1338
    const-string v0, "Success"

    invoke-virtual {v1, v4, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1339
    const-string v0, "data"

    invoke-virtual {v1, v0, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    goto :goto_0

    .line 1341
    :cond_0
    invoke-virtual {v1, v5, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1342
    const-string p2, "Get Reward Unit Setting error, plz try again later."

    invoke-virtual {v1, v4, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1344
    :goto_0
    goto :goto_1

    .line 1345
    :cond_1
    invoke-virtual {v1, v5, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1346
    const-string p2, "Get reward unit Setting error, because must give appId and unitId."

    invoke-virtual {v1, v4, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1348
    :goto_1
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1351
    goto :goto_2

    .line 1349
    :catchall_0
    move-exception p1

    .line 1350
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getRewardUnitSetting error : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    :goto_2
    return-void
.end method

.method public getSDKInfo(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    .line 539
    const-string v0, "JS-Video-Brigde"

    const-string v1, "getSDKInfo"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    nop

    .line 542
    :try_start_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 543
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 544
    const-string p2, "type"

    invoke-virtual {v1, p2}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p2

    .line 545
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 546
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 547
    nop

    :goto_0
    invoke-virtual {p2}, Lccsanorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 548
    invoke-virtual {p2, v3}, Lccsanorg/json/JSONArray;->getInt(I)I

    move-result v2

    .line 549
    iget-object v4, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v4}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v4

    invoke-interface {v4, v2}, Lccsancom/mbridge/msdk/video/signal/c;->g(I)Ljava/lang/String;

    move-result-object v4

    .line 550
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 547
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 553
    :cond_0
    if-eqz p1, :cond_2

    .line 554
    nop

    :goto_1
    invoke-virtual {p2}, Lccsanorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 555
    invoke-virtual {p2, v3}, Lccsanorg/json/JSONArray;->getInt(I)I

    move-result v2

    .line 556
    move-object v4, p1

    check-cast v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 557
    iget-object v5, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lccsancom/mbridge/msdk/video/signal/a/j;

    if-eqz v5, :cond_1

    .line 558
    iget-object v4, v4, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/mbridge/msdk/video/signal/a/j;

    .line 559
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2}, Lccsancom/mbridge/msdk/video/signal/a/j;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 554
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 564
    :cond_2
    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 565
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v1, 0x2

    invoke-static {p2, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    .line 566
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    goto :goto_2

    .line 568
    :cond_3
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    const-string v1, "params is null"

    invoke-virtual {p2, p1, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    :goto_2
    goto :goto_3

    .line 570
    :catchall_0
    move-exception p2

    .line 571
    const-string v1, "getSDKInfo error"

    invoke-static {v0, v1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 572
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    const-string v0, "exception"

    invoke-virtual {p2, p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    :goto_3
    return-void
.end method

.method public getUnitSetting(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 1357
    :try_start_0
    new-instance p2, Lccsanorg/json/JSONObject;

    invoke-direct {p2}, Lccsanorg/json/JSONObject;-><init>()V

    .line 1358
    const-string v0, "code"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1359
    const-string v0, "message"

    const-string v1, "Get Unit Setting error, RV/IV can not support this method."

    invoke-virtual {p2, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1360
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    invoke-virtual {p2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v1, 0x2

    invoke-static {p2, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1363
    goto :goto_0

    .line 1361
    :catchall_0
    move-exception p1

    .line 1362
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getUnitSetting error : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    :goto_0
    return-void
.end method

.method public handleNativeObject(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 1048
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1050
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/b;->a()Lccsancom/mbridge/msdk/video/bt/a/b;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/b;->a(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1053
    goto :goto_0

    .line 1051
    :catchall_0
    move-exception p1

    .line 1052
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleNativeObject error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    :goto_0
    return-void
.end method

.method public handlerH5Exception(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 418
    const-string p1, "JS-Video-Brigde"

    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlerH5Exception,params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string p2, "code"

    const/16 v1, -0x3e7

    invoke-virtual {v0, p2, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    .line 422
    const-string v1, "message"

    const-string v2, "h5 error"

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v1}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Lccsancom/mbridge/msdk/video/signal/c;->handlerH5Exception(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    :cond_0
    goto :goto_0

    .line 425
    :catchall_0
    move-exception p2

    .line 426
    const-string v0, "handlerH5Exception"

    invoke-static {p1, v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 428
    :goto_0
    return-void
.end method

.method public hideView(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 730
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 732
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->k(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    goto :goto_0

    .line 733
    :catchall_0
    move-exception p1

    .line 734
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hideView error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :goto_0
    return-void
.end method

.method public increaseOfferFrequence(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 1038
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1040
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->K(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1043
    goto :goto_0

    .line 1041
    :catchall_0
    move-exception p1

    .line 1042
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "increaseOfferFrequence error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    :goto_0
    return-void
.end method

.method public init(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 13

    .line 62
    const-string v0, "JS-Video-Brigde"

    const-string v1, "init"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const-string v3, "showAlertRole"

    const-string v4, "webfront"

    const-string v5, "orientationType"

    const-string v6, "closeType"

    const-string v7, "mute"

    const-string v8, "showTransparent"

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v1, :cond_4

    .line 65
    :try_start_1
    invoke-interface {v1}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v1

    invoke-interface {v1}, Lccsancom/mbridge/msdk/video/signal/c;->c()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 67
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v9}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 69
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v9

    invoke-virtual {v9, p1, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {p1}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object p1

    invoke-interface {p1, v10}, Lccsancom/mbridge/msdk/video/signal/c;->b(Z)V

    .line 71
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 72
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1, v8}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    .line 74
    invoke-virtual {p1, v7}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 75
    invoke-virtual {p1, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 76
    invoke-virtual {p1, v5}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 77
    invoke-virtual {p1, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 78
    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 79
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v3}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v3

    if-ne p2, v10, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-interface {v3, v2}, Lccsancom/mbridge/msdk/video/signal/c;->a(Z)V

    .line 80
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {p2}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object p2

    invoke-interface {p2, v1}, Lccsancom/mbridge/msdk/video/signal/c;->b(I)V

    .line 81
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {p2}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object p2

    invoke-interface {p2, v6}, Lccsancom/mbridge/msdk/video/signal/c;->c(I)V

    .line 82
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {p2}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object p2

    invoke-interface {p2, v5}, Lccsancom/mbridge/msdk/video/signal/c;->d(I)V

    .line 83
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {p2}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object p2

    invoke-interface {p2, v4}, Lccsancom/mbridge/msdk/video/signal/c;->e(I)V

    .line 84
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {p2}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object p2

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v10, p1

    :goto_0
    invoke-interface {p2, v10}, Lccsancom/mbridge/msdk/video/signal/c;->h(I)V

    .line 86
    :cond_3
    goto/16 :goto_2

    .line 87
    :cond_4
    if-eqz p1, :cond_8

    .line 88
    move-object v1, p1

    check-cast v1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 89
    iget-object v11, v1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v11}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lccsancom/mbridge/msdk/video/signal/a/j;

    if-eqz v11, :cond_8

    .line 90
    iget-object v1, v1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/video/signal/a/j;

    .line 91
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/video/signal/a/j;->c()Ljava/lang/String;

    move-result-object v11

    .line 92
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 93
    new-instance v12, Lccsanorg/json/JSONObject;

    invoke-direct {v12, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v12, v8}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    .line 95
    invoke-virtual {v12, v7}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 96
    invoke-virtual {v12, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 97
    invoke-virtual {v12, v5}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 98
    invoke-virtual {v12, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 99
    invoke-virtual {v12, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 100
    if-ne p2, v10, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(Z)V

    .line 101
    invoke-virtual {v1, v7}, Lccsancom/mbridge/msdk/video/signal/a/j;->b(I)V

    .line 102
    invoke-virtual {v1, v6}, Lccsancom/mbridge/msdk/video/signal/a/j;->c(I)V

    .line 103
    invoke-virtual {v1, v5}, Lccsancom/mbridge/msdk/video/signal/a/j;->d(I)V

    .line 104
    invoke-virtual {v1, v4}, Lccsancom/mbridge/msdk/video/signal/a/j;->e(I)V

    .line 105
    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    move v10, v3

    :goto_1
    invoke-virtual {v1, v10}, Lccsancom/mbridge/msdk/video/signal/a/j;->h(I)V

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init jsCommon.setIsShowingTransparent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_7
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2, v9}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    .line 109
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :cond_8
    :goto_2
    goto :goto_3

    .line 113
    :catchall_0
    move-exception p1

    .line 114
    const-string p2, "init error"

    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    :goto_3
    return-void
.end method

.method public initialize(Ljava/lang/Object;Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V
    .locals 0

    .line 54
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/h;->initialize(Ljava/lang/Object;Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V

    .line 55
    instance-of p2, p1, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    if-eqz p2, :cond_0

    .line 56
    check-cast p1, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    .line 58
    :cond_0
    return-void
.end method

.method public insertViewAbove(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 780
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 782
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->p(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    goto :goto_0

    .line 783
    :catchall_0
    move-exception p1

    .line 784
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "insertViewAbove error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    :goto_0
    return-void
.end method

.method public insertViewBelow(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 790
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 792
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->q(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    goto :goto_0

    .line 793
    :catchall_0
    move-exception p1

    .line 794
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "insertViewBelow error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :goto_0
    return-void
.end method

.method public isSystemResume(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 433
    const-string v0, "JS-Video-Brigde"

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    if-eqz v1, :cond_0

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSystemResume,params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {p2}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getActivityProxy()Lccsancom/mbridge/msdk/video/signal/a;

    move-result-object p2

    invoke-interface {p2}, Lccsancom/mbridge/msdk/video/signal/a;->h()I

    move-result p2

    .line 436
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v1

    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->b(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    :cond_0
    goto :goto_0

    .line 438
    :catchall_0
    move-exception p1

    .line 439
    const-string p2, "isSystemResume"

    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 441
    :goto_0
    return-void
.end method

.method public ivRewardAdsWithoutVideo(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1001
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ivRewardAdsWithoutVideo \uff1a params"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JS-Video-Brigde"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    :try_start_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1004
    return-void

    .line 1007
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    if-eqz p1, :cond_1

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1008
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {p1}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSContainerModule()Lccsancom/mbridge/msdk/video/signal/e;

    move-result-object p1

    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/video/signal/e;->ivRewardAdsWithoutVideo(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1012
    :cond_1
    goto :goto_0

    .line 1010
    :catchall_0
    move-exception p1

    .line 1011
    const-string p2, "ivRewardAdsWithoutVideo"

    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1013
    :goto_0
    return-void
.end method

.method public loadads(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8

    .line 578
    const-string v0, "JS-Video-Brigde"

    const-string v1, "loadads"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    nop

    .line 580
    nop

    .line 581
    nop

    .line 582
    nop

    .line 584
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ""

    if-nez v2, :cond_1

    .line 585
    :try_start_1
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 586
    sget-object p2, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-virtual {v2, p2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 587
    const-string p2, "unitId"

    invoke-virtual {v2, p2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 588
    const-string v4, "type"

    invoke-virtual {v2, v4, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 589
    const/4 v5, 0x2

    if-le v4, v5, :cond_0

    .line 590
    const/4 v4, 0x1

    .line 592
    :cond_0
    const-string v5, "adtype"

    invoke-virtual {v2, v5, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    move-object v5, p2

    move v7, v2

    move v6, v4

    move-object v4, v3

    goto :goto_0

    .line 584
    :cond_1
    move-object v4, v3

    move-object v5, v4

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 594
    :goto_0
    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 595
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 596
    return-void

    .line 598
    :cond_2
    if-eqz p1, :cond_3

    .line 599
    move-object p2, p1

    check-cast p2, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 600
    iget-object v2, p2, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    instance-of v2, v2, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v2, :cond_3

    .line 601
    iget-object v3, p2, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 602
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getWebViewListener()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 603
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getWebViewListener()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lccsancom/mbridge/msdk/mbsignalcommon/b/a;

    invoke-virtual/range {v2 .. v7}, Lccsancom/mbridge/msdk/mbsignalcommon/b/a;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;II)V

    .line 607
    :cond_3
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 611
    goto :goto_1

    .line 608
    :catchall_0
    move-exception p2

    .line 609
    const-string v2, "loadads error"

    invoke-static {v0, v2, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 610
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    :goto_1
    return-void
.end method

.method public loadingResourceStatus(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 1058
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1060
    if-eqz p1, :cond_0

    .line 1061
    :try_start_0
    check-cast p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 1062
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1063
    const-string p2, "isReady"

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    .line 1064
    iget-object v0, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_0

    .line 1065
    iget-object p1, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 1066
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getWebViewListener()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1067
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getWebViewListener()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;->c(Lccsanandroid/webkit/WebView;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1071
    :catchall_0
    move-exception p1

    .line 1072
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadingResourceStatus error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1073
    :cond_0
    :goto_0
    nop

    .line 1074
    :goto_1
    return-void
.end method

.method public notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 324
    const-string p1, "JS-Video-Brigde"

    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 326
    const-string p2, "state"

    invoke-virtual {v0, p2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCloseBtn,result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v0

    invoke-interface {v0, p2}, Lccsancom/mbridge/msdk/video/signal/i;->notifyCloseBtn(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :cond_0
    goto :goto_0

    .line 330
    :catchall_0
    move-exception p2

    .line 331
    const-string v0, "notifyCloseBtn"

    invoke-static {p1, v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 333
    :goto_0
    return-void
.end method

.method public openURL(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 337
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "openURL:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JS-Video-Brigde"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 340
    :try_start_0
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 341
    const-string p2, "url"

    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 342
    const-string v1, "type"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 343
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 344
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a:Lccsanandroid/content/Context;

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/click/b;->a(Lccsanandroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 346
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a:Lccsanandroid/content/Context;

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/click/b;->b(Lccsanandroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 350
    :catchall_0
    move-exception p1

    .line 351
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :catch_0
    move-exception p1

    .line 349
    invoke-virtual {p1}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_1
    :goto_0
    return-void
.end method

.method public playVideoFinishOperate(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 469
    const-string p1, "JS-Video-Brigde"

    :try_start_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    if-eqz v0, :cond_1

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 473
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 474
    const-string p2, "type"

    invoke-virtual {v0, p2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playVideoFinishOperate,type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v0

    invoke-interface {v0, p2}, Lccsancom/mbridge/msdk/video/signal/c;->f(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    :cond_1
    goto :goto_0

    .line 478
    :catchall_0
    move-exception p2

    .line 479
    const-string v0, "playVideoFinishOperate error"

    invoke-static {p1, v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 481
    :goto_0
    return-void
.end method

.method public playerGetMuteState(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 910
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 912
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->C(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 915
    goto :goto_0

    .line 913
    :catchall_0
    move-exception p1

    .line 914
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "playerGetMuteState error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    :goto_0
    return-void
.end method

.method public playerMute(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 890
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 892
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->A(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 895
    goto :goto_0

    .line 893
    :catchall_0
    move-exception p1

    .line 894
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "playerMute error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    :goto_0
    return-void
.end method

.method public playerPause(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 850
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 852
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->w(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 855
    goto :goto_0

    .line 853
    :catchall_0
    move-exception p1

    .line 854
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "playerPause error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    :goto_0
    return-void
.end method

.method public playerPlay(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 840
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 842
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->v(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 845
    goto :goto_0

    .line 843
    :catchall_0
    move-exception p1

    .line 844
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "playerPlay error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    :goto_0
    return-void
.end method

.method public playerResume(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 860
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 862
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->x(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 865
    goto :goto_0

    .line 863
    :catchall_0
    move-exception p1

    .line 864
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "playerResume error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    :goto_0
    return-void
.end method

.method public playerSetRenderType(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 930
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 932
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->E(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 935
    goto :goto_0

    .line 933
    :catchall_0
    move-exception p1

    .line 934
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "playerSetRenderType error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    :goto_0
    return-void
.end method

.method public playerSetSource(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 920
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 922
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->D(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    goto :goto_0

    .line 923
    :catchall_0
    move-exception p1

    .line 924
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "playerSetSource error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    :goto_0
    return-void
.end method

.method public playerStop(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 870
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 872
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->y(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 875
    goto :goto_0

    .line 873
    :catchall_0
    move-exception p1

    .line 874
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "playerStop error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    :goto_0
    return-void
.end method

.method public playerUnmute(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 900
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 902
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->B(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 905
    goto :goto_0

    .line 903
    :catchall_0
    move-exception p1

    .line 904
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "playerUnmute error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    :goto_0
    return-void
.end method

.method public playerUpdateFrame(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 880
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 882
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->z(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 885
    goto :goto_0

    .line 883
    :catchall_0
    move-exception p1

    .line 884
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "playerUpdateFrame error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    :goto_0
    return-void
.end method

.method public preloadSubPlayTemplateView(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 940
    const-string v0, "JS-Video-Brigde"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 942
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    if-eqz v1, :cond_0

    .line 943
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v1

    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->F(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V

    goto :goto_0

    .line 945
    :cond_0
    move-object v1, p1

    check-cast v1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 946
    iget-object v2, v1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    instance-of v2, v2, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v2, :cond_2

    .line 947
    iget-object v1, v1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 948
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getWebViewListener()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 949
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getWebViewListener()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/mbsignalcommon/b/a;

    invoke-virtual {v1, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 950
    const-string p1, "preloadSubPlayTemplateView: RVWebViewListener"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 952
    :cond_1
    const-string p1, "preloadSubPlayTemplateView: failed"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    :cond_2
    :goto_0
    goto :goto_1

    .line 956
    :catchall_0
    move-exception p1

    .line 957
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preloadSubPlayTemplateView error "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    :goto_1
    return-void
.end method

.method public progressOperate(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    .line 264
    const-string v0, "JS-Video-Brigde"

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    if-eqz v1, :cond_0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 266
    const-string p2, "progress"

    invoke-virtual {v1, p2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    .line 267
    const-string v2, "view_visible"

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "progressOperate,progress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",viewVisible:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v2}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v2

    invoke-interface {v2, p2, v1}, Lccsancom/mbridge/msdk/video/signal/i;->progressOperate(II)V

    .line 270
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :cond_0
    goto :goto_0

    .line 272
    :catchall_0
    move-exception p1

    .line 273
    const-string p2, "progressOperate error"

    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    :goto_0
    return-void
.end method

.method public reactDeveloper(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 501
    const-string v0, "JS-Video-Brigde"

    const-string v1, "reactDeveloper"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    if-eqz v1, :cond_0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 504
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v1}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSBTModule()Lccsancom/mbridge/msdk/video/signal/b;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lccsancom/mbridge/msdk/video/signal/b;->reactDeveloper(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 506
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    :goto_0
    goto :goto_1

    .line 508
    :catchall_0
    move-exception p1

    .line 509
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reactDeveloper error "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :goto_1
    return-void
.end method

.method public readyStatus(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 446
    if-eqz p1, :cond_1

    .line 447
    :try_start_0
    check-cast p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 448
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 449
    const-string p2, "isReady"

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    .line 450
    iget-object v0, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lccsancom/mbridge/msdk/video/signal/a/j;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/video/signal/a/j;

    .line 452
    invoke-virtual {v0, p2}, Lccsancom/mbridge/msdk/video/signal/a/j;->i(I)V

    .line 454
    :cond_0
    iget-object v0, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_1

    .line 455
    iget-object p1, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 456
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getWebViewListener()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 457
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getWebViewListener()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;->a(Lccsanandroid/webkit/WebView;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 461
    :catchall_0
    move-exception p1

    .line 462
    const-string p2, "JS-Video-Brigde"

    const-string v0, "readyStatus"

    invoke-static {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 463
    :cond_1
    :goto_0
    nop

    .line 464
    :goto_1
    return-void
.end method

.method public removeCacheItem(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .line 1125
    const-string v0, "removeCacheItem error "

    const-string v1, "JS-Video-Brigde"

    .line 1126
    nop

    .line 1128
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v4

    const-string v5, "MBridgeH5CacheSP"

    .line 1129
    invoke-virtual {v4, v5, v3}, Lccsanandroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Lccsanandroid/content/SharedPreferences;

    move-result-object v4

    .line 1130
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1131
    new-instance v5, Lccsanorg/json/JSONObject;

    invoke-direct {v5, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1132
    const-string p2, "key"

    invoke-virtual {v5, p2}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1133
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1134
    invoke-interface {v4}, Lccsanandroid/content/SharedPreferences;->edit()Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, p2}, Lccsanandroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Lccsanandroid/content/SharedPreferences$Editor;->apply()V

    .line 1136
    :cond_0
    const-string p2, "Delete Success"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1137
    const/4 v4, 0x1

    goto :goto_0

    .line 1130
    :cond_1
    const-string p2, ""

    const/4 v4, 0x0

    .line 1143
    :goto_0
    goto :goto_1

    .line 1139
    :catchall_0
    move-exception p2

    .line 1140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delete Error, reason is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1142
    const/4 v4, 0x0

    .line 1146
    :goto_1
    :try_start_1
    new-instance v5, Lccsanorg/json/JSONObject;

    invoke-direct {v5}, Lccsanorg/json/JSONObject;-><init>()V

    .line 1147
    const-string v6, "code"

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {v5, v6, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1148
    const-string v2, "message"

    invoke-virtual {v5, v2, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1149
    const/4 p2, 0x2

    if-eqz p1, :cond_3

    if-eqz v4, :cond_3

    .line 1150
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v2

    invoke-virtual {v5}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, p2}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 1152
    :cond_3
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v2

    invoke-virtual {v5}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, p2}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1156
    :goto_2
    goto :goto_3

    .line 1154
    :catchall_1
    move-exception p1

    .line 1155
    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    :goto_3
    return-void
.end method

.method public removeFromSuperView(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 690
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 692
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->g(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    goto :goto_0

    .line 693
    :catchall_0
    move-exception p1

    .line 694
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeFromSuperView error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    :goto_0
    return-void
.end method

.method public reportUrls(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 515
    const-string v0, "JS-Video-Brigde"

    const-string v1, "reportUrls"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :try_start_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 518
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 520
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    :goto_0
    goto :goto_1

    .line 522
    :catchall_0
    move-exception p1

    .line 523
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportUrls error "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :goto_1
    return-void
.end method

.method public setCacheItem(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .line 1088
    const-string v0, "setCacheItem error "

    const-string v1, "JS-Video-Brigde"

    .line 1089
    nop

    .line 1091
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v4

    const-string v5, "MBridgeH5CacheSP"

    .line 1092
    invoke-virtual {v4, v5, v3}, Lccsanandroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Lccsanandroid/content/SharedPreferences;

    move-result-object v4

    .line 1093
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1094
    new-instance v5, Lccsanorg/json/JSONObject;

    invoke-direct {v5, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1095
    const-string p2, "key"

    invoke-virtual {v5, p2}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1096
    const-string v6, "value"

    invoke-virtual {v5, v6}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1097
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1098
    invoke-interface {v4}, Lccsanandroid/content/SharedPreferences;->edit()Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, p2, v5}, Lccsanandroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Lccsanandroid/content/SharedPreferences$Editor;->apply()V

    .line 1100
    :cond_0
    const-string p2, "Save Success"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1101
    const/4 v4, 0x1

    goto :goto_0

    .line 1093
    :cond_1
    const-string p2, ""

    const/4 v4, 0x0

    .line 1107
    :goto_0
    goto :goto_1

    .line 1103
    :catchall_0
    move-exception p2

    .line 1104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Save Error, reason is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1106
    const/4 v4, 0x0

    .line 1110
    :goto_1
    :try_start_1
    new-instance v5, Lccsanorg/json/JSONObject;

    invoke-direct {v5}, Lccsanorg/json/JSONObject;-><init>()V

    .line 1111
    const-string v6, "code"

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {v5, v6, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1112
    const-string v2, "message"

    invoke-virtual {v5, v2, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1113
    const/4 p2, 0x2

    if-eqz p1, :cond_3

    if-eqz v4, :cond_3

    .line 1114
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v2

    invoke-virtual {v5}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, p2}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 1116
    :cond_3
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v2

    invoke-virtual {v5}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, p2}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1120
    :goto_2
    goto :goto_3

    .line 1118
    :catchall_1
    move-exception p1

    .line 1119
    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    :goto_3
    return-void
.end method

.method public setScaleFitXY(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 310
    const-string p1, "JS-Video-Brigde"

    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 312
    const-string p2, "fitxy"

    invoke-virtual {v0, p2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScaleFitXY,type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v0

    invoke-interface {v0, p2}, Lccsancom/mbridge/msdk/video/signal/i;->setScaleFitXY(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :cond_0
    goto :goto_0

    .line 316
    :catchall_0
    move-exception p2

    .line 317
    const-string v0, "showVideoClickView error"

    invoke-static {p1, v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 319
    :goto_0
    return-void
.end method

.method public setSubPlayTemplateInfo(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSubPlayTemplateInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JS-Video-Brigde"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1020
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->I(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1023
    goto :goto_0

    .line 1021
    :catchall_0
    move-exception p1

    .line 1022
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSubPlayTemplateInfo error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    :goto_0
    return-void
.end method

.method public setViewAlpha(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 760
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 762
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->n(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    goto :goto_0

    .line 763
    :catchall_0
    move-exception p1

    .line 764
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setViewAlpha error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    :goto_0
    return-void
.end method

.method public setViewBgColor(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 750
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 752
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->m(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    goto :goto_0

    .line 753
    :catchall_0
    move-exception p1

    .line 754
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setViewBgColor error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :goto_0
    return-void
.end method

.method public setViewRect(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 680
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 682
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->f(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    goto :goto_0

    .line 683
    :catchall_0
    move-exception p1

    .line 684
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setViewRect error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    :goto_0
    return-void
.end method

.method public setViewScale(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 770
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 772
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->o(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 775
    goto :goto_0

    .line 773
    :catchall_0
    move-exception p1

    .line 774
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setViewScale error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    :goto_0
    return-void
.end method

.method public showAlertView(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 358
    const-string v0, "JS-Video-Brigde"

    const-string v1, "showAlertView"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :try_start_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    if-eqz v2, :cond_0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 361
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v2}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v2

    invoke-interface {v2, p2}, Lccsancom/mbridge/msdk/video/signal/i;->showIVRewardAlertView(Ljava/lang/String;)V

    .line 362
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    const-string v2, ""

    invoke-virtual {p2, p1, v1, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    :cond_0
    goto :goto_0

    .line 364
    :catchall_0
    move-exception p1

    .line 365
    invoke-static {v0, v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 367
    :goto_0
    return-void
.end method

.method public showVideoClickView(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 296
    const-string p1, "JS-Video-Brigde"

    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 298
    const-string p2, "type"

    invoke-virtual {v0, p2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showVideoClickView,type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSContainerModule()Lccsancom/mbridge/msdk/video/signal/e;

    move-result-object v0

    invoke-interface {v0, p2}, Lccsancom/mbridge/msdk/video/signal/e;->showVideoClickView(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :cond_0
    goto :goto_0

    .line 302
    :catchall_0
    move-exception p2

    .line 303
    const-string v0, "showVideoClickView error"

    invoke-static {p1, v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    :goto_0
    return-void
.end method

.method public showVideoLocation(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 12

    .line 188
    const-string p1, "JS-Video-Brigde"

    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 190
    const-string p2, "margin_top"

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 191
    const-string p2, "margin_left"

    invoke-virtual {v0, p2, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 192
    const-string p2, "view_width"

    invoke-virtual {v0, p2, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 193
    const-string p2, "view_height"

    invoke-virtual {v0, p2, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 194
    const-string p2, "radius"

    invoke-virtual {v0, p2, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 195
    const-string p2, "border_top"

    invoke-virtual {v0, p2, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 196
    const-string p2, "border_left"

    invoke-virtual {v0, p2, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 197
    const-string p2, "border_width"

    invoke-virtual {v0, p2, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 198
    const-string p2, "border_height"

    invoke-virtual {v0, p2, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 199
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showVideoLocation,margin_top:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",marginLeft:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",viewWidth:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",viewHeight:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",radius:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",borderTop: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",borderLeft: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",borderWidth: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",borderHeight: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {p2}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v2

    invoke-interface/range {v2 .. v11}, Lccsancom/mbridge/msdk/video/signal/i;->showVideoLocation(IIIIIIIII)V

    .line 202
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {p2}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object p2

    invoke-interface {p2}, Lccsancom/mbridge/msdk/video/signal/c;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :cond_0
    goto :goto_0

    .line 204
    :catchall_0
    move-exception p2

    .line 205
    const-string v0, "showVideoLocation error"

    invoke-static {p1, v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    :goto_0
    return-void
.end method

.method public showView(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 740
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 742
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->l(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    goto :goto_0

    .line 743
    :catchall_0
    move-exception p1

    .line 744
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showView error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    :goto_0
    return-void
.end method

.method public soundOperate(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    .line 212
    const-string v0, "JS-Video-Brigde"

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    if-eqz v1, :cond_1

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 213
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 214
    const-string p2, "mute"

    invoke-virtual {v1, p2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    .line 215
    const-string v2, "view_visible"

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 216
    const-string v3, "pt"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "soundOperate,mute:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",viewVisible:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",pt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v1}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v1

    invoke-interface {v1, p2, v2}, Lccsancom/mbridge/msdk/video/signal/i;->soundOperate(II)V

    goto :goto_0

    .line 221
    :cond_0
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v3}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v3

    invoke-interface {v3, p2, v2, v1}, Lccsancom/mbridge/msdk/video/signal/i;->soundOperate(IILjava/lang/String;)V

    .line 223
    :goto_0
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :cond_1
    goto :goto_1

    .line 225
    :catchall_0
    move-exception p1

    .line 226
    const-string p2, "soundOperate error"

    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    :goto_1
    return-void
.end method

.method public statistics(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 155
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "statistics,params:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JS-Video-Brigde"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :try_start_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    if-eqz p1, :cond_0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 158
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 159
    const-string p2, "type"

    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    .line 160
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 161
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v1}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v1

    invoke-interface {v1, p2, p1}, Lccsancom/mbridge/msdk/video/signal/c;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_0
    goto :goto_0

    .line 163
    :catchall_0
    move-exception p1

    .line 164
    const-string p2, "statistics error"

    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    :goto_0
    return-void
.end method

.method public toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 397
    const-string p1, "JS-Video-Brigde"

    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    if-eqz v0, :cond_2

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 398
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 399
    const-string p2, "state"

    invoke-virtual {v0, p2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toggleCloseBtn,result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 402
    goto :goto_0

    .line 403
    :cond_0
    if-ne p2, v1, :cond_1

    .line 404
    const/4 v1, 0x1

    goto :goto_0

    .line 406
    :cond_1
    const/4 v1, 0x0

    .line 408
    :goto_0
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {p2}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object p2

    invoke-interface {p2, v0, v1}, Lccsancom/mbridge/msdk/video/signal/i;->closeVideoOperate(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    :cond_2
    goto :goto_1

    .line 410
    :catchall_0
    move-exception p2

    .line 411
    const-string v0, "toggleCloseBtn"

    invoke-static {p1, v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 413
    :goto_1
    return-void
.end method

.method public triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 170
    const-string v0, "JS-Video-Brigde"

    const-string v1, "triggerCloseBtn"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    if-eqz v1, :cond_0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 174
    const-string p2, "state"

    invoke-virtual {v1, p2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 175
    const-string v1, "click"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 176
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {p2}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object p2

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-interface {p2, v1, v2}, Lccsancom/mbridge/msdk/video/signal/i;->closeVideoOperate(II)V

    .line 177
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :cond_0
    goto :goto_0

    .line 180
    :catchall_0
    move-exception p1

    .line 181
    const-string p2, "triggerCloseBtn error"

    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    :goto_0
    return-void
.end method

.method public videoOperate(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 233
    const-string v0, "JS-Video-Brigde"

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    if-eqz v1, :cond_0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 235
    const-string p2, "pause_or_resume"

    invoke-virtual {v1, p2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoOperate,pauseOrResume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->d:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v1}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v1

    invoke-interface {v1, p2}, Lccsancom/mbridge/msdk/video/signal/i;->videoOperate(I)V

    .line 238
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :cond_0
    goto :goto_0

    .line 240
    :catchall_0
    move-exception p1

    .line 241
    const-string p2, "videoOperate error"

    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    :goto_0
    return-void
.end method

.method public webviewFireEvent(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 1028
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1030
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->J(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1033
    goto :goto_0

    .line 1031
    :catchall_0
    move-exception p1

    .line 1032
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSubPlayTemplateInfo error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    :goto_0
    return-void
.end method

.method public webviewGoBack(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 820
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 822
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->t(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    goto :goto_0

    .line 823
    :catchall_0
    move-exception p1

    .line 824
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "webviewGoBack error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    :goto_0
    return-void
.end method

.method public webviewGoForward(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 830
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 832
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->u(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 835
    goto :goto_0

    .line 833
    :catchall_0
    move-exception p1

    .line 834
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "webviewGoForward error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    :goto_0
    return-void
.end method

.method public webviewLoad(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 800
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 802
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->r(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    goto :goto_0

    .line 803
    :catchall_0
    move-exception p1

    .line 804
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "webviewLoad error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    :goto_0
    return-void
.end method

.method public webviewReload(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 810
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseVideoCommunication;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 812
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->s(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 815
    goto :goto_0

    .line 813
    :catchall_0
    move-exception p1

    .line 814
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "webviewReload error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JS-Video-Brigde"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    :goto_0
    return-void
.end method
