.class public final Lccsansan/av/addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/av/addDownloadListener$addDownloadListener;,
        Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;,
        Lccsansan/av/addDownloadListener$getDownloadingList;
    }
.end annotation


# static fields
.field private static final removeDownloadListener:Ljava/io/OutputStream;

.field static final unifiedDownload:Ljava/util/regex/Pattern;


# instance fields
.field private final IncentiveDownloadUtils:Ljava/io/File;

.field final addDownloadListener:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final deleteDownItem:I

.field private deleteDownList:J

.field private final getDownloadStatusByUrl:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lccsansan/av/addDownloadListener$addDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private final getDownloadedCount:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final getDownloadedList:Ljava/io/File;

.field private final getDownloadedRecordByUrl:I

.field private getDownloadingCount:J

.field private final getDownloadingList:Ljava/io/File;

.field private final getDownloadingRecordByUrl:Ljava/io/File;

.field private getThumbPathByRecord:J

.field private pause:Ljava/io/Writer;

.field private resume:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lccsansan/av/addDownloadListener;->unifiedDownload:Ljava/util/regex/Pattern;

    .line 46
    new-instance v0, Lccsansan/av/addDownloadListener$unifiedDownload;

    invoke-direct {v0}, Lccsansan/av/addDownloadListener$unifiedDownload;-><init>()V

    sput-object v0, Lccsansan/av/addDownloadListener;->removeDownloadListener:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v7, p0, Lccsansan/av/addDownloadListener;->addDownloadListener:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lccsansan/av/addDownloadListener;->getDownloadStatusByUrl:Ljava/util/LinkedHashMap;

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsansan/av/addDownloadListener;->deleteDownList:J

    .line 16
    new-instance v2, Lccsansan/av/addDownloadListener$removeDownloadListener;

    invoke-direct {v2, p0}, Lccsansan/av/addDownloadListener$removeDownloadListener;-><init>(Lccsansan/av/addDownloadListener;)V

    iput-object v2, p0, Lccsansan/av/addDownloadListener;->getDownloadedCount:Ljava/util/concurrent/Callable;

    .line 36
    iput-wide v0, p0, Lccsansan/av/addDownloadListener;->getThumbPathByRecord:J

    .line 39
    iput-object p1, p0, Lccsansan/av/addDownloadListener;->IncentiveDownloadUtils:Ljava/io/File;

    .line 40
    iput p2, p0, Lccsansan/av/addDownloadListener;->getDownloadedRecordByUrl:I

    .line 41
    new-instance p2, Ljava/io/File;

    const-string v0, "journal"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lccsansan/av/addDownloadListener;->getDownloadingList:Ljava/io/File;

    .line 42
    new-instance p2, Ljava/io/File;

    const-string v0, "journal.tmp"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lccsansan/av/addDownloadListener;->getDownloadedList:Ljava/io/File;

    .line 43
    new-instance p2, Ljava/io/File;

    const-string v0, "journal.bkp"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lccsansan/av/addDownloadListener;->getDownloadingRecordByUrl:Ljava/io/File;

    .line 44
    iput p3, p0, Lccsansan/av/addDownloadListener;->deleteDownItem:I

    .line 45
    iput-wide p4, p0, Lccsansan/av/addDownloadListener;->getDownloadingCount:J

    return-void
.end method

.method static synthetic IncentiveDownloadUtils()Ljava/io/OutputStream;
    .locals 1

    .line 2
    sget-object v0, Lccsansan/av/addDownloadListener;->removeDownloadListener:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/av/addDownloadListener;)Ljava/io/Writer;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/av/addDownloadListener;->pause:Ljava/io/Writer;

    return-object p0
.end method

.method private IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 3

    .line 3
    sget-object v0, Lccsansan/av/addDownloadListener;->unifiedDownload:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addDownloadListener(Ljava/io/File;IIJ)Lccsansan/av/addDownloadListener;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_4

    if-lez p2, :cond_3

    .line 5
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v1, v2}, Lccsansan/av/addDownloadListener;->addDownloadListener(Ljava/io/File;Ljava/io/File;Z)V

    .line 17
    :cond_1
    :goto_0
    new-instance v0, Lccsansan/av/addDownloadListener;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lccsansan/av/addDownloadListener;-><init>(Ljava/io/File;IIJ)V

    .line 18
    iget-object v1, v0, Lccsansan/av/addDownloadListener;->getDownloadingList:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20
    :try_start_0
    invoke-direct {v0}, Lccsansan/av/addDownloadListener;->addDownloadListener()V

    .line 21
    invoke-direct {v0}, Lccsansan/av/addDownloadListener;->getDownloadedList()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 24
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DiskLruCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", removing"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Lccsansan/av/addDownloadListener;->getDownloadingList()V

    .line 39
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 40
    new-instance v0, Lccsansan/av/addDownloadListener;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lccsansan/av/addDownloadListener;-><init>(Ljava/io/File;IIJ)V

    .line 41
    invoke-direct {v0}, Lccsansan/av/addDownloadListener;->getDownloadStatusByUrl()V

    return-object v0

    .line 42
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "valueCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private addDownloadListener()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, ", "

    new-instance v1, Lccsansan/av/unifiedDownload;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lccsansan/av/addDownloadListener;->getDownloadingList:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lccsansan/av/unifiedDownload$addDownloadListener;->unifiedDownload:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Lccsansan/av/unifiedDownload;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 3
    :try_start_0
    invoke-virtual {v1}, Lccsansan/av/unifiedDownload;->getDownloadingList()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Lccsansan/av/unifiedDownload;->getDownloadingList()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v1}, Lccsansan/av/unifiedDownload;->getDownloadingList()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v1}, Lccsansan/av/unifiedDownload;->getDownloadingList()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {v1}, Lccsansan/av/unifiedDownload;->getDownloadingList()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    .line 8
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "1"

    .line 9
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p0, Lccsansan/av/addDownloadListener;->getDownloadedRecordByUrl:I

    .line 10
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lccsansan/av/addDownloadListener;->deleteDownItem:I

    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ""

    .line 12
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    .line 20
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lccsansan/av/unifiedDownload;->getDownloadingList()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lccsansan/av/addDownloadListener;->removeDownloadListener(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 26
    :try_start_2
    iget-object v2, p0, Lccsansan/av/addDownloadListener;->getDownloadStatusByUrl:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lccsansan/av/addDownloadListener;->resume:I

    .line 29
    invoke-virtual {v1}, Lccsansan/av/unifiedDownload;->addDownloadListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-direct {p0}, Lccsansan/av/addDownloadListener;->getDownloadStatusByUrl()V

    goto :goto_1

    .line 32
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lccsansan/av/addDownloadListener;->getDownloadingList:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lccsansan/av/unifiedDownload$addDownloadListener;->unifiedDownload:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lccsansan/av/addDownloadListener;->pause:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    :goto_1
    invoke-static {v1}, Lccsansan/av/unifiedDownload$addDownloadListener;->IncentiveDownloadUtils(Ljava/io/Closeable;)V

    return-void

    .line 37
    :cond_1
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected journal header: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 60
    invoke-static {v1}, Lccsansan/av/unifiedDownload$addDownloadListener;->IncentiveDownloadUtils(Ljava/io/Closeable;)V

    .line 61
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private static addDownloadListener(Ljava/io/File;Ljava/io/File;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 46
    invoke-static {p1}, Lccsansan/av/addDownloadListener;->removeDownloadListener(Ljava/io/File;)V

    .line 48
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 49
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method static synthetic addDownloadListener(Lccsansan/av/addDownloadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lccsansan/av/addDownloadListener;->getDownloadStatusByUrl()V

    return-void
.end method

.method private deleteDownItem()Z
    .locals 2

    .line 2
    iget v0, p0, Lccsansan/av/addDownloadListener;->resume:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lccsansan/av/addDownloadListener;->getDownloadStatusByUrl:Ljava/util/LinkedHashMap;

    .line 3
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private declared-synchronized getDownloadStatusByUrl()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lccsansan/av/addDownloadListener;->pause:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 5
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lccsansan/av/addDownloadListener;->getDownloadedList:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lccsansan/av/unifiedDownload$addDownloadListener;->unifiedDownload:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "libcore.io.DiskLruCache"

    .line 8
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 9
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "1"

    .line 10
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 11
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 12
    iget v1, p0, Lccsansan/av/addDownloadListener;->getDownloadedRecordByUrl:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 13
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 14
    iget v1, p0, Lccsansan/av/addDownloadListener;->deleteDownItem:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 15
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 16
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lccsansan/av/addDownloadListener;->getDownloadStatusByUrl:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/av/addDownloadListener$addDownloadListener;

    .line 19
    invoke-static {v2}, Lccsansan/av/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils(Lccsansan/av/addDownloadListener$addDownloadListener;)Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;

    move-result-object v3

    const/16 v4, 0xa

    if-eqz v3, :cond_1

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DIRTY "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lccsansan/av/addDownloadListener$addDownloadListener;->unifiedDownload(Lccsansan/av/addDownloadListener$addDownloadListener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CLEAN "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lccsansan/av/addDownloadListener$addDownloadListener;->unifiedDownload(Lccsansan/av/addDownloadListener$addDownloadListener;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsansan/av/addDownloadListener$addDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 26
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 29
    iget-object v0, p0, Lccsansan/av/addDownloadListener;->getDownloadingList:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 30
    iget-object v0, p0, Lccsansan/av/addDownloadListener;->getDownloadingList:Ljava/io/File;

    iget-object v2, p0, Lccsansan/av/addDownloadListener;->getDownloadingRecordByUrl:Ljava/io/File;

    invoke-static {v0, v2, v1}, Lccsansan/av/addDownloadListener;->addDownloadListener(Ljava/io/File;Ljava/io/File;Z)V

    .line 32
    :cond_3
    iget-object v0, p0, Lccsansan/av/addDownloadListener;->getDownloadedList:Ljava/io/File;

    iget-object v2, p0, Lccsansan/av/addDownloadListener;->getDownloadingList:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lccsansan/av/addDownloadListener;->addDownloadListener(Ljava/io/File;Ljava/io/File;Z)V

    .line 33
    iget-object v0, p0, Lccsansan/av/addDownloadListener;->getDownloadingRecordByUrl:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 35
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lccsansan/av/addDownloadListener;->getDownloadingList:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v1, Lccsansan/av/unifiedDownload$addDownloadListener;->unifiedDownload:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lccsansan/av/addDownloadListener;->pause:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 36
    :try_start_3
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 37
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 0
    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method static synthetic getDownloadedList(Lccsansan/av/addDownloadListener;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/av/addDownloadListener;->IncentiveDownloadUtils:Ljava/io/File;

    return-object p0
.end method

.method private getDownloadedList()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/av/addDownloadListener;->getDownloadedList:Ljava/io/File;

    invoke-static {v0}, Lccsansan/av/addDownloadListener;->removeDownloadListener(Ljava/io/File;)V

    .line 2
    iget-object v0, p0, Lccsansan/av/addDownloadListener;->getDownloadStatusByUrl:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/av/addDownloadListener$addDownloadListener;

    .line 4
    invoke-static {v1}, Lccsansan/av/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils(Lccsansan/av/addDownloadListener$addDownloadListener;)Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 5
    :goto_1
    iget v2, p0, Lccsansan/av/addDownloadListener;->deleteDownItem:I

    if-ge v3, v2, :cond_0

    .line 6
    iget-wide v4, p0, Lccsansan/av/addDownloadListener;->deleteDownList:J

    invoke-static {v1}, Lccsansan/av/addDownloadListener$addDownloadListener;->removeDownloadListener(Lccsansan/av/addDownloadListener$addDownloadListener;)[J

    move-result-object v2

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lccsansan/av/addDownloadListener;->deleteDownList:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 9
    invoke-static {v1, v2}, Lccsansan/av/addDownloadListener$addDownloadListener;->getDownloadingList(Lccsansan/av/addDownloadListener$addDownloadListener;Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;)Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;

    .line 10
    :goto_2
    iget v2, p0, Lccsansan/av/addDownloadListener;->deleteDownItem:I

    if-ge v3, v2, :cond_2

    .line 11
    invoke-virtual {v1, v3}, Lccsansan/av/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lccsansan/av/addDownloadListener;->removeDownloadListener(Ljava/io/File;)V

    .line 12
    invoke-virtual {v1, v3}, Lccsansan/av/addDownloadListener$addDownloadListener;->addDownloadListener(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lccsansan/av/addDownloadListener;->removeDownloadListener(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 14
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private getDownloadedRecordByUrl()V
    .locals 2

    .line 43
    iget-object v0, p0, Lccsansan/av/addDownloadListener;->pause:Ljava/io/Writer;

    if-eqz v0, :cond_0

    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic getDownloadingList(Lccsansan/av/addDownloadListener;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/av/addDownloadListener;->deleteDownItem:I

    return p0
.end method

.method static synthetic getDownloadingList(Lccsansan/av/addDownloadListener;I)I
    .locals 0

    .line 4
    iput p1, p0, Lccsansan/av/addDownloadListener;->resume:I

    return p1
.end method

.method private getDownloadingRecordByUrl()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-wide v0, p0, Lccsansan/av/addDownloadListener;->deleteDownList:J

    iget-wide v2, p0, Lccsansan/av/addDownloadListener;->getDownloadingCount:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    iget-object v0, p0, Lccsansan/av/addDownloadListener;->getDownloadStatusByUrl:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lccsansan/av/addDownloadListener;->addDownloadListener(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private declared-synchronized removeDownloadListener(Ljava/lang/String;J)Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 51
    :try_start_0
    invoke-direct {p0}, Lccsansan/av/addDownloadListener;->getDownloadedRecordByUrl()V

    .line 52
    invoke-direct {p0, p1}, Lccsansan/av/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lccsansan/av/addDownloadListener;->getDownloadStatusByUrl:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsansan/av/addDownloadListener$addDownloadListener;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_1

    if-eqz v0, :cond_0

    .line 55
    invoke-static {v0}, Lccsansan/av/addDownloadListener$addDownloadListener;->getDownloadingList(Lccsansan/av/addDownloadListener$addDownloadListener;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v1, p2

    if-eqz v4, :cond_1

    :cond_0
    monitor-exit p0

    return-object v3

    :cond_1
    if-nez v0, :cond_2

    .line 59
    :try_start_1
    new-instance v0, Lccsansan/av/addDownloadListener$addDownloadListener;

    invoke-direct {v0, p0, p1, v3}, Lccsansan/av/addDownloadListener$addDownloadListener;-><init>(Lccsansan/av/addDownloadListener;Ljava/lang/String;Lccsansan/av/addDownloadListener$unifiedDownload;)V

    .line 60
    iget-object p2, p0, Lccsansan/av/addDownloadListener;->getDownloadStatusByUrl:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 61
    :cond_2
    invoke-static {v0}, Lccsansan/av/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils(Lccsansan/av/addDownloadListener$addDownloadListener;)Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    monitor-exit p0

    return-object v3

    .line 65
    :cond_3
    :goto_0
    :try_start_2
    new-instance p2, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;

    invoke-direct {p2, p0, v0, v3}, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;-><init>(Lccsansan/av/addDownloadListener;Lccsansan/av/addDownloadListener$addDownloadListener;Lccsansan/av/addDownloadListener$unifiedDownload;)V

    .line 66
    invoke-static {v0, p2}, Lccsansan/av/addDownloadListener$addDownloadListener;->getDownloadingList(Lccsansan/av/addDownloadListener$addDownloadListener;Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;)Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;

    .line 69
    iget-object p3, p0, Lccsansan/av/addDownloadListener;->pause:Ljava/io/Writer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DIRTY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lccsansan/av/addDownloadListener;->pause:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p2

    .line 50
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static removeDownloadListener(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private removeDownloadListener(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "unexpected journal line: "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_6

    add-int/lit8 v4, v1, 0x1

    .line 8
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 11
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    if-ne v1, v5, :cond_1

    .line 12
    const-string v5, "REMOVE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 13
    iget-object p1, p0, Lccsansan/av/addDownloadListener;->getDownloadStatusByUrl:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 17
    :cond_0
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 20
    :cond_1
    iget-object v5, p0, Lccsansan/av/addDownloadListener;->getDownloadStatusByUrl:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsansan/av/addDownloadListener$addDownloadListener;

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 22
    new-instance v5, Lccsansan/av/addDownloadListener$addDownloadListener;

    invoke-direct {v5, p0, v4, v6}, Lccsansan/av/addDownloadListener$addDownloadListener;-><init>(Lccsansan/av/addDownloadListener;Ljava/lang/String;Lccsansan/av/addDownloadListener$unifiedDownload;)V

    .line 23
    iget-object v7, p0, Lccsansan/av/addDownloadListener;->getDownloadStatusByUrl:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v4, 0x5

    if-eq v0, v3, :cond_3

    if-ne v1, v4, :cond_3

    .line 26
    const-string v7, "CLEAN"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {v5, v1}, Lccsansan/av/addDownloadListener$addDownloadListener;->getDownloadingList(Lccsansan/av/addDownloadListener$addDownloadListener;Z)Z

    .line 29
    invoke-static {v5, v6}, Lccsansan/av/addDownloadListener$addDownloadListener;->getDownloadingList(Lccsansan/av/addDownloadListener$addDownloadListener;Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;)Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;

    .line 30
    invoke-static {v5, p1}, Lccsansan/av/addDownloadListener$addDownloadListener;->addDownloadListener(Lccsansan/av/addDownloadListener$addDownloadListener;[Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_4

    if-ne v1, v4, :cond_4

    .line 31
    const-string v4, "DIRTY"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 32
    new-instance p1, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;

    invoke-direct {p1, p0, v5, v6}, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;-><init>(Lccsansan/av/addDownloadListener;Lccsansan/av/addDownloadListener$addDownloadListener;Lccsansan/av/addDownloadListener$unifiedDownload;)V

    invoke-static {v5, p1}, Lccsansan/av/addDownloadListener$addDownloadListener;->getDownloadingList(Lccsansan/av/addDownloadListener$addDownloadListener;Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;)Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;

    goto :goto_0

    :cond_4
    if-ne v0, v3, :cond_5

    const/4 v0, 0x4

    if-ne v1, v0, :cond_5

    .line 33
    const-string v0, "READ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_0
    return-void

    .line 36
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic removeDownloadListener(Lccsansan/av/addDownloadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lccsansan/av/addDownloadListener;->getDownloadingRecordByUrl()V

    return-void
.end method

.method static synthetic removeDownloadListener(Lccsansan/av/addDownloadListener;Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Lccsansan/av/addDownloadListener;->unifiedDownload(Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;Z)V

    return-void
.end method

.method private declared-synchronized unifiedDownload(Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 71
    :try_start_0
    invoke-static {p1}, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;)Lccsansan/av/addDownloadListener$addDownloadListener;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lccsansan/av/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils(Lccsansan/av/addDownloadListener$addDownloadListener;)Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;

    move-result-object v1

    if-ne v1, p1, :cond_a

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 77
    invoke-static {v0}, Lccsansan/av/addDownloadListener$addDownloadListener;->addDownloadListener(Lccsansan/av/addDownloadListener$addDownloadListener;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 78
    :goto_0
    iget v3, p0, Lccsansan/av/addDownloadListener;->deleteDownItem:I

    if-ge v2, v3, :cond_2

    .line 79
    invoke-static {p1}, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList(Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;)[Z

    move-result-object v3

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    .line 83
    invoke-virtual {v0, v2}, Lccsansan/av/addDownloadListener$addDownloadListener;->addDownloadListener(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    invoke-virtual {p1}, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils()V

    .line 86
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    nop

    .line 95
    :goto_1
    iget p1, p0, Lccsansan/av/addDownloadListener;->deleteDownItem:I

    if-ge v1, p1, :cond_5

    .line 96
    invoke-virtual {v0, v1}, Lccsansan/av/addDownloadListener$addDownloadListener;->addDownloadListener(I)Ljava/io/File;

    move-result-object p1

    if-eqz p2, :cond_3

    .line 98
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 99
    invoke-virtual {v0, v1}, Lccsansan/av/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils(I)Ljava/io/File;

    move-result-object v2

    .line 100
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 101
    invoke-static {v0}, Lccsansan/av/addDownloadListener$addDownloadListener;->removeDownloadListener(Lccsansan/av/addDownloadListener$addDownloadListener;)[J

    move-result-object p1

    aget-wide v3, p1, v1

    .line 102
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 103
    invoke-static {v0}, Lccsansan/av/addDownloadListener$addDownloadListener;->removeDownloadListener(Lccsansan/av/addDownloadListener$addDownloadListener;)[J

    move-result-object p1

    aput-wide v5, p1, v1

    .line 104
    iget-wide v7, p0, Lccsansan/av/addDownloadListener;->deleteDownList:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lccsansan/av/addDownloadListener;->deleteDownList:J

    goto :goto_2

    .line 107
    :cond_3
    invoke-static {p1}, Lccsansan/av/addDownloadListener;->removeDownloadListener(Ljava/io/File;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 111
    :cond_5
    iget p1, p0, Lccsansan/av/addDownloadListener;->resume:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lccsansan/av/addDownloadListener;->resume:I

    const/4 p1, 0x0

    .line 112
    invoke-static {v0, p1}, Lccsansan/av/addDownloadListener$addDownloadListener;->getDownloadingList(Lccsansan/av/addDownloadListener$addDownloadListener;Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;)Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;

    .line 113
    invoke-static {v0}, Lccsansan/av/addDownloadListener$addDownloadListener;->addDownloadListener(Lccsansan/av/addDownloadListener$addDownloadListener;)Z

    move-result p1

    or-int/2addr p1, p2

    const/16 v2, 0xa

    if-eqz p1, :cond_6

    .line 114
    invoke-static {v0, v1}, Lccsansan/av/addDownloadListener$addDownloadListener;->getDownloadingList(Lccsansan/av/addDownloadListener$addDownloadListener;Z)Z

    .line 115
    iget-object p1, p0, Lccsansan/av/addDownloadListener;->pause:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLEAN "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lccsansan/av/addDownloadListener$addDownloadListener;->unifiedDownload(Lccsansan/av/addDownloadListener$addDownloadListener;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsansan/av/addDownloadListener$addDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_7

    .line 117
    iget-wide p1, p0, Lccsansan/av/addDownloadListener;->getThumbPathByRecord:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lccsansan/av/addDownloadListener;->getThumbPathByRecord:J

    invoke-static {v0, p1, p2}, Lccsansan/av/addDownloadListener$addDownloadListener;->unifiedDownload(Lccsansan/av/addDownloadListener$addDownloadListener;J)J

    goto :goto_3

    .line 120
    :cond_6
    iget-object p1, p0, Lccsansan/av/addDownloadListener;->getDownloadStatusByUrl:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lccsansan/av/addDownloadListener$addDownloadListener;->unifiedDownload(Lccsansan/av/addDownloadListener$addDownloadListener;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object p1, p0, Lccsansan/av/addDownloadListener;->pause:Ljava/io/Writer;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REMOVE "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lccsansan/av/addDownloadListener$addDownloadListener;->unifiedDownload(Lccsansan/av/addDownloadListener$addDownloadListener;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 123
    :cond_7
    :goto_3
    iget-object p1, p0, Lccsansan/av/addDownloadListener;->pause:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 125
    iget-wide p1, p0, Lccsansan/av/addDownloadListener;->deleteDownList:J

    iget-wide v0, p0, Lccsansan/av/addDownloadListener;->getDownloadingCount:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_8

    invoke-direct {p0}, Lccsansan/av/addDownloadListener;->deleteDownItem()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 126
    :cond_8
    iget-object p1, p0, Lccsansan/av/addDownloadListener;->addDownloadListener:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lccsansan/av/addDownloadListener;->getDownloadedCount:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    monitor-exit p0

    return-void

    .line 127
    :cond_a
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method static synthetic unifiedDownload(Lccsansan/av/addDownloadListener;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/av/addDownloadListener;->deleteDownItem()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public declared-synchronized addDownloadListener(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lccsansan/av/addDownloadListener;->getDownloadedRecordByUrl()V

    .line 3
    invoke-direct {p0, p1}, Lccsansan/av/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lccsansan/av/addDownloadListener;->getDownloadStatusByUrl:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsansan/av/addDownloadListener$addDownloadListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 5
    invoke-static {v0}, Lccsansan/av/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils(Lccsansan/av/addDownloadListener$addDownloadListener;)Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;

    move-result-object v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 9
    :cond_0
    :goto_0
    iget v2, p0, Lccsansan/av/addDownloadListener;->deleteDownItem:I

    if-ge v1, v2, :cond_3

    .line 10
    invoke-virtual {v0, v1}, Lccsansan/av/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils(I)Ljava/io/File;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    :goto_1
    iget-wide v2, p0, Lccsansan/av/addDownloadListener;->deleteDownList:J

    invoke-static {v0}, Lccsansan/av/addDownloadListener$addDownloadListener;->removeDownloadListener(Lccsansan/av/addDownloadListener$addDownloadListener;)[J

    move-result-object v4

    aget-wide v5, v4, v1

    sub-long/2addr v2, v5

    iput-wide v2, p0, Lccsansan/av/addDownloadListener;->deleteDownList:J

    .line 15
    invoke-static {v0}, Lccsansan/av/addDownloadListener$addDownloadListener;->removeDownloadListener(Lccsansan/av/addDownloadListener$addDownloadListener;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_3
    iget v0, p0, Lccsansan/av/addDownloadListener;->resume:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lccsansan/av/addDownloadListener;->resume:I

    .line 19
    iget-object v0, p0, Lccsansan/av/addDownloadListener;->pause:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REMOVE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 20
    iget-object v0, p0, Lccsansan/av/addDownloadListener;->getDownloadStatusByUrl:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-direct {p0}, Lccsansan/av/addDownloadListener;->deleteDownItem()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 23
    iget-object p1, p0, Lccsansan/av/addDownloadListener;->addDownloadListener:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lccsansan/av/addDownloadListener;->getDownloadedCount:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_2
    monitor-exit p0

    return v1

    .line 1
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lccsansan/av/addDownloadListener;->pause:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lccsansan/av/addDownloadListener;->getDownloadStatusByUrl:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/av/addDownloadListener$addDownloadListener;

    .line 5
    invoke-static {v1}, Lccsansan/av/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils(Lccsansan/av/addDownloadListener$addDownloadListener;)Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-static {v1}, Lccsansan/av/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils(Lccsansan/av/addDownloadListener$addDownloadListener;)Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils()V

    goto :goto_0

    .line 9
    :cond_2
    invoke-direct {p0}, Lccsansan/av/addDownloadListener;->getDownloadingRecordByUrl()V

    .line 10
    iget-object v0, p0, Lccsansan/av/addDownloadListener;->pause:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lccsansan/av/addDownloadListener;->pause:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public getDownloadingList(Ljava/lang/String;)Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lccsansan/av/addDownloadListener;->removeDownloadListener(Ljava/lang/String;J)Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadingList()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lccsansan/av/addDownloadListener;->close()V

    .line 39
    iget-object v0, p0, Lccsansan/av/addDownloadListener;->IncentiveDownloadUtils:Ljava/io/File;

    invoke-static {v0}, Lccsansan/av/unifiedDownload$addDownloadListener;->getDownloadingList(Ljava/io/File;)V

    return-void
.end method

.method public declared-synchronized removeDownloadListener()Z
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lccsansan/av/addDownloadListener;->pause:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unifiedDownload(Ljava/lang/String;)Lccsansan/av/addDownloadListener$getDownloadingList;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lccsansan/av/addDownloadListener;->getDownloadedRecordByUrl()V

    .line 3
    invoke-direct {p0, p1}, Lccsansan/av/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lccsansan/av/addDownloadListener;->getDownloadStatusByUrl:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsansan/av/addDownloadListener$addDownloadListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    .line 9
    :cond_0
    :try_start_1
    invoke-static {v0}, Lccsansan/av/addDownloadListener$addDownloadListener;->addDownloadListener(Lccsansan/av/addDownloadListener$addDownloadListener;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    monitor-exit p0

    return-object v1

    .line 16
    :cond_1
    :try_start_2
    iget v2, p0, Lccsansan/av/addDownloadListener;->deleteDownItem:I

    new-array v8, v2, [Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 18
    :goto_0
    :try_start_3
    iget v4, p0, Lccsansan/av/addDownloadListener;->deleteDownItem:I

    if-ge v3, v4, :cond_2

    .line 19
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v0, v3}, Lccsansan/av/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v4, v8, v3
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 33
    :cond_2
    :try_start_4
    iget v1, p0, Lccsansan/av/addDownloadListener;->resume:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lccsansan/av/addDownloadListener;->resume:I

    .line 34
    iget-object v1, p0, Lccsansan/av/addDownloadListener;->pause:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "READ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 35
    invoke-direct {p0}, Lccsansan/av/addDownloadListener;->deleteDownItem()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 36
    iget-object v1, p0, Lccsansan/av/addDownloadListener;->addDownloadListener:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lccsansan/av/addDownloadListener;->getDownloadedCount:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 39
    :cond_3
    new-instance v1, Lccsansan/av/addDownloadListener$getDownloadingList;

    invoke-static {v0}, Lccsansan/av/addDownloadListener$addDownloadListener;->getDownloadingList(Lccsansan/av/addDownloadListener$addDownloadListener;)J

    move-result-wide v6

    invoke-static {v0}, Lccsansan/av/addDownloadListener$addDownloadListener;->removeDownloadListener(Lccsansan/av/addDownloadListener$addDownloadListener;)[J

    move-result-object v9

    const/4 v10, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Lccsansan/av/addDownloadListener$getDownloadingList;-><init>(Lccsansan/av/addDownloadListener;Ljava/lang/String;J[Ljava/io/InputStream;[JLccsansan/av/addDownloadListener$unifiedDownload;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v1

    :catch_0
    move-exception p1

    .line 40
    :goto_1
    :try_start_5
    iget p1, p0, Lccsansan/av/addDownloadListener;->deleteDownItem:I

    if-ge v2, p1, :cond_4

    .line 41
    aget-object p1, v8, v2

    if-eqz p1, :cond_4

    .line 42
    aget-object p1, v8, v2

    invoke-static {p1}, Lccsansan/av/unifiedDownload$addDownloadListener;->IncentiveDownloadUtils(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    monitor-exit p0

    return-object v1

    .line 1
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized unifiedDownload()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 24
    :try_start_0
    invoke-direct {p0}, Lccsansan/av/addDownloadListener;->getDownloadedRecordByUrl()V

    .line 25
    invoke-direct {p0}, Lccsansan/av/addDownloadListener;->getDownloadingRecordByUrl()V

    .line 26
    iget-object v0, p0, Lccsansan/av/addDownloadListener;->pause:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
