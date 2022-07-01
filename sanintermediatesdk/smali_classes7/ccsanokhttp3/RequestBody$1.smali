.class Lccsanokhttp3/RequestBody$1;
.super Lccsanokhttp3/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanokhttp3/RequestBody;->create(Lccsanokhttp3/MediaType;Lccsanokio/ByteString;)Lccsanokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Lccsanokio/ByteString;

.field final synthetic val$contentType:Lccsanokhttp3/MediaType;


# direct methods
.method constructor <init>(Lccsanokhttp3/MediaType;Lccsanokio/ByteString;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lccsanokhttp3/RequestBody$1;->val$contentType:Lccsanokhttp3/MediaType;

    iput-object p2, p0, Lccsanokhttp3/RequestBody$1;->val$content:Lccsanokio/ByteString;

    invoke-direct {p0}, Lccsanokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lccsanokhttp3/RequestBody$1;->val$content:Lccsanokio/ByteString;

    invoke-virtual {v0}, Lccsanokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lccsanokhttp3/MediaType;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 118
    iget-object v0, p0, Lccsanokhttp3/RequestBody$1;->val$contentType:Lccsanokhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lccsanokio/BufferedSink;)V
    .locals 1
    .param p1, "sink"    # Lccsanokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lccsanokhttp3/RequestBody$1;->val$content:Lccsanokio/ByteString;

    invoke-interface {p1, v0}, Lccsanokio/BufferedSink;->write(Lccsanokio/ByteString;)Lccsanokio/BufferedSink;

    .line 127
    return-void
.end method
