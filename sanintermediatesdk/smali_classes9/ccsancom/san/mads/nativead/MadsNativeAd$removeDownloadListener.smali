.class Lccsancom/san/mads/nativead/MadsNativeAd$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/ck/getDownloadStatusByUrl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/mads/nativead/MadsNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "removeDownloadListener"
.end annotation


# instance fields
.field final synthetic unifiedDownload:Lccsancom/san/mads/nativead/MadsNativeAd;


# direct methods
.method private constructor <init>(Lccsancom/san/mads/nativead/MadsNativeAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/nativead/MadsNativeAd$removeDownloadListener;->unifiedDownload:Lccsancom/san/mads/nativead/MadsNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/san/mads/nativead/MadsNativeAd;Lccsancom/san/mads/nativead/MadsNativeAd$IncentiveDownloadUtils;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lccsancom/san/mads/nativead/MadsNativeAd$removeDownloadListener;-><init>(Lccsancom/san/mads/nativead/MadsNativeAd;)V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/cz/unifiedDownload;->unifiedDownload()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public IncentiveDownloadUtils(Lccsanandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lccsancom/san/mads/nativead/MadsNativeAd$removeDownloadListener;->unifiedDownload:Lccsancom/san/mads/nativead/MadsNativeAd;

    invoke-static {p1}, Lccsancom/san/mads/nativead/MadsNativeAd;->access$900(Lccsancom/san/mads/nativead/MadsNativeAd;)V

    return-void
.end method

.method public addDownloadListener()I
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/cz/unifiedDownload;->IncentiveDownloadUtils()I

    move-result v0

    return v0
.end method

.method public getDownloadingList()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd$removeDownloadListener;->unifiedDownload:Lccsancom/san/mads/nativead/MadsNativeAd;

    invoke-static {v0}, Lccsancom/san/mads/nativead/MadsNativeAd;->access$1000(Lccsancom/san/mads/nativead/MadsNativeAd;)Z

    move-result v0

    return v0
.end method

.method public removeDownloadListener()V
    .locals 2

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd$removeDownloadListener;->unifiedDownload:Lccsancom/san/mads/nativead/MadsNativeAd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/san/mads/nativead/MadsNativeAd;->access$1002(Lccsancom/san/mads/nativead/MadsNativeAd;Z)Z

    return-void
.end method

.method public unifiedDownload()I
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/cz/unifiedDownload;->getDownloadingList()I

    move-result v0

    return v0
.end method
