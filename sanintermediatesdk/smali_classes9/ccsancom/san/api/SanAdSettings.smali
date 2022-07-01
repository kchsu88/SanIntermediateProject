.class public Lccsancom/san/api/SanAdSettings;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/api/SanAdSettings$Builder;
    }
.end annotation


# instance fields
.field private getDownloadingList:Lccsancom/san/api/SanAdSettings$Builder;


# direct methods
.method private constructor <init>(Lccsancom/san/api/SanAdSettings$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lccsancom/san/api/SanAdSettings;->getDownloadingList:Lccsancom/san/api/SanAdSettings$Builder;

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/san/api/SanAdSettings$Builder;Lccsancom/san/api/SanAdSettings$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsancom/san/api/SanAdSettings;-><init>(Lccsancom/san/api/SanAdSettings$Builder;)V

    return-void
.end method


# virtual methods
.method public getBeylaIdHelper()Lccsancom/san/ads/base/IBeylaIdHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/api/SanAdSettings;->getDownloadingList:Lccsancom/san/api/SanAdSettings$Builder;

    invoke-static {v0}, Lccsancom/san/api/SanAdSettings$Builder;->removeDownloadListener(Lccsancom/san/api/SanAdSettings$Builder;)Lccsancom/san/ads/base/IBeylaIdHelper;

    move-result-object v0

    return-object v0
.end method

.method public getCloudConfigImpl()Lccsancom/san/ads/base/ICloudConfigListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/api/SanAdSettings;->getDownloadingList:Lccsancom/san/api/SanAdSettings$Builder;

    invoke-static {v0}, Lccsancom/san/api/SanAdSettings$Builder;->unifiedDownload(Lccsancom/san/api/SanAdSettings$Builder;)Lccsancom/san/ads/base/ICloudConfigListener;

    move-result-object v0

    return-object v0
.end method

.method public getStatsInjection()Lccsancom/san/ads/base/IStats;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/api/SanAdSettings;->getDownloadingList:Lccsancom/san/api/SanAdSettings$Builder;

    invoke-static {v0}, Lccsancom/san/api/SanAdSettings$Builder;->IncentiveDownloadUtils(Lccsancom/san/api/SanAdSettings$Builder;)Lccsancom/san/ads/base/IStats;

    move-result-object v0

    return-object v0
.end method
