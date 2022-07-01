.class Lccsanokhttp3/ResponseBody$1;
.super Lccsanokhttp3/ResponseBody;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanokhttp3/ResponseBody;->create(Lccsanokhttp3/MediaType;JLccsanokio/BufferedSource;)Lccsanokhttp3/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Lccsanokio/BufferedSource;

.field final synthetic val$contentLength:J

.field final synthetic val$contentType:Lccsanokhttp3/MediaType;


# direct methods
.method constructor <init>(Lccsanokhttp3/MediaType;JLccsanokio/BufferedSource;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lccsanokhttp3/ResponseBody$1;->val$contentType:Lccsanokhttp3/MediaType;

    iput-wide p2, p0, Lccsanokhttp3/ResponseBody$1;->val$contentLength:J

    iput-object p4, p0, Lccsanokhttp3/ResponseBody$1;->val$content:Lccsanokio/BufferedSource;

    invoke-direct {p0}, Lccsanokhttp3/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 234
    iget-wide v0, p0, Lccsanokhttp3/ResponseBody$1;->val$contentLength:J

    return-wide v0
.end method

.method public contentType()Lccsanokhttp3/MediaType;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 230
    iget-object v0, p0, Lccsanokhttp3/ResponseBody$1;->val$contentType:Lccsanokhttp3/MediaType;

    return-object v0
.end method

.method public source()Lccsanokio/BufferedSource;
    .locals 1

    .line 238
    iget-object v0, p0, Lccsanokhttp3/ResponseBody$1;->val$content:Lccsanokio/BufferedSource;

    return-object v0
.end method
