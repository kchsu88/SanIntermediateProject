.class public Lccsancom/san/core/removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/ads/base/IBeylaIdHelper;


# static fields
.field private static final IncentiveDownloadUtils:Ljava/lang/String;

.field private static addDownloadListener:Ljava/lang/String;

.field private static getDownloadedRecordByUrl:Lccsansan/bw/AdError;

.field private static getDownloadingList:Ljava/lang/String;

.field private static removeDownloadListener:Ljava/lang/String;

.field private static final unifiedDownload:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/core/removeDownloadListener;->unifiedDownload:[B

    .line 2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    sput-object v1, Lccsancom/san/core/removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 5
    const/4 v0, 0x0

    sput-object v0, Lccsancom/san/core/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    .line 6
    sput-object v0, Lccsancom/san/core/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x2et
        0x53t
        0x48t
        0x41t
        0x52t
        0x45t
        0x69t
        0x74t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "beyla_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lccsancom/san/core/removeDownloadListener;->getDownloadedRecordByUrl:Lccsansan/bw/AdError;

    return-void
.end method

.method private static IncentiveDownloadUtils()Ljava/lang/String;
    .locals 8

    const-string v0, "DefaultBeylaIdHelper"

    const/16 v1, 0x8

    .line 79
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    new-array v1, v1, [B

    const/16 v5, 0x75

    aput-byte v5, v1, v2

    const/16 v5, 0x73

    aput-byte v5, v1, v3

    const/4 v5, 0x2

    const/16 v6, 0x68

    aput-byte v6, v1, v5

    const/4 v5, 0x3

    const/16 v6, 0x61

    aput-byte v6, v1, v5

    const/4 v5, 0x4

    const/16 v6, 0x72

    aput-byte v6, v1, v5

    const/4 v5, 0x5

    const/16 v6, 0x65

    aput-byte v6, v1, v5

    const/4 v5, 0x6

    const/16 v6, 0x69

    aput-byte v6, v1, v5

    const/4 v5, 0x7

    const/16 v6, 0x74

    aput-byte v6, v1, v5

    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".app.BeylaIdProvider"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v5

    .line 83
    new-instance v6, Lccsanandroid/os/Bundle;

    invoke-direct {v6}, Lccsanandroid/os/Bundle;-><init>()V

    .line 84
    invoke-static {v1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v1

    const-string v7, "get_beyla_id"

    invoke-virtual {v5, v1, v7, v4, v6}, Lccsanandroid/content/ContentResolver;->call(Lccsanandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/os/Bundle;)Lccsanandroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const-string v1, ""

    move-object v4, v1

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v5, "beyla_id"

    .line 86
    invoke-virtual {v1, v5}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    :goto_0
    nop

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBeylaIdFromQZProvider\uff1a"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 89
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "getBeylaIdFromProvider failed"

    invoke-static {v0, v1, v3}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-object v4
.end method

.method private static IncentiveDownloadUtils(Ljava/io/File;)Ljava/util/Properties;
    .locals 4

    .line 90
    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 91
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 92
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    invoke-static {v1}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :goto_0
    const-string v0, "DefaultBeylaIdHelper"

    .line 98
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProperty failed, file path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 100
    invoke-static {v1}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Ljava/io/Closeable;)V

    .line 102
    new-instance p0, Ljava/util/Properties;

    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    return-object p0

    :catchall_2
    move-exception p0

    .line 103
    invoke-static {v1}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Ljava/io/Closeable;)V

    .line 104
    throw p0
.end method

.method private static addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 29
    invoke-static {}, Lccsancom/san/core/removeDownloadListener;->addDownloadListener()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "DefaultBeylaIdHelper"

    if-nez p1, :cond_1

    .line 32
    const-string p0, "getIdFromFile filepath is empty"

    invoke-static {v1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 35
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 37
    const-string p0, "getIdFromFile file is not exist"

    invoke-static {v1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 42
    :cond_2
    :try_start_0
    invoke-static {v2}, Lccsancom/san/core/removeDownloadListener;->IncentiveDownloadUtils(Ljava/io/File;)Ljava/util/Properties;

    move-result-object v2

    .line 43
    invoke-virtual {v2, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 44
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p0, "getIdFromFile id is empty!"

    .line 45
    invoke-static {v1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :cond_3
    return-object p0

    :catchall_0
    move-exception p0

    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIdFromFile failed, file path:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static addDownloadListener(Ljava/lang/String;)V
    .locals 2

    .line 8
    const-string v0, "beyla_id"

    invoke-static {v0, p0}, Lccsancom/san/core/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object v1, Lccsancom/san/core/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lccsancom/san/core/removeDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object v1, Lccsancom/san/core/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lccsancom/san/core/removeDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static addDownloadListener()Z
    .locals 3

    .line 1
    sget-object v0, Lccsancom/san/core/removeDownloadListener;->getDownloadedRecordByUrl:Lccsansan/bw/AdError;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "beyla_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lccsancom/san/core/removeDownloadListener;->getDownloadedRecordByUrl:Lccsansan/bw/AdError;

    .line 3
    :cond_0
    sget-object v0, Lccsancom/san/core/removeDownloadListener;->getDownloadedRecordByUrl:Lccsansan/bw/AdError;

    const-string v1, "has_manual_init"

    invoke-virtual {v0, v1}, Lccsansan/bw/AdError;->unifiedDownload(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/trackReportClick;->addDownloadListener(Lccsanandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static getDownloadingList()Ljava/lang/String;
    .locals 3

    .line 7
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/getMinIntervalToReturn;->getDownloadedRecordByUrl(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-static {}, Lccsansan/bw/getMinIntervalToReturn;->getDownloadingList()Ljava/lang/String;

    move-result-object v0

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "beyla"

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".cfg"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDownloadingList(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lccsancom/san/core/removeDownloadListener;->getDownloadedRecordByUrl:Lccsansan/bw/AdError;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "beyla_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lccsancom/san/core/removeDownloadListener;->getDownloadedRecordByUrl:Lccsansan/bw/AdError;

    .line 3
    :cond_0
    sget-object v0, Lccsancom/san/core/removeDownloadListener;->getDownloadedRecordByUrl:Lccsansan/bw/AdError;

    invoke-virtual {v0, p0}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 4
    sget-object v0, Lccsancom/san/core/removeDownloadListener;->getDownloadedRecordByUrl:Lccsansan/bw/AdError;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "beyla_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lccsancom/san/core/removeDownloadListener;->getDownloadedRecordByUrl:Lccsansan/bw/AdError;

    .line 6
    :cond_0
    sget-object v0, Lccsancom/san/core/removeDownloadListener;->getDownloadedRecordByUrl:Lccsansan/bw/AdError;

    invoke-virtual {v0, p0, p1}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private static unifiedDownload(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lccsancom/san/core/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lccsancom/san/core/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {p0, v1}, Lccsancom/san/core/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-object v2, Lccsancom/san/core/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-static {p0, v2}, Lccsancom/san/core/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 7
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    sget-object v1, Lccsancom/san/core/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lccsancom/san/core/removeDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    sget-object v1, Lccsancom/san/core/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lccsancom/san/core/removeDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0

    .line 15
    :cond_2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 16
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    invoke-static {p0, v1}, Lccsancom/san/core/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_3
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    sget-object v0, Lccsancom/san/core/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lccsancom/san/core/removeDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v1

    .line 24
    :cond_5
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 25
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26
    invoke-static {p0, v2}, Lccsancom/san/core/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_6
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 28
    sget-object v0, Lccsancom/san/core/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {p0, v2, v0}, Lccsancom/san/core/removeDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-object v2

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method private static unifiedDownload()V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Lccsancom/san/core/removeDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lccsancom/san/core/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lccsancom/san/core/removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lccsancom/san/core/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    .line 4
    :cond_0
    sget-object v1, Lccsancom/san/core/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Ljava/io/File;

    sget-object v2, Lccsanandroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/san/core/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    const-string v0, "DefaultBeylaIdHelper"

    const-string v1, "init beyla id file path"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 51
    invoke-static {}, Lccsancom/san/core/removeDownloadListener;->addDownloadListener()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-static {p1}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    const-string v0, "DefaultBeylaIdHelper"

    if-nez p2, :cond_1

    .line 55
    const-string p0, "putIdToFile filepath is empty"

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 61
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    const-string v3, "putIdToFile file is not exist"

    .line 63
    invoke-static {v0, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 65
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 66
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 67
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 70
    :cond_4
    invoke-static {v2}, Lccsancom/san/core/removeDownloadListener;->IncentiveDownloadUtils(Ljava/io/File;)Ljava/util/Properties;

    move-result-object v2

    .line 71
    invoke-virtual {v2, p0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string p1, "beyla_ids"

    .line 73
    invoke-virtual {v2, p0, p1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, p0

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 75
    :goto_0
    :try_start_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "putIdToFile failed, file path:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object p0, v1

    .line 77
    :goto_1
    invoke-static {p0}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Ljava/io/Closeable;)V

    return-void

    :catchall_2
    move-exception p0

    invoke-static {v1}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Ljava/io/Closeable;)V

    .line 78
    throw p0
.end method


# virtual methods
.method public forceInitBeylaId()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#forceInitBeylaId$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lccsancom/san/core/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultBeylaIdHelper"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lccsancom/san/core/removeDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lccsancom/san/core/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lccsancom/san/core/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lccsancom/san/core/removeDownloadListener;->unifiedDownload()V

    .line 6
    invoke-static {v0}, Lccsancom/san/core/removeDownloadListener;->addDownloadListener(Ljava/lang/String;)V

    .line 7
    sput-object v0, Lccsancom/san/core/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    :cond_0
    return-void

    .line 11
    :cond_1
    const-class v1, Lccsancom/san/core/removeDownloadListener;

    monitor-enter v1

    .line 12
    :try_start_0
    invoke-static {}, Lccsancom/san/core/removeDownloadListener;->unifiedDownload()V

    const-string v2, "beyla_id"

    .line 13
    invoke-static {v2}, Lccsancom/san/core/removeDownloadListener;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lccsancom/san/core/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    .line 15
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 16
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 17
    sput-object v0, Lccsancom/san/core/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    goto :goto_0

    .line 19
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    sput-object v0, Lccsancom/san/core/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    .line 22
    :goto_0
    sget-object v0, Lccsancom/san/core/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/san/core/removeDownloadListener;->addDownloadListener(Ljava/lang/String;)V

    goto :goto_1

    .line 24
    :cond_3
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lccsancom/san/core/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 25
    invoke-static {v0}, Lccsancom/san/core/removeDownloadListener;->addDownloadListener(Ljava/lang/String;)V

    .line 26
    sput-object v0, Lccsancom/san/core/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    .line 29
    :cond_4
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    sget-object v0, Lccsancom/san/core/removeDownloadListener;->getDownloadedRecordByUrl:Lccsansan/bw/AdError;

    const-string v1, "has_manual_init"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;Z)Z

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#forceInitBeylaId_suc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lccsancom/san/core/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultBeylaIdHelper"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 33
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBeylaId()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lccsancom/san/core/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lccsancom/san/core/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    return-object v0

    .line 5
    :cond_0
    invoke-static {}, Lccsancom/san/core/removeDownloadListener;->addDownloadListener()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DefaultBeylaIdHelper"

    const-string v1, "get beyla id without storage permission!"

    .line 6
    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0

    .line 10
    :cond_1
    const-class v0, Lccsancom/san/core/removeDownloadListener;

    monitor-enter v0

    .line 11
    :try_start_0
    invoke-static {}, Lccsancom/san/core/removeDownloadListener;->unifiedDownload()V

    const-string v1, "beyla_id"

    .line 12
    invoke-static {v1}, Lccsancom/san/core/removeDownloadListener;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lccsancom/san/core/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    .line 14
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {v1}, Lccsancom/san/core/removeDownloadListener;->addDownloadListener(Ljava/lang/String;)V

    .line 18
    sput-object v1, Lccsancom/san/core/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    .line 20
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get beyla id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lccsancom/san/core/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultBeylaIdHelper"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lccsancom/san/core/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v1

    .line 23
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
