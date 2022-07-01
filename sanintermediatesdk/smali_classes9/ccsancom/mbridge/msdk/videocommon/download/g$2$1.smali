.class final Lccsancom/mbridge/msdk/videocommon/download/g$2$1;
.super Ljava/lang/Object;
.source "H5DownLoadManager.java"

# interfaces
.implements Lccsancom/mbridge/msdk/videocommon/download/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/videocommon/download/g$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/videocommon/download/g$2;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/videocommon/download/g$2;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/g$2$1;->a:Lccsancom/mbridge/msdk/videocommon/download/g$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 231
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 261
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/g$2$1;->a:Lccsancom/mbridge/msdk/videocommon/download/g$2;

    iget-object v0, v0, Lccsancom/mbridge/msdk/videocommon/download/g$2;->f:Lccsancom/mbridge/msdk/videocommon/download/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/videocommon/download/g;->b(Lccsancom/mbridge/msdk/videocommon/download/g;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/g$2$1;->a:Lccsancom/mbridge/msdk/videocommon/download/g$2;

    iget-object v1, v1, Lccsancom/mbridge/msdk/videocommon/download/g$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 262
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/g$2$1;->a:Lccsancom/mbridge/msdk/videocommon/download/g$2;

    iget-object v0, v0, Lccsancom/mbridge/msdk/videocommon/download/g$2;->e:Lccsancom/mbridge/msdk/videocommon/download/g$a;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/g$2$1;->a:Lccsancom/mbridge/msdk/videocommon/download/g$2;

    iget-object v0, v0, Lccsancom/mbridge/msdk/videocommon/download/g$2;->e:Lccsancom/mbridge/msdk/videocommon/download/g$a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/g$2$1;->a:Lccsancom/mbridge/msdk/videocommon/download/g$2;

    iget-object v1, v1, Lccsancom/mbridge/msdk/videocommon/download/g$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lccsancom/mbridge/msdk/videocommon/download/g$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :cond_0
    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 267
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 269
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/g$2$1;->a:Lccsancom/mbridge/msdk/videocommon/download/g$2;

    iget-object v0, v0, Lccsancom/mbridge/msdk/videocommon/download/g$2;->e:Lccsancom/mbridge/msdk/videocommon/download/g$a;

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/g$2$1;->a:Lccsancom/mbridge/msdk/videocommon/download/g$2;

    iget-object v0, v0, Lccsancom/mbridge/msdk/videocommon/download/g$2;->e:Lccsancom/mbridge/msdk/videocommon/download/g$a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/g$2$1;->a:Lccsancom/mbridge/msdk/videocommon/download/g$2;

    iget-object v1, v1, Lccsancom/mbridge/msdk/videocommon/download/g$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lccsancom/mbridge/msdk/videocommon/download/g$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 0

    .line 236
    :try_start_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/g$2$1;->a:Lccsancom/mbridge/msdk/videocommon/download/g$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/videocommon/download/g$2;->f:Lccsancom/mbridge/msdk/videocommon/download/g;

    invoke-static {p1}, Lccsancom/mbridge/msdk/videocommon/download/g;->b(Lccsancom/mbridge/msdk/videocommon/download/g;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 237
    if-eqz p2, :cond_2

    array-length p1, p2

    if-lez p1, :cond_2

    .line 238
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/g$2$1;->a:Lccsancom/mbridge/msdk/videocommon/download/g$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/videocommon/download/g$2;->f:Lccsancom/mbridge/msdk/videocommon/download/g;

    invoke-static {p1}, Lccsancom/mbridge/msdk/videocommon/download/g;->a(Lccsancom/mbridge/msdk/videocommon/download/g;)Lccsancom/mbridge/msdk/videocommon/download/h;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Lccsancom/mbridge/msdk/videocommon/download/h;->a(Ljava/lang/String;[B)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 239
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/g$2$1;->a:Lccsancom/mbridge/msdk/videocommon/download/g$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/videocommon/download/g$2;->e:Lccsancom/mbridge/msdk/videocommon/download/g$a;

    if-eqz p1, :cond_0

    .line 240
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/g$2$1;->a:Lccsancom/mbridge/msdk/videocommon/download/g$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/videocommon/download/g$2;->e:Lccsancom/mbridge/msdk/videocommon/download/g$a;

    invoke-interface {p1, p3}, Lccsancom/mbridge/msdk/videocommon/download/g$a;->a(Ljava/lang/String;)V

    .line 242
    :cond_0
    return-void

    .line 244
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/g$2$1;->a:Lccsancom/mbridge/msdk/videocommon/download/g$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/videocommon/download/g$2;->e:Lccsancom/mbridge/msdk/videocommon/download/g$a;

    if-eqz p1, :cond_2

    .line 245
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/g$2$1;->a:Lccsancom/mbridge/msdk/videocommon/download/g$2;

    iget-object p1, p1, Lccsancom/mbridge/msdk/videocommon/download/g$2;->e:Lccsancom/mbridge/msdk/videocommon/download/g$a;

    const-string p2, "save file failed"

    invoke-interface {p1, p3, p2}, Lccsancom/mbridge/msdk/videocommon/download/g$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_2
    goto :goto_0

    .line 248
    :catch_0
    move-exception p1

    .line 249
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_3

    .line 250
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 252
    :cond_3
    iget-object p2, p0, Lccsancom/mbridge/msdk/videocommon/download/g$2$1;->a:Lccsancom/mbridge/msdk/videocommon/download/g$2;

    iget-object p2, p2, Lccsancom/mbridge/msdk/videocommon/download/g$2;->e:Lccsancom/mbridge/msdk/videocommon/download/g$a;

    if-eqz p2, :cond_4

    .line 253
    iget-object p2, p0, Lccsancom/mbridge/msdk/videocommon/download/g$2$1;->a:Lccsancom/mbridge/msdk/videocommon/download/g$2;

    iget-object p2, p2, Lccsancom/mbridge/msdk/videocommon/download/g$2;->e:Lccsancom/mbridge/msdk/videocommon/download/g$a;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lccsancom/mbridge/msdk/videocommon/download/g$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_4
    :goto_0
    return-void
.end method
