.class final Lccsancom/mbridge/msdk/foundation/same/net/m$a;
.super Ljava/lang/Object;
.source "SocketManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/foundation/same/net/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/same/net/m;

.field private b:Ljava/lang/String;

.field private c:Ljava/nio/ByteBuffer;

.field private d:Ljava/io/OutputStream;

.field private e:Z

.field private f:Lccsancom/mbridge/msdk/foundation/same/net/e;

.field private g:Ljava/net/Socket;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/same/net/m;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/e;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->a:Lccsancom/mbridge/msdk/foundation/same/net/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->e:Z

    .line 68
    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->b:Ljava/lang/String;

    .line 69
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->e:Z

    .line 70
    iput-object p3, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->f:Lccsancom/mbridge/msdk/foundation/same/net/e;

    .line 71
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 81
    const/16 v0, 0x194

    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/Socket;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/m;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/m;->c()I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->g:Ljava/net/Socket;

    .line 82
    const/16 v4, 0x3a98

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 83
    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->g:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->d:Ljava/io/OutputStream;

    .line 84
    const/16 v3, 0x8

    new-array v4, v3, [B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->c:Ljava/nio/ByteBuffer;

    .line 85
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 86
    iget-object v4, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->c:Ljava/nio/ByteBuffer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 87
    iget-object v4, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->b:Ljava/lang/String;

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    iget-object v4, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 90
    :cond_0
    iget-object v4, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->c:Ljava/nio/ByteBuffer;

    iget-boolean v6, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->e:Z

    if-eqz v6, :cond_1

    const/4 v6, 0x3

    goto :goto_0

    :cond_1
    const/4 v6, 0x2

    :goto_0
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 92
    :goto_1
    iget-object v4, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->c:Ljava/nio/ByteBuffer;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/m;->d()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v6

    int-to-short v6, v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 94
    iget-object v4, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->b:Ljava/lang/String;

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 95
    iget-object v4, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 96
    iget-object v4, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->d:Ljava/io/OutputStream;

    iget-object v7, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/OutputStream;->write([B)V

    goto :goto_2

    .line 98
    :cond_2
    iget-object v4, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    .line 99
    iget-object v7, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 100
    iget-object v4, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->d:Ljava/io/OutputStream;

    iget-object v7, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/OutputStream;->write([B)V

    .line 101
    iget-object v4, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->d:Ljava/io/OutputStream;

    iget-object v7, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->b:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/OutputStream;->write([B)V

    .line 103
    :goto_2
    iget-object v4, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->d:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 104
    iget-object v4, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->g:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 105
    new-array v7, v3, [B

    .line 106
    invoke-virtual {v4, v7, v6, v3}, Ljava/io/InputStream;->read([BII)I

    .line 107
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->c:Ljava/nio/ByteBuffer;

    .line 108
    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 109
    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->c:Ljava/nio/ByteBuffer;

    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    .line 110
    new-array v7, v3, [B

    .line 111
    invoke-virtual {v4, v7, v6, v3}, Ljava/io/InputStream;->read([BII)I

    .line 112
    if-lt v3, v5, :cond_3

    aget-byte v3, v7, v6

    if-ne v3, v5, :cond_3

    .line 113
    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->f:Lccsancom/mbridge/msdk/foundation/same/net/e;

    if-eqz v3, :cond_4

    .line 114
    new-instance v5, Lccsancom/mbridge/msdk/foundation/same/net/f/c;

    const/16 v6, 0xc8

    invoke-direct {v5, v6, v2, v2}, Lccsancom/mbridge/msdk/foundation/same/net/f/c;-><init>(I[BLjava/util/List;)V

    invoke-static {v2, v5}, Lccsancom/mbridge/msdk/foundation/same/net/k;->a(Ljava/lang/Object;Lccsancom/mbridge/msdk/foundation/same/net/f/c;)Lccsancom/mbridge/msdk/foundation/same/net/k;

    move-result-object v5

    invoke-interface {v3, v5}, Lccsancom/mbridge/msdk/foundation/same/net/e;->a(Lccsancom/mbridge/msdk/foundation/same/net/k;)V

    goto :goto_3

    .line 117
    :cond_3
    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->f:Lccsancom/mbridge/msdk/foundation/same/net/e;

    if-eqz v3, :cond_4

    .line 118
    new-instance v5, Lccsancom/mbridge/msdk/foundation/same/net/a/a;

    new-instance v6, Lccsancom/mbridge/msdk/foundation/same/net/f/c;

    invoke-direct {v6, v0, v2, v2}, Lccsancom/mbridge/msdk/foundation/same/net/f/c;-><init>(I[BLjava/util/List;)V

    invoke-direct {v5, v1, v6}, Lccsancom/mbridge/msdk/foundation/same/net/a/a;-><init>(ILccsancom/mbridge/msdk/foundation/same/net/f/c;)V

    invoke-interface {v3, v5}, Lccsancom/mbridge/msdk/foundation/same/net/e;->a(Lccsancom/mbridge/msdk/foundation/same/net/a/a;)V

    .line 121
    :cond_4
    :goto_3
    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->g:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 122
    iput-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->c:Ljava/nio/ByteBuffer;

    .line 123
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 124
    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->d:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->g:Ljava/net/Socket;

    if-eqz v0, :cond_6

    .line 132
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 133
    :catch_0
    move-exception v0

    goto :goto_5

    .line 125
    :catchall_0
    move-exception v3

    .line 126
    :try_start_2
    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->f:Lccsancom/mbridge/msdk/foundation/same/net/e;

    if-eqz v3, :cond_5

    .line 127
    new-instance v4, Lccsancom/mbridge/msdk/foundation/same/net/a/a;

    new-instance v5, Lccsancom/mbridge/msdk/foundation/same/net/f/c;

    invoke-direct {v5, v0, v2, v2}, Lccsancom/mbridge/msdk/foundation/same/net/f/c;-><init>(I[BLjava/util/List;)V

    invoke-direct {v4, v1, v5}, Lccsancom/mbridge/msdk/foundation/same/net/a/a;-><init>(ILccsancom/mbridge/msdk/foundation/same/net/f/c;)V

    invoke-interface {v3, v4}, Lccsancom/mbridge/msdk/foundation/same/net/e;->a(Lccsancom/mbridge/msdk/foundation/same/net/a/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 130
    :cond_5
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->g:Ljava/net/Socket;

    if-eqz v0, :cond_6

    .line 132
    :try_start_3
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 135
    :goto_4
    goto :goto_6

    .line 133
    :catch_1
    move-exception v0

    .line 134
    :goto_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 137
    :cond_6
    :goto_6
    iput-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->f:Lccsancom/mbridge/msdk/foundation/same/net/e;

    .line 138
    nop

    .line 139
    return-void

    .line 130
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->g:Ljava/net/Socket;

    if-eqz v1, :cond_7

    .line 132
    :try_start_4
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 135
    goto :goto_7

    .line 133
    :catch_2
    move-exception v1

    .line 134
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 137
    :cond_7
    :goto_7
    iput-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/m$a;->f:Lccsancom/mbridge/msdk/foundation/same/net/e;

    .line 138
    throw v0
.end method
