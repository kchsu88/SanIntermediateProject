.class Lccsansan/cv/getDownloadingCount$addDownloadListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/cv/getDownloadingCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "addDownloadListener"
.end annotation


# static fields
.field private static final IncentiveDownloadUtils:Lccsansan/cv/getDownloadingCount;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lccsansan/cv/getDownloadingCount;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsansan/cv/getDownloadingCount;-><init>(Lccsansan/cv/getDownloadingCount$IncentiveDownloadUtils;)V

    sput-object v0, Lccsansan/cv/getDownloadingCount$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/cv/getDownloadingCount;

    return-void
.end method

.method static synthetic unifiedDownload()Lccsansan/cv/getDownloadingCount;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/cv/getDownloadingCount$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/cv/getDownloadingCount;

    return-object v0
.end method
