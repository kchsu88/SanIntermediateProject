.class public Lccsansan/bd/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private IncentiveDownloadUtils:Ljava/lang/String;

.field private addDownloadListener:Ljava/lang/String;

.field private getDownloadingList:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDownloadingList(Lccsanorg/json/JSONObject;)Lccsansan/bd/addDownloadListener;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lccsansan/bd/addDownloadListener;

    invoke-direct {v0}, Lccsansan/bd/addDownloadListener;-><init>()V

    .line 5
    const-string v1, "app_name"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/bd/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 6
    const-string v1, "close_time"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lccsansan/bd/addDownloadListener;->addDownloadListener(J)V

    .line 7
    const-string v1, "pkg_name"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lccsansan/bd/addDownloadListener;->addDownloadListener(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public IncentiveDownloadUtils()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/bd/addDownloadListener;->addDownloadListener:Ljava/lang/String;

    return-object v0
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lccsansan/bd/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    return-void
.end method

.method public addDownloadListener()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/bd/addDownloadListener;->getDownloadingList:J

    return-wide v0
.end method

.method public addDownloadListener(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lccsansan/bd/addDownloadListener;->getDownloadingList:J

    return-void
.end method

.method public addDownloadListener(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/bd/addDownloadListener;->addDownloadListener:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReseverNotifyInfo{close_time=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsansan/bd/addDownloadListener;->getDownloadingList:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pkg_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsansan/bd/addDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", app_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsansan/bd/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
