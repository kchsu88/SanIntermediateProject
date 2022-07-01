.class public Lccsancom/vungle/warren/utility/UnzipUtility;
.super Ljava/lang/Object;
.source "UnzipUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/utility/UnzipUtility$Filter;,
        Lccsancom/vungle/warren/utility/UnzipUtility$ZipSecurityException;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lccsancom/vungle/warren/utility/UnzipUtility;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/utility/UnzipUtility;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static extractFile(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 8
    .param p0, "zipIn"    # Ljava/io/InputStream;
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "dest":Ljava/io/File;
    invoke-static {v0}, Lccsancom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 127
    .local v1, "parentDir":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 131
    :cond_0
    const/4 v2, 0x0

    .line 132
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    const/4 v3, 0x0

    .line 134
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v4

    .line 135
    const/16 v4, 0x1000

    new-array v4, v4, [B

    .line 137
    .local v4, "bytesIn":[B
    :goto_0
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "read":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    .line 138
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v6}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 141
    .end local v4    # "bytesIn":[B
    .end local v6    # "read":I
    :cond_1
    invoke-static {p0}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 142
    invoke-static {v2}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 143
    invoke-static {v3}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 144
    nop

    .line 145
    return-void

    .line 141
    :catchall_0
    move-exception v4

    invoke-static {p0}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 142
    invoke-static {v2}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 143
    invoke-static {v3}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 144
    goto :goto_2

    :goto_1
    throw v4

    :goto_2
    goto :goto_1
.end method

.method public static unzip(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "zipFilePath"    # Ljava/lang/String;
    .param p1, "destDirectory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lccsancom/vungle/warren/utility/UnzipUtility;->unzip(Ljava/lang/String;Ljava/lang/String;Lccsancom/vungle/warren/utility/UnzipUtility$Filter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static unzip(Ljava/lang/String;Ljava/lang/String;Lccsancom/vungle/warren/utility/UnzipUtility$Filter;)Ljava/util/List;
    .locals 9
    .param p0, "zipFilePath"    # Ljava/lang/String;
    .param p1, "destDirectory"    # Ljava/lang/String;
    .param p2, "filter"    # Lccsancom/vungle/warren/utility/UnzipUtility$Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lccsancom/vungle/warren/utility/UnzipUtility$Filter;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 58
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "src":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 64
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .local v1, "destDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 69
    :cond_0
    const/4 v2, 0x0

    .line 71
    .local v2, "zipFile":Ljava/util/zip/ZipFile;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v3, "extractedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    move-object v2, v4

    .line 74
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .line 77
    .local v4, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 79
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 80
    .local v5, "entry":Ljava/util/zip/ZipEntry;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 82
    .local v6, "filePath":Ljava/lang/String;
    if-eqz p2, :cond_1

    invoke-interface {p2, v6}, Lccsancom/vungle/warren/utility/UnzipUtility$Filter;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 83
    :cond_1
    invoke-static {v6, p1}, Lccsancom/vungle/warren/utility/UnzipUtility;->validateFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 87
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v7, "dir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 89
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    .line 91
    .end local v7    # "dir":Ljava/io/File;
    :cond_2
    goto :goto_1

    .line 93
    :cond_3
    invoke-virtual {v2, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7, v6}, Lccsancom/vungle/warren/utility/UnzipUtility;->extractFile(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 94
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v6    # "filePath":Ljava/lang/String;
    :cond_4
    :goto_1
    goto :goto_0

    .line 101
    .end local v4    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_5
    nop

    .line 102
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    goto :goto_2

    .line 104
    :catch_0
    move-exception v4

    .line 107
    nop

    .line 109
    :goto_2
    return-object v3

    .line 100
    :catchall_0
    move-exception v4

    .line 101
    if-eqz v2, :cond_6

    .line 102
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 104
    :catch_1
    move-exception v5

    goto :goto_4

    .line 106
    :cond_6
    :goto_3
    nop

    .line 107
    :goto_4
    throw v4

    .line 61
    .end local v1    # "destDir":Ljava/io/File;
    .end local v2    # "zipFile":Ljava/util/zip/ZipFile;
    .end local v3    # "extractedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "File does not exist"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    .end local v0    # "src":Ljava/io/File;
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Path is empty"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method private static validateFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "intendedDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "canonicalPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v2, "iD":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "canonicalID":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 156
    return-object v1

    .line 158
    :cond_0
    const-string v4, "File is outside extraction target directory."

    .line 159
    .local v4, "msg":Ljava/lang/String;
    sget-object v5, Lccsancom/vungle/warren/utility/UnzipUtility;->TAG:Ljava/lang/String;

    const-string v6, "File is outside extraction target directory."

    invoke-static {v5, v6}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v5, Lccsancom/vungle/warren/utility/UnzipUtility$ZipSecurityException;

    invoke-direct {v5, v6}, Lccsancom/vungle/warren/utility/UnzipUtility$ZipSecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
