.class final Lccsancom/vungle/warren/network/OkHttpCall$NoContentResponseBody;
.super Lccsanokhttp3/ResponseBody;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/network/OkHttpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NoContentResponseBody"
.end annotation


# instance fields
.field private final contentLength:J

.field private final contentType:Lccsanokhttp3/MediaType;


# direct methods
.method constructor <init>(Lccsanokhttp3/MediaType;J)V
    .locals 0
    .param p1, "contentType"    # Lccsanokhttp3/MediaType;
    .param p2, "contentLength"    # J

    .line 137
    invoke-direct {p0}, Lccsanokhttp3/ResponseBody;-><init>()V

    .line 138
    iput-object p1, p0, Lccsancom/vungle/warren/network/OkHttpCall$NoContentResponseBody;->contentType:Lccsanokhttp3/MediaType;

    .line 139
    iput-wide p2, p0, Lccsancom/vungle/warren/network/OkHttpCall$NoContentResponseBody;->contentLength:J

    .line 140
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 149
    iget-wide v0, p0, Lccsancom/vungle/warren/network/OkHttpCall$NoContentResponseBody;->contentLength:J

    return-wide v0
.end method

.method public contentType()Lccsanokhttp3/MediaType;
    .locals 1

    .line 144
    iget-object v0, p0, Lccsancom/vungle/warren/network/OkHttpCall$NoContentResponseBody;->contentType:Lccsanokhttp3/MediaType;

    return-object v0
.end method

.method public source()Lccsanokio/BufferedSource;
    .locals 2

    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read raw response body of a converted body."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
