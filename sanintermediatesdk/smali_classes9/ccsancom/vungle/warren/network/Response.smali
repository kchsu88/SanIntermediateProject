.class public final Lccsancom/vungle/warren/network/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final body:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final errorBody:Lccsanokhttp3/ResponseBody;

.field private final rawResponse:Lccsanokhttp3/Response;


# direct methods
.method private constructor <init>(Lccsanokhttp3/Response;Ljava/lang/Object;Lccsanokhttp3/ResponseBody;)V
    .locals 0
    .param p1, "rawResponse"    # Lccsanokhttp3/Response;
    .param p3, "errorBody"    # Lccsanokhttp3/ResponseBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanokhttp3/Response;",
            "TT;",
            "Lccsanokhttp3/ResponseBody;",
            ")V"
        }
    .end annotation

    .line 78
    .local p0, "this":Lccsancom/vungle/warren/network/Response;, "Lccsancom/vungle/warren/network/Response<TT;>;"
    .local p2, "body":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lccsancom/vungle/warren/network/Response;->rawResponse:Lccsanokhttp3/Response;

    .line 80
    iput-object p2, p0, Lccsancom/vungle/warren/network/Response;->body:Ljava/lang/Object;

    .line 81
    iput-object p3, p0, Lccsancom/vungle/warren/network/Response;->errorBody:Lccsanokhttp3/ResponseBody;

    .line 82
    return-void
.end method

.method public static error(ILccsanokhttp3/ResponseBody;)Lccsancom/vungle/warren/network/Response;
    .locals 3
    .param p0, "code"    # I
    .param p1, "body"    # Lccsanokhttp3/ResponseBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lccsanokhttp3/ResponseBody;",
            ")",
            "Lccsancom/vungle/warren/network/Response<",
            "TT;>;"
        }
    .end annotation

    .line 56
    const/16 v0, 0x190

    if-lt p0, v0, :cond_0

    .line 57
    new-instance v0, Lccsanokhttp3/Response$Builder;

    invoke-direct {v0}, Lccsanokhttp3/Response$Builder;-><init>()V

    .line 58
    invoke-virtual {v0, p0}, Lccsanokhttp3/Response$Builder;->code(I)Lccsanokhttp3/Response$Builder;

    move-result-object v0

    .line 59
    const-string v1, "Response.error()"

    invoke-virtual {v0, v1}, Lccsanokhttp3/Response$Builder;->message(Ljava/lang/String;)Lccsanokhttp3/Response$Builder;

    move-result-object v0

    sget-object v1, Lccsanokhttp3/Protocol;->HTTP_1_1:Lccsanokhttp3/Protocol;

    .line 60
    invoke-virtual {v0, v1}, Lccsanokhttp3/Response$Builder;->protocol(Lccsanokhttp3/Protocol;)Lccsanokhttp3/Response$Builder;

    move-result-object v0

    new-instance v1, Lccsanokhttp3/Request$Builder;

    invoke-direct {v1}, Lccsanokhttp3/Request$Builder;-><init>()V

    .line 61
    const-string v2, "http://localhost/"

    invoke-virtual {v1, v2}, Lccsanokhttp3/Request$Builder;->url(Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lccsanokhttp3/Request$Builder;->build()Lccsanokhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanokhttp3/Response$Builder;->request(Lccsanokhttp3/Request;)Lccsanokhttp3/Response$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lccsanokhttp3/Response$Builder;->build()Lccsanokhttp3/Response;

    move-result-object v0

    .line 57
    invoke-static {p1, v0}, Lccsancom/vungle/warren/network/Response;->error(Lccsanokhttp3/ResponseBody;Lccsanokhttp3/Response;)Lccsancom/vungle/warren/network/Response;

    move-result-object v0

    return-object v0

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 400: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static error(Lccsanokhttp3/ResponseBody;Lccsanokhttp3/Response;)Lccsancom/vungle/warren/network/Response;
    .locals 2
    .param p0, "body"    # Lccsanokhttp3/ResponseBody;
    .param p1, "rawResponse"    # Lccsanokhttp3/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsanokhttp3/ResponseBody;",
            "Lccsanokhttp3/Response;",
            ")",
            "Lccsancom/vungle/warren/network/Response<",
            "TT;>;"
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Lccsanokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lccsancom/vungle/warren/network/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lccsancom/vungle/warren/network/Response;-><init>(Lccsanokhttp3/Response;Ljava/lang/Object;Lccsanokhttp3/ResponseBody;)V

    return-object v0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rawResponse should not be successful response"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static success(Ljava/lang/Object;)Lccsancom/vungle/warren/network/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lccsancom/vungle/warren/network/Response<",
            "TT;>;"
        }
    .end annotation

    .line 32
    .local p0, "body":Ljava/lang/Object;, "TT;"
    new-instance v0, Lccsanokhttp3/Response$Builder;

    invoke-direct {v0}, Lccsanokhttp3/Response$Builder;-><init>()V

    .line 33
    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lccsanokhttp3/Response$Builder;->code(I)Lccsanokhttp3/Response$Builder;

    move-result-object v0

    .line 34
    const-string v1, "OK"

    invoke-virtual {v0, v1}, Lccsanokhttp3/Response$Builder;->message(Ljava/lang/String;)Lccsanokhttp3/Response$Builder;

    move-result-object v0

    sget-object v1, Lccsanokhttp3/Protocol;->HTTP_1_1:Lccsanokhttp3/Protocol;

    .line 35
    invoke-virtual {v0, v1}, Lccsanokhttp3/Response$Builder;->protocol(Lccsanokhttp3/Protocol;)Lccsanokhttp3/Response$Builder;

    move-result-object v0

    new-instance v1, Lccsanokhttp3/Request$Builder;

    invoke-direct {v1}, Lccsanokhttp3/Request$Builder;-><init>()V

    .line 36
    const-string v2, "http://localhost/"

    invoke-virtual {v1, v2}, Lccsanokhttp3/Request$Builder;->url(Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lccsanokhttp3/Request$Builder;->build()Lccsanokhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanokhttp3/Response$Builder;->request(Lccsanokhttp3/Request;)Lccsanokhttp3/Response$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lccsanokhttp3/Response$Builder;->build()Lccsanokhttp3/Response;

    move-result-object v0

    .line 32
    invoke-static {p0, v0}, Lccsancom/vungle/warren/network/Response;->success(Ljava/lang/Object;Lccsanokhttp3/Response;)Lccsancom/vungle/warren/network/Response;

    move-result-object v0

    return-object v0
.end method

.method public static success(Ljava/lang/Object;Lccsanokhttp3/Response;)Lccsancom/vungle/warren/network/Response;
    .locals 2
    .param p1, "rawResponse"    # Lccsanokhttp3/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lccsanokhttp3/Response;",
            ")",
            "Lccsancom/vungle/warren/network/Response<",
            "TT;>;"
        }
    .end annotation

    .line 45
    .local p0, "body":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Lccsanokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Lccsancom/vungle/warren/network/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lccsancom/vungle/warren/network/Response;-><init>(Lccsanokhttp3/Response;Ljava/lang/Object;Lccsanokhttp3/ResponseBody;)V

    return-object v0

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rawResponse must be successful response"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public body()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lccsancom/vungle/warren/network/Response;, "Lccsancom/vungle/warren/network/Response<TT;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/network/Response;->body:Ljava/lang/Object;

    return-object v0
.end method

.method public code()I
    .locals 1

    .line 91
    .local p0, "this":Lccsancom/vungle/warren/network/Response;, "Lccsancom/vungle/warren/network/Response<TT;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/network/Response;->rawResponse:Lccsanokhttp3/Response;

    invoke-virtual {v0}, Lccsanokhttp3/Response;->code()I

    move-result v0

    return v0
.end method

.method public errorBody()Lccsanokhttp3/ResponseBody;
    .locals 1

    .line 116
    .local p0, "this":Lccsancom/vungle/warren/network/Response;, "Lccsancom/vungle/warren/network/Response<TT;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/network/Response;->errorBody:Lccsanokhttp3/ResponseBody;

    return-object v0
.end method

.method public headers()Lccsanokhttp3/Headers;
    .locals 1

    .line 101
    .local p0, "this":Lccsancom/vungle/warren/network/Response;, "Lccsancom/vungle/warren/network/Response<TT;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/network/Response;->rawResponse:Lccsanokhttp3/Response;

    invoke-virtual {v0}, Lccsanokhttp3/Response;->headers()Lccsanokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 1

    .line 106
    .local p0, "this":Lccsancom/vungle/warren/network/Response;, "Lccsancom/vungle/warren/network/Response<TT;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/network/Response;->rawResponse:Lccsanokhttp3/Response;

    invoke-virtual {v0}, Lccsanokhttp3/Response;->isSuccessful()Z

    move-result v0

    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .line 96
    .local p0, "this":Lccsancom/vungle/warren/network/Response;, "Lccsancom/vungle/warren/network/Response<TT;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/network/Response;->rawResponse:Lccsanokhttp3/Response;

    invoke-virtual {v0}, Lccsanokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public raw()Lccsanokhttp3/Response;
    .locals 1

    .line 86
    .local p0, "this":Lccsancom/vungle/warren/network/Response;, "Lccsancom/vungle/warren/network/Response<TT;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/network/Response;->rawResponse:Lccsanokhttp3/Response;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 120
    .local p0, "this":Lccsancom/vungle/warren/network/Response;, "Lccsancom/vungle/warren/network/Response<TT;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/network/Response;->rawResponse:Lccsanokhttp3/Response;

    invoke-virtual {v0}, Lccsanokhttp3/Response;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
