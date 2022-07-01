.class public Lccsansan/dh/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private IncentiveDownloadUtils:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/dh/IncentiveDownloadUtils;",
            ">;"
        }
    .end annotation
.end field

.field private addDownloadListener:Ljava/lang/String;

.field private getDownloadingList:J

.field private removeDownloadListener:J

.field private unifiedDownload:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsansan/dh/unifiedDownload;->getDownloadingList:J

    return-void
.end method

.method private getDownloadingList(Ljava/io/File;)V
    .locals 8

    .line 15
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 17
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 18
    iget-wide v3, p0, Lccsansan/dh/unifiedDownload;->getDownloadingList:J

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lccsansan/dh/unifiedDownload;->getDownloadingList:J

    .line 20
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 21
    iget-wide v4, p0, Lccsansan/dh/unifiedDownload;->removeDownloadListener:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 22
    iput-wide v2, p0, Lccsansan/dh/unifiedDownload;->removeDownloadListener:J

    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 26
    iget-wide v5, p0, Lccsansan/dh/unifiedDownload;->removeDownloadListener:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    .line 27
    iput-wide v3, p0, Lccsansan/dh/unifiedDownload;->removeDownloadListener:J

    .line 28
    :cond_1
    invoke-direct {p0, v2}, Lccsansan/dh/unifiedDownload;->getDownloadingList(Ljava/io/File;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/io/File;I)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dh/unifiedDownload;->addDownloadListener:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stat "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/dr/getDownloadedRecordByUrl;->removeDownloadListener(Ljava/lang/String;)[J

    move-result-object v0

    .line 3
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    iput-wide v2, p0, Lccsansan/dh/unifiedDownload;->unifiedDownload:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lccsansan/dh/unifiedDownload;->unifiedDownload:J

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lccsansan/dh/unifiedDownload;->getDownloadingList(Ljava/io/File;)V

    const/4 v0, 0x2

    if-lt p2, v0, :cond_2

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dh/unifiedDownload;->IncentiveDownloadUtils:Ljava/util/List;

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 10
    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 11
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12
    new-instance v3, Lccsansan/dh/IncentiveDownloadUtils;

    invoke-direct {v3}, Lccsansan/dh/IncentiveDownloadUtils;-><init>()V

    .line 13
    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v3, v2, v4}, Lccsansan/dh/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/io/File;I)V

    .line 14
    iget-object v2, p0, Lccsansan/dh/unifiedDownload;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public removeDownloadListener()Lccsanorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 29
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 30
    iget-object v1, p0, Lccsansan/dh/unifiedDownload;->addDownloadListener:Ljava/lang/String;

    const-string v2, "f_path"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 31
    iget-wide v1, p0, Lccsansan/dh/unifiedDownload;->getDownloadingList:J

    const-string v3, "f_size"

    invoke-virtual {v0, v3, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 32
    iget-wide v1, p0, Lccsansan/dh/unifiedDownload;->removeDownloadListener:J

    const-string v3, "l_modify"

    invoke-virtual {v0, v3, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 33
    iget-wide v1, p0, Lccsansan/dh/unifiedDownload;->unifiedDownload:J

    const-string v3, "c_time"

    invoke-virtual {v0, v3, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 34
    new-instance v1, Lccsanorg/json/JSONArray;

    invoke-direct {v1}, Lccsanorg/json/JSONArray;-><init>()V

    .line 35
    iget-object v2, p0, Lccsansan/dh/unifiedDownload;->IncentiveDownloadUtils:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 36
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsansan/dh/IncentiveDownloadUtils;

    .line 37
    invoke-virtual {v3}, Lccsansan/dh/IncentiveDownloadUtils;->removeDownloadListener()Lccsanorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    goto :goto_0

    :cond_0
    nop

    .line 39
    const-string v2, "s_f_path"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :cond_1
    return-object v0
.end method
