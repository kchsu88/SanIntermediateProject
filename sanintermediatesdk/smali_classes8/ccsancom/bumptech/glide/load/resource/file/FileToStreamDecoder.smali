.class public Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder;
.super Ljava/lang/Object;
.source "FileToStreamDecoder.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/ResourceDecoder<",
        "Ljava/io/File;",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FILE_OPENER:Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;


# instance fields
.field private final fileOpener:Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

.field private streamDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/InputStream;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;-><init>()V

    sput-object v0, Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder;->DEFAULT_FILE_OPENER:Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    return-void
.end method

.method public constructor <init>(Lccsancom/bumptech/glide/load/ResourceDecoder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/InputStream;",
            "TT;>;)V"
        }
    .end annotation

    .line 24
    .local p0, "this":Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder;, "Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder<TT;>;"
    .local p1, "streamDecoder":Lccsancom/bumptech/glide/load/ResourceDecoder;, "Lccsancom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;TT;>;"
    sget-object v0, Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder;->DEFAULT_FILE_OPENER:Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    invoke-direct {p0, p1, v0}, Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder;-><init>(Lccsancom/bumptech/glide/load/ResourceDecoder;Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;)V

    .line 25
    return-void
.end method

.method constructor <init>(Lccsancom/bumptech/glide/load/ResourceDecoder;Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;)V
    .locals 0
    .param p2, "fileOpener"    # Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/InputStream;",
            "TT;>;",
            "Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;",
            ")V"
        }
    .end annotation

    .line 28
    .local p0, "this":Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder;, "Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder<TT;>;"
    .local p1, "streamDecoder":Lccsancom/bumptech/glide/load/ResourceDecoder;, "Lccsancom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder;->streamDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    .line 30
    iput-object p2, p0, Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder;->fileOpener:Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    .line 31
    return-void
.end method


# virtual methods
.method public decode(Ljava/io/File;II)Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 4
    .param p1, "source"    # Ljava/io/File;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II)",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    .local p0, "this":Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder;, "Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder<TT;>;"
    const/4 v0, 0x0

    .line 36
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 38
    .local v1, "result":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<TT;>;"
    :try_start_0
    iget-object v2, p0, Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder;->fileOpener:Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    invoke-virtual {v2, p1}, Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;->open(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    .line 39
    iget-object v2, p0, Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder;->streamDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v2, v0, p2, p3}, Lccsancom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 41
    if-eqz v0, :cond_0

    .line 43
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    :goto_0
    goto :goto_1

    .line 44
    :catch_0
    move-exception v2

    goto :goto_0

    .line 49
    :cond_0
    :goto_1
    return-object v1

    .line 41
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 43
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 46
    goto :goto_2

    .line 44
    :catch_1
    move-exception v3

    .line 46
    :cond_1
    :goto_2
    goto :goto_4

    :goto_3
    throw v2

    :goto_4
    goto :goto_3
.end method

.method public bridge synthetic decode(Ljava/lang/Object;II)Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    .local p0, "this":Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder;, "Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder<TT;>;"
    move-object v0, p1

    check-cast v0, Ljava/io/File;

    invoke-virtual {p0, v0, p2, p3}, Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder;->decode(Ljava/io/File;II)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 54
    .local p0, "this":Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder;, "Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder<TT;>;"
    const-string v0, ""

    return-object v0
.end method
