.class public Lccsansan/de/getDownloadingList;
.super Lccsansan/da/removeDownloadListener;
.source ""


# static fields
.field private static addDownloadListener:Z = false


# instance fields
.field private IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

.field private getDownloadedRecordByUrl:Ljava/io/InputStream;

.field private getDownloadingList:Ljava/lang/String;

.field private getDownloadingRecordByUrl:Ljava/io/OutputStream;

.field private removeDownloadListener:Lccsanandroidx/documentfile/provider/DocumentFile;

.field private unifiedDownload:Lccsanandroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lccsanandroid/net/Uri;Z)V
    .locals 4

    .line 4
    invoke-direct {p0}, Lccsansan/da/removeDownloadListener;-><init>()V

    .line 5
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    .line 6
    invoke-static {v0, p1}, Lccsanandroidx/documentfile/provider/DocumentFile;->isDocumentUri(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Z

    move-result v1

    invoke-static {v1}, Lccsansan/bw/trackReportShow;->unifiedDownload(Z)V

    if-nez p2, :cond_0

    .line 8
    invoke-static {v0, p1}, Lccsanandroidx/documentfile/provider/DocumentFile;->fromSingleUri(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Lccsanandroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    iput-object p1, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    goto :goto_2

    .line 10
    :cond_0
    invoke-static {v0, p1}, Lccsanandroidx/documentfile/provider/DocumentFile;->fromTreeUri(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Lccsanandroidx/documentfile/provider/DocumentFile;

    move-result-object p2

    iput-object p2, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    .line 11
    invoke-virtual {p1}, Lccsanandroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 12
    iget-object p2, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p2}, Lccsanandroidx/documentfile/provider/DocumentFile;->getUri()Lccsanandroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Lccsanandroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 14
    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 15
    iget-object p2, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    .line 16
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 17
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {p2, v2}, Lccsanandroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Lccsanandroidx/documentfile/provider/DocumentFile;

    move-result-object p2

    if-nez p2, :cond_2

    .line 21
    const-string p1, "This uri can not create document!"

    invoke-static {p1}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 26
    iput-object p2, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    :cond_4
    :goto_2
    return-void
.end method

.method public constructor <init>(Lccsanandroidx/documentfile/provider/DocumentFile;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/da/removeDownloadListener;-><init>()V

    .line 2
    invoke-static {p1}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    return-void
.end method

.method public constructor <init>(Lccsansan/de/getDownloadingList;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lccsansan/da/removeDownloadListener;-><init>()V

    .line 28
    iget-object p1, p1, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    iput-object p1, p0, Lccsansan/de/getDownloadingList;->removeDownloadListener:Lccsanandroidx/documentfile/provider/DocumentFile;

    .line 29
    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lccsansan/de/getDownloadingList;->getDownloadingList:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    sget-object v0, Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;->RW:Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;

    if-eq p1, v0, :cond_2

    sget-object v0, Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;->Write:Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    sget-object v0, Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;->Read:Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;

    if-ne p1, v0, :cond_1

    .line 48
    iget-object p1, p0, Lccsansan/de/getDownloadingList;->getDownloadedRecordByUrl:Ljava/io/InputStream;

    check-cast p1, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    goto :goto_1

    .line 47
    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    .line 49
    :cond_2
    :goto_0
    iget-object p1, p0, Lccsansan/de/getDownloadingList;->getDownloadingRecordByUrl:Ljava/io/OutputStream;

    check-cast p1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    .line 52
    :goto_1
    invoke-virtual {p1, p2, p3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    return-void
.end method

.method public IncentiveDownloadUtils()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lccsanandroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->removeDownloadListener:Lccsanandroidx/documentfile/provider/DocumentFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lccsansan/de/getDownloadingList;->getDownloadingList:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lccsansan/de/getDownloadingList;->removeDownloadListener:Lccsanandroidx/documentfile/provider/DocumentFile;

    .line 7
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v0, v4

    .line 8
    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v2, v5}, Lccsanandroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Lccsanandroidx/documentfile/provider/DocumentFile;

    move-result-object v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_4
    iput-object v2, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    const/4 v0, 0x1

    return v0

    :cond_5
    :goto_2
    return v1
.end method

.method public IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;)Z
    .locals 8

    .line 4
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lccsanandroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 6
    :cond_0
    sget-boolean v0, Lccsansan/de/getDownloadingList;->addDownloadListener:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 7
    invoke-virtual {p1}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0}, Lccsanandroidx/documentfile/provider/DocumentFile;->getUri()Lccsanandroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 9
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 11
    array-length v3, p1

    sub-int/2addr v3, v2

    .line 12
    array-length v4, v0

    sub-int/2addr v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    if-ge v5, v4, :cond_2

    .line 15
    aget-object v6, p1, v5

    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    sub-int/2addr v4, v5

    const-string v0, ""

    move-object v6, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_3

    .line 21
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".."

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 22
    :cond_3
    :goto_3
    array-length v3, p1

    if-ge v5, v3, :cond_5

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    sub-int/2addr v4, v2

    if-ne v5, v4, :cond_4

    move-object v4, v0

    goto :goto_4

    :cond_4
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 25
    :cond_5
    :try_start_0
    iget-object p1, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p1, v6}, Lccsanandroidx/documentfile/provider/DocumentFile;->renameTo(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 27
    const-string p1, "FSDocument"

    const-string v0, "can not renameto file, need authority!"

    invoke-static {p1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 32
    :cond_6
    :try_start_1
    invoke-static {p0, p1}, Lccsansan/bw/setLoaderClassName;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Lccsansan/da/removeDownloadListener;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    :catch_1
    move-exception p1

    :cond_7
    :goto_5
    return v1
.end method

.method public addDownloadListener()[Lccsansan/da/removeDownloadListener;
    .locals 6

    .line 1
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lccsanandroidx/documentfile/provider/DocumentFile;->listFiles()[Lccsanandroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 6
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 8
    new-instance v5, Lccsansan/de/getDownloadingList;

    invoke-direct {v5, v4}, Lccsansan/de/getDownloadingList;-><init>(Lccsanandroidx/documentfile/provider/DocumentFile;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lccsansan/da/removeDownloadListener;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsansan/da/removeDownloadListener;

    return-object v0
.end method

.method public deleteDownItem()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lccsanandroidx/documentfile/provider/DocumentFile;->getUri()Lccsanandroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->removeDownloadListener:Lccsanandroidx/documentfile/provider/DocumentFile;

    const-string v1, ""

    if-eqz v0, :cond_4

    iget-object v0, p0, Lccsansan/de/getDownloadingList;->getDownloadingList:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 4
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lccsansan/de/getDownloadingList;->removeDownloadListener:Lccsanandroidx/documentfile/provider/DocumentFile;

    .line 6
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 7
    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v2, v5}, Lccsanandroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Lccsanandroidx/documentfile/provider/DocumentFile;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_3
    iput-object v2, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    .line 14
    invoke-virtual {v2}, Lccsanandroidx/documentfile/provider/DocumentFile;->getUri()Lccsanandroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v1
.end method

.method public deleteDownList()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    const-wide/16 v1, 0xc8

    :try_start_0
    iget-object v3, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    if-eqz v3, :cond_0

    .line 2
    invoke-virtual {v3}, Lccsanandroidx/documentfile/provider/DocumentFile;->delete()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0

    .line 13
    :cond_0
    :try_start_2
    iget-object v3, p0, Lccsansan/de/getDownloadingList;->removeDownloadListener:Lccsanandroidx/documentfile/provider/DocumentFile;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lccsansan/de/getDownloadingList;->getDownloadingList:Ljava/lang/String;

    if-nez v4, :cond_1

    goto :goto_3

    .line 15
    :cond_1
    invoke-virtual {v3, v4}, Lccsanandroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Lccsanandroidx/documentfile/provider/DocumentFile;

    move-result-object v3

    iput-object v3, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    if-nez v3, :cond_2

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {v3}, Lccsanandroidx/documentfile/provider/DocumentFile;->delete()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    nop

    .line 22
    :try_start_3
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    :goto_2
    return v0

    :cond_3
    :goto_3
    :try_start_4
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v1

    :goto_4
    return v0

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v3

    :try_start_5
    const-string v3, "FSDocument"

    const-string v4, "can not delete file, need authority!"

    .line 23
    invoke-static {v3, v4}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 27
    :try_start_6
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception v1

    :goto_5
    return v0

    :goto_6
    :try_start_7
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_7

    :catch_5
    move-exception v1

    .line 30
    :goto_7
    throw v0
.end method

.method public getDownloadStatusByUrl()J
    .locals 8

    .line 1
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lccsansan/de/getDownloadingList;->removeDownloadListener:Lccsanandroidx/documentfile/provider/DocumentFile;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsansan/de/getDownloadingList;->getDownloadingList:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v3, p0, Lccsansan/de/getDownloadingList;->removeDownloadListener:Lccsanandroidx/documentfile/provider/DocumentFile;

    .line 4
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v0, v5

    .line 5
    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v3, v6}, Lccsanandroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Lccsanandroidx/documentfile/provider/DocumentFile;

    move-result-object v3

    if-nez v3, :cond_1

    return-wide v1

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 11
    :cond_2
    iput-object v3, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    .line 13
    :cond_3
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lccsanandroidx/documentfile/provider/DocumentFile;->lastModified()J

    move-result-wide v1

    :goto_2
    return-wide v1
.end method

.method public getDownloadedCount()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->removeDownloadListener:Lccsanandroidx/documentfile/provider/DocumentFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lccsansan/de/getDownloadingList;->getDownloadingList:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_4

    .line 3
    :cond_0
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lccsansan/de/getDownloadingList;->removeDownloadListener:Lccsanandroidx/documentfile/provider/DocumentFile;

    .line 5
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v0, v4

    .line 6
    invoke-virtual {v2, v5}, Lccsanandroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Lccsanandroidx/documentfile/provider/DocumentFile;

    move-result-object v6

    if-eqz v6, :cond_1

    move-object v2, v6

    goto :goto_2

    .line 12
    :cond_1
    :try_start_0
    invoke-virtual {v2, v5}, Lccsanandroidx/documentfile/provider/DocumentFile;->createDirectory(Ljava/lang/String;)Lccsanandroidx/documentfile/provider/DocumentFile;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 14
    const-string v5, "FSDocument"

    const-string v6, "can not create directory, need authority!"

    invoke-static {v5, v6}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v2, :cond_3

    .line 16
    invoke-virtual {v2}, Lccsanandroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    return v1

    .line 19
    :cond_4
    iput-object v2, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    const/4 v0, 0x1

    return v0

    :cond_5
    :goto_4
    return v1
.end method

.method public getDownloadedList()Lccsansan/da/removeDownloadListener;
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->removeDownloadListener:Lccsanandroidx/documentfile/provider/DocumentFile;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lccsansan/de/getDownloadingList;

    invoke-direct {v1, v0}, Lccsansan/de/getDownloadingList;-><init>(Lccsanandroidx/documentfile/provider/DocumentFile;)V

    return-object v1

    .line 3
    :cond_0
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0}, Lccsanandroidx/documentfile/provider/DocumentFile;->getParentFile()Lccsanandroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_1
    new-instance v1, Lccsansan/de/getDownloadingList;

    invoke-direct {v1, v0}, Lccsansan/de/getDownloadingList;-><init>(Lccsanandroidx/documentfile/provider/DocumentFile;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getDownloadedRecordByUrl()J
    .locals 8

    .line 1
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lccsansan/de/getDownloadingList;->removeDownloadListener:Lccsanandroidx/documentfile/provider/DocumentFile;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsansan/de/getDownloadingList;->getDownloadingList:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v3, p0, Lccsansan/de/getDownloadingList;->removeDownloadListener:Lccsanandroidx/documentfile/provider/DocumentFile;

    .line 4
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v0, v5

    .line 5
    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v3, v6}, Lccsanandroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Lccsanandroidx/documentfile/provider/DocumentFile;

    move-result-object v3

    if-nez v3, :cond_1

    return-wide v1

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 11
    :cond_2
    iput-object v3, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    .line 13
    :cond_3
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lccsanandroidx/documentfile/provider/DocumentFile;->length()J

    move-result-wide v1

    :cond_4
    return-wide v1
.end method

.method public getDownloadingCount()Ljava/io/File;
    .locals 9

    .line 1
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->removeDownloadListener:Lccsanandroidx/documentfile/provider/DocumentFile;

    iget-object v1, p0, Lccsansan/de/getDownloadingList;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsanandroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Lccsanandroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    iput-object v0, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    .line 3
    :cond_0
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    const-string v1, ""

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {v0}, Lccsanandroidx/documentfile/provider/DocumentFile;->getUri()Lccsanandroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 6
    array-length v2, v0

    if-nez v2, :cond_2

    .line 7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    const/4 v2, 0x0

    .line 9
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lccsansan/da/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 10
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsansan/da/addDownloadListener$getDownloadingList;

    .line 11
    iget-object v5, v4, Lccsansan/da/addDownloadListener$getDownloadingList;->unifiedDownload:Ljava/lang/String;

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "primary"

    if-eqz v5, :cond_5

    iget-boolean v5, v4, Lccsansan/da/addDownloadListener$getDownloadingList;->addDownloadListener:Z

    if-eqz v5, :cond_4

    move-object v5, v6

    goto :goto_0

    :cond_4
    move-object v5, v1

    goto :goto_0

    :cond_5
    iget-object v5, v4, Lccsansan/da/addDownloadListener$getDownloadingList;->unifiedDownload:Ljava/lang/String;

    .line 12
    :goto_0
    const/4 v7, 0x0

    aget-object v8, v0, v7

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    aget-object v5, v0, v7

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v4, Lccsansan/da/addDownloadListener$getDownloadingList;->unifiedDownload:Ljava/lang/String;

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, v4, Lccsansan/da/addDownloadListener$getDownloadingList;->addDownloadListener:Z

    if-nez v5, :cond_3

    .line 13
    :cond_6
    iget-object v2, v4, Lccsansan/da/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    :cond_7
    if-nez v2, :cond_8

    .line 18
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 19
    :cond_8
    array-length v1, v0

    const/4 v3, 0x2

    if-ge v1, v3, :cond_9

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    new-instance v1, Ljava/io/File;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method public getDownloadingList()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsansan/de/getDownloadingList;->removeDownloadListener:Lccsanandroidx/documentfile/provider/DocumentFile;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lccsansan/de/getDownloadingList;->getDownloadingList:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lccsanandroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Lccsanandroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    iput-object v0, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    .line 3
    :cond_0
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lccsanandroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public getDownloadingRecordByUrl()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lccsanandroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->removeDownloadListener:Lccsanandroidx/documentfile/provider/DocumentFile;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsansan/de/getDownloadingList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->getDownloadingList:Ljava/lang/String;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5
    array-length v1, v0

    if-nez v1, :cond_1

    .line 6
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->getDownloadingList:Ljava/lang/String;

    return-object v0

    .line 7
    :cond_1
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 8
    aget-object v2, v0, v1

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 10
    :cond_2
    aget-object v0, v0, v1

    return-object v0

    :cond_3
    const-string v0, ""

    return-object v0
.end method

.method public getPackageNameByRecord()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->getDownloadedRecordByUrl:Ljava/io/InputStream;

    if-nez v0, :cond_2

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    if-nez v1, :cond_0

    iget-object v1, p0, Lccsansan/de/getDownloadingList;->removeDownloadListener:Lccsanandroidx/documentfile/provider/DocumentFile;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lccsansan/de/getDownloadingList;->getDownloadingList:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4
    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lccsanandroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Lccsanandroidx/documentfile/provider/DocumentFile;

    move-result-object v1

    iput-object v1, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    .line 5
    :cond_0
    iget-object v1, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v1}, Lccsanandroidx/documentfile/provider/DocumentFile;->getUri()Lccsanandroid/net/Uri;

    move-result-object v1

    const-string v2, "rw"

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentResolver;->openFileDescriptor(Lccsanandroid/net/Uri;Ljava/lang/String;)Lccsanandroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lccsansan/de/getDownloadingList;->unifiedDownload:Lccsanandroid/os/ParcelFileDescriptor;

    .line 8
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lccsansan/de/getDownloadingList;->unifiedDownload:Lccsanandroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Lccsanandroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lccsansan/de/getDownloadingList;->getDownloadedRecordByUrl:Ljava/io/InputStream;

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not create file!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_2
    :goto_0
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->getDownloadedRecordByUrl:Ljava/io/InputStream;

    return-object v0
.end method

.method public getThumbPathByRecord()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->getDownloadingRecordByUrl:Ljava/io/OutputStream;

    if-nez v0, :cond_2

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    if-nez v1, :cond_0

    iget-object v1, p0, Lccsansan/de/getDownloadingList;->removeDownloadListener:Lccsanandroidx/documentfile/provider/DocumentFile;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lccsansan/de/getDownloadingList;->getDownloadingList:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4
    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lccsanandroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Lccsanandroidx/documentfile/provider/DocumentFile;

    move-result-object v1

    iput-object v1, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    .line 5
    :cond_0
    iget-object v1, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v1}, Lccsanandroidx/documentfile/provider/DocumentFile;->getUri()Lccsanandroid/net/Uri;

    move-result-object v1

    const-string v2, "rw"

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentResolver;->openFileDescriptor(Lccsanandroid/net/Uri;Ljava/lang/String;)Lccsanandroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lccsansan/de/getDownloadingList;->unifiedDownload:Lccsanandroid/os/ParcelFileDescriptor;

    .line 8
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lccsansan/de/getDownloadingList;->unifiedDownload:Lccsanandroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Lccsanandroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lccsansan/de/getDownloadingList;->getDownloadingRecordByUrl:Ljava/io/OutputStream;

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not create file!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_2
    :goto_0
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->getDownloadingRecordByUrl:Ljava/io/OutputStream;

    return-object v0
.end method

.method public pause()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->removeDownloadListener:Lccsanandroidx/documentfile/provider/DocumentFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lccsansan/de/getDownloadingList;->getDownloadingList:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {v0, v2}, Lccsanandroidx/documentfile/provider/DocumentFile;->createDirectory(Ljava/lang/String;)Lccsanandroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    iput-object v0, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    const-string v0, "FSDocument"

    const-string v2, "can not create directory, need authority!"

    invoke-static {v0, v2}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_1
    return v1
.end method

.method public removeDownloadListener([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->getDownloadedRecordByUrl:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    return p1

    .line 60
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Target file do not opened!"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeDownloadListener()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lccsanandroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->removeDownloadListener:Lccsanandroidx/documentfile/provider/DocumentFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lccsansan/de/getDownloadingList;->getDownloadingList:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 4
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lccsansan/de/getDownloadingList;->removeDownloadListener:Lccsanandroidx/documentfile/provider/DocumentFile;

    .line 6
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 7
    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v2, v5}, Lccsanandroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Lccsanandroidx/documentfile/provider/DocumentFile;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_3
    iput-object v2, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    .line 15
    :cond_4
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lccsanandroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v1

    :goto_2
    return v1
.end method

.method public resume()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->removeDownloadListener:Lccsanandroidx/documentfile/provider/DocumentFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lccsansan/de/getDownloadingList;->getDownloadingList:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, ""

    .line 4
    :try_start_0
    invoke-virtual {v0, v3, v2}, Lccsanandroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Lccsanandroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    iput-object v0, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    const-string v0, "FSDocument"

    const-string v2, "can not create file, need authority!"

    invoke-static {v0, v2}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_1
    return v1
.end method

.method public trackReportShow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->getDownloadingRecordByUrl:Ljava/io/OutputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Ljava/io/Closeable;)V

    .line 3
    iput-object v1, p0, Lccsansan/de/getDownloadingList;->getDownloadingRecordByUrl:Ljava/io/OutputStream;

    .line 5
    :cond_0
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->getDownloadedRecordByUrl:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 6
    invoke-static {v0}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Ljava/io/Closeable;)V

    .line 7
    iput-object v1, p0, Lccsansan/de/getDownloadingList;->getDownloadedRecordByUrl:Ljava/io/InputStream;

    :cond_1
    return-void
.end method

.method public unifiedDownload(Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 33
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    if-nez v1, :cond_0

    iget-object v1, p0, Lccsansan/de/getDownloadingList;->removeDownloadListener:Lccsanandroidx/documentfile/provider/DocumentFile;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lccsansan/de/getDownloadingList;->getDownloadingList:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 35
    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lccsanandroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Lccsanandroidx/documentfile/provider/DocumentFile;

    move-result-object v1

    iput-object v1, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    .line 36
    :cond_0
    iget-object v1, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    if-eqz v1, :cond_4

    .line 38
    invoke-virtual {v0}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v1}, Lccsanandroidx/documentfile/provider/DocumentFile;->getUri()Lccsanandroid/net/Uri;

    move-result-object v1

    const-string v2, "rw"

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentResolver;->openFileDescriptor(Lccsanandroid/net/Uri;Ljava/lang/String;)Lccsanandroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lccsansan/de/getDownloadingList;->unifiedDownload:Lccsanandroid/os/ParcelFileDescriptor;

    .line 39
    sget-object v0, Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;->RW:Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;

    if-eq p1, v0, :cond_2

    sget-object v0, Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;->Write:Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 41
    :cond_1
    sget-object v0, Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;->Read:Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;

    if-ne p1, v0, :cond_3

    .line 42
    new-instance p1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lccsansan/de/getDownloadingList;->unifiedDownload:Lccsanandroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Lccsanandroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p1, p0, Lccsansan/de/getDownloadingList;->getDownloadedRecordByUrl:Ljava/io/InputStream;

    goto :goto_1

    .line 43
    :cond_2
    :goto_0
    new-instance p1, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lccsansan/de/getDownloadingList;->unifiedDownload:Lccsanandroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Lccsanandroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p1, p0, Lccsansan/de/getDownloadingList;->getDownloadingRecordByUrl:Ljava/io/OutputStream;

    :cond_3
    :goto_1
    return-void

    .line 44
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can not create file!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unifiedDownload([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->getDownloadingRecordByUrl:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void

    .line 56
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Target file do not opened!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unifiedDownload()[Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lccsansan/de/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroidx/documentfile/provider/DocumentFile;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lccsanandroidx/documentfile/provider/DocumentFile;->listFiles()[Lccsanandroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 6
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 8
    invoke-virtual {v4}, Lccsanandroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
