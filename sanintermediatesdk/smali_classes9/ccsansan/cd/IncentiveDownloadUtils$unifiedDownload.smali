.class final enum Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/cd/IncentiveDownloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "unifiedDownload"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;

.field public static final enum GPS:Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum NETWORK:Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;


# instance fields
.field final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;

    const-string v1, "NETWORK"

    const/4 v2, 0x0

    const-string v3, "network"

    invoke-direct {v0, v1, v2, v3}, Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;->NETWORK:Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;

    .line 2
    new-instance v1, Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;

    const-string v3, "GPS"

    const/4 v4, 0x1

    const-string v5, "gps"

    invoke-direct {v1, v3, v4, v5}, Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;->GPS:Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;

    .line 3
    const/4 v3, 0x2

    new-array v3, v3, [Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;->$VALUES:[Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;
    .locals 1

    .line 1
    const-class v0, Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;

    return-object p0
.end method

.method public static values()[Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;->$VALUES:[Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;

    invoke-virtual {v0}, [Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;

    return-object v0
.end method


# virtual methods
.method public hasRequiredPermissions(Lccsanandroid/content/Context;)Z
    .locals 1

    .line 1
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p1, v0}, Lccsansan/bw/trackReportClick;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/cd/IncentiveDownloadUtils$unifiedDownload;->name:Ljava/lang/String;

    return-object v0
.end method
