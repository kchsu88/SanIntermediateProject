.class final Lccsancom/mbridge/msdk/foundation/tools/m$3;
.super Ljava/lang/Object;
.source "SameDiTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/foundation/tools/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroid/content/Context;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/tools/m$3;->a:Lccsanandroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 447
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v1

    const-string v2, "authority_general_data"

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 448
    return-void

    .line 450
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/tools/m$3;->a:Lccsanandroid/content/Context;

    if-nez v1, :cond_1

    .line 451
    return-void

    .line 453
    :cond_1
    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/net/ConnectivityManager;

    .line 454
    if-nez v1, :cond_2

    .line 455
    return-void

    .line 457
    :cond_2
    sget-boolean v2, Lccsancom/mbridge/msdk/foundation/same/a;->b:Z

    if-eqz v2, :cond_6

    .line 459
    invoke-virtual {v1}, Lccsanandroid/net/ConnectivityManager;->getActiveNetworkInfo()Lccsanandroid/net/NetworkInfo;

    move-result-object v1

    .line 460
    if-nez v1, :cond_3

    .line 461
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/m;->b(I)I

    .line 462
    return-void

    .line 464
    :cond_3
    invoke-virtual {v1}, Lccsanandroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 465
    const/16 v1, 0x9

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/m;->b(I)I

    .line 466
    return-void

    .line 468
    :cond_4
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/tools/m$3;->a:Lccsanandroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/telephony/TelephonyManager;

    .line 469
    if-nez v1, :cond_5

    .line 470
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/m;->b(I)I

    .line 471
    return-void

    .line 473
    :cond_5
    invoke-virtual {v1}, Lccsanandroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/m;->a(I)I

    move-result v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/m;->b(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :cond_6
    goto :goto_0

    .line 475
    :catch_0
    move-exception v1

    .line 476
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SameDiTool"

    invoke-static {v3, v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 477
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/m;->b(I)I

    .line 479
    :goto_0
    return-void
.end method
