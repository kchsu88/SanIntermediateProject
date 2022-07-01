.class Lccsanokhttp3/RequestBody$3;
.super Lccsanokhttp3/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanokhttp3/RequestBody;->create(Lccsanokhttp3/MediaType;Ljava/io/File;)Lccsanokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$contentType:Lccsanokhttp3/MediaType;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lccsanokhttp3/MediaType;Ljava/io/File;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lccsanokhttp3/RequestBody$3;->val$contentType:Lccsanokhttp3/MediaType;

    iput-object p2, p0, Lccsanokhttp3/RequestBody$3;->val$file:Ljava/io/File;

    invoke-direct {p0}, Lccsanokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 166
    iget-object v0, p0, Lccsanokhttp3/RequestBody$3;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lccsanokhttp3/MediaType;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 162
    iget-object v0, p0, Lccsanokhttp3/RequestBody$3;->val$contentType:Lccsanokhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lccsanokio/BufferedSink;)V
    .locals 3
    .param p1, "sink"    # Lccsanokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lccsanokhttp3/RequestBody$3;->val$file:Ljava/io/File;

    invoke-static {v0}, Lccsanokio/Okio;->source(Ljava/io/File;)Lccsanokio/Source;

    move-result-object v0

    .line 171
    .local v0, "source":Lccsanokio/Source;
    :try_start_0
    invoke-interface {p1, v0}, Lccsanokio/BufferedSink;->writeAll(Lccsanokio/Source;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lccsanokio/Source;->close()V

    .line 173
    .end local v0    # "source":Lccsanokio/Source;
    :cond_0
    return-void

    .line 170
    .restart local v0    # "source":Lccsanokio/Source;
    :catchall_0
    move-exception v1

    .end local v0    # "source":Lccsanokio/Source;
    .end local p1    # "sink":Lccsanokio/BufferedSink;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 172
    .restart local v0    # "source":Lccsanokio/Source;
    .restart local p1    # "sink":Lccsanokio/BufferedSink;
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_2
    invoke-interface {v0}, Lccsanokio/Source;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    :cond_1
    :goto_0
    throw v1
.end method
