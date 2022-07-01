.class final Lccsancom/mbridge/msdk/foundation/same/report/b/a$1;
.super Lccsanandroid/os/Handler;
.source "CrashHandlerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/foundation/same/report/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/same/report/b/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/same/report/b/a;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/report/b/a$1;->a:Lccsancom/mbridge/msdk/foundation/same/report/b/a;

    invoke-direct {p0}, Lccsanandroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Lccsanandroid/os/Message;)V
    .locals 3

    .line 76
    invoke-super {p0, p1}, Lccsanandroid/os/Handler;->handleMessage(Lccsanandroid/os/Message;)V

    .line 77
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 79
    :pswitch_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/b/a$1;->a:Lccsancom/mbridge/msdk/foundation/same/report/b/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/report/b/a;->a(Lccsancom/mbridge/msdk/foundation/same/report/b/a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/Context;

    .line 80
    if-nez v0, :cond_0

    .line 81
    return-void

    .line 82
    :cond_0
    iget-object v1, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 83
    iget-object p1, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    .line 84
    if-eqz p1, :cond_1

    .line 85
    new-instance v1, Lccsancom/mbridge/msdk/foundation/same/report/c;

    invoke-direct {v1, v0}, Lccsancom/mbridge/msdk/foundation/same/report/c;-><init>(Lccsanandroid/content/Context;)V

    const-string v0, "crashinfo"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "file"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {v1, v0, p1}, Lccsancom/mbridge/msdk/foundation/same/report/c;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 93
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
