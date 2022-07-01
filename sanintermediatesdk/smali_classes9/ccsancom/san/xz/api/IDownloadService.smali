.class public interface abstract Lccsancom/san/xz/api/IDownloadService;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract addListener(Lccsancom/san/xz/api/unifiedDownload;)V
.end method

.method public abstract delete(Lccsansan/cs/unifiedDownload;Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/cs/unifiedDownload;",
            "Ljava/util/List<",
            "Lccsancom/san/xz/base/XzRecord;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract getDownloadingItemCount(Lccsansan/cs/unifiedDownload;)I
.end method

.method public abstract listDownloadedRecord(Lccsansan/cs/unifiedDownload;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/cs/unifiedDownload;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/san/xz/base/XzRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract listDownloadingRecord(Lccsansan/cs/unifiedDownload;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/cs/unifiedDownload;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/san/xz/base/XzRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract pause(Ljava/lang/String;)V
.end method

.method public abstract pause(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/san/xz/base/XzRecord;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeListener(Lccsancom/san/xz/api/unifiedDownload;)V
.end method

.method public abstract resume(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/san/xz/base/XzRecord;",
            ">;)V"
        }
    .end annotation
.end method
