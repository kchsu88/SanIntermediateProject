.class public Lccsancom/san/api/SanAdSdk;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static addDownloadListener:Ljava/lang/Boolean; = null

.field public static isAutoAna:Z = false

.field private static removeDownloadListener:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canCollectUserInfo()Z
    .locals 3

    .line 1
    invoke-static {}, Lccsancom/san/core/unifiedDownload;->unifiedDownload()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    sget-object v0, Lccsancom/san/api/SanAdSdk;->addDownloadListener:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "consent_status"

    invoke-static {v0, v2, v1}, Lccsansan/bw/performActionWhenOffline;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 5
    invoke-static {v0}, Lccsansan/bw/getErrorCode;->unifiedDownload(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lccsancom/san/api/SanAdSdk;->addDownloadListener:Ljava/lang/Boolean;

    .line 7
    :cond_1
    sget-object v0, Lccsancom/san/api/SanAdSdk;->addDownloadListener:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static doAdLoad(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lccsancom/san/bridge/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static getBidderToken()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lccsancom/san/api/SanAdSdk;->removeDownloadListener:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultSanAdSettingsBuilder()Lccsancom/san/api/SanAdSettings$Builder;
    .locals 2

    .line 1
    new-instance v0, Lccsancom/san/api/SanAdSettings$Builder;

    invoke-direct {v0}, Lccsancom/san/api/SanAdSettings$Builder;-><init>()V

    new-instance v1, Lccsancom/san/core/removeDownloadListener;

    invoke-direct {v1}, Lccsancom/san/core/removeDownloadListener;-><init>()V

    .line 2
    invoke-virtual {v0, v1}, Lccsancom/san/api/SanAdSettings$Builder;->setBeylaIdHelper(Lccsancom/san/ads/base/IBeylaIdHelper;)Lccsancom/san/api/SanAdSettings$Builder;

    move-result-object v0

    new-instance v1, Lccsancom/san/core/getDownloadingList;

    invoke-direct {v1}, Lccsancom/san/core/getDownloadingList;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Lccsancom/san/api/SanAdSettings$Builder;->setCloudConfigImpl(Lccsancom/san/ads/base/ICloudConfigListener;)Lccsancom/san/api/SanAdSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstInitTime(Lccsanandroid/content/Context;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lccsansan/bl/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSANStats()Lccsancom/san/ads/base/IStats;
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/dl/getDownloadingList;->unifiedDownload()Lccsancom/san/ads/base/IStats;

    move-result-object v0

    return-object v0
.end method

.method public static getSdkVerCode()I
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/bw/deleteDownList;->IncentiveDownloadUtils()I

    move-result v0

    return v0
.end method

.method public static getSdkVerName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/bw/deleteDownList;->unifiedDownload()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasInitialized()Z
    .locals 1

    .line 1
    invoke-static {}, Lccsancom/san/core/unifiedDownload;->unifiedDownload()Z

    move-result v0

    return v0
.end method

.method public static init(Lccsanandroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Init:context"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 2
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lccsancom/san/api/SanAdSdk;->init(Lccsanandroid/content/Context;Z)V

    return-void
.end method

.method public static init(Lccsanandroid/content/Context;Lccsancom/san/api/SanAdSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9
    invoke-static {p0, p1}, Lccsancom/san/core/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;Lccsancom/san/api/SanAdSettings;)V

    return-void
.end method

.method public static init(Lccsanandroid/content/Context;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    invoke-static {p0}, Lccsansan/bw/setErrorMessage;->unifiedDownload(Lccsanandroid/content/Context;)V

    .line 4
    new-instance v0, Lccsancom/san/api/SanAdSettings$Builder;

    invoke-direct {v0}, Lccsancom/san/api/SanAdSettings$Builder;-><init>()V

    new-instance v1, Lccsancom/san/core/removeDownloadListener;

    invoke-direct {v1}, Lccsancom/san/core/removeDownloadListener;-><init>()V

    .line 5
    invoke-virtual {v0, v1}, Lccsancom/san/api/SanAdSettings$Builder;->setBeylaIdHelper(Lccsancom/san/ads/base/IBeylaIdHelper;)Lccsancom/san/api/SanAdSettings$Builder;

    move-result-object v0

    new-instance v1, Lccsancom/san/core/getDownloadingList;

    invoke-direct {v1}, Lccsancom/san/core/getDownloadingList;-><init>()V

    .line 6
    invoke-virtual {v0, v1}, Lccsancom/san/api/SanAdSettings$Builder;->setCloudConfigImpl(Lccsancom/san/ads/base/ICloudConfigListener;)Lccsancom/san/api/SanAdSettings$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lccsancom/san/api/SanAdSettings$Builder;->build()Lccsancom/san/api/SanAdSettings;

    move-result-object v0

    .line 8
    invoke-static {p0, v0, p1}, Lccsancom/san/core/unifiedDownload;->unifiedDownload(Lccsanandroid/content/Context;Lccsancom/san/api/SanAdSettings;Z)V

    return-void
.end method

.method public static isMediationMode()Z
    .locals 1

    .line 1
    invoke-static {}, Lccsancom/san/core/unifiedDownload;->removeDownloadListener()Z

    move-result v0

    return v0
.end method

.method public static isPromotionUser()Z
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/bl/addDownloadListener;->removeDownloadListener()Z

    move-result v0

    return v0
.end method

.method public static manualSetIsMediationMode(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lccsancom/san/core/unifiedDownload;->IncentiveDownloadUtils(Z)V

    return-void
.end method

.method public static notifyConsentStatus(Lccsanandroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lccsancom/san/api/SanAdSdk;->addDownloadListener:Ljava/lang/Boolean;

    .line 2
    invoke-static {p0}, Lccsansan/bw/setErrorMessage;->unifiedDownload(Lccsanandroid/content/Context;)V

    .line 4
    invoke-static {p1}, Lccsansan/bw/getErrorCode;->getDownloadingList(Z)V

    return-void
.end method

.method public static setBidderToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lccsancom/san/api/SanAdSdk;->removeDownloadListener:Ljava/lang/String;

    return-void
.end method

.method public static setIsAutoAna(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lccsancom/san/api/SanAdSdk;->isAutoAna:Z

    return-void
.end method

.method public static setIsPromotionUser(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lccsansan/bl/addDownloadListener;->removeDownloadListener(Z)V

    return-void
.end method

.method public static setTestLocation(DD)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lccsansan/cd/removeDownloadListener;->IncentiveDownloadUtils(DD)V

    return-void
.end method

.method public static setTestLocation(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lccsansan/cd/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)V

    return-void
.end method

.method public static setUploadProtectSwitch(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lccsansan/bw/getErrorCode;->IncentiveDownloadUtils(Z)V

    return-void
.end method
