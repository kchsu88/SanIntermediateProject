.class public Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/ae/unifiedDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncentiveDownloadUtils"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils$IncentiveDownloadUtils;
    }
.end annotation


# instance fields
.field public IncentiveDownloadUtils:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils$IncentiveDownloadUtils;",
            ">;"
        }
    .end annotation
.end field

.field public removeDownloadListener:Ljava/lang/String;

.field public unifiedDownload:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsanorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/util/List;

    .line 47
    const-string v0, "parent"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    .line 48
    const-string v0, "import"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    .line 49
    const-string v0, "items"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 50
    :goto_0
    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 51
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v1

    .line 52
    iget-object v2, p0, Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/util/List;

    new-instance v3, Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils$IncentiveDownloadUtils;

    invoke-direct {v3, v1}, Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils$IncentiveDownloadUtils;-><init>(Lccsanorg/json/JSONObject;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getDownloadingList()V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils;->unifiedDownload(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method private unifiedDownload(Ljava/io/File;Ljava/lang/String;)V
    .locals 8

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 9
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    invoke-direct {p0, v2, p2}, Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils;->unifiedDownload(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_1
    iget-object v3, p0, Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/util/List;

    new-instance v4, Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils$IncentiveDownloadUtils;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-direct {v4, v5, v6, v7}, Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils$IncentiveDownloadUtils;-><init>(Ljava/lang/String;J)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method IncentiveDownloadUtils()Lccsanorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils;->getDownloadingList()V

    .line 2
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 3
    iget-object v1, p0, Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    const-string v2, "parent"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 4
    iget-object v1, p0, Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    const-string v2, "import"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 5
    new-instance v1, Lccsanorg/json/JSONArray;

    invoke-direct {v1}, Lccsanorg/json/JSONArray;-><init>()V

    .line 6
    iget-object v2, p0, Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils$IncentiveDownloadUtils;

    .line 7
    invoke-virtual {v3}, Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener()Lccsanorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    goto :goto_0

    :cond_0
    nop

    .line 8
    const-string v2, "items"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    return-object v0
.end method
