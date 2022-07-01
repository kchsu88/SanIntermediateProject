.class final Lccsancom/mbridge/msdk/foundation/same/report/a$2;
.super Lccsancom/mbridge/msdk/foundation/same/report/d/b;
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
.field final synthetic a:J

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lccsancom/mbridge/msdk/foundation/same/report/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/same/report/a;JLjava/util/ArrayList;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$2;->c:Lccsancom/mbridge/msdk/foundation/same/report/a;

    iput-wide p2, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$2;->a:J

    iput-object p4, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$2;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/report/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 158
    :try_start_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$2;->c:Lccsancom/mbridge/msdk/foundation/same/report/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/report/a;->b(Lccsancom/mbridge/msdk/foundation/same/report/a;)Lccsancom/mbridge/msdk/foundation/db/BatchReportDao;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$2;->c:Lccsancom/mbridge/msdk/foundation/same/report/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/report/a;->b(Lccsancom/mbridge/msdk/foundation/same/report/a;)Lccsancom/mbridge/msdk/foundation/db/BatchReportDao;

    move-result-object p1

    iget-wide v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$2;->a:J

    invoke-virtual {p1, v0, v1}, Lccsancom/mbridge/msdk/foundation/db/BatchReportDao;->deleteBatchReportMessagesByTimestamp(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_0
    goto :goto_0

    .line 161
    :catch_0
    move-exception p1

    .line 162
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$2;->c:Lccsancom/mbridge/msdk/foundation/same/report/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/report/a;->d(Lccsancom/mbridge/msdk/foundation/same/report/a;)Ljava/util/Stack;

    move-result-object p1

    monitor-enter p1

    .line 165
    :try_start_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$2;->c:Lccsancom/mbridge/msdk/foundation/same/report/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/report/a;->d(Lccsancom/mbridge/msdk/foundation/same/report/a;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 166
    monitor-exit p1

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .line 171
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$2;->c:Lccsancom/mbridge/msdk/foundation/same/report/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/report/a;->d(Lccsancom/mbridge/msdk/foundation/same/report/a;)Ljava/util/Stack;

    move-result-object p1

    monitor-enter p1

    .line 172
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$2;->c:Lccsancom/mbridge/msdk/foundation/same/report/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/report/a;->d(Lccsancom/mbridge/msdk/foundation/same/report/a;)Ljava/util/Stack;

    move-result-object v0

    iget-wide v1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$2;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$2;->c:Lccsancom/mbridge/msdk/foundation/same/report/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/report/a;->b(Lccsancom/mbridge/msdk/foundation/same/report/a;)Lccsancom/mbridge/msdk/foundation/db/BatchReportDao;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$2;->c:Lccsancom/mbridge/msdk/foundation/same/report/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/report/a;->b(Lccsancom/mbridge/msdk/foundation/same/report/a;)Lccsancom/mbridge/msdk/foundation/db/BatchReportDao;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/db/BatchReportDao;->updateMessagesReportState(Ljava/util/ArrayList;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$2;->c:Lccsancom/mbridge/msdk/foundation/same/report/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/report/a;->d(Lccsancom/mbridge/msdk/foundation/same/report/a;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    .line 180
    :try_start_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$2;->c:Lccsancom/mbridge/msdk/foundation/same/report/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/report/a;->d(Lccsancom/mbridge/msdk/foundation/same/report/a;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$2;->c:Lccsancom/mbridge/msdk/foundation/same/report/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/report/a;->d(Lccsancom/mbridge/msdk/foundation/same/report/a;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 182
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$2;->c:Lccsancom/mbridge/msdk/foundation/same/report/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/same/report/a;->d(Lccsancom/mbridge/msdk/foundation/same/report/a;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->clear()V

    .line 183
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$2;->c:Lccsancom/mbridge/msdk/foundation/same/report/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/same/report/a;->b(Lccsancom/mbridge/msdk/foundation/same/report/a;)Lccsancom/mbridge/msdk/foundation/db/BatchReportDao;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 184
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$2;->c:Lccsancom/mbridge/msdk/foundation/same/report/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/same/report/a;->b(Lccsancom/mbridge/msdk/foundation/same/report/a;)Lccsancom/mbridge/msdk/foundation/db/BatchReportDao;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lccsancom/mbridge/msdk/foundation/db/BatchReportDao;->deleteBatchReportMessagesByTimestamp(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :cond_1
    :try_start_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$2;->c:Lccsancom/mbridge/msdk/foundation/same/report/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/report/a;->d(Lccsancom/mbridge/msdk/foundation/same/report/a;)Ljava/util/Stack;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    :try_start_3
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    :try_start_4
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$2;->c:Lccsancom/mbridge/msdk/foundation/same/report/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/report/a;->d(Lccsancom/mbridge/msdk/foundation/same/report/a;)Ljava/util/Stack;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 190
    goto :goto_2

    .line 189
    :goto_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a$2;->c:Lccsancom/mbridge/msdk/foundation/same/report/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/same/report/a;->d(Lccsancom/mbridge/msdk/foundation/same/report/a;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    .line 190
    throw v0

    .line 192
    :cond_2
    :goto_2
    monitor-exit p1

    .line 194
    return-void

    .line 192
    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
