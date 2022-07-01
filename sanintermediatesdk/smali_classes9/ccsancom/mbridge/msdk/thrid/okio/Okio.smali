.class public final Lccsancom/mbridge/msdk/thrid/okio/Okio;
.super Ljava/lang/Object;
.source "Okio.java"


# static fields
.field static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lccsancom/mbridge/msdk/thrid/okio/Okio;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/thrid/okio/Okio;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static appendingSink(Ljava/io/File;)Lccsancom/mbridge/msdk/thrid/okio/Sink;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 185
    if-eqz p0, :cond_0

    .line 186
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->sink(Ljava/io/OutputStream;)Lccsancom/mbridge/msdk/thrid/okio/Sink;

    move-result-object v0

    return-object v0

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blackhole()Lccsancom/mbridge/msdk/thrid/okio/Sink;
    .locals 1

    .line 198
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okio/Okio$3;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/thrid/okio/Okio$3;-><init>()V

    return-object v0
.end method

.method public static buffer(Lccsancom/mbridge/msdk/thrid/okio/Sink;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;
    .locals 1
    .param p0, "sink"    # Lccsancom/mbridge/msdk/thrid/okio/Sink;

    .line 59
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSink;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSink;-><init>(Lccsancom/mbridge/msdk/thrid/okio/Sink;)V

    return-object v0
.end method

.method public static buffer(Lccsancom/mbridge/msdk/thrid/okio/Source;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;
    .locals 1
    .param p0, "source"    # Lccsancom/mbridge/msdk/thrid/okio/Source;

    .line 50
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/thrid/okio/RealBufferedSource;-><init>(Lccsancom/mbridge/msdk/thrid/okio/Source;)V

    return-object v0
.end method

.method static isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .locals 2
    .param p0, "e"    # Ljava/lang/AssertionError;

    .line 261
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getsockname failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 261
    :goto_0
    return v0
.end method

.method public static sink(Ljava/io/File;)Lccsancom/mbridge/msdk/thrid/okio/Sink;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 179
    if-eqz p0, :cond_0

    .line 180
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->sink(Ljava/io/OutputStream;)Lccsancom/mbridge/msdk/thrid/okio/Sink;

    move-result-object v0

    return-object v0

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sink(Ljava/io/OutputStream;)Lccsancom/mbridge/msdk/thrid/okio/Sink;
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;

    .line 64
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/thrid/okio/Timeout;-><init>()V

    invoke-static {p0, v0}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->sink(Ljava/io/OutputStream;Lccsancom/mbridge/msdk/thrid/okio/Timeout;)Lccsancom/mbridge/msdk/thrid/okio/Sink;

    move-result-object v0

    return-object v0
.end method

.method private static sink(Ljava/io/OutputStream;Lccsancom/mbridge/msdk/thrid/okio/Timeout;)Lccsancom/mbridge/msdk/thrid/okio/Sink;
    .locals 2
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "timeout"    # Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    .line 68
    if-eqz p0, :cond_1

    .line 69
    if-eqz p1, :cond_0

    .line 71
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okio/Okio$1;

    invoke-direct {v0, p1, p0}, Lccsancom/mbridge/msdk/thrid/okio/Okio$1;-><init>(Lccsancom/mbridge/msdk/thrid/okio/Timeout;Ljava/io/OutputStream;)V

    return-object v0

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sink(Ljava/net/Socket;)Lccsancom/mbridge/msdk/thrid/okio/Sink;
    .locals 3
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    if-eqz p0, :cond_1

    .line 116
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {p0}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->timeout(Ljava/net/Socket;)Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    move-result-object v0

    .line 118
    .local v0, "timeout":Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->sink(Ljava/io/OutputStream;Lccsancom/mbridge/msdk/thrid/okio/Timeout;)Lccsancom/mbridge/msdk/thrid/okio/Sink;

    move-result-object v1

    .line 119
    .local v1, "sink":Lccsancom/mbridge/msdk/thrid/okio/Sink;
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->sink(Lccsancom/mbridge/msdk/thrid/okio/Sink;)Lccsancom/mbridge/msdk/thrid/okio/Sink;

    move-result-object v2

    return-object v2

    .line 116
    .end local v0    # "timeout":Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;
    .end local v1    # "sink":Lccsancom/mbridge/msdk/thrid/okio/Sink;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "socket\'s output stream == null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs sink(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lccsancom/mbridge/msdk/thrid/okio/Sink;
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    if-eqz p0, :cond_0

    .line 193
    invoke-static {p0, p1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->sink(Ljava/io/OutputStream;)Lccsancom/mbridge/msdk/thrid/okio/Sink;

    move-result-object v0

    return-object v0

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "path == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static source(Ljava/io/File;)Lccsancom/mbridge/msdk/thrid/okio/Source;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 166
    if-eqz p0, :cond_0

    .line 167
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->source(Ljava/io/InputStream;)Lccsancom/mbridge/msdk/thrid/okio/Source;

    move-result-object v0

    return-object v0

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static source(Ljava/io/InputStream;)Lccsancom/mbridge/msdk/thrid/okio/Source;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;

    .line 124
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/thrid/okio/Timeout;-><init>()V

    invoke-static {p0, v0}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->source(Ljava/io/InputStream;Lccsancom/mbridge/msdk/thrid/okio/Timeout;)Lccsancom/mbridge/msdk/thrid/okio/Source;

    move-result-object v0

    return-object v0
.end method

.method private static source(Ljava/io/InputStream;Lccsancom/mbridge/msdk/thrid/okio/Timeout;)Lccsancom/mbridge/msdk/thrid/okio/Source;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "timeout"    # Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    .line 128
    if-eqz p0, :cond_1

    .line 129
    if-eqz p1, :cond_0

    .line 131
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okio/Okio$2;

    invoke-direct {v0, p1, p0}, Lccsancom/mbridge/msdk/thrid/okio/Okio$2;-><init>(Lccsancom/mbridge/msdk/thrid/okio/Timeout;Ljava/io/InputStream;)V

    return-object v0

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static source(Ljava/net/Socket;)Lccsancom/mbridge/msdk/thrid/okio/Source;
    .locals 3
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    if-eqz p0, :cond_1

    .line 222
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    invoke-static {p0}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->timeout(Ljava/net/Socket;)Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    move-result-object v0

    .line 224
    .local v0, "timeout":Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->source(Ljava/io/InputStream;Lccsancom/mbridge/msdk/thrid/okio/Timeout;)Lccsancom/mbridge/msdk/thrid/okio/Source;

    move-result-object v1

    .line 225
    .local v1, "source":Lccsancom/mbridge/msdk/thrid/okio/Source;
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->source(Lccsancom/mbridge/msdk/thrid/okio/Source;)Lccsancom/mbridge/msdk/thrid/okio/Source;

    move-result-object v2

    return-object v2

    .line 222
    .end local v0    # "timeout":Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;
    .end local v1    # "source":Lccsancom/mbridge/msdk/thrid/okio/Source;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "socket\'s input stream == null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs source(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lccsancom/mbridge/msdk/thrid/okio/Source;
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    if-eqz p0, :cond_0

    .line 174
    invoke-static {p0, p1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->source(Ljava/io/InputStream;)Lccsancom/mbridge/msdk/thrid/okio/Source;

    move-result-object v0

    return-object v0

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "path == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static timeout(Ljava/net/Socket;)Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;

    .line 229
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okio/Okio$4;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/thrid/okio/Okio$4;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method
