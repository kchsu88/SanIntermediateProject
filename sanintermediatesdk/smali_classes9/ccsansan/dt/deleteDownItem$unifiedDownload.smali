.class public Lccsansan/dt/deleteDownItem$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/dt/deleteDownItem$addDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/dt/deleteDownItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "unifiedDownload"
.end annotation


# instance fields
.field addDownloadListener:Ljava/lang/String;

.field public getDownloadingList:I

.field private removeDownloadListener:Ljava/lang/String;

.field public unifiedDownload:I


# direct methods
.method public constructor <init>(Lccsanorg/json/JSONObject;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "w"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lccsansan/dt/deleteDownItem$unifiedDownload;->getDownloadingList:I

    .line 3
    const-string v0, "h"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lccsansan/dt/deleteDownItem$unifiedDownload;->unifiedDownload:I

    .line 4
    const-string v0, "click_url"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dt/deleteDownItem$unifiedDownload;->addDownloadListener:Ljava/lang/String;

    .line 5
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsansan/dt/deleteDownItem$unifiedDownload;->removeDownloadListener:Ljava/lang/String;

    return-void
.end method

.method static synthetic addDownloadListener(Lccsansan/dt/deleteDownItem$unifiedDownload;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/dt/deleteDownItem$unifiedDownload;->removeDownloadListener:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public removeDownloadListener()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lccsansan/dt/deleteDownItem$unifiedDownload;->removeDownloadListener:Ljava/lang/String;

    return-object v0
.end method
