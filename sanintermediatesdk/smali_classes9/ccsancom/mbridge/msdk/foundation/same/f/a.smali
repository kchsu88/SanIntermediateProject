.class public final Lccsancom/mbridge/msdk/foundation/same/f/a;
.super Ljava/lang/Object;
.source "ReportTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/f/a;->a:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/same/f/a;->b:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 25
    :try_start_0
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/report/d/a;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/foundation/same/report/d/a;-><init>(Lccsanandroid/content/Context;)V

    .line 26
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/f/a;->a:Ljava/lang/String;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/same/f/a;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lccsancom/mbridge/msdk/foundation/same/report/d;->a(Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/same/net/h/d;

    move-result-object v1

    .line 27
    const/4 v2, 0x0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v3

    iget-object v3, v3, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->a:Ljava/lang/String;

    new-instance v4, Lccsancom/mbridge/msdk/foundation/same/f/a$1;

    invoke-direct {v4, p0}, Lccsancom/mbridge/msdk/foundation/same/f/a$1;-><init>(Lccsancom/mbridge/msdk/foundation/same/f/a;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lccsancom/mbridge/msdk/foundation/same/report/d/a;->c(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReportTask"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :goto_0
    return-void
.end method
