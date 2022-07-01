.class public Lccsansan/de/IncentiveDownloadUtils;
.super Lccsansan/da/removeDownloadListener;
.source ""


# instance fields
.field private removeDownloadListener:Ljava/io/File;

.field private unifiedDownload:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/da/removeDownloadListener;-><init>()V

    .line 2
    invoke-static {p1}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, Lccsansan/de/IncentiveDownloadUtils;->removeDownloadListener:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lccsansan/da/removeDownloadListener;-><init>()V

    .line 5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lccsansan/de/IncentiveDownloadUtils;->removeDownloadListener:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Lccsansan/de/IncentiveDownloadUtils;Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lccsansan/da/removeDownloadListener;-><init>()V

    .line 7
    new-instance v0, Ljava/io/File;

    iget-object p1, p1, Lccsansan/de/IncentiveDownloadUtils;->removeDownloadListener:Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lccsansan/de/IncentiveDownloadUtils;->removeDownloadListener:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    iget-object p1, p0, Lccsansan/de/IncentiveDownloadUtils;->unifiedDownload:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public IncentiveDownloadUtils()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/de/IncentiveDownloadUtils;->removeDownloadListener:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lccsansan/de/IncentiveDownloadUtils;->removeDownloadListener:Ljava/io/File;

    check-cast p1, Lccsansan/de/IncentiveDownloadUtils;

    iget-object p1, p1, Lccsansan/de/IncentiveDownloadUtils;->removeDownloadListener:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public addDownloadListener()[Lccsansan/da/removeDownloadListener;
    .locals 6

    .line 1
    iget-object v0, p0, Lccsansan/de/IncentiveDownloadUtils;->removeDownloadListener:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 6
    new-instance v5, Lccsansan/de/IncentiveDownloadUtils;

    invoke-direct {v5, v4}, Lccsansan/de/IncentiveDownloadUtils;-><init>(Ljava/io/File;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lccsansan/da/removeDownloadListener;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsansan/da/removeDownloadListener;

    return-object v0
.end method

.method public deleteDownItem()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/de/IncentiveDownloadUtils;->removeDownloadListener:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deleteDownList()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/de/IncentiveDownloadUtils;->removeDownloadListener:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public getDownloadStatusByUrl()J
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/de/IncentiveDownloadUtils;->removeDownloadListener:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDownloadedCount()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/de/IncentiveDownloadUtils;->removeDownloadListener:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    return v0
.end method

.method public getDownloadedList()Lccsansan/da/removeDownloadListener;
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/de/IncentiveDownloadUtils;->removeDownloadListener:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lccsansan/de/IncentiveDownloadUtils;

    invoke-direct {v1, v0}, Lccsansan/de/IncentiveDownloadUtils;-><init>(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getDownloadedRecordByUrl()J
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/de/IncentiveDownloadUtils;->removeDownloadListener:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDownloadingCount()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/de/IncentiveDownloadUtils;->removeDownloadListener:Ljava/io/File;

    return-object v0
.end method

.method public getDownloadingList()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/de/IncentiveDownloadUtils;->removeDownloadListener:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0
.end method

.method public getDownloadingRecordByUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/de/IncentiveDownloadUtils;->removeDownloadListener:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageNameByRecord()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lccsansan/de/IncentiveDownloadUtils;->removeDownloadListener:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getThumbPathByRecord()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lccsansan/de/IncentiveDownloadUtils;->removeDownloadListener:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public pause()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/de/IncentiveDownloadUtils;->removeDownloadListener:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    return v0
.end method

.method public removeDownloadListener([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lccsansan/de/IncentiveDownloadUtils;->unifiedDownload:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result p1

    return p1

    .line 14
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Target file do not opened!"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeDownloadListener()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/de/IncentiveDownloadUtils;->removeDownloadListener:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public resume()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lccsansan/de/IncentiveDownloadUtils;->removeDownloadListener:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method public trackReportShow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/de/IncentiveDownloadUtils;->unifiedDownload:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Ljava/io/Closeable;)V

    return-void
.end method

.method public unifiedDownload(Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 3
    sget-object v0, Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;->Read:Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;

    if-ne p1, v0, :cond_0

    const-string p1, "r"

    goto :goto_0

    :cond_0
    const-string p1, "rw"

    .line 5
    :goto_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lccsansan/de/IncentiveDownloadUtils;->removeDownloadListener:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lccsansan/de/IncentiveDownloadUtils;->unifiedDownload:Ljava/io/RandomAccessFile;

    return-void
.end method

.method public unifiedDownload([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lccsansan/de/IncentiveDownloadUtils;->unifiedDownload:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Target file do not opened!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unifiedDownload()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/de/IncentiveDownloadUtils;->removeDownloadListener:Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
