.class public abstract Lccsansan/cj/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public addDownloadListener:J

.field protected getDownloadingList:Ljava/lang/Boolean;

.field public removeDownloadListener:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lccsansan/cj/removeDownloadListener;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lccsansan/ai/removeDownloadListener;->IncentiveDownloadUtils()J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/cj/addDownloadListener;->addDownloadListener:J

    .line 4
    invoke-virtual {p1}, Lccsansan/ai/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cj/addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    .line 5
    iget-object p1, p1, Lccsansan/cj/removeDownloadListener;->unifiedDownload:Lccsanorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lccsansan/cj/addDownloadListener;->removeDownloadListener(Lccsanorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method protected abstract getDownloadingList()Z
.end method

.method public abstract removeDownloadListener(Lccsanorg/json/JSONObject;)V
.end method

.method public removeDownloadListener()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/cj/addDownloadListener;->getDownloadingList:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lccsansan/cj/addDownloadListener;->getDownloadingList()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cj/addDownloadListener;->getDownloadingList:Ljava/lang/Boolean;

    .line 3
    :cond_0
    iget-object v0, p0, Lccsansan/cj/addDownloadListener;->getDownloadingList:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsansan/cj/addDownloadListener;->addDownloadListener:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/cj/addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
