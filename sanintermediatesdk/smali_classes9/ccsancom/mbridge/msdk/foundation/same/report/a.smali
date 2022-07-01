.class public final Lccsancom/mbridge/msdk/foundation/same/report/a;
.super Ljava/lang/Object;
.source "MBBatchReportManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lccsancom/mbridge/msdk/foundation/same/report/a;


# instance fields
.field private c:Lccsanandroid/os/Handler;

.field private d:Z

.field private e:I

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Lccsancom/mbridge/msdk/foundation/db/BatchReportDao;

.field private i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private j:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lccsancom/mbridge/msdk/foundation/same/report/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/same/report/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->d:Z

    .line 36
    const/16 v1, 0x1e

    iput v1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->e:I

    .line 37
    const-wide/16 v1, 0x1388

    iput-wide v1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->f:J

    .line 39
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v1

    iget-object v1, v1, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->a:Ljava/lang/String;

    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->g:Ljava/lang/String;

    .line 46
    nop

    .line 1061
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v1

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v1

    .line 1062
    if-eqz v1, :cond_1

    .line 1063
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/b/a;->M()I

    move-result v2

    iput v2, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->e:I

    .line 1064
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/b/a;->N()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iput-wide v2, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->f:J

    .line 1065
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/b/a;->O()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->d:Z

    .line 1068
    :cond_1
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->d:Z

    if-nez v1, :cond_2

    .line 1069
    goto :goto_1

    .line 1071
    :cond_2
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1072
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->j:Ljava/util/Stack;

    .line 1073
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/BatchReportDao;->getInstance(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/BatchReportDao;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->h:Lccsancom/mbridge/msdk/foundation/db/BatchReportDao;

    .line 1074
    new-instance v0, Lccsanandroid/os/HandlerThread;

    const-string v1, "mb_batch_report_thread"

    invoke-direct {v0, v1}, Lccsanandroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {v0}, Lccsanandroid/os/HandlerThread;->start()V

    .line 1076
    new-instance v1, Lccsancom/mbridge/msdk/foundation/same/report/a$1;

    invoke-virtual {v0}, Lccsanandroid/os/HandlerThread;->getLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lccsancom/mbridge/msdk/foundation/same/report/a$1;-><init>(Lccsancom/mbridge/msdk/foundation/same/report/a;Lccsanandroid/os/Looper;)V

    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->c:Lccsanandroid/os/Handler;

    .line 47
    :goto_1
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/foundation/same/report/a;)Lccsanandroid/os/Handler;
    .locals 0

    .line 26
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->c:Lccsanandroid/os/Handler;

    return-object p0
.end method

.method public static a()Lccsancom/mbridge/msdk/foundation/same/report/a;
    .locals 2

    .line 50
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/report/a;->b:Lccsancom/mbridge/msdk/foundation/same/report/a;

    if-nez v0, :cond_1

    .line 51
    const-class v0, Lccsancom/mbridge/msdk/foundation/same/report/a;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/report/a;->b:Lccsancom/mbridge/msdk/foundation/same/report/a;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lccsancom/mbridge/msdk/foundation/same/report/a;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/foundation/same/report/a;-><init>()V

    sput-object v1, Lccsancom/mbridge/msdk/foundation/same/report/a;->b:Lccsancom/mbridge/msdk/foundation/same/report/a;

    .line 55
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 57
    :cond_1
    :goto_0
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/report/a;->b:Lccsancom/mbridge/msdk/foundation/same/report/a;

    return-object v0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/foundation/same/report/a;Ljava/util/ArrayList;J)V
    .locals 3

    .line 26
    nop

    .line 1204
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1205
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v0

    .line 1206
    new-instance v1, Lccsanandroid/os/Bundle;

    invoke-direct {v1}, Lccsanandroid/os/Bundle;-><init>()V

    .line 1207
    const-string v2, "report_message"

    invoke-virtual {v1, v2, p1}, Lccsanandroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1208
    const-string p1, "last_report_time"

    invoke-virtual {v1, p1, p2, p3}, Lccsanandroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1209
    invoke-virtual {v0, v1}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 1210
    const/4 p1, 0x3

    iput p1, v0, Lccsanandroid/os/Message;->what:I

    .line 1211
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->c:Lccsanandroid/os/Handler;

    invoke-virtual {p0, v0}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 26
    :cond_0
    return-void
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/foundation/same/report/a;)Lccsancom/mbridge/msdk/foundation/db/BatchReportDao;
    .locals 0

    .line 26
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->h:Lccsancom/mbridge/msdk/foundation/db/BatchReportDao;

    return-object p0
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/foundation/same/report/a;Ljava/util/ArrayList;J)V
    .locals 9

    .line 26
    nop

    .line 2127
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2128
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    .line 2129
    if-nez v0, :cond_0

    .line 2130
    goto/16 :goto_1

    .line 2132
    :cond_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/report/d;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/net/h/d;

    move-result-object v0

    .line 2133
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    const-string v1, "m_sdk"

    const-string v2, "msdk"

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2135
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lqswt"

    invoke-virtual {v0, v3, v2}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2138
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 2139
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/mbridge/msdk/foundation/same/report/BatchReportMessage;

    .line 2140
    if-eqz v5, :cond_1

    .line 2141
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/same/report/BatchReportMessage;->getReportMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&ts="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/same/report/BatchReportMessage;->getTimestamp()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2142
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2143
    if-ltz v4, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v1

    if-ge v4, v5, :cond_1

    .line 2144
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2138
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2149
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2150
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2152
    new-instance v1, Lccsancom/mbridge/msdk/foundation/same/report/d/a;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/mbridge/msdk/foundation/same/report/d/a;-><init>(Lccsanandroid/content/Context;)V

    .line 2153
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->g:Ljava/lang/String;

    new-instance v4, Lccsancom/mbridge/msdk/foundation/same/report/a$2;

    invoke-direct {v4, p0, p2, p3, p1}, Lccsancom/mbridge/msdk/foundation/same/report/a$2;-><init>(Lccsancom/mbridge/msdk/foundation/same/report/a;JLjava/util/ArrayList;)V

    invoke-virtual {v1, v3, v2, v0, v4}, Lccsancom/mbridge/msdk/foundation/same/report/d/a;->c(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2199
    goto :goto_1

    .line 2197
    :catch_0
    move-exception p0

    .line 2198
    sget-object p1, Lccsancom/mbridge/msdk/foundation/same/report/a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/foundation/same/report/a;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 26
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/report/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/foundation/same/report/a;)Ljava/util/Stack;
    .locals 0

    .line 26
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->j:Ljava/util/Stack;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->h:Lccsancom/mbridge/msdk/foundation/db/BatchReportDao;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->d:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/db/BatchReportDao;->addReportMessage(Ljava/lang/String;)V

    .line 226
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->c:Lccsanandroid/os/Handler;

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lccsanandroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 227
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object p1

    .line 228
    iput v0, p1, Lccsanandroid/os/Message;->what:I

    .line 229
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->c:Lccsanandroid/os/Handler;

    iget-wide v1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->f:J

    invoke-virtual {v0, p1, v1, v2}, Lccsanandroid/os/Handler;->sendMessageDelayed(Lccsanandroid/os/Message;J)Z

    .line 232
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    .line 234
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->e:I

    if-lt p1, v0, :cond_2

    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->c:Lccsanandroid/os/Handler;

    if-eqz p1, :cond_2

    .line 235
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object p1

    .line 236
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 237
    const-string v1, "last_report_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 238
    invoke-virtual {p1, v0}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 239
    const/4 v0, 0x2

    iput v0, p1, Lccsanandroid/os/Message;->what:I

    .line 240
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->c:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 241
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :cond_2
    monitor-exit p0

    return-void

    .line 222
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 220
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()V
    .locals 4

    .line 119
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->c:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v0

    .line 121
    iput v1, v0, Lccsanandroid/os/Message;->what:I

    .line 122
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->c:Lccsanandroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Lccsanandroid/os/Handler;->sendMessageDelayed(Lccsanandroid/os/Message;J)Z

    .line 124
    :cond_0
    return-void
.end method

.method public final declared-synchronized c()Z
    .locals 1

    monitor-enter p0

    .line 216
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/a;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
