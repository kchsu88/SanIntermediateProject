.class public Lccsansan/co/getDownloadStatusByUrl;
.super Lccsansan/co/shouldTryHandlingAction;
.source ""

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsansan/co/shouldTryHandlingAction;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lccsansan/co/getDownloadStatusByUrl;",
        ">;"
    }
.end annotation


# instance fields
.field private final addDownloadListener:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 4
    sget-object v0, Lccsansan/co/shouldTryHandlingAction$getDownloadingList;->TRACKING_URL:Lccsansan/co/shouldTryHandlingAction$getDownloadingList;

    invoke-direct {p0, v0, p1, p2, p3}, Lccsansan/co/getDownloadStatusByUrl;-><init>(Lccsansan/co/shouldTryHandlingAction$getDownloadingList;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lccsansan/co/shouldTryHandlingAction$getDownloadingList;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lccsansan/co/shouldTryHandlingAction;-><init>(Lccsansan/co/shouldTryHandlingAction$getDownloadingList;Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-static {p1}, Lccsansan/cx/addDownloadListener;->IncentiveDownloadUtils(Z)V

    .line 3
    iput p3, p0, Lccsansan/co/getDownloadStatusByUrl;->addDownloadListener:I

    return-void
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lccsansan/co/getDownloadStatusByUrl;

    invoke-virtual {p0, p1}, Lccsansan/co/getDownloadStatusByUrl;->unifiedDownload(Lccsansan/co/getDownloadStatusByUrl;)I

    move-result p1

    return p1
.end method

.method public removeDownloadListener()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/co/getDownloadStatusByUrl;->addDownloadListener:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lccsansan/co/getDownloadStatusByUrl;->addDownloadListener:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lccsansan/co/shouldTryHandlingAction;->getDownloadingList()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%dms: %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unifiedDownload(Lccsansan/co/getDownloadStatusByUrl;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lccsansan/co/getDownloadStatusByUrl;->removeDownloadListener()I

    move-result p1

    .line 2
    invoke-virtual {p0}, Lccsansan/co/getDownloadStatusByUrl;->removeDownloadListener()I

    move-result v0

    sub-int/2addr v0, p1

    return v0
.end method
