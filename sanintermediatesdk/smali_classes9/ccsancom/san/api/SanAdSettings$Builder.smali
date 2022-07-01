.class public Lccsancom/san/api/SanAdSettings$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/api/SanAdSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private IncentiveDownloadUtils:Lccsancom/san/ads/base/ICloudConfigListener;

.field private addDownloadListener:Lccsancom/san/ads/base/IStats;

.field private getDownloadingList:Lccsancom/san/ads/base/IBeylaIdHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsancom/san/api/SanAdSettings$Builder;)Lccsancom/san/ads/base/IStats;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/api/SanAdSettings$Builder;->addDownloadListener:Lccsancom/san/ads/base/IStats;

    return-object p0
.end method

.method static synthetic removeDownloadListener(Lccsancom/san/api/SanAdSettings$Builder;)Lccsancom/san/ads/base/IBeylaIdHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/api/SanAdSettings$Builder;->getDownloadingList:Lccsancom/san/ads/base/IBeylaIdHelper;

    return-object p0
.end method

.method static synthetic unifiedDownload(Lccsancom/san/api/SanAdSettings$Builder;)Lccsancom/san/ads/base/ICloudConfigListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/api/SanAdSettings$Builder;->IncentiveDownloadUtils:Lccsancom/san/ads/base/ICloudConfigListener;

    return-object p0
.end method


# virtual methods
.method public build()Lccsancom/san/api/SanAdSettings;
    .locals 2

    .line 1
    new-instance v0, Lccsancom/san/api/SanAdSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsancom/san/api/SanAdSettings;-><init>(Lccsancom/san/api/SanAdSettings$Builder;Lccsancom/san/api/SanAdSettings$1;)V

    return-object v0
.end method

.method public setBeylaIdHelper(Lccsancom/san/ads/base/IBeylaIdHelper;)Lccsancom/san/api/SanAdSettings$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/api/SanAdSettings$Builder;->getDownloadingList:Lccsancom/san/ads/base/IBeylaIdHelper;

    return-object p0
.end method

.method public setCloudConfigImpl(Lccsancom/san/ads/base/ICloudConfigListener;)Lccsancom/san/api/SanAdSettings$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/api/SanAdSettings$Builder;->IncentiveDownloadUtils:Lccsancom/san/ads/base/ICloudConfigListener;

    return-object p0
.end method

.method public setStatsInjection(Lccsancom/san/ads/base/IStats;)Lccsancom/san/api/SanAdSettings$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/api/SanAdSettings$Builder;->addDownloadListener:Lccsancom/san/ads/base/IStats;

    return-object p0
.end method
