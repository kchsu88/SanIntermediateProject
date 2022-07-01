.class Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask$1;
.super Ljava/lang/Object;
.source "OkHTTPFileDownloadTask.java"

# interfaces
.implements Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->run()Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask$1;->this$0:Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;)Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-interface {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;->request()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v0

    .line 74
    invoke-interface {p1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;->proceed(Lccsancom/mbridge/msdk/thrid/okhttp/Request;)Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object p1

    .line 75
    return-object p1
.end method
