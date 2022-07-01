.class public Lccsancom/san/mads/mraid/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;,
        Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;
    }
.end annotation


# instance fields
.field private final IncentiveDownloadUtils:Lccsancom/san/mads/mraid/getDownloadedCount;

.field private addDownloadListener:Lccsansan/co/getDownloadingRecordByUrl;

.field private getDownloadStatusByUrl:Z

.field private getDownloadingList:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;

.field private final getDownloadingRecordByUrl:Lccsanandroid/webkit/WebViewClient;

.field private removeDownloadListener:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

.field private final unifiedDownload:Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;


# direct methods
.method constructor <init>(Lccsancom/san/mads/mraid/getDownloadedCount;)V
    .locals 1

    .line 1
    new-instance v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;

    invoke-direct {v0}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;-><init>()V

    invoke-direct {p0, p1, v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;-><init>(Lccsancom/san/mads/mraid/getDownloadedCount;Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;)V

    return-void
.end method

.method constructor <init>(Lccsancom/san/mads/mraid/getDownloadedCount;Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$IncentiveDownloadUtils;

    invoke-direct {v0, p0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$IncentiveDownloadUtils;-><init>(Lccsancom/san/mads/mraid/IncentiveDownloadUtils;)V

    iput-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Lccsanandroid/webkit/WebViewClient;

    .line 52
    iput-object p1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/getDownloadedCount;

    .line 53
    iput-object p2, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->unifiedDownload:Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;

    return-void
.end method

.method private IncentiveDownloadUtils(III)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/san/mads/mraid/addDownloadListener;
        }
    .end annotation

    if-lt p1, p2, :cond_0

    if-gt p1, p3, :cond_0

    return p1

    .line 213
    :cond_0
    new-instance p2, Lccsancom/san/mads/mraid/addDownloadListener;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Integer parameter out of range: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lccsancom/san/mads/mraid/addDownloadListener;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private IncentiveDownloadUtils(Lccsanandroid/graphics/Rect;)Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lccsanandroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanandroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private IncentiveDownloadUtils(Ljava/lang/String;Ljava/net/URI;)Ljava/net/URI;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/san/mads/mraid/addDownloadListener;
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p2

    .line 215
    :cond_0
    invoke-direct {p0, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadStatusByUrl(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    return-object p1
.end method

.method static synthetic IncentiveDownloadUtils(Lccsancom/san/mads/mraid/IncentiveDownloadUtils;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)V

    return-void
.end method

.method private IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 1

    .line 77
    iget-boolean v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadStatusByUrl:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadStatusByUrl:Z

    .line 82
    iget-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;

    if-eqz v0, :cond_1

    .line 83
    invoke-interface {v0, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;->unifiedDownload(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic addDownloadListener(Lccsancom/san/mads/mraid/IncentiveDownloadUtils;Lccsancom/san/mads/mraid/deleteDownItem;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener(Lccsancom/san/mads/mraid/deleteDownItem;Ljava/lang/String;)V

    return-void
.end method

.method private addDownloadListener(Lccsancom/san/mads/mraid/deleteDownItem;)V
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraidbridge.nativeCallComplete("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p1}, Lccsancom/san/mads/mraid/deleteDownItem;->toJavascriptString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-virtual {p0, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;)V

    return-void
.end method

.method private addDownloadListener(Ljava/lang/String;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/san/mads/mraid/addDownloadListener;
        }
    .end annotation

    if-nez p1, :cond_0

    return p2

    .line 214
    :cond_0
    invoke-direct {p0, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadedList(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private getDownloadStatusByUrl(Ljava/lang/String;)Ljava/net/URI;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/san/mads/mraid/addDownloadListener;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v0, Lccsancom/san/mads/mraid/addDownloadListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URL parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lccsancom/san/mads/mraid/addDownloadListener;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_0
    new-instance p1, Lccsancom/san/mads/mraid/addDownloadListener;

    const-string v0, "Parameter cannot be null"

    invoke-direct {p1, v0}, Lccsancom/san/mads/mraid/addDownloadListener;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getDownloadedList(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/san/mads/mraid/addDownloadListener;
        }
    .end annotation

    .line 1
    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    const-string v0, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_1
    new-instance v0, Lccsancom/san/mads/mraid/addDownloadListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid boolean parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lccsancom/san/mads/mraid/addDownloadListener;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDownloadedRecordByUrl(Ljava/lang/String;)Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/san/mads/mraid/addDownloadListener;
        }
    .end annotation

    .line 1
    const-string v0, "portrait"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;->PORTRAIT:Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;

    return-object p1

    :cond_0
    nop

    .line 3
    const-string v0, "landscape"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p1, Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;->LANDSCAPE:Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;

    return-object p1

    :cond_1
    nop

    .line 5
    const-string v0, "none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object p1, Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;->NONE:Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;

    return-object p1

    .line 8
    :cond_2
    new-instance v0, Lccsancom/san/mads/mraid/addDownloadListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lccsancom/san/mads/mraid/addDownloadListener;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic getDownloadingList(Lccsancom/san/mads/mraid/IncentiveDownloadUtils;)Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;
    .locals 0

    .line 3
    iget-object p0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;

    return-object p0
.end method

.method private getDownloadingList(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0, p1, p2, p3}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;->getDownloadingList(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic getDownloadingList(Lccsancom/san/mads/mraid/IncentiveDownloadUtils;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getDownloadingRecordByUrl(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/san/mads/mraid/addDownloadListener;
        }
    .end annotation

    const/16 v0, 0xa

    .line 1
    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 3
    new-instance v0, Lccsancom/san/mads/mraid/addDownloadListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid numeric parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lccsancom/san/mads/mraid/addDownloadListener;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private removeDownloadListener(Lccsancom/san/mads/mraid/deleteDownItem;Ljava/lang/String;)V
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraidbridge.notifyErrorEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p1}, Lccsancom/san/mads/mraid/deleteDownItem;->toJavascriptString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-static {p2}, Lccsanorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;)V

    return-void
.end method

.method private unifiedDownload(Lccsanandroid/graphics/Rect;)Ljava/lang/String;
    .locals 3

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lccsanandroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lccsanandroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanandroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanandroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic unifiedDownload(Lccsancom/san/mads/mraid/IncentiveDownloadUtils;)Lccsansan/co/getDownloadingRecordByUrl;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/co/getDownloadingRecordByUrl;

    return-object p0
.end method

.method private unifiedDownload(Ljava/lang/String;Lccsansan/cx/unifiedDownload$unifiedDownload;)Lccsansan/cx/unifiedDownload$unifiedDownload;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/san/mads/mraid/addDownloadListener;
        }
    .end annotation

    .line 193
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 197
    :cond_0
    const-string p2, "top-left"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 198
    sget-object p1, Lccsansan/cx/unifiedDownload$unifiedDownload;->TOP_LEFT:Lccsansan/cx/unifiedDownload$unifiedDownload;

    return-object p1

    :cond_1
    nop

    .line 199
    const-string p2, "top-right"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 200
    sget-object p1, Lccsansan/cx/unifiedDownload$unifiedDownload;->TOP_RIGHT:Lccsansan/cx/unifiedDownload$unifiedDownload;

    return-object p1

    :cond_2
    nop

    .line 201
    const-string p2, "center"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 202
    sget-object p1, Lccsansan/cx/unifiedDownload$unifiedDownload;->CENTER:Lccsansan/cx/unifiedDownload$unifiedDownload;

    return-object p1

    :cond_3
    nop

    .line 203
    const-string p2, "bottom-left"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 204
    sget-object p1, Lccsansan/cx/unifiedDownload$unifiedDownload;->BOTTOM_LEFT:Lccsansan/cx/unifiedDownload$unifiedDownload;

    return-object p1

    :cond_4
    nop

    .line 205
    const-string p2, "bottom-right"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 206
    sget-object p1, Lccsansan/cx/unifiedDownload$unifiedDownload;->BOTTOM_RIGHT:Lccsansan/cx/unifiedDownload$unifiedDownload;

    return-object p1

    :cond_5
    nop

    .line 207
    const-string p2, "top-center"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 208
    sget-object p1, Lccsansan/cx/unifiedDownload$unifiedDownload;->TOP_CENTER:Lccsansan/cx/unifiedDownload$unifiedDownload;

    return-object p1

    :cond_6
    nop

    .line 209
    const-string p2, "bottom-center"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 210
    sget-object p1, Lccsansan/cx/unifiedDownload$unifiedDownload;->BOTTOM_CENTER:Lccsansan/cx/unifiedDownload$unifiedDownload;

    return-object p1

    .line 212
    :cond_7
    new-instance p2, Lccsancom/san/mads/mraid/addDownloadListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid close position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lccsancom/san/mads/mraid/addDownloadListener;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method IncentiveDownloadUtils()V
    .locals 1

    .line 67
    iget-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;->destroy()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    :cond_0
    return-void
.end method

.method IncentiveDownloadUtils(Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;

    return-void
.end method

.method addDownloadListener()V
    .locals 1

    .line 4
    const-string v0, "mraidbridge.notifyReadyEvent();"

    invoke-virtual {p0, v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;)V

    return-void
.end method

.method addDownloadListener(Lccsanandroid/webkit/RenderProcessGoneDetail;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p1}, Lccsanandroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lccsancom/san/mads/mraid/getDownloadingList;->RENDER_PROCESS_GONE_WITH_CRASH:Lccsancom/san/mads/mraid/getDownloadingList;

    goto :goto_0

    :cond_0
    sget-object p1, Lccsancom/san/mads/mraid/getDownloadingList;->RENDER_PROCESS_GONE_UNSPECIFIED:Lccsancom/san/mads/mraid/getDownloadingList;

    .line 88
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mraid.Bridge"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;

    if-eqz v0, :cond_1

    .line 91
    invoke-interface {v0, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;->addDownloadListener(Lccsancom/san/mads/mraid/getDownloadingList;)V

    :cond_1
    return-void
.end method

.method addDownloadListener(Lccsancom/san/mads/mraid/deleteDownItem;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/san/mads/mraid/deleteDownItem;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/san/mads/mraid/addDownloadListener;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/getDownloadedCount;

    invoke-virtual {p1, v0}, Lccsancom/san/mads/mraid/deleteDownItem;->requiresClick(Lccsancom/san/mads/mraid/getDownloadedCount;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->unifiedDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    new-instance p1, Lccsancom/san/mads/mraid/addDownloadListener;

    const-string p2, "Cannot execute this command unless the user clicks"

    invoke-direct {p1, p2}, Lccsancom/san/mads/mraid/addDownloadListener;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_1
    :goto_0
    iget-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;

    if-eqz v0, :cond_3

    .line 102
    iget-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    if-eqz v0, :cond_2

    .line 106
    sget-object v0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$deleteDownItem;->removeDownloadListener:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "uri"

    const-string v2, "shouldUseCustomClose"

    const-string v3, "url"

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 162
    :pswitch_0
    new-instance p1, Lccsancom/san/mads/mraid/addDownloadListener;

    const-string p2, "Unspecified MRAID Javascript command"

    invoke-direct {p1, p2}, Lccsancom/san/mads/mraid/addDownloadListener;-><init>(Ljava/lang/String;)V

    throw p1

    .line 163
    :pswitch_1
    iget-object p1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->unifiedDownload:Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;

    iget-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/util/Map;)V

    goto/16 :goto_1

    :pswitch_2
    nop

    .line 164
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadStatusByUrl(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    .line 165
    iget-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->unifiedDownload:Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;

    iget-object v1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    invoke-virtual {v1}, Lccsanandroid/webkit/WebView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$addDownloadListener;

    invoke-direct {v2, p0, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$addDownloadListener;-><init>(Lccsancom/san/mads/mraid/IncentiveDownloadUtils;Lccsancom/san/mads/mraid/deleteDownItem;)V

    invoke-virtual {v0, v1, p2, v2}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$IncentiveDownloadUtils;)V

    goto/16 :goto_1

    :pswitch_3
    nop

    .line 166
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadStatusByUrl(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    .line 167
    iget-object p2, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;

    invoke-interface {p2, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;->removeDownloadListener(Ljava/net/URI;)V

    goto/16 :goto_1

    :pswitch_4
    nop

    .line 168
    const-string p1, "allowOrientationChange"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadedList(Ljava/lang/String;)Z

    move-result p1

    .line 169
    const-string v0, "forceOrientation"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadedRecordByUrl(Ljava/lang/String;)Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;

    move-result-object p2

    .line 171
    iget-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;

    invoke-interface {v0, p1, p2}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;->IncentiveDownloadUtils(ZLccsancom/san/mads/mraid/getDownloadingRecordByUrl;)V

    goto/16 :goto_1

    :pswitch_5
    nop

    .line 172
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadStatusByUrl(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    .line 173
    iget-object p2, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;

    invoke-interface {p2, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;->unifiedDownload(Ljava/net/URI;)V

    goto/16 :goto_1

    :pswitch_6
    nop

    .line 174
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Z)Z

    move-result p1

    .line 175
    iget-object p2, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;

    invoke-interface {p2, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;->addDownloadListener(Z)V

    goto/16 :goto_1

    :pswitch_7
    nop

    .line 176
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    .line 177
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2, v4}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Z)Z

    move-result p2

    .line 179
    iget-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;

    invoke-interface {v0, p1, p2}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;->IncentiveDownloadUtils(Ljava/net/URI;Z)V

    goto :goto_1

    :pswitch_8
    nop

    .line 180
    const-string p1, "width"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingRecordByUrl(Ljava/lang/String;)I

    move-result p1

    const v0, 0x186a0

    invoke-direct {p0, p1, v4, v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->IncentiveDownloadUtils(III)I

    move-result v6

    .line 181
    const-string p1, "height"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingRecordByUrl(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, v4, v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->IncentiveDownloadUtils(III)I

    move-result v7

    .line 182
    const-string p1, "offsetX"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingRecordByUrl(Ljava/lang/String;)I

    move-result p1

    const v1, -0x186a0

    invoke-direct {p0, p1, v1, v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->IncentiveDownloadUtils(III)I

    move-result v8

    .line 183
    const-string p1, "offsetY"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingRecordByUrl(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, v1, v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->IncentiveDownloadUtils(III)I

    move-result v9

    .line 185
    const-string p1, "customClosePosition"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lccsansan/cx/unifiedDownload$unifiedDownload;->TOP_RIGHT:Lccsansan/cx/unifiedDownload$unifiedDownload;

    .line 186
    invoke-direct {p0, p1, v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Lccsansan/cx/unifiedDownload$unifiedDownload;)Lccsansan/cx/unifiedDownload$unifiedDownload;

    move-result-object v10

    .line 188
    const-string p1, "allowOffscreen"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Z)Z

    move-result v11

    .line 189
    iget-object v5, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;

    invoke-interface/range {v5 .. v11}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;->addDownloadListener(IIIILccsansan/cx/unifiedDownload$unifiedDownload;Z)V

    goto :goto_1

    .line 190
    :pswitch_9
    iget-object p1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;

    invoke-interface {p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;->IncentiveDownloadUtils()V

    :goto_1
    return-void

    .line 191
    :cond_2
    new-instance p1, Lccsancom/san/mads/mraid/addDownloadListener;

    const-string p2, "The current WebView is being destroyed"

    invoke-direct {p1, p2}, Lccsancom/san/mads/mraid/addDownloadListener;-><init>(Ljava/lang/String;)V

    throw p1

    .line 192
    :cond_3
    new-instance p1, Lccsancom/san/mads/mraid/addDownloadListener;

    const-string p2, "Invalid state to execute this command"

    invoke-direct {p1, p2}, Lccsancom/san/mads/mraid/addDownloadListener;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method addDownloadListener(Ljava/lang/String;)Z
    .locals 8

    .line 2
    const-string v0, "Mraid.Bridge"

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3

    .line 9
    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Lccsanandroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-virtual {v2}, Lccsanandroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleShouldOverrideUrl host : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleShouldOverrideUrl scheme : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string v5, "mopub"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 19
    const-string p1, "failLoad"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 20
    iget-object p1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/getDownloadedCount;

    sget-object v0, Lccsancom/san/mads/mraid/getDownloadedCount;->INLINE:Lccsancom/san/mads/mraid/getDownloadedCount;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;

    if-eqz p1, :cond_0

    .line 21
    invoke-interface {p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;->unifiedDownload()V

    :cond_0
    return v1

    .line 29
    :cond_1
    invoke-virtual {p0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->unifiedDownload()Z

    move-result v5

    const/4 v6, 0x0

    const-string v7, "mraid"

    if-eqz v5, :cond_3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 30
    iget-object v2, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;

    if-eqz v2, :cond_2

    invoke-interface {v2, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 34
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mraid://open?url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "UTF-8"

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lccsanandroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 36
    invoke-virtual {v2}, Lccsanandroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid MRAID URL encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object p1, Lccsancom/san/mads/mraid/deleteDownItem;->OPEN:Lccsancom/san/mads/mraid/deleteDownItem;

    const-string v0, "Non-mraid URL is invalid"

    invoke-direct {p0, p1, v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener(Lccsancom/san/mads/mraid/deleteDownItem;Ljava/lang/String;)V

    return v6

    :cond_3
    :goto_0
    nop

    .line 44
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 45
    invoke-static {v4}, Lccsancom/san/mads/mraid/deleteDownItem;->fromJavascriptString(Ljava/lang/String;)Lccsancom/san/mads/mraid/deleteDownItem;

    move-result-object p1

    .line 47
    :try_start_2
    invoke-static {v2}, Lccsansan/bw/IncentiveSDK$1;->addDownloadListener(Lccsanandroid/net/Uri;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->addDownloadListener(Lccsancom/san/mads/mraid/deleteDownItem;Ljava/util/Map;)V
    :try_end_2
    .catch Lccsancom/san/mads/mraid/addDownloadListener; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    .line 49
    :catch_2
    move-exception v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener(Lccsancom/san/mads/mraid/deleteDownItem;Ljava/lang/String;)V

    .line 51
    :goto_2
    invoke-direct {p0, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->addDownloadListener(Lccsancom/san/mads/mraid/deleteDownItem;)V

    return v1

    :cond_4
    return v6

    :catch_3
    move-exception v2

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid MRAID URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    sget-object p1, Lccsancom/san/mads/mraid/deleteDownItem;->UNSPECIFIED:Lccsancom/san/mads/mraid/deleteDownItem;

    const-string v0, "Mraid command sent an invalid URL"

    invoke-direct {p0, p1, v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener(Lccsancom/san/mads/mraid/deleteDownItem;Ljava/lang/String;)V

    return v1
.end method

.method deleteDownItem()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadStatusByUrl:Z

    return v0
.end method

.method getDownloadingList(Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;)V
    .locals 3

    .line 6
    iput-object p1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    .line 7
    invoke-virtual {p1}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 9
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    .line 10
    iget-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/getDownloadedCount;

    sget-object v2, Lccsancom/san/mads/mraid/getDownloadedCount;->INTERSTITIAL:Lccsancom/san/mads/mraid/getDownloadedCount;

    if-ne v0, v2, :cond_0

    .line 11
    invoke-virtual {p1}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Lccsanandroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 15
    :cond_0
    iget-object p1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    invoke-virtual {p1, v1}, Lccsanandroid/webkit/WebView;->setScrollContainer(Z)V

    .line 16
    iget-object p1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    invoke-virtual {p1, v1}, Lccsanandroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 17
    iget-object p1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    invoke-virtual {p1, v1}, Lccsanandroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 18
    iget-object p1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lccsanandroid/webkit/WebView;->setBackgroundColor(I)V

    .line 20
    iget-object p1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    iget-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Lccsanandroid/webkit/WebViewClient;

    invoke-virtual {p1, v0}, Lccsanandroid/webkit/WebView;->setWebViewClient(Lccsanandroid/webkit/WebViewClient;)V

    .line 22
    iget-object p1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    new-instance v0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$unifiedDownload;

    invoke-direct {v0, p0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$unifiedDownload;-><init>(Lccsancom/san/mads/mraid/IncentiveDownloadUtils;)V

    invoke-virtual {p1, v0}, Lccsanandroid/webkit/WebView;->setWebChromeClient(Lccsanandroid/webkit/WebChromeClient;)V

    .line 47
    new-instance p1, Lccsansan/co/getDownloadingRecordByUrl;

    iget-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lccsansan/co/getDownloadingRecordByUrl;-><init>(Lccsanandroid/content/Context;)V

    iput-object p1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/co/getDownloadingRecordByUrl;

    .line 49
    iget-object p1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    new-instance v0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$removeDownloadListener;

    invoke-direct {v0, p0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$removeDownloadListener;-><init>(Lccsancom/san/mads/mraid/IncentiveDownloadUtils;)V

    invoke-virtual {p1, v0}, Lccsanandroid/webkit/WebView;->setOnTouchListener(Lccsanandroid/view/View$OnTouchListener;)V

    .line 66
    iget-object p1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    new-instance v0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadingList;

    invoke-direct {v0, p0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadingList;-><init>(Lccsancom/san/mads/mraid/IncentiveDownloadUtils;)V

    invoke-virtual {p1, v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;->setVisibilityChangedListener(Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList$IncentiveDownloadUtils;)V

    return-void
.end method

.method getDownloadingList(Lccsancom/san/mads/mraid/deleteDownList;)V
    .locals 2

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.setState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p1}, Lccsancom/san/mads/mraid/deleteDownList;->toJavascriptString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 222
    invoke-virtual {p0, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;)V

    return-void
.end method

.method public getDownloadingList(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    if-nez v0, :cond_0

    .line 2
    const-string p1, "Mraid.Bridge"

    const-string v0, "MRAID bridge called setContentHtml before WebView was attached"

    invoke-static {p1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadStatusByUrl:Z

    .line 7
    invoke-static {}, Lccsansan/cw/getDownloadingList;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lccsanandroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method getDownloadingList(ZZZZZ)V
    .locals 2

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.setSupports("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;)V

    return-void
.end method

.method getDownloadingList()Z
    .locals 1

    .line 9
    iget-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;->addDownloadListener()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeDownloadListener(Lccsancom/san/mads/mraid/getDownloadStatusByUrl;)V
    .locals 3

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.setScreenSize("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {p1}, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->addDownloadListener()Lccsanandroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanandroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");mraidbridge.setMaxSize("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {p1}, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->IncentiveDownloadUtils()Lccsanandroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanandroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");mraidbridge.setCurrentPosition("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {p1}, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->removeDownloadListener()Lccsanandroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");mraidbridge.setDefaultPosition("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {p1}, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->deleteDownItem()Lccsanandroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-virtual {p0, v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;)V

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraidbridge.notifySizeChangeEvent("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {p1}, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->removeDownloadListener()Lccsanandroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanandroid/graphics/Rect;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 244
    invoke-virtual {p0, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;)V

    return-void
.end method

.method removeDownloadListener(Lccsancom/san/mads/mraid/getDownloadedCount;)V
    .locals 2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.setPlacementType("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p1}, Lccsancom/san/mads/mraid/getDownloadedCount;->toJavascriptString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-virtual {p0, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;)V

    return-void
.end method

.method removeDownloadListener(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    const-string v1, "Mraid.Bridge"

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to inject Javascript into MRAID WebView while was not attached:\n\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Injecting Javascript into MRAID WebView:\n\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :try_start_0
    iget-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Injecting Javascript into MRAID WebView: e "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method removeDownloadListener(Z)V
    .locals 2

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.setIsViewable("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;)V

    return-void
.end method

.method removeDownloadListener()Z
    .locals 1

    .line 55
    iget-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public unifiedDownload(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    if-nez v0, :cond_0

    .line 2
    const-string p1, "Mraid.Bridge"

    const-string v0, "MRAID bridge called setContentHtml while WebView was not attached"

    invoke-static {p1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadStatusByUrl:Z

    .line 7
    invoke-virtual {v0, p1}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method unifiedDownload()Z
    .locals 1

    .line 11
    iget-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/co/getDownloadingRecordByUrl;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Lccsansan/co/getDownloadingRecordByUrl;->unifiedDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
