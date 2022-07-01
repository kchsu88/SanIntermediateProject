.class public final Lccsanokhttp3/MultipartBody$Builder;
.super Ljava/lang/Object;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokhttp3/MultipartBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final boundary:Lccsanokio/ByteString;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lccsanokhttp3/MediaType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 288
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsanokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "boundary"    # Ljava/lang/String;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    sget-object v0, Lccsanokhttp3/MultipartBody;->MIXED:Lccsanokhttp3/MediaType;

    iput-object v0, p0, Lccsanokhttp3/MultipartBody$Builder;->type:Lccsanokhttp3/MediaType;

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsanokhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    .line 292
    invoke-static {p1}, Lccsanokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lccsanokio/ByteString;

    move-result-object v0

    iput-object v0, p0, Lccsanokhttp3/MultipartBody$Builder;->boundary:Lccsanokio/ByteString;

    .line 293
    return-void
.end method


# virtual methods
.method public addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/MultipartBody$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 322
    invoke-static {p1, p2}, Lccsanokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/MultipartBody$Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanokhttp3/MultipartBody$Builder;->addPart(Lccsanokhttp3/MultipartBody$Part;)Lccsanokhttp3/MultipartBody$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lccsanokhttp3/RequestBody;)Lccsanokhttp3/MultipartBody$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "body"    # Lccsanokhttp3/RequestBody;

    .line 327
    invoke-static {p1, p2, p3}, Lccsanokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lccsanokhttp3/RequestBody;)Lccsanokhttp3/MultipartBody$Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanokhttp3/MultipartBody$Builder;->addPart(Lccsanokhttp3/MultipartBody$Part;)Lccsanokhttp3/MultipartBody$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addPart(Lccsanokhttp3/Headers;Lccsanokhttp3/RequestBody;)Lccsanokhttp3/MultipartBody$Builder;
    .locals 1
    .param p1, "headers"    # Lccsanokhttp3/Headers;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "body"    # Lccsanokhttp3/RequestBody;

    .line 317
    invoke-static {p1, p2}, Lccsanokhttp3/MultipartBody$Part;->create(Lccsanokhttp3/Headers;Lccsanokhttp3/RequestBody;)Lccsanokhttp3/MultipartBody$Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanokhttp3/MultipartBody$Builder;->addPart(Lccsanokhttp3/MultipartBody$Part;)Lccsanokhttp3/MultipartBody$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addPart(Lccsanokhttp3/MultipartBody$Part;)Lccsanokhttp3/MultipartBody$Builder;
    .locals 2
    .param p1, "part"    # Lccsanokhttp3/MultipartBody$Part;

    .line 332
    if-eqz p1, :cond_0

    .line 333
    iget-object v0, p0, Lccsanokhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    return-object p0

    .line 332
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "part == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addPart(Lccsanokhttp3/RequestBody;)Lccsanokhttp3/MultipartBody$Builder;
    .locals 1
    .param p1, "body"    # Lccsanokhttp3/RequestBody;

    .line 312
    invoke-static {p1}, Lccsanokhttp3/MultipartBody$Part;->create(Lccsanokhttp3/RequestBody;)Lccsanokhttp3/MultipartBody$Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanokhttp3/MultipartBody$Builder;->addPart(Lccsanokhttp3/MultipartBody$Part;)Lccsanokhttp3/MultipartBody$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lccsanokhttp3/MultipartBody;
    .locals 4

    .line 339
    iget-object v0, p0, Lccsanokhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Lccsanokhttp3/MultipartBody;

    iget-object v1, p0, Lccsanokhttp3/MultipartBody$Builder;->boundary:Lccsanokio/ByteString;

    iget-object v2, p0, Lccsanokhttp3/MultipartBody$Builder;->type:Lccsanokhttp3/MediaType;

    iget-object v3, p0, Lccsanokhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lccsanokhttp3/MultipartBody;-><init>(Lccsanokio/ByteString;Lccsanokhttp3/MediaType;Ljava/util/List;)V

    return-object v0

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multipart body must have at least one part."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setType(Lccsanokhttp3/MediaType;)Lccsanokhttp3/MultipartBody$Builder;
    .locals 3
    .param p1, "type"    # Lccsanokhttp3/MediaType;

    .line 300
    if-eqz p1, :cond_1

    .line 303
    invoke-virtual {p1}, Lccsanokhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iput-object p1, p0, Lccsanokhttp3/MultipartBody$Builder;->type:Lccsanokhttp3/MediaType;

    .line 307
    return-object p0

    .line 304
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
