.class public Lccsansan/cu/removeDownloadListener;
.super Lccsansan/cu/addDownloadListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/cu/removeDownloadListener$removeDownloadListener;
    }
.end annotation


# instance fields
.field private unifiedDownload:Lccsanorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/san/ads/AdFormat;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lccsansan/cu/addDownloadListener;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/san/ads/AdFormat;)V

    return-void
.end method

.method static removeDownloadListener(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "fb"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "facebook"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public addDownloadListener()Lccsanorg/json/JSONObject;
    .locals 4

    .line 2
    iget-object v0, p0, Lccsansan/cu/removeDownloadListener;->unifiedDownload:Lccsanorg/json/JSONObject;

    if-eqz v0, :cond_0

    return-object v0

    .line 6
    :cond_0
    invoke-static {}, Lccsancom/san/api/SanAdSdk;->getBidderToken()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 11
    :cond_1
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "name"

    const-string v3, "fb"

    .line 13
    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 15
    iget-object v2, p0, Lccsansan/cu/addDownloadListener;->addDownloadListener:Lccsancom/san/ads/AdFormat;

    invoke-static {v2}, Lccsansan/cu/removeDownloadListener$removeDownloadListener;->getFormats(Lccsancom/san/ads/AdFormat;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "${BUYER_UID}"

    .line 16
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "${AUCTION_ID}"

    .line 17
    :try_start_1
    iget-object v3, p0, Lccsansan/cu/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "${PLACEMENT_ID}"

    .line 18
    :try_start_2
    iget-object v3, p0, Lccsansan/cu/addDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "params"

    .line 19
    invoke-virtual {v1, v2, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 20
    iput-object v1, p0, Lccsansan/cu/removeDownloadListener;->unifiedDownload:Lccsanorg/json/JSONObject;
    :try_end_2
    .catch Lccsanorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lccsanorg/json/JSONException;->printStackTrace()V

    .line 24
    :goto_0
    iget-object v0, p0, Lccsansan/cu/removeDownloadListener;->unifiedDownload:Lccsanorg/json/JSONObject;

    return-object v0
.end method
