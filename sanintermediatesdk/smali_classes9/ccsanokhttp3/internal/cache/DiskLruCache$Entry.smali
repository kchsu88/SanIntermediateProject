.class final Lccsanokhttp3/internal/cache/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Entry"
.end annotation


# instance fields
.field final cleanFiles:[Ljava/io/File;

.field currentEditor:Lccsanokhttp3/internal/cache/DiskLruCache$Editor;

.field final dirtyFiles:[Ljava/io/File;

.field final key:Ljava/lang/String;

.field final lengths:[J

.field readable:Z

.field sequenceNumber:J

.field final synthetic this$0:Lccsanokhttp3/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lccsanokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V
    .locals 7
    .param p2, "key"    # Ljava/lang/String;

    .line 969
    iput-object p1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 970
    iput-object p2, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 972
    iget v0, p1, Lccsanokhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array v0, v0, [J

    iput-object v0, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    .line 973
    iget v0, p1, Lccsanokhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    .line 974
    iget v0, p1, Lccsanokhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 978
    .local v0, "fileBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 979
    .local v1, "truncateTo":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p1, Lccsanokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_0

    .line 980
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 981
    iget-object v3, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    iget-object v5, p1, Lccsanokhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v2

    .line 982
    const-string v3, ".tmp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    iget-object v3, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    iget-object v5, p1, Lccsanokhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v2

    .line 984
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 979
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 986
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1011
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method setLengths([Ljava/lang/String;)V
    .locals 4
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 990
    array-length v0, p1

    iget-object v1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    iget v1, v1, Lccsanokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ne v0, v1, :cond_1

    .line 995
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 996
    iget-object v1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 995
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1000
    .end local v0    # "i":I
    :cond_0
    nop

    .line 1001
    return-void

    .line 998
    :catch_0
    move-exception v0

    .line 999
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 991
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    invoke-direct {p0, p1}, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method snapshot()Lccsanokhttp3/internal/cache/DiskLruCache$Snapshot;
    .locals 10

    .line 1020
    iget-object v0, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1022
    iget-object v0, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    iget v0, v0, Lccsanokhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array v0, v0, [Lccsanokio/Source;

    .line 1023
    .local v0, "sources":[Lccsanokio/Source;
    iget-object v1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, [J

    .line 1025
    .local v8, "lengths":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    iget v2, v2, Lccsanokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_0

    .line 1026
    iget-object v2, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    iget-object v2, v2, Lccsanokhttp3/internal/cache/DiskLruCache;->fileSystem:Lccsanokhttp3/internal/io/FileSystem;

    iget-object v3, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lccsanokhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Lccsanokio/Source;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1025
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1028
    .end local v1    # "i":I
    :cond_0
    new-instance v9, Lccsanokhttp3/internal/cache/DiskLruCache$Snapshot;

    iget-object v2, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    iget-object v3, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    iget-wide v4, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->sequenceNumber:J

    move-object v1, v9

    move-object v6, v0

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lccsanokhttp3/internal/cache/DiskLruCache$Snapshot;-><init>(Lccsanokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;J[Lccsanokio/Source;[J)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    .line 1029
    :catch_0
    move-exception v1

    .line 1031
    .local v1, "e":Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    iget v3, v3, Lccsanokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_1

    .line 1032
    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 1033
    aget-object v3, v0, v2

    invoke-static {v3}, Lccsanokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 1031
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1041
    .end local v2    # "i":I
    :cond_1
    :try_start_1
    iget-object v2, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v2, p0}, Lccsanokhttp3/internal/cache/DiskLruCache;->removeEntry(Lccsanokhttp3/internal/cache/DiskLruCache$Entry;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1043
    goto :goto_2

    .line 1042
    :catch_1
    move-exception v2

    .line 1044
    :goto_2
    const/4 v2, 0x0

    return-object v2

    .line 1020
    .end local v0    # "sources":[Lccsanokio/Source;
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "lengths":[J
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method writeLengths(Lccsanokio/BufferedSink;)V
    .locals 6
    .param p1, "writer"    # Lccsanokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1005
    iget-object v0, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    .line 1006
    .local v3, "length":J
    const/16 v5, 0x20

    invoke-interface {p1, v5}, Lccsanokio/BufferedSink;->writeByte(I)Lccsanokio/BufferedSink;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lccsanokio/BufferedSink;->writeDecimalLong(J)Lccsanokio/BufferedSink;

    .line 1005
    .end local v3    # "length":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1008
    :cond_0
    return-void
.end method
