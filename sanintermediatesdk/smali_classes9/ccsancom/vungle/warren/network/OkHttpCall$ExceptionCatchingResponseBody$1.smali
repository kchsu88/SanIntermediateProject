.class Lccsancom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody$1;
.super Lccsanokio/ForwardingSource;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;->source()Lccsanokio/BufferedSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;Lccsanokio/Source;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;
    .param p2, "arg0"    # Lccsanokio/Source;

    .line 180
    iput-object p1, p0, Lccsancom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody$1;->this$0:Lccsancom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;

    invoke-direct {p0, p2}, Lccsanokio/ForwardingSource;-><init>(Lccsanokio/Source;)V

    return-void
.end method


# virtual methods
.method public read(Lccsanokio/Buffer;J)J
    .locals 2
    .param p1, "sink"    # Lccsanokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lccsanokio/ForwardingSource;->read(Lccsanokio/Buffer;J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lccsancom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody$1;->this$0:Lccsancom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;

    iput-object v0, v1, Lccsancom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;->thrownException:Ljava/io/IOException;

    .line 187
    throw v0
.end method
