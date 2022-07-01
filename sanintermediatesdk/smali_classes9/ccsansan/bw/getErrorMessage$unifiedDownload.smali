.class final Lccsansan/bw/getErrorMessage$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/bw/getErrorMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lccsansan/dt/removeDownloadListener;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lccsansan/dt/removeDownloadListener;

    check-cast p2, Lccsansan/dt/removeDownloadListener;

    invoke-virtual {p0, p1, p2}, Lccsansan/bw/getErrorMessage$unifiedDownload;->getDownloadingList(Lccsansan/dt/removeDownloadListener;Lccsansan/dt/removeDownloadListener;)I

    move-result p1

    return p1
.end method

.method public getDownloadingList(Lccsansan/dt/removeDownloadListener;Lccsansan/dt/removeDownloadListener;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getHBResultData()Lccsansan/dt/deleteDownList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->getHBResultData()Lccsansan/dt/deleteDownList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->hasSucceed()I

    move-result v0

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->hasSucceed()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getLocalExtras()I

    move-result v0

    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->getLocalExtras()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    return v0

    .line 11
    :cond_1
    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->buildParams()I

    move-result p2

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->buildParams()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method
