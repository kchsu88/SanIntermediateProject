.class Lccsancom/vungle/warren/network/OkHttpCall$1;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Lccsanokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/network/OkHttpCall;->enqueue(Lccsancom/vungle/warren/network/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/network/OkHttpCall;

.field final synthetic val$callback:Lccsancom/vungle/warren/network/Callback;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/network/OkHttpCall;Lccsancom/vungle/warren/network/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/network/OkHttpCall;

    .line 59
    .local p0, "this":Lccsancom/vungle/warren/network/OkHttpCall$1;, "Lccsancom/vungle/warren/network/OkHttpCall$1;"
    iput-object p1, p0, Lccsancom/vungle/warren/network/OkHttpCall$1;->this$0:Lccsancom/vungle/warren/network/OkHttpCall;

    iput-object p2, p0, Lccsancom/vungle/warren/network/OkHttpCall$1;->val$callback:Lccsancom/vungle/warren/network/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private callFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 84
    .local p0, "this":Lccsancom/vungle/warren/network/OkHttpCall$1;, "Lccsancom/vungle/warren/network/OkHttpCall$1;"
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/network/OkHttpCall$1;->val$callback:Lccsancom/vungle/warren/network/Callback;

    iget-object v1, p0, Lccsancom/vungle/warren/network/OkHttpCall$1;->this$0:Lccsancom/vungle/warren/network/OkHttpCall;

    invoke-interface {v0, v1, p1}, Lccsancom/vungle/warren/network/Callback;->onFailure(Lccsancom/vungle/warren/network/Call;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lccsancom/vungle/warren/network/OkHttpCall;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error on executing callback"

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method


# virtual methods
.method public onFailure(Lccsanokhttp3/Call;Ljava/io/IOException;)V
    .locals 0
    .param p1, "call"    # Lccsanokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .line 79
    .local p0, "this":Lccsancom/vungle/warren/network/OkHttpCall$1;, "Lccsancom/vungle/warren/network/OkHttpCall$1;"
    invoke-direct {p0, p2}, Lccsancom/vungle/warren/network/OkHttpCall$1;->callFailure(Ljava/lang/Throwable;)V

    .line 80
    return-void
.end method

.method public onResponse(Lccsanokhttp3/Call;Lccsanokhttp3/Response;)V
    .locals 4
    .param p1, "call"    # Lccsanokhttp3/Call;
    .param p2, "rawResponse"    # Lccsanokhttp3/Response;

    .line 64
    .local p0, "this":Lccsancom/vungle/warren/network/OkHttpCall$1;, "Lccsancom/vungle/warren/network/OkHttpCall$1;"
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/network/OkHttpCall$1;->this$0:Lccsancom/vungle/warren/network/OkHttpCall;

    invoke-static {v0}, Lccsancom/vungle/warren/network/OkHttpCall;->access$000(Lccsancom/vungle/warren/network/OkHttpCall;)Lccsancom/vungle/warren/network/converters/Converter;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lccsancom/vungle/warren/network/OkHttpCall;->access$100(Lccsancom/vungle/warren/network/OkHttpCall;Lccsanokhttp3/Response;Lccsancom/vungle/warren/network/converters/Converter;)Lccsancom/vungle/warren/network/Response;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    .local v0, "response":Lccsancom/vungle/warren/network/Response;, "Lccsancom/vungle/warren/network/Response<TT;>;"
    nop

    .line 71
    :try_start_1
    iget-object v1, p0, Lccsancom/vungle/warren/network/OkHttpCall$1;->val$callback:Lccsancom/vungle/warren/network/Callback;

    iget-object v2, p0, Lccsancom/vungle/warren/network/OkHttpCall$1;->this$0:Lccsancom/vungle/warren/network/OkHttpCall;

    invoke-interface {v1, v2, v0}, Lccsancom/vungle/warren/network/Callback;->onResponse(Lccsancom/vungle/warren/network/Call;Lccsancom/vungle/warren/network/Response;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    goto :goto_0

    .line 72
    :catchall_0
    move-exception v1

    .line 73
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lccsancom/vungle/warren/network/OkHttpCall;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error on excuting callback"

    invoke-static {v2, v3, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 65
    .end local v0    # "response":Lccsancom/vungle/warren/network/Response;, "Lccsancom/vungle/warren/network/Response<TT;>;"
    :catchall_1
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lccsancom/vungle/warren/network/OkHttpCall$1;->callFailure(Ljava/lang/Throwable;)V

    .line 67
    return-void
.end method
