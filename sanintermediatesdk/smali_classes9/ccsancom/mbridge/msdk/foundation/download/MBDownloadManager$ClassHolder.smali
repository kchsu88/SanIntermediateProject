.class final Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager$ClassHolder;
.super Ljava/lang/Object;
.source "MBDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClassHolder"
.end annotation


# static fields
.field private static final MB_DOWNLOAD_MANAGER:Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager;-><init>(Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager$1;)V

    sput-object v0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager$ClassHolder;->MB_DOWNLOAD_MANAGER:Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager;
    .locals 1

    .line 60
    sget-object v0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager$ClassHolder;->MB_DOWNLOAD_MANAGER:Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager;

    return-object v0
.end method
