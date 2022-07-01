.class public Lccsancom/mbridge/msdk/foundation/same/net/Aa;
.super Ljava/lang/Object;
.source "Aa.java"


# static fields
.field private static final C_END:Ljava/lang/String; = "_mv_end"

.field private static final C_START:Ljava/lang/String; = "mv_channel_"

.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-string v0, ""

    sput-object v0, Lccsancom/mbridge/msdk/foundation/same/net/Aa;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/net/Aa;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 1

    .line 14
    nop

    .line 15
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 17
    :try_start_0
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    .line 21
    :goto_0
    nop

    .line 22
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mv_channel_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_mv_end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/same/net/Aa;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 23
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lccsancom/mbridge/msdk/foundation/same/net/Aa;->a:Ljava/lang/String;

    goto :goto_1

    .line 25
    :cond_0
    sget-boolean p0, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-nez p0, :cond_1

    .line 29
    const-string p0, ""

    sput-object p0, Lccsancom/mbridge/msdk/foundation/same/net/Aa;->a:Ljava/lang/String;

    goto :goto_1

    .line 26
    :cond_1
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/Aa;->g()V

    .line 27
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "please don\'t update this value"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 33
    :cond_2
    :goto_1
    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6

    .line 36
    nop

    .line 37
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 38
    const-string v1, "mv_channel_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 39
    const-string v3, "_mv_end"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 40
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    if-eq v3, v4, :cond_1

    if-le v3, v2, :cond_1

    .line 41
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v2, v1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 43
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v1, :cond_0

    .line 45
    return-object p0

    .line 47
    :cond_0
    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    .line 50
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, p0

    .line 54
    :cond_1
    return-object v0
.end method

.method private static g()V
    .locals 4

    .line 62
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-direct {v0}, Lccsanandroid/os/Handler;-><init>()V

    new-instance v1, Lccsancom/mbridge/msdk/foundation/same/net/Aa$1;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/foundation/same/net/Aa$1;-><init>()V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    return-void
.end method
