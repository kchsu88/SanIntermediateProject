.class public Lccsansan/dt/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/dt/addDownloadListener$removeDownloadListener;
    }
.end annotation


# static fields
.field public static final IncentiveDownloadUtils:[B

.field private static deleteDownList:J

.field private static getDownloadingCount:[C

.field private static pause:I

.field public static final removeDownloadListener:I

.field private static resume:I


# instance fields
.field private final addDownloadListener:Ljava/lang/String;

.field private final deleteDownItem:Ljava/lang/String;

.field private getDownloadStatusByUrl:Ljava/lang/String;

.field private getDownloadedList:I

.field private final getDownloadedRecordByUrl:Z

.field private final getDownloadingList:I

.field private getDownloadingRecordByUrl:Lccsansan/dt/addDownloadListener$removeDownloadListener;

.field private final unifiedDownload:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/dt/addDownloadListener;->resume:I

    const/4 v0, 0x1

    sput v0, Lccsansan/dt/addDownloadListener;->pause:I

    invoke-static {}, Lccsansan/dt/addDownloadListener;->deleteDownItem()V

    const/16 v0, 0x57

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/dt/addDownloadListener;->IncentiveDownloadUtils:[B

    const/16 v0, 0x99

    sput v0, Lccsansan/dt/addDownloadListener;->removeDownloadListener:I

    sget v0, Lccsansan/dt/addDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/addDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    nop

    :array_0
    .array-data 1
        0x61t
        -0x6bt
        -0x4dt
        0x37t
        0x0t
        -0x11t
        0x22t
        -0x13t
        -0x4t
        -0xat
        0x8t
        -0x8t
        0x0t
        0x1at
        -0x27t
        0x6t
        -0xbt
        -0xft
        0x8t
        -0x10t
        0x1t
        0x4t
        0x3t
        0x34t
        -0x37t
        -0xet
        -0x1t
        -0x8t
        0xdt
        -0xbt
        -0x8t
        0x44t
        -0x17t
        -0x2et
        -0x1t
        -0x8t
        0xdt
        -0x15t
        0x2t
        -0xft
        0x8t
        -0x10t
        0x1t
        0x4t
        0x3t
        0x34t
        -0x37t
        -0xet
        -0x1t
        -0x8t
        0xdt
        -0xbt
        -0x8t
        0x44t
        -0x44t
        0x1t
        0x3dt
        -0x24t
        -0x13t
        -0x4t
        -0xat
        0x8t
        -0x8t
        0x0t
        0x16t
        -0x16t
        -0xft
        0xbt
        -0x8t
        0x0t
        -0xft
        0x0t
        -0x11t
        0x22t
        -0x13t
        -0x4t
        -0xat
        0x8t
        -0x8t
        0x0t
        0x16t
        -0x16t
        -0xft
        0xbt
        -0x8t
        0x0t
        -0xft
    .end array-data
.end method

.method public constructor <init>(Lccsanorg/json/JSONObject;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 1
    const-string v0, "AppInfo"

    const-string v1, "app_titles"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lccsansan/dt/addDownloadListener;->unifiedDownload:Ljava/util/List;

    .line 8
    const/4 v2, 0x0

    iput v2, p0, Lccsansan/dt/addDownloadListener;->getDownloadedList:I

    .line 12
    const-string v3, "app_package_name"

    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lccsansan/dt/addDownloadListener;->addDownloadListener:Ljava/lang/String;

    .line 13
    const-string v3, "app_version_code"

    invoke-virtual {p1, v3, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lccsansan/dt/addDownloadListener;->getDownloadingList:I

    .line 14
    const-string v3, "need_anti_hijack"

    invoke-virtual {p1, v3, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lccsansan/dt/addDownloadListener;->getDownloadedRecordByUrl:Z

    .line 15
    const-string v3, "anti_hijack"

    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 18
    new-instance v5, Lccsansan/dt/addDownloadListener$removeDownloadListener;

    new-instance v6, Lccsanorg/json/JSONObject;

    invoke-direct {v6, v3}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lccsansan/dt/addDownloadListener$removeDownloadListener;-><init>(Lccsanorg/json/JSONObject;)V

    iput-object v5, p0, Lccsansan/dt/addDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/addDownloadListener$removeDownloadListener;

    :cond_1
    nop

    .line 20
    const-string v3, "referrer"

    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lccsansan/dt/addDownloadListener;->deleteDownItem:Ljava/lang/String;

    .line 22
    :try_start_0
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    const-string v3, "null"

    :try_start_1
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 23
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 24
    :goto_1
    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 25
    iget-object v3, p0, Lccsansan/dt/addDownloadListener;->unifiedDownload:Ljava/util/List;

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 29
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_2
    :try_start_2
    iget-object p1, p0, Lccsansan/dt/addDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 34
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    sget v1, Lccsansan/dt/addDownloadListener;->removeDownloadListener:I

    and-int/lit8 v1, v1, 0x2f

    int-to-byte v1, v1

    sget-object v3, Lccsansan/dt/addDownloadListener;->IncentiveDownloadUtils:[B

    const/16 v5, 0x14

    aget-byte v6, v3, v5

    int-to-byte v6, v6

    const/4 v7, 0x3

    aget-byte v7, v3, v7

    sub-int/2addr v7, v4

    int-to-byte v7, v7

    invoke-static {v1, v6, v7}, Lccsansan/dt/addDownloadListener;->removeDownloadListener(SIB)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/16 v6, 0x16

    aget-byte v6, v3, v6

    int-to-byte v6, v6

    const/4 v7, 0x4

    aget-byte v8, v3, v7

    int-to-byte v8, v8

    int-to-byte v9, v8

    invoke-static {v6, v8, v9}, Lccsansan/dt/addDownloadListener;->removeDownloadListener(SIB)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, p0, Lccsansan/dt/addDownloadListener;->addDownloadListener:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const/16 v6, 0x4000

    const/4 v8, 0x2

    :try_start_5
    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v4

    aput-object v1, v9, v2

    const/4 v1, 0x7

    aget-byte v1, v3, v1

    neg-int v1, v1

    int-to-byte v1, v1

    aget-byte v5, v3, v5

    int-to-byte v5, v5

    const/16 v6, 0x20

    int-to-byte v6, v6

    invoke-static {v1, v5, v6}, Lccsansan/dt/addDownloadListener;->removeDownloadListener(SIB)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    aget-byte v3, v3, v7

    int-to-byte v3, v3

    int-to-byte v5, v3

    or-int/lit8 v6, v5, 0x43

    int-to-byte v6, v6

    invoke-static {v3, v5, v6}, Lccsansan/dt/addDownloadListener;->removeDownloadListener(SIB)Ljava/lang/String;

    move-result-object v3

    new-array v5, v8, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v5, v4

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/content/pm/PackageInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 35
    :try_start_6
    iget-object v1, p1, Lccsanandroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lccsansan/dt/addDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    .line 36
    iget p1, p1, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    iput p1, p0, Lccsansan/dt/addDownloadListener;->getDownloadedList:I

    goto :goto_3

    .line 34
    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    :goto_2
    throw v1

    :cond_3
    throw p1

    :catchall_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 39
    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private static IncentiveDownloadUtils(ICI)Ljava/lang/String;
    .locals 9

    .line 1099
    sget-object v0, Lccsansan/d/getThumbPathByRecord;->unifiedDownload:Ljava/lang/Object;

    monitor-enter v0

    .line 1102
    :try_start_0
    new-array v1, p2, [C

    .line 1105
    const/4 v2, 0x0

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    :goto_0
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    if-ge v2, p2, :cond_0

    .line 1107
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    sget-object v3, Lccsansan/dt/addDownloadListener;->getDownloadingCount:[C

    sget v4, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/2addr v4, p0

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    sget-wide v7, Lccsansan/dt/addDownloadListener;->deleteDownList:J

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p1

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v1, v2

    .line 1105
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    goto :goto_0

    .line 1113
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1114
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method static deleteDownItem()V
    .locals 2

    const/16 v0, 0x76

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/dt/addDownloadListener;->getDownloadingCount:[C

    const-wide v0, -0x535a604bdad4cd4cL

    sput-wide v0, Lccsansan/dt/addDownloadListener;->deleteDownList:J

    return-void

    nop

    :array_0
    .array-data 2
        0x62s
        0x32d0s
        0x6537s
        -0x6783s
        -0x355bs
        -0x210s
        0x3057s
        0x6285s
        -0x6a32s
        -0x37d9s
        -0x484s
        0x2ddds
        0x601cs
        -0x6cb8s
        0x62s
        0x32d0s
        0x6537s
        -0x6783s
        -0x355bs
        -0x210s
        0x3057s
        0x629fs
        -0x6a2cs
        -0x37cbs
        -0x486s
        0x2dc8s
        -0x37d0s
        -0x571s
        -0x529bs
        0x502fs
        0x2f7s
        0x35a2s
        -0x7fbs
        -0x5533s
        0x5d86s
        0x67s
        0x3328s
        -0x1a66s
        0x3e2s
        0x315ds
        0x66b7s
        -0x6403s
        -0x36dbs
        -0x190s
        0x33d7s
        0x611fs
        -0x69acs
        -0x344bs
        -0x706s
        0x2e48s
        0x63afs
        -0x6f2ds
        -0x39c7s
        -0x49bs
        0x28b4s
        0x5e00s
        -0x6cbfs
        -0x3f4fs
        -0xa0bs
        0x63s
        0x32d0s
        0x6537s
        -0x6783s
        -0x355bs
        -0x210s
        0x3057s
        0x6285s
        -0x6a32s
        -0x37d9s
        -0x484s
        0x2ddds
        0x601cs
        -0x6cb8s
        0x63s
        0x32d0s
        0x6537s
        -0x6783s
        -0x355bs
        -0x210s
        0x3057s
        0x629fs
        -0x6a2cs
        -0x37cbs
        -0x486s
        0x2dc8s
        0x63s
        0x32dds
        0x6537s
        -0x6783s
        -0x355bs
        -0x210s
        0x3057s
        0x629fs
        -0x6a2cs
        -0x37cbs
        -0x486s
        0x2dc8s
        -0x7880s
        -0x4ac2s
        -0x1d2cs
        0x1f9es
        0x4d46s
        0x7a13s
        -0x484cs
        -0x1a84s
        0x1237s
        0x4fd6s
        0x7c99s
        -0x55d5s
        -0x1834s
        0x14b0s
        0x425as
        0x7f06s
        -0x5329s
        -0x259ds
        0x1722s
        0x44d2s
        0x7196s
    .end array-data
.end method

.method private static removeDownloadListener(SIB)Ljava/lang/String;
    .locals 8

    sget-object v0, Lccsansan/dt/addDownloadListener;->IncentiveDownloadUtils:[B

    mul-int/lit8 p1, p1, 0x6

    rsub-int/lit8 p1, p1, 0x67

    rsub-int/lit8 p2, p2, 0x46

    add-int/lit8 p0, p0, 0xe

    new-array v1, p0, [B

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    const/4 v4, 0x0

    goto :goto_2

    :pswitch_0
    sget v4, Lccsansan/dt/addDownloadListener;->pause:I

    add-int/lit8 v4, v4, 0x25

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/dt/addDownloadListener;->resume:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    const/16 v4, 0x38

    goto :goto_1

    :cond_1
    const/16 v4, 0x12

    :goto_1
    packed-switch v4, :pswitch_data_1

    :pswitch_1
    move v4, p1

    const/4 v5, 0x0

    move p1, p0

    goto :goto_3

    :goto_2
    add-int/lit8 v5, v4, 0x1

    int-to-byte v6, p1

    aput-byte v6, v1, v4

    if-ne v5, p0, :cond_2

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_2
    add-int/2addr p2, v2

    aget-byte v4, v0, p2

    move v7, p1

    move p1, p0

    move p0, v7

    :goto_3
    neg-int v4, v4

    add-int/2addr p0, v4

    add-int/lit8 p0, p0, -0x2

    sget v4, Lccsansan/dt/addDownloadListener;->resume:I

    add-int/lit8 v4, v4, 0x65

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lccsansan/dt/addDownloadListener;->pause:I

    rem-int/lit8 v4, v4, 0x2

    move v4, v5

    move v7, p1

    move p1, p0

    move p0, v7

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x38
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public IncentiveDownloadUtils()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/addDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/dt/addDownloadListener;->addDownloadListener:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x41

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/addDownloadListener;->resume:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v0

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public addDownloadListener()Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lccsansan/dt/addDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/addDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x4e

    goto :goto_0

    :cond_0
    const/16 v0, 0xe

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/dt/addDownloadListener;->deleteDownItem:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/dt/addDownloadListener;->deleteDownItem:Ljava/lang/String;

    goto :goto_2

    :goto_1
    const/16 v1, 0x46

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingList()I
    .locals 2

    .line 1
    sget v0, Lccsansan/dt/addDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/addDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lccsansan/dt/addDownloadListener;->getDownloadingList:I

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lccsansan/dt/addDownloadListener;->getDownloadingList:I

    goto :goto_2

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener()Lccsanorg/json/JSONObject;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 34
    nop

    .line 1
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v2, v0, Lccsansan/dt/addDownloadListener;->addDownloadListener:Ljava/lang/String;

    const-string v3, "app_package_name"

    invoke-virtual {v1, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 3
    iget v2, v0, Lccsansan/dt/addDownloadListener;->getDownloadingList:I

    const-string v3, "app_version_code"

    invoke-virtual {v1, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 4
    iget-object v2, v0, Lccsansan/dt/addDownloadListener;->deleteDownItem:Ljava/lang/String;

    const-string v3, "referrer"

    invoke-virtual {v1, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 6
    iget-boolean v2, v0, Lccsansan/dt/addDownloadListener;->getDownloadedRecordByUrl:Z

    const-string v3, "need_anti_hijack"

    invoke-virtual {v1, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 7
    iget-object v2, v0, Lccsansan/dt/addDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/addDownloadListener$removeDownloadListener;

    if-eqz v2, :cond_1

    .line 34
    sget v3, Lccsansan/dt/addDownloadListener;->resume:I

    add-int/lit8 v3, v3, 0x39

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/dt/addDownloadListener;->pause:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    .line 8
    :cond_0
    invoke-virtual {v2}, Lccsansan/dt/addDownloadListener$removeDownloadListener;->addDownloadListener()I

    move-result v2

    const-string v3, "bd_sendtrigger"

    invoke-virtual {v1, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 9
    iget-object v2, v0, Lccsansan/dt/addDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/addDownloadListener$removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/dt/addDownloadListener$removeDownloadListener;->getDownloadingList()J

    move-result-wide v2

    const-string v4, "bd_waittime"

    invoke-virtual {v1, v4, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 10
    iget-object v2, v0, Lccsansan/dt/addDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/addDownloadListener$removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/dt/addDownloadListener$removeDownloadListener;->removeDownloadListener()Z

    move-result v2

    const-string v3, "bd_resendclick"

    invoke-virtual {v1, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 11
    iget-object v2, v0, Lccsansan/dt/addDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/addDownloadListener$removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/dt/addDownloadListener$removeDownloadListener;->unifiedDownload()Z

    move-result v2

    const-string v3, "bd_supplementclick"

    invoke-virtual {v1, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 12
    iget-object v2, v0, Lccsansan/dt/addDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/addDownloadListener$removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/dt/addDownloadListener$removeDownloadListener;->getDownloadingCount()Z

    move-result v2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v3

    const/16 v6, 0x30

    const-string v7, ""

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-string v11, "bi_sendreferrer"

    const-string v12, "cd_sendtrigger"

    const-string v13, "cd_waittime"

    const-string v14, "ci_autoinsall"

    const-string v15, "ci_sendreferrer"

    const-string v5, "ci_impwaittime"

    cmp-long v16, v3, v8

    add-int/lit8 v3, v16, -0x1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    int-to-char v4, v4

    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    cmp-long v18, v16, v8

    rsub-int/lit8 v8, v18, 0xf

    invoke-static {v3, v4, v8}, Lccsansan/dt/addDownloadListener;->IncentiveDownloadUtils(ICI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 13
    iget-object v2, v0, Lccsansan/dt/addDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/addDownloadListener$removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/dt/addDownloadListener$removeDownloadListener;->getDownloadedCount()Z

    move-result v2

    invoke-static {v10}, Lccsanandroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v3

    add-int/lit8 v3, v3, 0xe

    invoke-static {v10, v10}, Lccsanandroid/view/KeyEvent;->getDeadChar(II)I

    move-result v4

    int-to-char v4, v4

    invoke-static {v10}, Lccsanandroid/graphics/Color;->red(I)I

    move-result v8

    add-int/lit8 v8, v8, 0xc

    invoke-static {v3, v4, v8}, Lccsansan/dt/addDownloadListener;->IncentiveDownloadUtils(ICI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 15
    iget-object v2, v0, Lccsansan/dt/addDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/addDownloadListener$removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/dt/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v2

    invoke-static {v10}, Lccsanandroid/graphics/Color;->red(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1a

    const v4, 0xc852

    invoke-static {v7, v10}, Lccsanandroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v8

    sub-int/2addr v4, v8

    int-to-char v4, v4

    invoke-static {v10}, Lccsanandroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v8

    rsub-int/lit8 v8, v8, 0xc

    invoke-static {v3, v4, v8}, Lccsansan/dt/addDownloadListener;->IncentiveDownloadUtils(ICI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 16
    iget-object v2, v0, Lccsansan/dt/addDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/addDownloadListener$removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/dt/addDownloadListener$removeDownloadListener;->getDownloadingRecordByUrl()Z

    move-result v2

    invoke-virtual {v1, v11, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 17
    iget-object v2, v0, Lccsansan/dt/addDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/addDownloadListener$removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/dt/addDownloadListener$removeDownloadListener;->getDownloadedRecordByUrl()J

    move-result-wide v2

    invoke-static {v10, v10}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x26

    invoke-static {v7, v6}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v8

    rsub-int v8, v8, 0x37f

    int-to-char v8, v8

    invoke-static {}, Lccsanandroid/os/Process;->myPid()I

    move-result v9

    shr-int/lit8 v9, v9, 0x16

    rsub-int/lit8 v9, v9, 0x15

    invoke-static {v4, v8, v9}, Lccsansan/dt/addDownloadListener;->IncentiveDownloadUtils(ICI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 19
    iget-object v2, v0, Lccsansan/dt/addDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/addDownloadListener$removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/dt/addDownloadListener$removeDownloadListener;->getDownloadStatusByUrl()I

    move-result v2

    invoke-virtual {v1, v12, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 20
    iget-object v2, v0, Lccsansan/dt/addDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/addDownloadListener$removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/dt/addDownloadListener$removeDownloadListener;->getDownloadedList()J

    move-result-wide v2

    invoke-virtual {v1, v13, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 21
    iget-object v2, v0, Lccsansan/dt/addDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/addDownloadListener$removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/dt/addDownloadListener$removeDownloadListener;->deleteDownItem()Z

    move-result v2

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v3

    int-to-byte v3, v3

    add-int/lit8 v3, v3, 0x3c

    invoke-static {v7, v6, v10, v10}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    rsub-int/lit8 v4, v4, -0x1

    int-to-char v4, v4

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v11

    add-int/lit8 v11, v11, 0xf

    invoke-static {v3, v4, v11}, Lccsansan/dt/addDownloadListener;->IncentiveDownloadUtils(ICI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 22
    iget-object v2, v0, Lccsansan/dt/addDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/addDownloadListener$removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/dt/addDownloadListener$removeDownloadListener;->deleteDownList()Z

    move-result v2

    invoke-static {v10}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v3

    cmp-long v11, v3, v8

    rsub-int/lit8 v3, v11, 0x49

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    int-to-char v4, v4

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    add-int/lit8 v8, v8, 0xc

    invoke-static {v3, v4, v8}, Lccsansan/dt/addDownloadListener;->IncentiveDownloadUtils(ICI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 24
    iget-object v2, v0, Lccsansan/dt/addDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/addDownloadListener$removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/dt/addDownloadListener$removeDownloadListener;->pause()Z

    move-result v2

    invoke-virtual {v1, v14, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 25
    iget-object v2, v0, Lccsansan/dt/addDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/addDownloadListener$removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/dt/addDownloadListener$removeDownloadListener;->pause()Z

    move-result v2

    invoke-static {v10, v10, v10, v10}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result v3

    add-int/lit8 v3, v3, 0x55

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v4

    shr-int/lit8 v4, v4, 0x18

    int-to-char v4, v4

    invoke-static {v10}, Lccsanandroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v8

    rsub-int/lit8 v8, v8, 0xb

    invoke-static {v3, v4, v8}, Lccsansan/dt/addDownloadListener;->IncentiveDownloadUtils(ICI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 26
    iget-object v2, v0, Lccsansan/dt/addDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/addDownloadListener$removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/dt/addDownloadListener$removeDownloadListener;->resume()Z

    move-result v2

    invoke-virtual {v1, v15, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 27
    iget-object v2, v0, Lccsansan/dt/addDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/addDownloadListener$removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/dt/addDownloadListener$removeDownloadListener;->IncentiveSDK()J

    move-result-wide v2

    invoke-virtual {v1, v5, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 28
    iget-object v2, v0, Lccsansan/dt/addDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/addDownloadListener$removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/dt/addDownloadListener$removeDownloadListener;->getThumbPathByRecord()J

    move-result-wide v2

    invoke-static {v7, v6, v10, v10}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x60

    const v5, 0x87e3

    const/4 v6, 0x0

    invoke-static {v10, v6, v6}, Lccsanandroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v7

    cmpl-float v6, v7, v6

    sub-int/2addr v5, v6

    int-to-char v5, v5

    invoke-static {v10, v10}, Lccsanandroid/view/View;->getDefaultSize(II)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x15

    invoke-static {v4, v5, v6}, Lccsansan/dt/addDownloadListener;->IncentiveDownloadUtils(ICI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 34
    nop

    .line 31
    :cond_1
    iget-object v2, v0, Lccsansan/dt/addDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 32
    iget-object v2, v0, Lccsansan/dt/addDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    const-string v3, "exist_version_name"

    invoke-virtual {v1, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 34
    nop

    .line 33
    :cond_2
    iget v2, v0, Lccsansan/dt/addDownloadListener;->getDownloadedList:I

    if-eqz v2, :cond_3

    .line 34
    const/16 v3, 0x4a

    goto :goto_0

    :cond_3
    const/16 v3, 0x3a

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 33
    nop

    .line 34
    const-string v3, "exist_version_code"

    invoke-virtual {v1, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    sget v2, Lccsansan/dt/addDownloadListener;->resume:I

    add-int/lit8 v2, v2, 0x4b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/dt/addDownloadListener;->pause:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_4

    const/16 v2, 0x1e

    goto :goto_1

    :cond_4
    const/16 v2, 0x34

    :goto_1
    :pswitch_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Lccsansan/dt/addDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/addDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/dt/addDownloadListener;->unifiedDownload:Ljava/util/List;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/dt/addDownloadListener;->unifiedDownload:Ljava/util/List;

    goto :goto_2

    :goto_1
    const/16 v2, 0x2d

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
