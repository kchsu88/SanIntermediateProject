.class Lccsanokhttp3/internal/http2/Http2Connection$1;
.super Lccsanokhttp3/internal/NamedRunnable;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanokhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILccsanokhttp3/internal/http2/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanokhttp3/internal/http2/Http2Connection;

.field final synthetic val$errorCode:Lccsanokhttp3/internal/http2/ErrorCode;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lccsanokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILccsanokhttp3/internal/http2/ErrorCode;)V
    .locals 0
    .param p1, "this$0"    # Lccsanokhttp3/internal/http2/Http2Connection;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 334
    iput-object p1, p0, Lccsanokhttp3/internal/http2/Http2Connection$1;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    iput p4, p0, Lccsanokhttp3/internal/http2/Http2Connection$1;->val$streamId:I

    iput-object p5, p0, Lccsanokhttp3/internal/http2/Http2Connection$1;->val$errorCode:Lccsanokhttp3/internal/http2/ErrorCode;

    invoke-direct {p0, p2, p3}, Lccsanokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 337
    :try_start_0
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Connection$1;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    iget v1, p0, Lccsanokhttp3/internal/http2/Http2Connection$1;->val$streamId:I

    iget-object v2, p0, Lccsanokhttp3/internal/http2/Http2Connection$1;->val$errorCode:Lccsanokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1, v2}, Lccsanokhttp3/internal/http2/Http2Connection;->writeSynReset(ILccsanokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lccsanokhttp3/internal/http2/Http2Connection$1;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    invoke-static {v1, v0}, Lccsanokhttp3/internal/http2/Http2Connection;->access$000(Lccsanokhttp3/internal/http2/Http2Connection;Ljava/io/IOException;)V

    .line 341
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
