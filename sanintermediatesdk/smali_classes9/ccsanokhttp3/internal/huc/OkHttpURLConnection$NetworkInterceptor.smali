.class final Lccsanokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;
.super Ljava/lang/Object;
.source "OkHttpURLConnection.java"

# interfaces
.implements Lccsanokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokhttp3/internal/huc/OkHttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NetworkInterceptor"
.end annotation


# instance fields
.field private proceed:Z

.field final synthetic this$0:Lccsanokhttp3/internal/huc/OkHttpURLConnection;


# direct methods
.method constructor <init>(Lccsanokhttp3/internal/huc/OkHttpURLConnection;)V
    .locals 0
    .param p1, "this$0"    # Lccsanokhttp3/internal/huc/OkHttpURLConnection;

    .line 625
    iput-object p1, p0, Lccsanokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lccsanokhttp3/internal/huc/OkHttpURLConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lccsanokhttp3/Interceptor$Chain;)Lccsanokhttp3/Response;
    .locals 5
    .param p1, "chain"    # Lccsanokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 637
    invoke-interface {p1}, Lccsanokhttp3/Interceptor$Chain;->request()Lccsanokhttp3/Request;

    move-result-object v0

    .line 640
    .local v0, "request":Lccsanokhttp3/Request;
    iget-object v1, p0, Lccsanokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lccsanokhttp3/internal/huc/OkHttpURLConnection;

    iget-object v1, v1, Lccsanokhttp3/internal/huc/OkHttpURLConnection;->urlFilter:Lccsanokhttp3/internal/URLFilter;

    if-eqz v1, :cond_0

    .line 641
    iget-object v1, p0, Lccsanokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lccsanokhttp3/internal/huc/OkHttpURLConnection;

    iget-object v1, v1, Lccsanokhttp3/internal/huc/OkHttpURLConnection;->urlFilter:Lccsanokhttp3/internal/URLFilter;

    invoke-virtual {v0}, Lccsanokhttp3/Request;->url()Lccsanokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lccsanokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object v2

    invoke-interface {v1, v2}, Lccsanokhttp3/internal/URLFilter;->checkURLPermitted(Ljava/net/URL;)V

    .line 644
    :cond_0
    iget-object v1, p0, Lccsanokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lccsanokhttp3/internal/huc/OkHttpURLConnection;

    invoke-static {v1}, Lccsanokhttp3/internal/huc/OkHttpURLConnection;->access$000(Lccsanokhttp3/internal/huc/OkHttpURLConnection;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 645
    :try_start_0
    iget-object v2, p0, Lccsanokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lccsanokhttp3/internal/huc/OkHttpURLConnection;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lccsanokhttp3/internal/huc/OkHttpURLConnection;->connectPending:Z

    .line 646
    iget-object v2, p0, Lccsanokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lccsanokhttp3/internal/huc/OkHttpURLConnection;

    invoke-interface {p1}, Lccsanokhttp3/Interceptor$Chain;->connection()Lccsanokhttp3/Connection;

    move-result-object v3

    invoke-interface {v3}, Lccsanokhttp3/Connection;->route()Lccsanokhttp3/Route;

    move-result-object v3

    invoke-virtual {v3}, Lccsanokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v3

    iput-object v3, v2, Lccsanokhttp3/internal/huc/OkHttpURLConnection;->proxy:Ljava/net/Proxy;

    .line 647
    iget-object v2, p0, Lccsanokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lccsanokhttp3/internal/huc/OkHttpURLConnection;

    invoke-interface {p1}, Lccsanokhttp3/Interceptor$Chain;->connection()Lccsanokhttp3/Connection;

    move-result-object v3

    invoke-interface {v3}, Lccsanokhttp3/Connection;->handshake()Lccsanokhttp3/Handshake;

    move-result-object v3

    iput-object v3, v2, Lccsanokhttp3/internal/huc/OkHttpURLConnection;->handshake:Lccsanokhttp3/Handshake;

    .line 648
    iget-object v2, p0, Lccsanokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lccsanokhttp3/internal/huc/OkHttpURLConnection;

    invoke-static {v2}, Lccsanokhttp3/internal/huc/OkHttpURLConnection;->access$000(Lccsanokhttp3/internal/huc/OkHttpURLConnection;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 651
    :goto_0
    :try_start_1
    iget-boolean v2, p0, Lccsanokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->proceed:Z

    if-nez v2, :cond_1

    .line 652
    iget-object v2, p0, Lccsanokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lccsanokhttp3/internal/huc/OkHttpURLConnection;

    invoke-static {v2}, Lccsanokhttp3/internal/huc/OkHttpURLConnection;->access$000(Lccsanokhttp3/internal/huc/OkHttpURLConnection;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 657
    :cond_1
    nop

    .line 658
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 661
    invoke-virtual {v0}, Lccsanokhttp3/Request;->body()Lccsanokhttp3/RequestBody;

    move-result-object v1

    instance-of v1, v1, Lccsanokhttp3/internal/huc/OutputStreamRequestBody;

    if-eqz v1, :cond_2

    .line 662
    invoke-virtual {v0}, Lccsanokhttp3/Request;->body()Lccsanokhttp3/RequestBody;

    move-result-object v1

    check-cast v1, Lccsanokhttp3/internal/huc/OutputStreamRequestBody;

    .line 663
    .local v1, "requestBody":Lccsanokhttp3/internal/huc/OutputStreamRequestBody;
    invoke-virtual {v1, v0}, Lccsanokhttp3/internal/huc/OutputStreamRequestBody;->prepareToSendRequest(Lccsanokhttp3/Request;)Lccsanokhttp3/Request;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 661
    .end local v1    # "requestBody":Lccsanokhttp3/internal/huc/OutputStreamRequestBody;
    :cond_2
    move-object v2, v0

    .line 666
    .end local v0    # "request":Lccsanokhttp3/Request;
    .local v2, "request":Lccsanokhttp3/Request;
    :goto_1
    invoke-interface {p1, v2}, Lccsanokhttp3/Interceptor$Chain;->proceed(Lccsanokhttp3/Request;)Lccsanokhttp3/Response;

    move-result-object v3

    .line 668
    .local v3, "response":Lccsanokhttp3/Response;
    iget-object v0, p0, Lccsanokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lccsanokhttp3/internal/huc/OkHttpURLConnection;

    invoke-static {v0}, Lccsanokhttp3/internal/huc/OkHttpURLConnection;->access$000(Lccsanokhttp3/internal/huc/OkHttpURLConnection;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 669
    :try_start_3
    iget-object v0, p0, Lccsanokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lccsanokhttp3/internal/huc/OkHttpURLConnection;

    iput-object v3, v0, Lccsanokhttp3/internal/huc/OkHttpURLConnection;->networkResponse:Lccsanokhttp3/Response;

    .line 670
    iget-object v0, p0, Lccsanokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lccsanokhttp3/internal/huc/OkHttpURLConnection;

    invoke-virtual {v3}, Lccsanokhttp3/Response;->request()Lccsanokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lccsanokhttp3/Request;->url()Lccsanokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lccsanokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanokhttp3/internal/huc/OkHttpURLConnection;->access$102(Lccsanokhttp3/internal/huc/OkHttpURLConnection;Ljava/net/URL;)Ljava/net/URL;

    .line 671
    monitor-exit v4

    .line 673
    return-object v3

    .line 671
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 654
    .end local v2    # "request":Lccsanokhttp3/Request;
    .end local v3    # "response":Lccsanokhttp3/Response;
    .restart local v0    # "request":Lccsanokhttp3/Request;
    :catch_0
    move-exception v2

    .line 655
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 656
    new-instance v3, Ljava/io/InterruptedIOException;

    invoke-direct {v3}, Ljava/io/InterruptedIOException;-><init>()V

    .end local v0    # "request":Lccsanokhttp3/Request;
    .end local p1    # "chain":Lccsanokhttp3/Interceptor$Chain;
    throw v3

    .line 658
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "request":Lccsanokhttp3/Request;
    .restart local p1    # "chain":Lccsanokhttp3/Interceptor$Chain;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method

.method public proceed()V
    .locals 2

    .line 630
    iget-object v0, p0, Lccsanokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lccsanokhttp3/internal/huc/OkHttpURLConnection;

    invoke-static {v0}, Lccsanokhttp3/internal/huc/OkHttpURLConnection;->access$000(Lccsanokhttp3/internal/huc/OkHttpURLConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 631
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lccsanokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->proceed:Z

    .line 632
    iget-object v1, p0, Lccsanokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lccsanokhttp3/internal/huc/OkHttpURLConnection;

    invoke-static {v1}, Lccsanokhttp3/internal/huc/OkHttpURLConnection;->access$000(Lccsanokhttp3/internal/huc/OkHttpURLConnection;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 633
    monitor-exit v0

    .line 634
    return-void

    .line 633
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
