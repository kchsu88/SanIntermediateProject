.class Lccsancom/google/common/io/BaseEncoding$2;
.super Lccsancom/google/common/io/ByteSource;
.source "BaseEncoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/io/BaseEncoding;->decodingSource(Lccsancom/google/common/io/CharSource;)Lccsancom/google/common/io/ByteSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/io/BaseEncoding;

.field final synthetic val$encodedSource:Lccsancom/google/common/io/CharSource;


# direct methods
.method constructor <init>(Lccsancom/google/common/io/BaseEncoding;Lccsancom/google/common/io/CharSource;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/io/BaseEncoding;

    .line 251
    iput-object p1, p0, Lccsancom/google/common/io/BaseEncoding$2;->this$0:Lccsancom/google/common/io/BaseEncoding;

    iput-object p2, p0, Lccsancom/google/common/io/BaseEncoding$2;->val$encodedSource:Lccsancom/google/common/io/CharSource;

    invoke-direct {p0}, Lccsancom/google/common/io/ByteSource;-><init>()V

    return-void
.end method


# virtual methods
.method public openStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lccsancom/google/common/io/BaseEncoding$2;->this$0:Lccsancom/google/common/io/BaseEncoding;

    iget-object v1, p0, Lccsancom/google/common/io/BaseEncoding$2;->val$encodedSource:Lccsancom/google/common/io/CharSource;

    invoke-virtual {v1}, Lccsancom/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/io/BaseEncoding;->decodingStream(Ljava/io/Reader;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
