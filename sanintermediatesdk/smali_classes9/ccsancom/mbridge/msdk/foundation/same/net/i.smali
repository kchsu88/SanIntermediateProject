.class public abstract Lccsancom/mbridge/msdk/foundation/same/net/i;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lccsancom/mbridge/msdk/foundation/same/net/i<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field protected a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lccsancom/mbridge/msdk/foundation/same/net/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/mbridge/msdk/foundation/same/net/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:I

.field private final e:Ljava/lang/String;

.field private f:Ljava/lang/Integer;

.field private g:Lccsancom/mbridge/msdk/foundation/same/net/j;

.field private h:Z

.field private i:Lccsancom/mbridge/msdk/foundation/same/net/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lccsancom/mbridge/msdk/foundation/same/net/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/same/net/i;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->b:Lccsancom/mbridge/msdk/foundation/same/net/e;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->h:Z

    .line 51
    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->e:Ljava/lang/String;

    .line 52
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->d:I

    .line 53
    new-instance p1, Lccsancom/mbridge/msdk/foundation/same/net/b;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/foundation/same/net/b;-><init>()V

    .line 2074
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->i:Lccsancom/mbridge/msdk/foundation/same/net/l;

    .line 2075
    nop

    .line 53
    nop

    .line 54
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/foundation/same/net/e<",
            "TT;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->b:Lccsancom/mbridge/msdk/foundation/same/net/e;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->h:Z

    .line 44
    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->e:Ljava/lang/String;

    .line 45
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->d:I

    .line 46
    iput-object p3, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->b:Lccsancom/mbridge/msdk/foundation/same/net/e;

    .line 47
    new-instance p1, Lccsancom/mbridge/msdk/foundation/same/net/b;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/foundation/same/net/b;-><init>()V

    .line 1074
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->i:Lccsancom/mbridge/msdk/foundation/same/net/l;

    .line 1075
    nop

    .line 47
    nop

    .line 48
    return-void
.end method

.method private a(Lccsancom/mbridge/msdk/foundation/same/net/f/b;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lccsancom/mbridge/msdk/foundation/same/net/a/a;
        }
    .end annotation

    .line 154
    nop

    .line 155
    nop

    .line 157
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/same/net/f/b;->c()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 158
    :try_start_1
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/same/net/f/b;->b()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->b(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    instance-of p1, v1, Ljava/util/zip/GZIPInputStream;

    if-nez p1, :cond_0

    .line 159
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, p1

    .line 162
    :cond_0
    if-eqz v1, :cond_3

    .line 166
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 167
    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 168
    nop

    .line 169
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 170
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    if-eqz v1, :cond_2

    .line 177
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 182
    :catch_0
    move-exception p1

    goto :goto_2

    .line 179
    :cond_2
    :goto_1
    nop

    .line 180
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 184
    goto :goto_3

    .line 183
    :goto_2
    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/net/i;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :goto_3
    return-object v0

    .line 175
    :catchall_0
    move-exception v0

    move-object v4, v1

    move-object v1, p1

    move-object p1, v0

    goto :goto_4

    .line 163
    :cond_3
    :try_start_4
    new-instance p1, Lccsancom/mbridge/msdk/foundation/same/net/a/a;

    const/4 v2, 0x7

    invoke-direct {p1, v2, v0}, Lccsancom/mbridge/msdk/foundation/same/net/a/a;-><init>(ILccsancom/mbridge/msdk/foundation/same/net/f/c;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 175
    :catchall_1
    move-exception p1

    move-object v4, v1

    move-object v1, v0

    :goto_4
    move-object v0, v4

    goto :goto_5

    :catchall_2
    move-exception p1

    move-object v1, v0

    .line 176
    :goto_5
    if-eqz v0, :cond_4

    .line 177
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_6

    .line 182
    :catch_1
    move-exception v0

    goto :goto_7

    .line 179
    :cond_4
    :goto_6
    if-eqz v1, :cond_5

    .line 180
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_8

    .line 183
    :goto_7
    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/net/i;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 184
    :cond_5
    :goto_8
    nop

    .line 185
    :goto_9
    goto :goto_b

    :goto_a
    throw p1

    :goto_b
    goto :goto_a
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 57
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->d:I

    return v0
.end method

.method public final a(I)Lccsancom/mbridge/msdk/foundation/same/net/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/mbridge/msdk/foundation/same/net/i<",
            "*>;"
        }
    .end annotation

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->f:Ljava/lang/Integer;

    .line 91
    return-object p0
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/same/net/j;)Lccsancom/mbridge/msdk/foundation/same/net/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/same/net/j;",
            ")",
            "Lccsancom/mbridge/msdk/foundation/same/net/i<",
            "*>;"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->g:Lccsancom/mbridge/msdk/foundation/same/net/j;

    .line 86
    return-object p0
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/same/net/l;)Lccsancom/mbridge/msdk/foundation/same/net/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/same/net/l;",
            ")",
            "Lccsancom/mbridge/msdk/foundation/same/net/i<",
            "*>;"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->i:Lccsancom/mbridge/msdk/foundation/same/net/l;

    .line 75
    return-object p0
.end method

.method protected abstract a(Lccsancom/mbridge/msdk/foundation/same/net/f/c;)Lccsancom/mbridge/msdk/foundation/same/net/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/same/net/f/c;",
            ")",
            "Lccsancom/mbridge/msdk/foundation/same/net/k<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final a(JJ)V
    .locals 1

    .line 256
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->b:Lccsancom/mbridge/msdk/foundation/same/net/e;

    if-eqz v0, :cond_0

    .line 257
    invoke-interface {v0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/foundation/same/net/e;->a(JJ)V

    .line 259
    :cond_0
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/same/net/a/a;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->b:Lccsancom/mbridge/msdk/foundation/same/net/e;

    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/e;->a(Lccsancom/mbridge/msdk/foundation/same/net/a/a;)V

    .line 223
    :cond_0
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/same/net/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/same/net/e<",
            "TT;>;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->b:Lccsancom/mbridge/msdk/foundation/same/net/e;

    .line 62
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/same/net/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/same/net/k<",
            "TT;>;)V"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->b:Lccsancom/mbridge/msdk/foundation/same/net/e;

    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/e;->a(Lccsancom/mbridge/msdk/foundation/same/net/k;)V

    .line 217
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 79
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->g:Lccsancom/mbridge/msdk/foundation/same/net/j;

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p1, p0}, Lccsancom/mbridge/msdk/foundation/same/net/j;->b(Lccsancom/mbridge/msdk/foundation/same/net/i;)V

    .line 82
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 118
    nop

    .line 2129
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void
.end method

.method public a(Lccsancom/mbridge/msdk/foundation/same/net/f/b;Lccsancom/mbridge/msdk/foundation/same/net/c;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lccsancom/mbridge/msdk/foundation/same/net/a/a;
        }
    .end annotation

    .line 146
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/same/net/f/b;->c()Ljava/io/InputStream;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 147
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/i;->a(Lccsancom/mbridge/msdk/foundation/same/net/f/b;)[B

    move-result-object p1

    return-object p1

    .line 149
    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->h:Z

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 19
    check-cast p1, Lccsancom/mbridge/msdk/foundation/same/net/i;

    .line 3263
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/same/net/i;->g()I

    move-result v0

    .line 3264
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/same/net/i;->g()I

    move-result v1

    .line 3266
    if-ne v0, v1, :cond_0

    .line 3267
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lccsancom/mbridge/msdk/foundation/same/net/i;->f:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    goto :goto_0

    .line 3268
    :cond_0
    sub-int v0, v1, v0

    .line 19
    :goto_0
    return v0
.end method

.method public final d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public e()[B
    .locals 1

    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()V
    .locals 2

    .line 137
    const-string v0, "Connection"

    const-string v1, "close"

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/foundation/same/net/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v0, "Charset"

    const-string v1, "UTF-8"

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/foundation/same/net/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public g()I
    .locals 1

    .line 196
    const/4 v0, 0x2

    return v0
.end method

.method public final h()I
    .locals 1

    .line 200
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->i:Lccsancom/mbridge/msdk/foundation/same/net/l;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/foundation/same/net/l;->a()I

    move-result v0

    return v0
.end method

.method public final i()V
    .locals 1

    .line 226
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->b:Lccsancom/mbridge/msdk/foundation/same/net/e;

    if-eqz v0, :cond_0

    .line 227
    invoke-interface {v0}, Lccsancom/mbridge/msdk/foundation/same/net/e;->c()V

    .line 229
    :cond_0
    return-void
.end method

.method public final j()V
    .locals 1

    .line 232
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->b:Lccsancom/mbridge/msdk/foundation/same/net/e;

    if-eqz v0, :cond_0

    .line 233
    invoke-interface {v0}, Lccsancom/mbridge/msdk/foundation/same/net/e;->a()V

    .line 235
    :cond_0
    return-void
.end method

.method public final k()V
    .locals 1

    .line 238
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->b:Lccsancom/mbridge/msdk/foundation/same/net/e;

    if-eqz v0, :cond_0

    .line 239
    invoke-interface {v0}, Lccsancom/mbridge/msdk/foundation/same/net/e;->b()V

    .line 241
    :cond_0
    return-void
.end method

.method public final l()V
    .locals 1

    .line 250
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->b:Lccsancom/mbridge/msdk/foundation/same/net/e;

    if-eqz v0, :cond_0

    .line 251
    invoke-interface {v0}, Lccsancom/mbridge/msdk/foundation/same/net/e;->d()V

    .line 253
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->h:Z

    if-eqz v1, :cond_0

    const-string v1, "[X] "

    goto :goto_0

    :cond_0
    const-string v1, "[ ] "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3102
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->e:Ljava/lang/String;

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/same/net/i;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/i;->f:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
