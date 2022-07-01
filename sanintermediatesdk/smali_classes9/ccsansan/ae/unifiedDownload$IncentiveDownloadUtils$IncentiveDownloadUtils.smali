.class public Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncentiveDownloadUtils"
.end annotation


# instance fields
.field public IncentiveDownloadUtils:Ljava/lang/String;

.field public unifiedDownload:J


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils$IncentiveDownloadUtils;->unifiedDownload:J

    return-void
.end method

.method constructor <init>(Lccsanorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, "item_path"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 6
    const-string v0, "item_size"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils$IncentiveDownloadUtils;->unifiedDownload:J

    return-void
.end method


# virtual methods
.method removeDownloadListener()Lccsanorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v1, p0, Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    const-string v2, "item_path"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 3
    iget-wide v1, p0, Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils$IncentiveDownloadUtils;->unifiedDownload:J

    const-string v3, "item_size"

    invoke-virtual {v0, v3, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    return-object v0
.end method
