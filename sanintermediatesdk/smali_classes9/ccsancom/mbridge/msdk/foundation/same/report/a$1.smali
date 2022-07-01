.class final Lccsancom/mbridge/msdk/foundation/same/report/a$1;
.super Lccsanandroid/os/Handler;
.source "MBBatchReportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/foundation/same/report/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/same/report/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/same/report/a;Lccsanandroid/os/Looper;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$1;->a:Lccsancom/mbridge/msdk/foundation/same/report/a;

    invoke-direct {p0, p2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Lccsanandroid/os/Message;)V
    .locals 3

    .line 79
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    const-string v1, "last_report_time"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 102
    :pswitch_0
    invoke-virtual {p1}, Lccsanandroid/os/Message;->getData()Lccsanandroid/os/Bundle;

    move-result-object p1

    .line 103
    if-eqz p1, :cond_0

    .line 104
    const-string v0, "report_message"

    invoke-virtual {p1, v0}, Lccsanandroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 105
    invoke-virtual {p1, v1}, Lccsanandroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 106
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$1;->a:Lccsancom/mbridge/msdk/foundation/same/report/a;

    invoke-static {p1, v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/same/report/a;->b(Lccsancom/mbridge/msdk/foundation/same/report/a;Ljava/util/ArrayList;J)V

    .line 107
    goto :goto_0

    .line 92
    :pswitch_1
    invoke-virtual {p1}, Lccsanandroid/os/Message;->getData()Lccsanandroid/os/Bundle;

    move-result-object p1

    .line 93
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$1;->a:Lccsancom/mbridge/msdk/foundation/same/report/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a(Lccsancom/mbridge/msdk/foundation/same/report/a;)Lccsanandroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$1;->a:Lccsancom/mbridge/msdk/foundation/same/report/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/report/a;->b(Lccsancom/mbridge/msdk/foundation/same/report/a;)Lccsancom/mbridge/msdk/foundation/db/BatchReportDao;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$1;->a:Lccsancom/mbridge/msdk/foundation/same/report/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a(Lccsancom/mbridge/msdk/foundation/same/report/a;)Lccsanandroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lccsanandroid/os/Handler;->removeMessages(I)V

    .line 95
    invoke-virtual {p1, v1}, Lccsanandroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 96
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$1;->a:Lccsancom/mbridge/msdk/foundation/same/report/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/report/a;->b(Lccsancom/mbridge/msdk/foundation/same/report/a;)Lccsancom/mbridge/msdk/foundation/db/BatchReportDao;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lccsancom/mbridge/msdk/foundation/db/BatchReportDao;->getBatchReportMessages(J)Ljava/util/ArrayList;

    move-result-object p1

    .line 97
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$1;->a:Lccsancom/mbridge/msdk/foundation/same/report/a;

    invoke-static {v2, p1, v0, v1}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a(Lccsancom/mbridge/msdk/foundation/same/report/a;Ljava/util/ArrayList;J)V

    .line 98
    goto :goto_0

    .line 81
    :pswitch_2
    invoke-virtual {p1}, Lccsanandroid/os/Message;->getData()Lccsanandroid/os/Bundle;

    move-result-object p1

    .line 82
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$1;->a:Lccsancom/mbridge/msdk/foundation/same/report/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a(Lccsancom/mbridge/msdk/foundation/same/report/a;)Lccsanandroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$1;->a:Lccsancom/mbridge/msdk/foundation/same/report/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/report/a;->b(Lccsancom/mbridge/msdk/foundation/same/report/a;)Lccsancom/mbridge/msdk/foundation/db/BatchReportDao;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 83
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$1;->a:Lccsancom/mbridge/msdk/foundation/same/report/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a(Lccsancom/mbridge/msdk/foundation/same/report/a;)Lccsanandroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lccsanandroid/os/Handler;->removeMessages(I)V

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 85
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$1;->a:Lccsancom/mbridge/msdk/foundation/same/report/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/report/a;->b(Lccsancom/mbridge/msdk/foundation/same/report/a;)Lccsancom/mbridge/msdk/foundation/db/BatchReportDao;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lccsancom/mbridge/msdk/foundation/db/BatchReportDao;->getBatchReportMessages(J)Ljava/util/ArrayList;

    move-result-object p1

    .line 86
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$1;->a:Lccsancom/mbridge/msdk/foundation/same/report/a;

    invoke-static {v2, p1, v0, v1}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a(Lccsancom/mbridge/msdk/foundation/same/report/a;Ljava/util/ArrayList;J)V

    .line 87
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$1;->a:Lccsancom/mbridge/msdk/foundation/same/report/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/report/a;->c(Lccsancom/mbridge/msdk/foundation/same/report/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 114
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
