.class public Lccsansan/cs/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private IncentiveDownloadUtils:J

.field private addDownloadListener:J

.field private unifiedDownload:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lccsansan/cs/removeDownloadListener;->IncentiveDownloadUtils:J

    .line 3
    iput-wide p3, p0, Lccsansan/cs/removeDownloadListener;->unifiedDownload:J

    .line 4
    iput-wide p5, p0, Lccsansan/cs/removeDownloadListener;->addDownloadListener:J

    return-void
.end method

.method public constructor <init>(Lccsanorg/json/JSONObject;)V
    .locals 5

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, "start"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lccsansan/cs/removeDownloadListener;->IncentiveDownloadUtils:J

    .line 7
    const-string v0, "end"

    invoke-virtual {p1, v0, v1, v2}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lccsansan/cs/removeDownloadListener;->unifiedDownload:J

    .line 8
    const-string v0, "complete"

    invoke-virtual {p1, v0, v1, v2}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/cs/removeDownloadListener;->addDownloadListener:J

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/cs/removeDownloadListener;->unifiedDownload:J

    return-wide v0
.end method

.method public addDownloadListener()Lccsanorg/json/JSONObject;
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
    iget-wide v1, p0, Lccsansan/cs/removeDownloadListener;->IncentiveDownloadUtils:J

    const-string v3, "start"

    invoke-virtual {v0, v3, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 3
    iget-wide v1, p0, Lccsansan/cs/removeDownloadListener;->unifiedDownload:J

    const-string v3, "end"

    invoke-virtual {v0, v3, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 4
    iget-wide v1, p0, Lccsansan/cs/removeDownloadListener;->addDownloadListener:J

    const-string v3, "complete"

    invoke-virtual {v0, v3, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    return-object v0
.end method

.method public removeDownloadListener()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/cs/removeDownloadListener;->IncentiveDownloadUtils:J

    return-wide v0
.end method

.method public removeDownloadListener(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lccsansan/cs/removeDownloadListener;->addDownloadListener:J

    return-void
.end method

.method public unifiedDownload()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/cs/removeDownloadListener;->addDownloadListener:J

    return-wide v0
.end method
