.class public Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;
.super Ljava/lang/Object;
.source "DownloadMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private campaign:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private checkMD5:Z

.field private downloadRate:I

.field private downloadResourceType:Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

.field private downloadUrl:Ljava/lang/String;

.field private extraData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private md5:Ljava/lang/String;

.field private resourceUrl:Ljava/lang/String;

.field private saveFileName:Ljava/lang/String;

.field private saveFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILccsancom/mbridge/msdk/foundation/download/DownloadResourceType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->md5:Ljava/lang/String;

    .line 13
    const/4 v1, 0x0

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->checkMD5:Z

    .line 14
    const/16 v1, 0x64

    iput v1, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->downloadRate:I

    .line 21
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->campaign:Ljava/lang/Object;

    .line 22
    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->downloadUrl:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->saveFileName:Ljava/lang/String;

    .line 24
    iput p4, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->downloadRate:I

    .line 25
    iput-object p5, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->downloadResourceType:Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    .line 28
    :try_start_0
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "://"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->resourceUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 32
    :catch_0
    move-exception p1

    .line 33
    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->resourceUrl:Ljava/lang/String;

    .line 35
    :goto_0
    return-void
.end method


# virtual methods
.method public addExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->extraData:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->extraData:Ljava/util/Map;

    .line 80
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->extraData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public getCampaign()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->campaign:Ljava/lang/Object;

    return-object v0
.end method

.method public getDownloadRate()I
    .locals 1

    .line 68
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->downloadRate:I

    return v0
.end method

.method public getDownloadResourceType()Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;
    .locals 1

    .line 91
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->downloadResourceType:Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 84
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->extraData:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->extraData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 87
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceUrl()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->resourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveFileName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->saveFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveFilePath()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->saveFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public isCheckMD5()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->checkMD5:Z

    return v0
.end method

.method public setCheckMD5(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->checkMD5:Z

    .line 65
    return-void
.end method

.method public setDownloadRate(I)V
    .locals 0

    .line 72
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->downloadRate:I

    .line 73
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->md5:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setSaveFilePath(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->saveFilePath:Ljava/lang/String;

    .line 100
    return-void
.end method
