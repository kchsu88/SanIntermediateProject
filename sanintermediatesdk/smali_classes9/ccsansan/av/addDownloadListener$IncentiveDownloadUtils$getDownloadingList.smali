.class Lccsansan/av/addDownloadListener$IncentiveDownloadUtils$getDownloadingList;
.super Ljava/io/FilterOutputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "getDownloadingList"
.end annotation


# instance fields
.field final synthetic removeDownloadListener:Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;


# direct methods
.method private constructor <init>(Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;Ljava/io/OutputStream;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;

    .line 3
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method synthetic constructor <init>(Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;Ljava/io/OutputStream;Lccsansan/av/addDownloadListener$unifiedDownload;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils$getDownloadingList;-><init>(Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    iget-object v0, p0, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;Z)Z

    :goto_0
    return-void
.end method

.method public flush()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    iget-object v0, p0, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;Z)Z

    :goto_0
    return-void
.end method

.method public write(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    iget-object p1, p0, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;Z)Z

    :goto_0
    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 4
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    iget-object p1, p0, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;Z)Z

    :goto_0
    return-void
.end method
