.class Lccsancom/bumptech/glide/load/engine/DecodeJob$SourceWriter;
.super Ljava/lang/Object;
.source "DecodeJob.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/engine/cache/DiskCache$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SourceWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/engine/cache/DiskCache$Writer;"
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field private final encoder:Lccsancom/bumptech/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/Encoder<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lccsancom/bumptech/glide/load/engine/DecodeJob;


# direct methods
.method public constructor <init>(Lccsancom/bumptech/glide/load/engine/DecodeJob;Lccsancom/bumptech/glide/load/Encoder;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/Encoder<",
            "TDataType;>;TDataType;)V"
        }
    .end annotation

    .line 259
    .local p0, "this":Lccsancom/bumptech/glide/load/engine/DecodeJob$SourceWriter;, "Lccsancom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>.SourceWriter<TDataType;>;"
    .local p2, "encoder":Lccsancom/bumptech/glide/load/Encoder;, "Lccsancom/bumptech/glide/load/Encoder<TDataType;>;"
    .local p3, "data":Ljava/lang/Object;, "TDataType;"
    iput-object p1, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->this$0:Lccsancom/bumptech/glide/load/engine/DecodeJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p2, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->encoder:Lccsancom/bumptech/glide/load/Encoder;

    .line 261
    iput-object p3, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->data:Ljava/lang/Object;

    .line 262
    return-void
.end method


# virtual methods
.method public write(Ljava/io/File;)Z
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .line 266
    .local p0, "this":Lccsancom/bumptech/glide/load/engine/DecodeJob$SourceWriter;, "Lccsancom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>.SourceWriter<TDataType;>;"
    const-string v0, "DecodeJob"

    const/4 v1, 0x0

    .line 267
    .local v1, "success":Z
    const/4 v2, 0x0

    .line 269
    .local v2, "os":Ljava/io/OutputStream;
    :try_start_0
    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->this$0:Lccsancom/bumptech/glide/load/engine/DecodeJob;

    invoke-static {v3}, Lccsancom/bumptech/glide/load/engine/DecodeJob;->access$000(Lccsancom/bumptech/glide/load/engine/DecodeJob;)Lccsancom/bumptech/glide/load/engine/DecodeJob$FileOpener;

    move-result-object v3

    invoke-virtual {v3, p1}, Lccsancom/bumptech/glide/load/engine/DecodeJob$FileOpener;->open(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v3

    move-object v2, v3

    .line 270
    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->encoder:Lccsancom/bumptech/glide/load/Encoder;

    iget-object v4, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->data:Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Lccsancom/bumptech/glide/load/Encoder;->encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    .line 276
    if-eqz v2, :cond_1

    .line 278
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 281
    :goto_0
    goto :goto_1

    .line 279
    :catch_0
    move-exception v0

    goto :goto_0

    .line 276
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 271
    :catch_1
    move-exception v3

    .line 272
    .local v3, "e":Ljava/io/FileNotFoundException;
    const/4 v4, 0x3

    :try_start_2
    invoke-static {v0, v4}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 273
    const-string v4, "Failed to find file to write to disk cache"

    invoke-static {v0, v4, v3}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    if-eqz v2, :cond_1

    .line 278
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 284
    :cond_1
    :goto_1
    return v1

    .line 276
    :goto_2
    if-eqz v2, :cond_2

    .line 278
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 281
    goto :goto_3

    .line 279
    :catch_2
    move-exception v3

    .line 281
    :cond_2
    :goto_3
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
