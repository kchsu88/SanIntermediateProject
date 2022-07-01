.class public final Lccsancom/mbridge/msdk/thrid/okhttp/MultipartBody$Part;
.super Ljava/lang/Object;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/MultipartBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Part"
.end annotation


# instance fields
.field final body:Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;

.field final headers:Lccsancom/mbridge/msdk/thrid/okhttp/Headers;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/Headers;Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;)V
    .locals 0
    .param p1, "headers"    # Lccsancom/mbridge/msdk/thrid/okhttp/Headers;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "body"    # Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/MultipartBody$Part;->headers:Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    .line 271
    iput-object p2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/MultipartBody$Part;->body:Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;

    .line 272
    return-void
.end method

.method public static create(Lccsancom/mbridge/msdk/thrid/okhttp/Headers;Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;)Lccsancom/mbridge/msdk/thrid/okhttp/MultipartBody$Part;
    .locals 2
    .param p0, "headers"    # Lccsancom/mbridge/msdk/thrid/okhttp/Headers;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "body"    # Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;

    .line 231
    if-eqz p1, :cond_4

    .line 234
    if-eqz p0, :cond_1

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected header: Content-Type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_1
    :goto_0
    if-eqz p0, :cond_3

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 238
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected header: Content-Length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_3
    :goto_1
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/MultipartBody$Part;

    invoke-direct {v0, p0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/MultipartBody$Part;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/Headers;Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;)V

    return-object v0

    .line 232
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "body == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;)Lccsancom/mbridge/msdk/thrid/okhttp/MultipartBody$Part;
    .locals 1
    .param p0, "body"    # Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;

    .line 227
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/MultipartBody$Part;->create(Lccsancom/mbridge/msdk/thrid/okhttp/Headers;Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;)Lccsancom/mbridge/msdk/thrid/okhttp/MultipartBody$Part;

    move-result-object v0

    return-object v0
.end method

.method public static createFormData(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/MultipartBody$Part;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 244
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;->create(Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;)Lccsancom/mbridge/msdk/thrid/okhttp/MultipartBody$Part;

    move-result-object v0

    return-object v0
.end method

.method public static createFormData(Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;)Lccsancom/mbridge/msdk/thrid/okhttp/MultipartBody$Part;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "body"    # Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;

    .line 248
    if-eqz p0, :cond_1

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "form-data; name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, "disposition":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/MultipartBody;->appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    if-eqz p1, :cond_0

    .line 255
    const-string v1, "; filename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/MultipartBody;->appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_0
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;-><init>()V

    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Content-Disposition"

    invoke-virtual {v1, v3, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;->addUnsafeNonAscii(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    move-result-object v1

    .line 261
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    move-result-object v1

    .line 263
    .local v1, "headers":Lccsancom/mbridge/msdk/thrid/okhttp/Headers;
    invoke-static {v1, p2}, Lccsancom/mbridge/msdk/thrid/okhttp/MultipartBody$Part;->create(Lccsancom/mbridge/msdk/thrid/okhttp/Headers;Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;)Lccsancom/mbridge/msdk/thrid/okhttp/MultipartBody$Part;

    move-result-object v2

    return-object v2

    .line 249
    .end local v0    # "disposition":Ljava/lang/StringBuilder;
    .end local v1    # "headers":Lccsancom/mbridge/msdk/thrid/okhttp/Headers;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public body()Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;
    .locals 1

    .line 279
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/MultipartBody$Part;->body:Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;

    return-object v0
.end method

.method public headers()Lccsancom/mbridge/msdk/thrid/okhttp/Headers;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 275
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/MultipartBody$Part;->headers:Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    return-object v0
.end method
