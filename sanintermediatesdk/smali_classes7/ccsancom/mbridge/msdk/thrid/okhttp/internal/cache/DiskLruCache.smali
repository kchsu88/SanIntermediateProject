.class public final Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;,
        Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;,
        Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupRunnable:Ljava/lang/Runnable;

.field closed:Z

.field final directory:Ljava/io/File;

.field private final executor:Ljava/util/concurrent/Executor;

.field final fileSystem:Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;

.field hasJournalErrors:Z

.field initialized:Z

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field journalWriter:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

.field final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field mostRecentRebuildFailed:Z

.field mostRecentTrimFailed:Z

.field private nextSequenceNumber:J

.field redundantOpCount:I

.field private size:J

.field final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    nop

    .line 96
    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V
    .locals 6
    .param p1, "fileSystem"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;
    .param p2, "directory"    # Ljava/io/File;
    .param p3, "appVersion"    # I
    .param p4, "valueCount"    # I
    .param p5, "maxSize"    # J
    .param p7, "executor"    # Ljava/util/concurrent/Executor;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->size:J

    .line 152
    new-instance v2, Ljava/util/LinkedHashMap;

    const/4 v3, 0x0

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 167
    iput-wide v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->nextSequenceNumber:J

    .line 173
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$1;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$1;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    .line 201
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->fileSystem:Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;

    .line 202
    iput-object p2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    .line 203
    iput p3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->appVersion:I

    .line 204
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 205
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 206
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 207
    iput p4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->valueCount:I

    .line 208
    iput-wide p5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->maxSize:J

    .line 209
    iput-object p7, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    .line 210
    return-void
.end method

.method private declared-synchronized checkNotClosed()V
    .locals 2

    monitor-enter p0

    .line 660
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->isClosed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 663
    monitor-exit p0

    return-void

    .line 661
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 659
    .end local p0    # "this":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static create(Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;Ljava/io/File;IIJ)Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;
    .locals 10
    .param p0, "fileSystem"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "valueCount"    # I
    .param p4, "maxSize"    # J

    .line 265
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_1

    .line 268
    if-lez p3, :cond_0

    .line 273
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v0, 0x1

    .line 274
    const-string v7, "OkHttp DiskLruCache"

    invoke-static {v7, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, v9

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 276
    .local v9, "executor":Ljava/util/concurrent/Executor;
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-direct/range {v2 .. v9}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V

    return-object v0

    .line 269
    .end local v9    # "executor":Ljava/util/concurrent/Executor;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private newJournalWriter()Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->fileSystem:Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;->appendingSink(Ljava/io/File;)Lccsancom/mbridge/msdk/thrid/okio/Sink;

    move-result-object v0

    .line 320
    .local v0, "fileSink":Lccsancom/mbridge/msdk/thrid/okio/Sink;
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$2;

    invoke-direct {v1, p0, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$2;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;Lccsancom/mbridge/msdk/thrid/okio/Sink;)V

    .line 327
    .local v1, "faultHidingSink":Lccsancom/mbridge/msdk/thrid/okio/Sink;
    invoke-static {v1}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->buffer(Lccsancom/mbridge/msdk/thrid/okio/Sink;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v2

    return-object v2
.end method

.method private processJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->fileSystem:Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 375
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 376
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;

    .line 377
    .local v1, "entry":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;
    iget-object v2, v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->currentEditor:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;

    if-nez v2, :cond_1

    .line 378
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_1
    iget v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_0

    .line 379
    iget-wide v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->size:J

    iget-object v5, v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->lengths:[J

    aget-wide v6, v5, v2

    add-long/2addr v3, v6

    iput-wide v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->size:J

    .line 378
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "t":I
    :cond_0
    goto :goto_3

    .line 382
    :cond_1
    const/4 v2, 0x0

    iput-object v2, v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->currentEditor:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;

    .line 383
    const/4 v2, 0x0

    .restart local v2    # "t":I
    :goto_2
    iget v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_2

    .line 384
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->fileSystem:Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;

    iget-object v4, v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 385
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->fileSystem:Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;

    iget-object v4, v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 383
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 387
    .end local v2    # "t":I
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 389
    .end local v1    # "entry":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;
    :goto_3
    goto :goto_0

    .line 390
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;>;"
    :cond_3
    return-void
.end method

.method private readJournal()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    const-string v0, ", "

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->fileSystem:Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;->source(Ljava/io/File;)Lccsancom/mbridge/msdk/thrid/okio/Source;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->buffer(Lccsancom/mbridge/msdk/thrid/okio/Source;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    move-result-object v1

    .line 282
    .local v1, "source":Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;
    :try_start_0
    invoke-interface {v1}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "magic":Ljava/lang/String;
    invoke-interface {v1}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, "version":Ljava/lang/String;
    invoke-interface {v1}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, "appVersionString":Ljava/lang/String;
    invoke-interface {v1}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    .line 286
    .local v5, "valueCountString":Ljava/lang/String;
    invoke-interface {v1}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v6

    .line 287
    .local v6, "blank":Ljava/lang/String;
    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "1"

    .line 288
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->appVersion:I

    .line 289
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->valueCount:I

    .line 290
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, ""

    .line 291
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    .line 296
    const/4 v0, 0x0

    .line 299
    .local v0, "lineCount":I
    :goto_0
    :try_start_1
    invoke-interface {v1}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    add-int/lit8 v0, v0, 0x1

    .line 303
    goto :goto_0

    .line 301
    :catch_0
    move-exception v7

    .line 302
    .local v7, "endOfJournal":Ljava/io/EOFException;
    nop

    .line 305
    .end local v7    # "endOfJournal":Ljava/io/EOFException;
    :try_start_2
    iget-object v7, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->size()I

    move-result v7

    sub-int v7, v0, v7

    iput v7, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->redundantOpCount:I

    .line 308
    invoke-interface {v1}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->exhausted()Z

    move-result v7

    if-nez v7, :cond_0

    .line 309
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->rebuildJournal()V

    goto :goto_1

    .line 311
    :cond_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->newJournalWriter()Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v7

    iput-object v7, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalWriter:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 314
    .end local v0    # "lineCount":I
    .end local v2    # "magic":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    .end local v4    # "appVersionString":Ljava/lang/String;
    .end local v5    # "valueCountString":Ljava/lang/String;
    .end local v6    # "blank":Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 315
    nop

    .line 316
    return-void

    .line 292
    .restart local v2    # "magic":Ljava/lang/String;
    .restart local v3    # "version":Ljava/lang/String;
    .restart local v4    # "appVersionString":Ljava/lang/String;
    .restart local v5    # "valueCountString":Ljava/lang/String;
    .restart local v6    # "blank":Ljava/lang/String;
    :cond_1
    :try_start_3
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unexpected journal header: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "source":Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 314
    .end local v2    # "magic":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    .end local v4    # "appVersionString":Ljava/lang/String;
    .end local v5    # "valueCountString":Ljava/lang/String;
    .end local v6    # "blank":Ljava/lang/String;
    .restart local v1    # "source":Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 315
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 9
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 332
    .local v1, "firstSpace":I
    const-string v2, "unexpected journal line: "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_6

    .line 336
    add-int/lit8 v4, v1, 0x1

    .line 337
    .local v4, "keyBegin":I
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 339
    .local v0, "secondSpace":I
    if-ne v0, v3, :cond_0

    .line 340
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 341
    .local v5, "key":Ljava/lang/String;
    const-string v6, "REMOVE"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v1, v7, :cond_1

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 342
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    return-void

    .line 346
    .end local v5    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 349
    .restart local v5    # "key":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;

    .line 350
    .local v6, "entry":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;
    if-nez v6, :cond_2

    .line 351
    new-instance v7, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;

    invoke-direct {v7, p0, v5}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;Ljava/lang/String;)V

    move-object v6, v7

    .line 352
    iget-object v7, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :cond_2
    if-eq v0, v3, :cond_3

    const-string v7, "CLEAN"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v1, v8, :cond_3

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 356
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "parts":[Ljava/lang/String;
    const/4 v3, 0x1

    iput-boolean v3, v6, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->readable:Z

    .line 358
    const/4 v3, 0x0

    iput-object v3, v6, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->currentEditor:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;

    .line 359
    invoke-virtual {v6, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    .line 360
    .end local v2    # "parts":[Ljava/lang/String;
    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_4

    const-string v7, "DIRTY"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v1, v8, :cond_4

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 361
    new-instance v2, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;

    invoke-direct {v2, p0, v6}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;)V

    iput-object v2, v6, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->currentEditor:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;

    goto :goto_0

    .line 362
    :cond_4
    if-ne v0, v3, :cond_5

    const-string v3, "READ"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v1, v7, :cond_5

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_5
    new-instance v3, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 333
    .end local v0    # "secondSpace":I
    .end local v4    # "keyBegin":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "entry":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 729
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 730
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    return-void

    .line 731
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 682
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->initialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->closed:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 687
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    new-array v2, v2, [Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 688
    .local v4, "entry":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;
    iget-object v5, v4, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->currentEditor:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;

    if-eqz v5, :cond_1

    .line 689
    iget-object v5, v4, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->currentEditor:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;->abort()V

    .line 687
    .end local v4    # "entry":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;
    .end local p0    # "this":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 692
    :cond_2
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->trimToSize()V

    .line 693
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalWriter:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->close()V

    .line 694
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalWriter:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 695
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    monitor-exit p0

    return-void

    .line 683
    :cond_3
    :goto_1
    :try_start_1
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 684
    monitor-exit p0

    return-void

    .line 681
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method declared-synchronized completeEdit(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;Z)V
    .locals 10
    .param p1, "editor"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 543
    :try_start_0
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;->entry:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;

    .line 544
    .local v0, "entry":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;
    iget-object v1, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->currentEditor:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;

    if-ne v1, p1, :cond_a

    .line 549
    if-eqz p2, :cond_2

    iget-boolean v1, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->readable:Z

    if-nez v1, :cond_2

    .line 550
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_2

    .line 551
    iget-object v2, p1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;->written:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    .line 555
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->fileSystem:Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;

    iget-object v3, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 556
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    monitor-exit p0

    return-void

    .line 550
    .end local p0    # "this":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 552
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;->abort()V

    .line 553
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Newly created entry didn\'t create value for index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 562
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_5

    .line 563
    iget-object v2, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object v2, v2, v1

    .line 564
    .local v2, "dirty":Ljava/io/File;
    if-eqz p2, :cond_3

    .line 565
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->fileSystem:Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;

    invoke-interface {v3, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 566
    iget-object v3, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v3, v3, v1

    .line 567
    .local v3, "clean":Ljava/io/File;
    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->fileSystem:Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;

    invoke-interface {v4, v2, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 568
    iget-object v4, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->lengths:[J

    aget-wide v5, v4, v1

    move-wide v4, v5

    .line 569
    .local v4, "oldLength":J
    iget-object v6, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->fileSystem:Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;

    invoke-interface {v6, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;->size(Ljava/io/File;)J

    move-result-wide v6

    .line 570
    .local v6, "newLength":J
    iget-object v8, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->lengths:[J

    aput-wide v6, v8, v1

    .line 571
    iget-wide v8, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->size:J

    sub-long/2addr v8, v4

    add-long/2addr v8, v6

    iput-wide v8, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->size:J

    .line 572
    .end local v3    # "clean":Ljava/io/File;
    .end local v4    # "oldLength":J
    .end local v6    # "newLength":J
    goto :goto_2

    .line 574
    :cond_3
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->fileSystem:Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;

    invoke-interface {v3, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 562
    .end local v2    # "dirty":Ljava/io/File;
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 578
    .end local v1    # "i":I
    :cond_5
    iget v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->redundantOpCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->redundantOpCount:I

    .line 579
    const/4 v1, 0x0

    iput-object v1, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->currentEditor:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;

    .line 580
    iget-boolean v1, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->readable:Z

    or-int/2addr v1, p2

    const/16 v3, 0xa

    const/16 v4, 0x20

    if-eqz v1, :cond_6

    .line 581
    iput-boolean v2, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->readable:Z

    .line 582
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalWriter:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    const-string v2, "CLEAN"

    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v4}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 583
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalWriter:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    iget-object v2, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 584
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalWriter:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->writeLengths(Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;)V

    .line 585
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalWriter:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-interface {v1, v3}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 586
    if-eqz p2, :cond_7

    .line 587
    iget-wide v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->nextSequenceNumber:J

    iput-wide v1, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->sequenceNumber:J

    goto :goto_3

    .line 590
    :cond_6
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalWriter:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    const-string v2, "REMOVE"

    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v4}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 592
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalWriter:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    iget-object v2, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 593
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalWriter:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-interface {v1, v3}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 595
    :cond_7
    :goto_3
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalWriter:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-interface {v1}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->flush()V

    .line 597
    iget-wide v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->size:J

    iget-wide v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->maxSize:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_8

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 598
    :cond_8
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 600
    :cond_9
    monitor-exit p0

    return-void

    .line 545
    :cond_a
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 542
    .end local v0    # "entry":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;
    .end local p1    # "editor":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;
    .end local p2    # "success":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public delete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 711
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->close()V

    .line 712
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->fileSystem:Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;->deleteContents(Ljava/io/File;)V

    .line 713
    return-void
.end method

.method public edit(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 465
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->edit(Ljava/lang/String;J)Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized edit(Ljava/lang/String;J)Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 469
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->initialize()V

    .line 471
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->checkNotClosed()V

    .line 472
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;

    .line 474
    .local v0, "entry":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;
    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_1

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->sequenceNumber:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v1, p2

    if-eqz v4, :cond_1

    .line 476
    .end local p0    # "this":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;
    :cond_0
    monitor-exit p0

    return-object v3

    .line 478
    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    iget-object v1, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->currentEditor:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 479
    monitor-exit p0

    return-object v3

    .line 481
    :cond_2
    :try_start_2
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z

    if-eqz v1, :cond_3

    goto :goto_0

    .line 492
    :cond_3
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalWriter:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    const-string v2, "DIRTY"

    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v1

    const/16 v2, 0x20

    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, p1}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 493
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalWriter:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-interface {v1}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->flush()V

    .line 495
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->hasJournalErrors:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    .line 496
    monitor-exit p0

    return-object v3

    .line 499
    :cond_4
    if-nez v0, :cond_5

    .line 500
    :try_start_3
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;Ljava/lang/String;)V

    move-object v0, v1

    .line 501
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    :cond_5
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;

    invoke-direct {v1, p0, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;)V

    .line 504
    .local v1, "editor":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;
    iput-object v1, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->currentEditor:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 505
    monitor-exit p0

    return-object v1

    .line 487
    .end local v1    # "editor":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;
    :cond_6
    :goto_0
    :try_start_4
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 488
    monitor-exit p0

    return-object v3

    .line 468
    .end local v0    # "entry":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "expectedSequenceNumber":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized evictAll()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 720
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->initialize()V

    .line 722
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-array v1, v1, [Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 723
    .local v4, "entry":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;
    invoke-virtual {p0, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->removeEntry(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;)Z

    .line 722
    nop

    .end local v4    # "entry":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 725
    .end local p0    # "this":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;
    :cond_0
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    monitor-exit p0

    return-void

    .line 719
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 670
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 672
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->checkNotClosed()V

    .line 673
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->trimToSize()V

    .line 674
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalWriter:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 675
    monitor-exit p0

    return-void

    .line 669
    .end local p0    # "this":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 441
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->initialize()V

    .line 443
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->checkNotClosed()V

    .line 444
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;

    .line 446
    .local v0, "entry":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->readable:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 448
    :cond_0
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->snapshot()Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    .local v2, "snapshot":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;
    if-nez v2, :cond_1

    monitor-exit p0

    return-object v1

    .line 451
    :cond_1
    :try_start_1
    iget v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->redundantOpCount:I

    .line 452
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalWriter:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    const-string v3, "READ"

    invoke-interface {v1, v3}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v1

    const/16 v3, 0x20

    invoke-interface {v1, v3}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, p1}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v1

    const/16 v3, 0xa

    invoke-interface {v1, v3}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 453
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 454
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    .end local p0    # "this":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;
    :cond_2
    monitor-exit p0

    return-object v2

    .line 446
    .end local v2    # "snapshot":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;
    :cond_3
    :goto_0
    monitor-exit p0

    return-object v1

    .line 440
    .end local v0    # "entry":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .line 512
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized getMaxSize()J
    .locals 2

    monitor-enter p0

    .line 519
    :try_start_0
    iget-wide v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->maxSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 519
    .end local p0    # "this":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initialize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 213
    :try_start_0
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 215
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 216
    monitor-exit p0

    return-void

    .line 220
    :cond_0
    :try_start_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->fileSystem:Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->fileSystem:Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->fileSystem:Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    goto :goto_0

    .line 225
    .end local p0    # "this":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->fileSystem:Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 230
    :cond_2
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->fileSystem:Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 232
    :try_start_2
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->readJournal()V

    .line 233
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->processJournal()V

    .line 234
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->initialized:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 235
    monitor-exit p0

    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "journalIsCorrupt":Ljava/io/IOException;
    :try_start_3
    invoke-static {}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->get()Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;

    move-result-object v2

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DiskLruCache "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is corrupt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", removing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 237
    invoke-virtual {v2, v3, v4, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 244
    .end local v0    # "journalIsCorrupt":Ljava/io/IOException;
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->delete()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 246
    :try_start_5
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->closed:Z

    .line 247
    goto :goto_1

    .line 246
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->closed:Z

    .line 247
    throw v1

    .line 250
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->rebuildJournal()V

    .line 252
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->initialized:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 253
    monitor-exit p0

    return-void

    .line 212
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 213
    :cond_4
    :try_start_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 212
    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    .line 656
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 656
    .end local p0    # "this":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method journalRebuildRequired()Z
    .locals 3

    .line 607
    const/16 v0, 0x7d0

    .line 608
    .local v0, "redundantOpCompactThreshold":I
    iget v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->redundantOpCount:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 609
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 608
    :goto_0
    return v1
.end method

.method declared-synchronized rebuildJournal()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 397
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalWriter:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    if-eqz v0, :cond_0

    .line 398
    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->close()V

    .line 401
    .end local p0    # "this":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->fileSystem:Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;->sink(Ljava/io/File;)Lccsancom/mbridge/msdk/thrid/okio/Sink;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->buffer(Lccsancom/mbridge/msdk/thrid/okio/Sink;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 403
    .local v0, "writer":Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;
    :try_start_1
    const-string v1, "libcore.io.DiskLruCache"

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 404
    const-string v1, "1"

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 405
    iget v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->appVersion:I

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeDecimalLong(J)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 406
    iget v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->valueCount:I

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeDecimalLong(J)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 407
    invoke-interface {v0, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 409
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;

    .line 410
    .local v3, "entry":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;
    iget-object v4, v3, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->currentEditor:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;

    const/16 v5, 0x20

    if-eqz v4, :cond_1

    .line 411
    const-string v4, "DIRTY"

    invoke-interface {v0, v4}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v4

    invoke-interface {v4, v5}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 412
    iget-object v4, v3, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-interface {v0, v4}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 413
    invoke-interface {v0, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    goto :goto_1

    .line 415
    :cond_1
    const-string v4, "CLEAN"

    invoke-interface {v0, v4}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v4

    invoke-interface {v4, v5}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 416
    iget-object v4, v3, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-interface {v0, v4}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 417
    invoke-virtual {v3, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->writeLengths(Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;)V

    .line 418
    invoke-interface {v0, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    .end local v3    # "entry":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;
    :goto_1
    goto :goto_0

    .line 422
    :cond_2
    :try_start_2
    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->close()V

    .line 423
    nop

    .line 425
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->fileSystem:Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 426
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->fileSystem:Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v1, v2, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 428
    :cond_3
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->fileSystem:Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v1, v2, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 429
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->fileSystem:Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 431
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->newJournalWriter()Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalWriter:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 432
    const/4 v1, 0x0

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->hasJournalErrors:Z

    .line 433
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 434
    monitor-exit p0

    return-void

    .line 422
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->close()V

    .line 423
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 396
    .end local v0    # "writer":Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;
    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 619
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->initialize()V

    .line 621
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->checkNotClosed()V

    .line 622
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    .local v0, "entry":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    .line 625
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->removeEntry(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;)Z

    move-result v2

    .line 626
    .local v2, "removed":Z
    if-eqz v2, :cond_1

    iget-wide v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->size:J

    iget-wide v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->maxSize:J

    cmp-long v7, v3, v5

    if-gtz v7, :cond_1

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 627
    .end local p0    # "this":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;
    :cond_1
    monitor-exit p0

    return v2

    .line 618
    .end local v0    # "entry":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;
    .end local v2    # "removed":Z
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method removeEntry(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;)Z
    .locals 6
    .param p1, "entry"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 631
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->currentEditor:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->currentEditor:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;->detach()V

    .line 635
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->valueCount:I

    if-ge v0, v1, :cond_1

    .line 636
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->fileSystem:Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;

    iget-object v2, p1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 637
    iget-wide v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->size:J

    iget-object v3, p1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->lengths:[J

    aget-wide v4, v3, v0

    sub-long/2addr v1, v4

    iput-wide v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->size:J

    .line 638
    iget-object v1, p1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->lengths:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 635
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 641
    .end local v0    # "i":I
    :cond_1
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->redundantOpCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->redundantOpCount:I

    .line 642
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalWriter:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    const-string v2, "REMOVE"

    invoke-interface {v0, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v0

    const/16 v2, 0x20

    invoke-interface {v0, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v0

    iget-object v2, p1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-interface {v0, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 643
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 646
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 649
    :cond_2
    return v1
.end method

.method public declared-synchronized setMaxSize(J)V
    .locals 2
    .param p1, "maxSize"    # J

    monitor-enter p0

    .line 527
    :try_start_0
    iput-wide p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->maxSize:J

    .line 528
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->initialized:Z

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    .end local p0    # "this":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;
    :cond_0
    monitor-exit p0

    return-void

    .line 526
    .end local p1    # "maxSize":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 538
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->initialize()V

    .line 539
    iget-wide v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 537
    .end local p0    # "this":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized snapshots()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 752
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->initialize()V

    .line 753
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$3;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$3;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 751
    .end local p0    # "this":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method trimToSize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 699
    :goto_0
    iget-wide v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->size:J

    iget-wide v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->maxSize:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 700
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;

    .line 701
    .local v0, "toEvict":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->removeEntry(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;)Z

    .line 702
    .end local v0    # "toEvict":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;
    goto :goto_0

    .line 703
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z

    .line 704
    return-void
.end method