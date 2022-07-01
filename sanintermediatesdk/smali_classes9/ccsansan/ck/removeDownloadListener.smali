.class public Lccsansan/ck/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final IncentiveDownloadUtils:[I

.field private static final removeDownloadListener:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/ck/removeDownloadListener;->removeDownloadListener:[I

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lccsansan/ck/removeDownloadListener;->IncentiveDownloadUtils:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public static addDownloadListener()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/ck/getDownloadedRecordByUrl;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lccsansan/ck/removeDownloadListener;->IncentiveDownloadUtils:[I

    invoke-static {v0}, Lccsansan/ck/removeDownloadListener;->unifiedDownload([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static addDownloadListener(Ljava/lang/String;)Lccsansan/ck/getDownloadedRecordByUrl;
    .locals 2

    .line 14
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lccsansan/bw/getPackageNameByRecord;->addDownloadListener(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .line 15
    instance-of v0, p0, Lccsansan/ck/getDownloadedRecordByUrl;

    if-eqz v0, :cond_0

    .line 16
    check-cast p0, Lccsansan/ck/getDownloadedRecordByUrl;

    return-object p0

    :cond_0
    return-object v1
.end method

.method public static unifiedDownload()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/ck/getDownloadedRecordByUrl;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lccsansan/ck/removeDownloadListener;->removeDownloadListener:[I

    invoke-static {v0}, Lccsansan/ck/removeDownloadListener;->unifiedDownload([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static unifiedDownload([I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Lccsansan/ck/getDownloadedRecordByUrl;",
            ">;"
        }
    .end annotation

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    .line 8
    invoke-static {v3}, Lccsansan/ck/removeDownloadListener;->unifiedDownload(I)Lccsansan/ck/getDownloadedRecordByUrl;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 10
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static unifiedDownload(I)Lccsansan/ck/getDownloadedRecordByUrl;
    .locals 0

    .line 11
    invoke-static {p0}, Lccsansan/ck/deleteDownItem;->getActionByType(I)Lccsansan/ck/deleteDownItem;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 13
    iget-object p0, p0, Lccsansan/ck/deleteDownItem;->actionClazzName:Ljava/lang/String;

    invoke-static {p0}, Lccsansan/ck/removeDownloadListener;->addDownloadListener(Ljava/lang/String;)Lccsansan/ck/getDownloadedRecordByUrl;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
