.class public final Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;
.super Ljava/lang/Object;
.source "MBDownloadConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private databaseHandler:Lccsanandroid/os/Handler;

.field private databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;

.field private databaseName:Ljava/lang/String;

.field private databaseVersion:I

.field private defaultConnectTimeout:J

.field private defaultPingInterval:J

.field private defaultReadTimeout:J

.field private defaultWriteTimeout:J

.field private logger:Lccsancom/mbridge/msdk/foundation/download/utils/ILogger;

.field private maxRequests:I

.field private maxRequestsPerHost:I

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;-><init>(Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;)V
    .locals 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->databaseName:Ljava/lang/String;

    .line 85
    const-string v0, "downloadTable"

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->tableName:Ljava/lang/String;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->databaseVersion:I

    .line 88
    new-instance v0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder$1;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder$1;-><init>(Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->logger:Lccsancom/mbridge/msdk/foundation/download/utils/ILogger;

    .line 100
    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->defaultReadTimeout:J

    .line 101
    iput-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->defaultWriteTimeout:J

    .line 102
    iput-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->defaultConnectTimeout:J

    .line 103
    const/16 v0, 0x40

    iput v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->maxRequests:I

    .line 104
    const/16 v0, 0xa

    iput v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->maxRequestsPerHost:I

    .line 105
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->defaultPingInterval:J

    .line 109
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->getDatabaseHandler()Lccsanandroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->databaseHandler:Lccsanandroid/os/Handler;

    .line 111
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->getLogger()Lccsancom/mbridge/msdk/foundation/download/utils/ILogger;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->logger:Lccsancom/mbridge/msdk/foundation/download/utils/ILogger;

    .line 112
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->getDefaultReadTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->defaultReadTimeout:J

    .line 113
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->getDefaultConnectTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->defaultConnectTimeout:J

    .line 114
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->getMaxRequests()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->maxRequests:I

    .line 115
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->getDefaultWriteTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->defaultWriteTimeout:J

    .line 116
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->getMaxRequests()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->maxRequests:I

    .line 117
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->getMaxRequestsPerHost()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->maxRequestsPerHost:I

    .line 118
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->getDefaultPingInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->defaultPingInterval:J

    .line 120
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;
    .locals 0

    .line 82
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;

    return-object p0
.end method

.method static synthetic access$100(Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)Lccsancom/mbridge/msdk/foundation/download/utils/ILogger;
    .locals 0

    .line 82
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->logger:Lccsancom/mbridge/msdk/foundation/download/utils/ILogger;

    return-object p0
.end method

.method static synthetic access$200(Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)Lccsanandroid/os/Handler;
    .locals 0

    .line 82
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->databaseHandler:Lccsanandroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)J
    .locals 2

    .line 82
    iget-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->defaultConnectTimeout:J

    return-wide v0
.end method

.method static synthetic access$400(Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)J
    .locals 2

    .line 82
    iget-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->defaultReadTimeout:J

    return-wide v0
.end method

.method static synthetic access$500(Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)J
    .locals 2

    .line 82
    iget-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->defaultWriteTimeout:J

    return-wide v0
.end method

.method static synthetic access$600(Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)I
    .locals 0

    .line 82
    iget p0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->maxRequests:I

    return p0
.end method

.method static synthetic access$700(Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)I
    .locals 0

    .line 82
    iget p0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->maxRequestsPerHost:I

    return p0
.end method

.method static synthetic access$800(Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)J
    .locals 2

    .line 82
    iget-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->defaultPingInterval:J

    return-wide v0
.end method


# virtual methods
.method public final build()Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;
    .locals 2

    .line 173
    new-instance v0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;-><init>(Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$1;)V

    return-object v0
.end method

.method public final setDatabaseHandler(Lccsanandroid/os/Handler;)Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;
    .locals 0

    .line 127
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->databaseHandler:Lccsanandroid/os/Handler;

    .line 128
    return-object p0
.end method

.method public final setDatabaseOpenHelper(Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;)Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;
    .locals 0

    .line 137
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;

    .line 138
    return-object p0
.end method

.method public final setDefaultConnectTimeout(J)Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;
    .locals 0

    .line 167
    iput-wide p1, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->defaultConnectTimeout:J

    .line 168
    return-object p0
.end method

.method public final setDefaultPingInterval(J)Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;
    .locals 0

    .line 142
    iput-wide p1, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->defaultPingInterval:J

    .line 143
    return-object p0
.end method

.method public final setDefaultReadTimeout(J)Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;
    .locals 0

    .line 147
    iput-wide p1, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->defaultReadTimeout:J

    .line 148
    return-object p0
.end method

.method public final setDefaultWriteTimeout(J)Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;
    .locals 0

    .line 152
    iput-wide p1, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->defaultWriteTimeout:J

    .line 153
    return-object p0
.end method

.method public final setLogger(Lccsancom/mbridge/msdk/foundation/download/utils/ILogger;)Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;
    .locals 0

    .line 132
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->logger:Lccsancom/mbridge/msdk/foundation/download/utils/ILogger;

    .line 133
    return-object p0
.end method

.method public final setMaxRequests(I)Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;
    .locals 0

    .line 157
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->maxRequests:I

    .line 158
    return-object p0
.end method

.method public final setMaxRequestsPerHost(I)Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;
    .locals 0

    .line 162
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->maxRequestsPerHost:I

    .line 163
    return-object p0
.end method
