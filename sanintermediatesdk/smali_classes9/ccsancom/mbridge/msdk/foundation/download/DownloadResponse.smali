.class public Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;
.super Ljava/lang/Object;
.source "DownloadResponse.java"


# instance fields
.field private error:Lccsancom/mbridge/msdk/foundation/download/DownloadError;

.field private isCancelled:Z

.field private isSuccessful:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError()Lccsancom/mbridge/msdk/foundation/download/DownloadError;
    .locals 1

    .line 9
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->error:Lccsancom/mbridge/msdk/foundation/download/DownloadError;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->isCancelled:Z

    return v0
.end method

.method public isSuccessful()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->isSuccessful:Z

    return v0
.end method

.method public setCancelled(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->isCancelled:Z

    .line 30
    return-void
.end method

.method public setError(Lccsancom/mbridge/msdk/foundation/download/DownloadError;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->error:Lccsancom/mbridge/msdk/foundation/download/DownloadError;

    .line 14
    return-void
.end method

.method public setSuccessful(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->isSuccessful:Z

    .line 22
    return-void
.end method
