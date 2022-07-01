.class public Lccsansan/bw/setLoaderClassName;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final addDownloadListener:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x1b

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/bw/setLoaderClassName;->addDownloadListener:[J

    return-void

    :array_0
    .array-data 8
        0x2800
        0xc800
        0x19000
        0x4b000
        0x7d000
        0x100000
        0x200000
        0x300000
        0x500000
        0xa00000
        0xf00000
        0x1400000
        0x1e00000
        0x3200000
        0x6400000
        0x12c00000
        0x1f400000
        0x40000000
        0x80000000L
        0xc0000000L
        0x140000000L
        0x280000000L
        0x500000000L
        0x780000000L
        0xc80000000L
        0x1900000000L
        0x3200000000L
    .end array-data
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 7

    .line 9
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 11
    :try_start_0
    invoke-virtual {p0, v2}, Lccsanandroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 12
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    if-eqz v5, :cond_0

    .line 13
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    :cond_1
    :goto_1
    move-object v5, v2

    :goto_2
    if-nez v5, :cond_3

    .line 28
    :try_start_1
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_2

    .line 29
    invoke-virtual {p0, v2}, Lccsanandroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    .line 33
    :cond_2
    :goto_3
    invoke-static {p0, p1}, Lccsansan/bw/setLoaderClassName;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    :cond_3
    return-object v5
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/16 v0, 0x5c

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    :cond_1
    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;)V
    .locals 1

    .line 66
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lccsansan/bw/setLoaderClassName;->addDownloadListener(Lccsansan/da/removeDownloadListener;Z)V

    return-void
.end method

.method public static IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Lccsansan/da/removeDownloadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-static {p0, p1}, Lccsansan/bw/setLoaderClassName;->unifiedDownload(Lccsansan/da/removeDownloadListener;Lccsansan/da/removeDownloadListener;)V

    .line 35
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->deleteDownList()Z

    return-void
.end method

.method public static addDownloadListener()J
    .locals 2

    .line 11
    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 12
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 14
    :cond_0
    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/setLoaderClassName;->getDownloadingList(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 18
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/Android/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static addDownloadListener(F)Ljava/lang/String;
    .locals 5

    const/high16 v0, 0x44800000    # 1024.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x400

    const-string v2, "K"

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    const-string v2, ""

    :goto_0
    const/high16 v3, 0x49800000    # 1048576.0f

    cmpl-float v3, p0, v3

    if-ltz v3, :cond_1

    const-wide/32 v0, 0x100000

    const-string v2, "M"

    :cond_1
    const/high16 v3, 0x4e800000

    cmpl-float v3, p0, v3

    if-ltz v3, :cond_2

    const-wide/32 v0, 0x40000000

    const-string v2, "G"

    :cond_2
    long-to-float v0, v0

    div-float/2addr p0, v0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v3, p0

    const-string p0, "#.#"

    invoke-static {p0, v3, v4}, Lccsansan/bw/getName;->addDownloadListener(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static addDownloadListener(J[J)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p2

    const-string v2, ">="

    if-ge v0, v1, :cond_2

    .line 3
    aget-wide v3, p2, v0

    cmp-long v1, p0, v3

    if-ltz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "<"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide p1, p2, v0

    long-to-float p1, p1

    invoke-static {p1}, Lccsansan/bw/setLoaderClassName;->addDownloadListener(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, v0, -0x1

    aget-wide v1, p2, p1

    long-to-float p1, v1

    invoke-static {p1}, Lccsansan/bw/setLoaderClassName;->addDownloadListener(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", <"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide p1, p2, v0

    long-to-float p1, p1

    invoke-static {p1}, Lccsansan/bw/setLoaderClassName;->addDownloadListener(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    aget-wide p1, p2, p1

    long-to-float p1, p1

    invoke-static {p1}, Lccsansan/bw/setLoaderClassName;->addDownloadListener(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static addDownloadListener(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 62
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "escape_file_name_regexp"

    const-string v2, "[\\\\/:*#?\"<>|\r\n\\s+]"

    invoke-static {v0, v1, v2}, Lccsansan/bw/performActionWhenOffline;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 64
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 65
    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsansan/au/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final addDownloadListener(Lccsansan/da/removeDownloadListener;Z)V
    .locals 4

    if-eqz p0, :cond_3

    .line 67
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 69
    :cond_0
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->removeDownloadListener()Z

    move-result v0

    invoke-static {v0}, Lccsansan/bw/trackReportShow;->unifiedDownload(Z)V

    .line 70
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->addDownloadListener()[Lccsansan/da/removeDownloadListener;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 73
    :cond_1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p0, v1

    .line 74
    invoke-virtual {v2}, Lccsansan/da/removeDownloadListener;->removeDownloadListener()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 76
    invoke-static {v2, p1}, Lccsansan/bw/setLoaderClassName;->addDownloadListener(Lccsansan/da/removeDownloadListener;Z)V

    .line 77
    :cond_2
    invoke-virtual {v2}, Lccsansan/da/removeDownloadListener;->deleteDownList()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static getDownloadingList(Ljava/lang/String;)J
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Lccsanandroid/os/StatFs;

    invoke-direct {v0, p0}, Lccsanandroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lccsanandroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v1, p0

    .line 3
    invoke-virtual {v0}, Lccsanandroid/os/StatFs;->getAvailableBlocks()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v3, p0

    mul-long v3, v3, v1

    return-wide v3

    :catch_0
    move-exception p0

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getDownloadingList(Ljava/io/File;)V
    .locals 5

    if-eqz p0, :cond_4

    .line 43
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 45
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 46
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 47
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 49
    invoke-static {v3}, Lccsansan/bw/setLoaderClassName;->getDownloadingList(Ljava/io/File;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_4
    :goto_2
    return-void
.end method

.method public static removeDownloadListener(J)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/bw/setLoaderClassName;->addDownloadListener:[J

    invoke-static {p0, p1, v0}, Lccsansan/bw/setLoaderClassName;->addDownloadListener(J[J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 7
    invoke-static {p0}, Lccsansan/da/addDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;)Lccsansan/da/addDownloadListener$getDownloadingList;

    move-result-object p0

    .line 8
    iget-object p0, p0, Lccsansan/da/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    return-object p0
.end method

.method public static removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x2e

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static removeDownloadListener(Lccsansan/da/removeDownloadListener;)Z
    .locals 1

    .line 36
    const-string v0, ".nomedia"

    invoke-static {p0, v0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object p0

    .line 37
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->deleteDownList()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;)J
    .locals 2

    .line 16
    invoke-static {p0}, Lccsansan/bw/setLoaderClassName;->removeDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-static {p0}, Lccsansan/bw/setLoaderClassName;->getDownloadingList(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static unifiedDownload(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const/16 v0, 0x2e

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static unifiedDownload(Lccsansan/da/removeDownloadListener;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    :try_start_0
    sget-object v0, Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;->Read:Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;

    invoke-virtual {p0, v0}, Lccsansan/da/removeDownloadListener;->unifiedDownload(Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;)V

    const/16 v0, 0x1000

    .line 53
    new-array v0, v0, [B

    .line 55
    :goto_0
    invoke-virtual {p0, v0}, Lccsansan/da/removeDownloadListener;->removeDownloadListener([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 56
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->trackReportShow()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->trackReportShow()V

    .line 61
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public static unifiedDownload(Lccsansan/da/removeDownloadListener;Lccsansan/da/removeDownloadListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 19
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    :try_start_0
    sget-object v0, Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;->Read:Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;

    invoke-virtual {p0, v0}, Lccsansan/da/removeDownloadListener;->unifiedDownload(Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;)V

    .line 23
    sget-object v0, Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;->Write:Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;

    invoke-virtual {p1, v0}, Lccsansan/da/removeDownloadListener;->unifiedDownload(Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;)V

    const/16 v0, 0x4000

    .line 25
    new-array v0, v0, [B

    .line 27
    :goto_0
    invoke-virtual {p0, v0}, Lccsansan/da/removeDownloadListener;->removeDownloadListener([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 28
    invoke-virtual {p1, v0, v2, v1}, Lccsansan/da/removeDownloadListener;->unifiedDownload([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->trackReportShow()V

    .line 33
    invoke-virtual {p1}, Lccsansan/da/removeDownloadListener;->trackReportShow()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "FileUtils"

    .line 34
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copy exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->trackReportShow()V

    .line 37
    invoke-virtual {p1}, Lccsansan/da/removeDownloadListener;->trackReportShow()V

    :goto_1
    return-void

    .line 38
    :goto_2
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->trackReportShow()V

    .line 39
    invoke-virtual {p1}, Lccsansan/da/removeDownloadListener;->trackReportShow()V

    .line 40
    throw v0

    .line 41
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source file["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] is not exists."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "source file is null."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method
