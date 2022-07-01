.class public Lccsansan/cd/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;
    }
.end annotation


# static fields
.field private static volatile unifiedDownload:Lccsansan/cd/IncentiveDownloadUtils;


# instance fields
.field private volatile addDownloadListener:J

.field private getDownloadingList:J

.field private removeDownloadListener:Lccsanandroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lccsansan/cd/IncentiveDownloadUtils;->addDownloadListener:J

    return-void
.end method

.method private static IncentiveDownloadUtils()Z
    .locals 7

    .line 1
    invoke-static {}, Lccsansan/cd/IncentiveDownloadUtils;->getDownloadingList()Lccsansan/cd/IncentiveDownloadUtils;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lccsansan/cd/IncentiveDownloadUtils;->removeDownloadListener:Lccsanandroid/location/Location;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 6
    :cond_0
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v0, Lccsansan/cd/IncentiveDownloadUtils;->getDownloadingList:J

    sub-long/2addr v3, v5

    invoke-virtual {v0}, Lccsansan/cd/IncentiveDownloadUtils;->unifiedDownload()J

    move-result-wide v0

    cmp-long v5, v3, v0

    if-lez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;)Lccsanandroid/location/Location;
    .locals 2

    .line 11
    invoke-static {}, Lccsansan/cd/IncentiveDownloadUtils;->getDownloadingList()Lccsansan/cd/IncentiveDownloadUtils;

    move-result-object v0

    .line 12
    invoke-static {}, Lccsansan/cd/IncentiveDownloadUtils;->IncentiveDownloadUtils()Z

    move-result v1

    if-nez v1, :cond_0

    .line 13
    iget-object p0, v0, Lccsansan/cd/IncentiveDownloadUtils;->removeDownloadListener:Lccsanandroid/location/Location;

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 19
    :cond_1
    sget-object v1, Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;->NETWORK:Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;

    invoke-static {p0, v1}, Lccsansan/cd/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;)Lccsanandroid/location/Location;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 22
    invoke-direct {v0, p0}, Lccsansan/cd/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/location/Location;)V

    .line 24
    :cond_2
    iget-object p0, v0, Lccsansan/cd/IncentiveDownloadUtils;->removeDownloadListener:Lccsanandroid/location/Location;

    return-object p0
.end method

.method private static getDownloadingList(Lccsanandroid/content/Context;Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;)Lccsanandroid/location/Location;
    .locals 5

    .line 25
    const-string v0, " location provider."

    const-string v1, "Failed to retrieve location: device has no "

    const-string v2, "Location.Service"

    invoke-virtual {p1, p0}, Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;->hasRequiredPermissions(Lccsanandroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 29
    :cond_0
    const-string v3, "location"

    invoke-virtual {p0, v3}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/location/LocationManager;

    .line 31
    :try_start_0
    invoke-virtual {p1}, Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lccsanandroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Lccsanandroid/location/Location;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 39
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p1}, Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 41
    invoke-static {v2, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 42
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p1}, Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 44
    invoke-static {v2, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to retrieve location from "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p1}, Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " provider: access appears to be disabled."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 47
    invoke-static {v2, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v4
.end method

.method static getDownloadingList()Lccsansan/cd/IncentiveDownloadUtils;
    .locals 2

    .line 1
    sget-object v0, Lccsansan/cd/IncentiveDownloadUtils;->unifiedDownload:Lccsansan/cd/IncentiveDownloadUtils;

    if-nez v0, :cond_1

    .line 3
    const-class v1, Lccsansan/cd/IncentiveDownloadUtils;

    monitor-enter v1

    .line 4
    :try_start_0
    sget-object v0, Lccsansan/cd/IncentiveDownloadUtils;->unifiedDownload:Lccsansan/cd/IncentiveDownloadUtils;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lccsansan/cd/IncentiveDownloadUtils;

    invoke-direct {v0}, Lccsansan/cd/IncentiveDownloadUtils;-><init>()V

    .line 7
    sput-object v0, Lccsansan/cd/IncentiveDownloadUtils;->unifiedDownload:Lccsansan/cd/IncentiveDownloadUtils;

    .line 9
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private removeDownloadListener(Lccsanandroid/location/Location;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-static {}, Lccsansan/cd/IncentiveDownloadUtils;->getDownloadingList()Lccsansan/cd/IncentiveDownloadUtils;

    move-result-object v0

    .line 49
    iput-object p1, v0, Lccsansan/cd/IncentiveDownloadUtils;->removeDownloadListener:Lccsanandroid/location/Location;

    .line 50
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lccsansan/cd/IncentiveDownloadUtils;->getDownloadingList:J

    return-void
.end method


# virtual methods
.method public getDownloadingList(J)V
    .locals 0

    .line 10
    iput-wide p1, p0, Lccsansan/cd/IncentiveDownloadUtils;->addDownloadListener:J

    return-void
.end method

.method public unifiedDownload()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/cd/IncentiveDownloadUtils;->addDownloadListener:J

    return-wide v0
.end method
