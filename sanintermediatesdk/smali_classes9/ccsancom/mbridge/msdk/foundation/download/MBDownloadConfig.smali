.class public Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;
.super Ljava/lang/Object;
.source "MBDownloadConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;
    }
.end annotation


# instance fields
.field private databaseHandler:Lccsanandroid/os/Handler;

.field private databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;

.field private defaultConnectTimeout:J

.field private defaultPingInterval:J

.field private defaultReadTimeout:J

.field private defaultWriteTimeout:J

.field private logger:Lccsancom/mbridge/msdk/foundation/download/utils/ILogger;

.field private maxRequests:I

.field private maxRequestsPerHost:I


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->access$000(Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;

    .line 25
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->access$100(Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)Lccsancom/mbridge/msdk/foundation/download/utils/ILogger;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->logger:Lccsancom/mbridge/msdk/foundation/download/utils/ILogger;

    .line 26
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->access$200(Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)Lccsanandroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->databaseHandler:Lccsanandroid/os/Handler;

    .line 28
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->access$300(Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->defaultConnectTimeout:J

    .line 29
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->access$400(Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->defaultReadTimeout:J

    .line 30
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->access$500(Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->defaultWriteTimeout:J

    .line 31
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->access$600(Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->maxRequests:I

    .line 32
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->access$700(Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->maxRequestsPerHost:I

    .line 33
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->access$800(Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->defaultPingInterval:J

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;-><init>(Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)V

    return-void
.end method

.method public static newBuilder()Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;
    .locals 2

    .line 37
    new-instance v0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;-><init>(Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;)V

    return-object v0
.end method

.method public static newBuilder(Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;)Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;
    .locals 1

    .line 42
    new-instance v0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;-><init>(Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;)V

    return-object v0
.end method


# virtual methods
.method public getDatabaseHandler()Lccsanandroid/os/Handler;
    .locals 1

    .line 50
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->databaseHandler:Lccsanandroid/os/Handler;

    return-object v0
.end method

.method public getDatabaseHelper()Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;
    .locals 1

    .line 79
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;

    return-object v0
.end method

.method public getDefaultConnectTimeout()J
    .locals 2

    .line 63
    iget-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->defaultConnectTimeout:J

    return-wide v0
.end method

.method public getDefaultPingInterval()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->defaultPingInterval:J

    return-wide v0
.end method

.method public getDefaultReadTimeout()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->defaultReadTimeout:J

    return-wide v0
.end method

.method public getDefaultWriteTimeout()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->defaultWriteTimeout:J

    return-wide v0
.end method

.method public getLogger()Lccsancom/mbridge/msdk/foundation/download/utils/ILogger;
    .locals 1

    .line 46
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->logger:Lccsancom/mbridge/msdk/foundation/download/utils/ILogger;

    return-object v0
.end method

.method public getMaxRequests()I
    .locals 1

    .line 67
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->maxRequests:I

    return v0
.end method

.method public getMaxRequestsPerHost()I
    .locals 1

    .line 71
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->maxRequestsPerHost:I

    return v0
.end method
