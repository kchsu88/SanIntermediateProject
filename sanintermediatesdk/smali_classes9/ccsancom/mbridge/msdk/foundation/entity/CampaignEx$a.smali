.class public final Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;
.super Ljava/lang/Object;
.source "CampaignEx.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2395
    const-string v0, ""

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->a:Ljava/lang/String;

    .line 2396
    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->b:Ljava/lang/String;

    .line 2397
    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->c:Ljava/lang/String;

    .line 2398
    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->d:Ljava/lang/String;

    .line 2399
    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->e:Ljava/lang/String;

    .line 2400
    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->f:Ljava/lang/String;

    .line 2401
    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->g:Ljava/lang/String;

    .line 2402
    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->h:Ljava/lang/String;

    .line 2420
    const/4 v1, 0x0

    iput v1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->i:I

    .line 2421
    iput v1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->j:I

    .line 2423
    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->k:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;
    .locals 2

    .line 2499
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2500
    return-object v0

    .line 2502
    :cond_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->a(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 2507
    :catchall_0
    move-exception p0

    .line 2508
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 2509
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 2503
    :catch_0
    move-exception p0

    .line 2504
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 2505
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2511
    :cond_1
    nop

    .line 2512
    :cond_2
    :goto_0
    return-object v0
.end method

.method private static a(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;
    .locals 3

    .line 2516
    nop

    .line 2518
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2519
    :try_start_0
    new-instance v1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2520
    :try_start_1
    const-string v0, "adchoice_icon"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3454
    iput-object v0, v1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->c:Ljava/lang/String;

    .line 2521
    const-string v0, "adchoice_link"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4446
    iput-object v0, v1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->b:Ljava/lang/String;

    .line 2522
    const-string v0, "adchoice_size"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2523
    nop

    .line 4462
    iput-object v0, v1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->d:Ljava/lang/String;

    .line 2524
    const-string v2, "ad_logo_link"

    invoke-virtual {p0, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5438
    iput-object v2, v1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->a:Ljava/lang/String;

    .line 2525
    const-string v2, "adv_logo"

    invoke-virtual {p0, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5494
    iput-object v2, v1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->h:Ljava/lang/String;

    .line 2526
    const-string v2, "adv_name"

    invoke-virtual {p0, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6486
    iput-object v2, v1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->g:Ljava/lang/String;

    .line 2527
    const-string v2, "platform_logo"

    invoke-virtual {p0, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7478
    iput-object v2, v1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->f:Ljava/lang/String;

    .line 2528
    const-string v2, "platform_name"

    invoke-virtual {p0, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8470
    iput-object v2, v1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->e:Ljava/lang/String;

    .line 2529
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->b(Ljava/lang/String;)I

    move-result v2

    .line 2530
    nop

    .line 9417
    iput v2, v1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->j:I

    .line 2531
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->c(Ljava/lang/String;)I

    move-result v0

    .line 2532
    nop

    .line 10409
    iput v0, v1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->i:I

    .line 2533
    invoke-virtual {p0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10426
    iput-object p0, v1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->k:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_2

    .line 2539
    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    .line 2535
    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    .line 2539
    :catchall_1
    move-exception p0

    .line 2540
    :goto_0
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 2541
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 2535
    :catch_1
    move-exception p0

    .line 2536
    :goto_1
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2537
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2543
    :cond_0
    :goto_2
    nop

    .line 2544
    :cond_1
    :goto_3
    return-object v0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 3

    .line 2553
    const-string v0, "x"

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2554
    return v2

    .line 2557
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2558
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2559
    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 2560
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 2567
    :cond_1
    nop

    .line 2569
    return v2

    .line 2565
    :catch_0
    move-exception p0

    .line 2566
    return v2

    .line 2563
    :catch_1
    move-exception p0

    .line 2564
    return v2
.end method

.method private static c(Ljava/lang/String;)I
    .locals 3

    .line 2573
    const-string v0, "x"

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2574
    return v2

    .line 2577
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2578
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2579
    if-eqz p0, :cond_1

    array-length v0, p0

    if-lez v0, :cond_1

    .line 2580
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 2587
    :cond_1
    nop

    .line 2589
    return v2

    .line 2585
    :catch_0
    move-exception p0

    .line 2586
    return v2

    .line 2583
    :catch_1
    move-exception p0

    .line 2584
    return v2
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 2405
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->i:I

    return v0
.end method

.method public final b()I
    .locals 1

    .line 2413
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->j:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 2430
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 2442
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 2450
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 2458
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->d:Ljava/lang/String;

    return-object v0
.end method
