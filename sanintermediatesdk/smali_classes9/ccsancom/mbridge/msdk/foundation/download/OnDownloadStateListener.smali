.class public interface abstract Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;
.super Ljava/lang/Object;
.source "OnDownloadStateListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onDownloadComplete(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/download/DownloadMessage<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract onDownloadError(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;Lccsancom/mbridge/msdk/foundation/download/DownloadError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/download/DownloadMessage<",
            "TT;>;",
            "Lccsancom/mbridge/msdk/foundation/download/DownloadError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onDownloadStart(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/download/DownloadMessage<",
            "TT;>;)V"
        }
    .end annotation
.end method
