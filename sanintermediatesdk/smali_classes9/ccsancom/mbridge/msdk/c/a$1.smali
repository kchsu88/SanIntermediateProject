.class final Lccsancom/mbridge/msdk/c/a$1;
.super Lccsanandroid/os/Handler;
.source "LoopTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/c/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/c/a;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lccsancom/mbridge/msdk/c/a$1;->a:Lccsancom/mbridge/msdk/c/a;

    invoke-direct {p0}, Lccsanandroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Lccsanandroid/os/Message;)V
    .locals 3

    .line 42
    iget-object v0, p0, Lccsancom/mbridge/msdk/c/a$1;->a:Lccsancom/mbridge/msdk/c/a;

    monitor-enter v0

    .line 43
    :try_start_0
    iget p1, p1, Lccsanandroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 52
    :pswitch_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/c/a$1;->a:Lccsancom/mbridge/msdk/c/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/c/a;->c(Lccsancom/mbridge/msdk/c/a;)V

    .line 53
    goto :goto_0

    .line 45
    :pswitch_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/c/a$1;->a:Lccsancom/mbridge/msdk/c/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/c/a;->a(Lccsancom/mbridge/msdk/c/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    monitor-exit v0

    return-void

    .line 48
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/c/a$1;->a:Lccsancom/mbridge/msdk/c/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/c/a;->b(Lccsancom/mbridge/msdk/c/a;)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lccsancom/mbridge/msdk/c/a;->a(Lccsancom/mbridge/msdk/c/a;J)V

    .line 49
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/c/a$1;->obtainMessage(I)Lccsanandroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lccsancom/mbridge/msdk/c/a$1;->a:Lccsancom/mbridge/msdk/c/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/c/a;->b(Lccsancom/mbridge/msdk/c/a;)J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lccsancom/mbridge/msdk/c/a$1;->sendMessageDelayed(Lccsanandroid/os/Message;J)Z

    .line 50
    nop

    .line 57
    :goto_0
    monitor-exit v0

    .line 58
    return-void

    .line 57
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
