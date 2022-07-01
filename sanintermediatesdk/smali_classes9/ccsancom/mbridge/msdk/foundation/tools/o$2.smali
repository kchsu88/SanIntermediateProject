.class final Lccsancom/mbridge/msdk/foundation/tools/o$2;
.super Ljava/lang/Object;
.source "SameFileTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/tools/o;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 340
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 341
    if-nez v0, :cond_0

    .line 342
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/b;->b()Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 344
    :cond_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/b/c;->j:Lccsancom/mbridge/msdk/foundation/same/b/c;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/same/b/e;->b(Lccsancom/mbridge/msdk/foundation/same/b/c;)Ljava/lang/String;

    move-result-object v1

    .line 345
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->c()I

    move-result v2

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/o;->a(Ljava/lang/String;I)V

    .line 346
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->q()I

    move-result v0

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    sub-long/2addr v1, v3

    .line 348
    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/o;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 351
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 354
    :cond_1
    :goto_0
    return-void
.end method
