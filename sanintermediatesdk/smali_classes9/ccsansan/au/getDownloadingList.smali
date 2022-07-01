.class public Lccsansan/au/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:[I

.field private static unifiedDownload:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lccsanandroid/util/SparseArray;

    invoke-direct {v0}, Lccsanandroid/util/SparseArray;-><init>()V

    sput-object v0, Lccsansan/au/getDownloadingList;->unifiedDownload:Lccsanandroid/util/SparseArray;

    .line 2
    const/16 v1, 0xc

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lccsansan/au/getDownloadingList;->IncentiveDownloadUtils:[I

    .line 4
    const/4 v1, 0x0

    const-string v2, "0to3M"

    invoke-virtual {v0, v1, v2}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    sget-object v0, Lccsansan/au/getDownloadingList;->unifiedDownload:Lccsanandroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    sget-object v0, Lccsansan/au/getDownloadingList;->unifiedDownload:Lccsanandroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "3to5M"

    invoke-virtual {v0, v1, v2}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    sget-object v0, Lccsansan/au/getDownloadingList;->unifiedDownload:Lccsanandroid/util/SparseArray;

    const/16 v1, 0xa

    const-string v2, "5to10M"

    invoke-virtual {v0, v1, v2}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    sget-object v0, Lccsansan/au/getDownloadingList;->unifiedDownload:Lccsanandroid/util/SparseArray;

    const/16 v1, 0x14

    const-string v2, "10to20M"

    invoke-virtual {v0, v1, v2}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    sget-object v0, Lccsansan/au/getDownloadingList;->unifiedDownload:Lccsanandroid/util/SparseArray;

    const/16 v1, 0x32

    const-string v2, "20to50M"

    invoke-virtual {v0, v1, v2}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    sget-object v0, Lccsansan/au/getDownloadingList;->unifiedDownload:Lccsanandroid/util/SparseArray;

    const/16 v1, 0x64

    const-string v2, "50to100M"

    invoke-virtual {v0, v1, v2}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    sget-object v0, Lccsansan/au/getDownloadingList;->unifiedDownload:Lccsanandroid/util/SparseArray;

    const/16 v1, 0xc8

    const-string v2, "100to200M"

    invoke-virtual {v0, v1, v2}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    sget-object v0, Lccsansan/au/getDownloadingList;->unifiedDownload:Lccsanandroid/util/SparseArray;

    const/16 v1, 0x12c

    const-string v2, "200to300M"

    invoke-virtual {v0, v1, v2}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    sget-object v0, Lccsansan/au/getDownloadingList;->unifiedDownload:Lccsanandroid/util/SparseArray;

    const/16 v1, 0x1f4

    const-string v2, "300to500M"

    invoke-virtual {v0, v1, v2}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    sget-object v0, Lccsansan/au/getDownloadingList;->unifiedDownload:Lccsanandroid/util/SparseArray;

    const/16 v1, 0x2bc

    const-string v2, "500to700M"

    invoke-virtual {v0, v1, v2}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    sget-object v0, Lccsansan/au/getDownloadingList;->unifiedDownload:Lccsanandroid/util/SparseArray;

    const v1, 0xf423f

    const-string v2, "700Mabove"

    invoke-virtual {v0, v1, v2}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x5
        0xa
        0x14
        0x32
        0x64
        0xc8
        0x12c
        0x1f4
        0x2bc
        0xf423f
    .end array-data
.end method

.method private static IncentiveDownloadUtils(J[ILccsanandroid/util/SparseArray;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[I",
            "Lccsanandroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 21
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, -0x1

    .line 22
    aget v2, p2, v2

    int-to-long v5, v2

    aget v2, p2, v0

    int-to-long v7, v2

    move-wide v3, p0

    invoke-static/range {v3 .. v8}, Lccsansan/au/getDownloadingList;->IncentiveDownloadUtils(JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    aget p0, p2, v0

    invoke-virtual {p3, p0}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 30
    :cond_1
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "range: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FileUtilsEx"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
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

.method public static IncentiveDownloadUtils(Lccsancom/san/xz/base/XzRecord;)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getLocalItem()Lccsansan/ae/getDownloadingList;

    move-result-object v0

    .line 101
    instance-of v1, v0, Lccsansan/ae/unifiedDownload;

    if-nez v1, :cond_1

    return-void

    .line 104
    :cond_1
    invoke-virtual {v0}, Lccsansan/ae/removeDownloadListener;->deleteDownList()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getFilePath()Ljava/lang/String;

    move-result-object p0

    .line 106
    invoke-static {p0}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v1

    .line 108
    :try_start_0
    invoke-virtual {v1}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lccsansan/da/removeDownloadListener;->removeDownloadListener()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 109
    invoke-virtual {v1}, Lccsansan/da/removeDownloadListener;->addDownloadListener()[Lccsansan/da/removeDownloadListener;

    move-result-object v2

    .line 110
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 111
    invoke-virtual {v5}, Lccsansan/da/removeDownloadListener;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v6

    const-string v7, "backup.apk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lccsansan/da/removeDownloadListener;->getDownloadedList()Lccsansan/da/removeDownloadListener;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".apk"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lccsansan/bw/getErrorCode;->getThumbPathByRecord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 117
    :cond_2
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->deleteDownList()Z

    .line 120
    :cond_3
    invoke-static {v5, v0}, Lccsansan/bw/setLoaderClassName;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Lccsansan/da/removeDownloadListener;)V

    .line 121
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lccsansan/bw/getErrorCode;->getDownloadingRecordByUrl(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    :cond_5
    return-void
.end method

.method private static IncentiveDownloadUtils(JJJ)Z
    .locals 1

    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    cmp-long p2, p0, p4

    if-gez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static addDownloadListener(Ljava/lang/String;)J
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
    invoke-virtual {v0}, Lccsanandroid/os/StatFs;->getBlockCount()I

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

.method public static addDownloadListener(Lccsansan/da/removeDownloadListener;Lccsansan/da/removeDownloadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->removeDownloadListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-static {p0, p1}, Lccsansan/au/getDownloadingList;->getDownloadingList(Lccsansan/da/removeDownloadListener;Lccsansan/da/removeDownloadListener;)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-static {p0, p1}, Lccsansan/au/getDownloadingList;->removeDownloadListener(Lccsansan/da/removeDownloadListener;Lccsansan/da/removeDownloadListener;)V

    :goto_0
    return-void
.end method

.method public static getDownloadingList(Lccsancom/san/xz/base/XzRecord;J)V
    .locals 11

    if-nez p0, :cond_0

    return-void

    .line 31
    :cond_0
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    .line 34
    :try_start_0
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 35
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->removeDownloadListener()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 36
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->addDownloadListener()[Lccsansan/da/removeDownloadListener;

    move-result-object v1

    .line 38
    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const-string v6, ".apk"

    if-ge v4, v2, :cond_2

    :try_start_1
    aget-object v7, v1, v4

    .line 39
    invoke-virtual {v7}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 44
    :cond_2
    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_e

    aget-object v4, v1, v3

    .line 45
    invoke-virtual {v4}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".obb"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 46
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, ""

    :try_start_2
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string v8, "hasObb"

    const-string v9, "true"

    .line 48
    invoke-virtual {v7, v8, v9}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v8

    invoke-virtual {v8, v7}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    .line 52
    :cond_3
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getLocalItem()Lccsansan/ae/getDownloadingList;

    move-result-object v7

    check-cast v7, Lccsansan/ae/unifiedDownload;

    invoke-virtual {v7}, Lccsansan/ae/unifiedDownload;->getDownloadingList()Ljava/lang/String;

    move-result-object v7

    .line 53
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "Android"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "obb"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 54
    invoke-static {v7}, Lccsansan/bt/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 55
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lccsansan/bt/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 58
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lccsansan/da/removeDownloadListener;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v7

    .line 59
    invoke-virtual {v7}, Lccsansan/da/removeDownloadListener;->getDownloadedList()Lccsansan/da/removeDownloadListener;

    move-result-object v8

    invoke-virtual {v8}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v8

    if-nez v8, :cond_5

    .line 60
    invoke-virtual {v7}, Lccsansan/da/removeDownloadListener;->getDownloadedList()Lccsansan/da/removeDownloadListener;

    move-result-object v8

    invoke-virtual {v8}, Lccsansan/da/removeDownloadListener;->getDownloadedCount()Z

    .line 62
    :cond_5
    invoke-virtual {v7}, Lccsansan/da/removeDownloadListener;->resume()Z

    .line 63
    invoke-static {v4, v7}, Lccsansan/bw/setLoaderClassName;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Lccsansan/da/removeDownloadListener;)V

    .line 65
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 66
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->unifiedDownload()[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    .line 67
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->deleteDownList()Z

    goto/16 :goto_2

    .line 68
    :cond_6
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->unifiedDownload()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_d

    .line 69
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->deleteDownList()Z

    goto/16 :goto_2

    .line 72
    :cond_7
    invoke-virtual {v4}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v7, 0x1

    if-le v5, v7, :cond_9

    .line 74
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getItem()Lccsansan/ae/getDownloadingList;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 75
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getItem()Lccsansan/ae/getDownloadingList;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lccsansan/ae/getDownloadingList;->unifiedDownload(J)V

    .line 76
    :cond_8
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v4

    invoke-virtual {v4, p0}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Lccsancom/san/xz/base/XzRecord;)V

    goto/16 :goto_2

    .line 79
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->getDownloadedList()Lccsansan/da/removeDownloadListener;

    move-result-object v8

    invoke-virtual {v8}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getLocalItem()Lccsansan/ae/getDownloadingList;

    move-result-object v8

    invoke-virtual {v8}, Lccsansan/ae/removeDownloadListener;->deleteDownList()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v7

    .line 80
    invoke-virtual {v7}, Lccsansan/da/removeDownloadListener;->getDownloadedList()Lccsansan/da/removeDownloadListener;

    move-result-object v8

    invoke-virtual {v8}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v8

    if-nez v8, :cond_a

    .line 81
    invoke-virtual {v7}, Lccsansan/da/removeDownloadListener;->getDownloadedList()Lccsansan/da/removeDownloadListener;

    move-result-object v8

    invoke-virtual {v8}, Lccsansan/da/removeDownloadListener;->getDownloadedCount()Z

    .line 82
    :cond_a
    invoke-virtual {v7}, Lccsansan/da/removeDownloadListener;->resume()Z

    .line 83
    invoke-static {v4, v7}, Lccsansan/bw/setLoaderClassName;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Lccsansan/da/removeDownloadListener;)V

    .line 84
    invoke-virtual {v7}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lccsancom/san/xz/base/XzRecord;->setFilePath(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getItem()Lccsansan/ae/getDownloadingList;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 86
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getItem()Lccsansan/ae/getDownloadingList;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lccsansan/ae/getDownloadingList;->unifiedDownload(J)V

    .line 87
    :cond_b
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v4

    invoke-virtual {v4, p0}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Lccsancom/san/xz/base/XzRecord;)V

    .line 89
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 90
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->unifiedDownload()[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    .line 91
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->deleteDownList()Z

    goto :goto_2

    .line 92
    :cond_c
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->unifiedDownload()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_d

    .line 93
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->deleteDownList()Z

    :cond_d
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 98
    :cond_e
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->unifiedDownload()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->unifiedDownload()[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    if-nez p0, :cond_10

    .line 99
    :cond_f
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->deleteDownList()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    :cond_10
    :goto_3
    return-void
.end method

.method public static getDownloadingList(Lccsansan/da/removeDownloadListener;Lccsansan/da/removeDownloadListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lccsansan/da/removeDownloadListener;->pause()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dst mkdir failed! dst : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->unifiedDownload()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 9
    invoke-static {p0, v3}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v4

    invoke-static {p1, v3}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v3

    invoke-static {v4, v3}, Lccsansan/au/getDownloadingList;->addDownloadListener(Lccsansan/da/removeDownloadListener;Lccsansan/da/removeDownloadListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static getDownloadingList(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static removeDownloadListener(J)Ljava/lang/String;
    .locals 2

    .line 19
    const-wide/32 v0, 0x100000

    div-long/2addr p0, v0

    .line 20
    sget-object v0, Lccsansan/au/getDownloadingList;->IncentiveDownloadUtils:[I

    sget-object v1, Lccsansan/au/getDownloadingList;->unifiedDownload:Lccsanandroid/util/SparseArray;

    invoke-static {p0, p1, v0, v1}, Lccsansan/au/getDownloadingList;->IncentiveDownloadUtils(J[ILccsanandroid/util/SparseArray;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final removeDownloadListener(Lccsansan/da/removeDownloadListener;)V
    .locals 5

    if-eqz p0, :cond_3

    .line 5
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->removeDownloadListener()Z

    move-result v0

    invoke-static {v0}, Lccsansan/bw/trackReportShow;->unifiedDownload(Z)V

    .line 8
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->addDownloadListener()[Lccsansan/da/removeDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 11
    invoke-virtual {v3}, Lccsansan/da/removeDownloadListener;->removeDownloadListener()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 12
    invoke-static {v3}, Lccsansan/au/getDownloadingList;->removeDownloadListener(Lccsansan/da/removeDownloadListener;)V

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v3}, Lccsansan/da/removeDownloadListener;->deleteDownList()Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->deleteDownList()Z

    :cond_3
    :goto_2
    return-void
.end method

.method public static removeDownloadListener(Lccsansan/da/removeDownloadListener;Lccsansan/da/removeDownloadListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->getPackageNameByRecord()Ljava/io/InputStream;

    move-result-object p0

    check-cast p0, Ljava/io/FileInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 7
    :try_start_1
    invoke-virtual {p1}, Lccsansan/da/removeDownloadListener;->getThumbPathByRecord()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Ljava/io/FileOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 8
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v2, 0x0

    .line 10
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    move-object v1, v7

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    invoke-static {p0}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Ljava/io/Closeable;)V

    .line 15
    invoke-static {v7}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Ljava/io/Closeable;)V

    .line 16
    invoke-static {p1}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Ljava/io/Closeable;)V

    .line 17
    invoke-static {v0}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v1

    move-object v2, v1

    move-object v1, p1

    move-object p1, p0

    move-object p0, v0

    move-object v0, v7

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v2, v1

    move-object v1, p1

    move-object p1, p0

    move-object p0, v0

    goto :goto_0

    :catchall_2
    move-exception v1

    move-object p1, p0

    move-object p0, v0

    move-object v2, v1

    move-object v1, p0

    goto :goto_0

    :catchall_3
    move-exception v1

    move-object p0, v0

    move-object p1, p0

    move-object v2, v1

    move-object v1, p1

    .line 18
    :goto_0
    :try_start_4
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "fastCopy failed!"

    invoke-direct {v3, v4, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v2

    .line 20
    invoke-static {p1}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Ljava/io/Closeable;)V

    .line 21
    invoke-static {v0}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Ljava/io/Closeable;)V

    .line 22
    invoke-static {v1}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Ljava/io/Closeable;)V

    .line 23
    invoke-static {p0}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Ljava/io/Closeable;)V

    .line 24
    throw v2
.end method

.method public static removeDownloadListener(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 5
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 11
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p0, v2

    .line 12
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".obb"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :catch_0
    move-exception p0

    :cond_4
    return v0
.end method
