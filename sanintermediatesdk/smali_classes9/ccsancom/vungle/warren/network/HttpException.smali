.class public Lccsancom/vungle/warren/network/HttpException;
.super Ljava/lang/RuntimeException;
.source "HttpException.java"


# instance fields
.field private final code:I

.field private final message:Ljava/lang/String;

.field private final transient response:Lccsancom/vungle/warren/network/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/vungle/warren/network/Response<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/vungle/warren/network/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/vungle/warren/network/Response<",
            "*>;)V"
        }
    .end annotation

    .line 32
    .local p1, "response":Lccsancom/vungle/warren/network/Response;, "Lccsancom/vungle/warren/network/Response<*>;"
    invoke-static {p1}, Lccsancom/vungle/warren/network/HttpException;->getMessage(Lccsancom/vungle/warren/network/Response;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lccsancom/vungle/warren/network/Response;->code()I

    move-result v0

    iput v0, p0, Lccsancom/vungle/warren/network/HttpException;->code:I

    .line 34
    invoke-virtual {p1}, Lccsancom/vungle/warren/network/Response;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/network/HttpException;->message:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lccsancom/vungle/warren/network/HttpException;->response:Lccsancom/vungle/warren/network/Response;

    .line 36
    return-void
.end method

.method private static getMessage(Lccsancom/vungle/warren/network/Response;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/vungle/warren/network/Response<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 24
    .local p0, "response":Lccsancom/vungle/warren/network/Response;, "Lccsancom/vungle/warren/network/Response<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/vungle/warren/network/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/vungle/warren/network/Response;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public code()I
    .locals 1

    .line 42
    iget v0, p0, Lccsancom/vungle/warren/network/HttpException;->code:I

    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lccsancom/vungle/warren/network/HttpException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public response()Lccsancom/vungle/warren/network/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/vungle/warren/network/Response<",
            "*>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lccsancom/vungle/warren/network/HttpException;->response:Lccsancom/vungle/warren/network/Response;

    return-object v0
.end method
