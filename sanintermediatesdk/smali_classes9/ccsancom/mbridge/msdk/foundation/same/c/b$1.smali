.class final Lccsancom/mbridge/msdk/foundation/same/c/b$1;
.super Lccsanandroid/os/Handler;
.source "CommonImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/foundation/same/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/same/c/b;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/same/c/b;Lccsanandroid/os/Looper;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/c/b$1;->a:Lccsancom/mbridge/msdk/foundation/same/c/b;

    invoke-direct {p0, p2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Lccsanandroid/os/Message;)V
    .locals 3

    .line 41
    :try_start_0
    iget v0, p1, Lccsanandroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    const-string v2, "message_key"

    if-ne v0, v1, :cond_2

    .line 42
    :try_start_1
    invoke-virtual {p1}, Lccsanandroid/os/Message;->getData()Lccsanandroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p1}, Lccsanandroid/os/Message;->getData()Lccsanandroid/os/Bundle;

    move-result-object p1

    const-string v1, "message_bitmap"

    invoke-virtual {p1, v1}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/c/a;->a(Ljava/lang/String;)Lccsanandroid/graphics/Bitmap;

    move-result-object p1

    .line 45
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/c/b$1;->a:Lccsancom/mbridge/msdk/foundation/same/c/b;

    invoke-virtual {v1, v0, p1}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;Lccsanandroid/graphics/Bitmap;)V

    .line 47
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/c/b$1;->a:Lccsancom/mbridge/msdk/foundation/same/c/b;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Lccsancom/mbridge/msdk/foundation/same/c/b;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 48
    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/same/c/c;

    .line 50
    if-eqz v2, :cond_0

    .line 51
    invoke-interface {v2, p1, v0}, Lccsancom/mbridge/msdk/foundation/same/c/c;->onSuccessLoad(Lccsanandroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 53
    :cond_0
    goto :goto_0

    .line 55
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/c/b$1;->a:Lccsancom/mbridge/msdk/foundation/same/c/b;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Lccsancom/mbridge/msdk/foundation/same/c/b;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 56
    :cond_2
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 57
    invoke-virtual {p1}, Lccsanandroid/os/Message;->getData()Lccsanandroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {p1}, Lccsanandroid/os/Message;->getData()Lccsanandroid/os/Bundle;

    move-result-object p1

    const-string v1, "message_message"

    invoke-virtual {p1, v1}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 60
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/c/b$1;->a:Lccsancom/mbridge/msdk/foundation/same/c/b;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Lccsancom/mbridge/msdk/foundation/same/c/b;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 61
    if-eqz v1, :cond_4

    .line 62
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/same/c/c;

    .line 63
    if-eqz v2, :cond_3

    .line 64
    invoke-interface {v2, p1, v0}, Lccsancom/mbridge/msdk/foundation/same/c/c;->onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_3
    goto :goto_1

    .line 68
    :cond_4
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/c/b$1;->a:Lccsancom/mbridge/msdk/foundation/same/c/b;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Lccsancom/mbridge/msdk/foundation/same/c/b;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 56
    :cond_5
    :goto_2
    nop

    .line 72
    :goto_3
    goto :goto_4

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    :goto_4
    return-void
.end method
