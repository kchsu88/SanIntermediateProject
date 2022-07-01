.class Lccsancom/vungle/warren/downloader/RangeResponse;
.super Ljava/lang/Object;
.source "RangeResponse.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field public final dimension:Ljava/lang/String;

.field public final rangeEnd:J

.field public final rangeStart:J

.field public final total:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    const-class v0, Lccsancom/vungle/warren/downloader/RangeResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/downloader/RangeResponse;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 14
    .param p1, "header"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-wide/16 v0, -0x1

    .line 21
    .local v0, "rangeEndParsed":J
    const-wide/16 v2, -0x1

    .line 22
    .local v2, "rangeStartParsed":J
    const-wide/16 v4, -0x1

    .line 23
    .local v4, "totalParsed":J
    const/4 v6, 0x0

    .line 25
    .local v6, "dimensionParsed":Ljava/lang/String;
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\s+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 29
    .local v7, "parts":[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x2

    if-lt v8, v9, :cond_2

    .line 31
    array-length v8, v7

    const/4 v10, 0x0

    if-lez v8, :cond_0

    .line 32
    aget-object v6, v7, v10

    .line 35
    :cond_0
    array-length v8, v7

    const/4 v11, 0x1

    if-le v8, v11, :cond_2

    aget-object v8, v7, v11

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 36
    aget-object v8, v7, v11

    const-string v12, "/"

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 39
    .local v8, "rangeSegments":[Ljava/lang/String;
    array-length v12, v8

    if-ne v12, v9, :cond_2

    .line 40
    aget-object v12, v8, v10

    invoke-static {v12}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 41
    aget-object v12, v8, v10

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 43
    .local v12, "ranges":[Ljava/lang/String;
    array-length v13, v12

    if-ne v13, v9, :cond_1

    aget-object v9, v12, v10

    invoke-static {v9}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    aget-object v9, v12, v11

    invoke-static {v9}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 45
    :try_start_0
    aget-object v9, v12, v10

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v9

    .line 47
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v9

    .line 50
    :goto_0
    :try_start_1
    aget-object v9, v12, v11

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide v0, v9

    .line 52
    goto :goto_1

    .line 51
    :catchall_1
    move-exception v9

    .line 57
    .end local v12    # "ranges":[Ljava/lang/String;
    :cond_1
    :goto_1
    aget-object v9, v8, v11

    invoke-static {v9}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 59
    :try_start_2
    aget-object v9, v8, v11

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-wide v4, v9

    .line 61
    goto :goto_2

    .line 60
    :catchall_2
    move-exception v9

    .line 67
    .end local v7    # "parts":[Ljava/lang/String;
    .end local v8    # "rangeSegments":[Ljava/lang/String;
    :cond_2
    :goto_2
    iput-wide v2, p0, Lccsancom/vungle/warren/downloader/RangeResponse;->rangeStart:J

    .line 68
    iput-wide v0, p0, Lccsancom/vungle/warren/downloader/RangeResponse;->rangeEnd:J

    .line 69
    iput-wide v4, p0, Lccsancom/vungle/warren/downloader/RangeResponse;->total:J

    .line 70
    iput-object v6, p0, Lccsancom/vungle/warren/downloader/RangeResponse;->dimension:Ljava/lang/String;

    .line 71
    return-void
.end method
