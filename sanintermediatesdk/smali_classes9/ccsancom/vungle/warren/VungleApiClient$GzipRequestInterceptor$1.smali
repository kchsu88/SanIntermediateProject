.class Lccsancom/vungle/warren/VungleApiClient$GzipRequestInterceptor$1;
.super Lccsanokhttp3/RequestBody;
.source "VungleApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/VungleApiClient$GzipRequestInterceptor;->gzip(Lccsanokhttp3/RequestBody;)Lccsanokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/VungleApiClient$GzipRequestInterceptor;

.field final synthetic val$output:Lccsanokio/Buffer;

.field final synthetic val$requestBody:Lccsanokhttp3/RequestBody;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/VungleApiClient$GzipRequestInterceptor;Lccsanokhttp3/RequestBody;Lccsanokio/Buffer;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/VungleApiClient$GzipRequestInterceptor;

    .line 340
    iput-object p1, p0, Lccsancom/vungle/warren/VungleApiClient$GzipRequestInterceptor$1;->this$0:Lccsancom/vungle/warren/VungleApiClient$GzipRequestInterceptor;

    iput-object p2, p0, Lccsancom/vungle/warren/VungleApiClient$GzipRequestInterceptor$1;->val$requestBody:Lccsanokhttp3/RequestBody;

    iput-object p3, p0, Lccsancom/vungle/warren/VungleApiClient$GzipRequestInterceptor$1;->val$output:Lccsanokio/Buffer;

    invoke-direct {p0}, Lccsanokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 348
    iget-object v0, p0, Lccsancom/vungle/warren/VungleApiClient$GzipRequestInterceptor$1;->val$output:Lccsanokio/Buffer;

    invoke-virtual {v0}, Lccsanokio/Buffer;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lccsanokhttp3/MediaType;
    .locals 1

    .line 343
    iget-object v0, p0, Lccsancom/vungle/warren/VungleApiClient$GzipRequestInterceptor$1;->val$requestBody:Lccsanokhttp3/RequestBody;

    invoke-virtual {v0}, Lccsanokhttp3/RequestBody;->contentType()Lccsanokhttp3/MediaType;

    move-result-object v0

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

    .line 353
    iget-object v0, p0, Lccsancom/vungle/warren/VungleApiClient$GzipRequestInterceptor$1;->val$output:Lccsanokio/Buffer;

    invoke-virtual {v0}, Lccsanokio/Buffer;->snapshot()Lccsanokio/ByteString;

    move-result-object v0

    invoke-interface {p1, v0}, Lccsanokio/BufferedSink;->write(Lccsanokio/ByteString;)Lccsanokio/BufferedSink;

    .line 354
    return-void
.end method
