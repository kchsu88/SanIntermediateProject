.class public final Lccsansan/cv/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public IncentiveDownloadUtils:I

.field public final getDownloadingList:[B

.field public final removeDownloadListener:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lccsansan/cv/removeDownloadListener;->removeDownloadListener:I

    .line 3
    new-array p1, p1, [B

    iput-object p1, p0, Lccsansan/cv/removeDownloadListener;->getDownloadingList:[B

    .line 4
    const/4 p1, 0x0

    iput p1, p0, Lccsansan/cv/removeDownloadListener;->IncentiveDownloadUtils:I

    return-void
.end method

.method public static IncentiveDownloadUtils(I)Lccsansan/cv/removeDownloadListener;
    .locals 1

    .line 1
    new-instance v0, Lccsansan/cv/removeDownloadListener;

    invoke-direct {v0, p0}, Lccsansan/cv/removeDownloadListener;-><init>(I)V

    return-object v0
.end method
