.class final Lccsansan/bq/removeDownloadListener$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/bq/removeDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lccsancom/san/ads/AdInfo;",
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
    check-cast p1, Lccsancom/san/ads/AdInfo;

    check-cast p2, Lccsancom/san/ads/AdInfo;

    invoke-virtual {p0, p1, p2}, Lccsansan/bq/removeDownloadListener$unifiedDownload;->removeDownloadListener(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/AdInfo;)I

    move-result p1

    return p1
.end method

.method public removeDownloadListener(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/AdInfo;)I
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lccsansan/bq/removeDownloadListener;->removeDownloadListener(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/AdInfo;)I

    move-result p1

    return p1
.end method
