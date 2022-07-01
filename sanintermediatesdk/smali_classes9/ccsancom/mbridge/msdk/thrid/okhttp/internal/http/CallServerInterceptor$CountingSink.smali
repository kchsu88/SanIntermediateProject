.class final Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/CallServerInterceptor$CountingSink;
.super Lccsancom/mbridge/msdk/thrid/okio/ForwardingSink;
.source "CallServerInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/CallServerInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CountingSink"
.end annotation


# instance fields
.field successfulCount:J


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okio/Sink;)V
    .locals 0
    .param p1, "delegate"    # Lccsancom/mbridge/msdk/thrid/okio/Sink;

    .line 145
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/thrid/okio/ForwardingSink;-><init>(Lccsancom/mbridge/msdk/thrid/okio/Sink;)V

    .line 146
    return-void
.end method


# virtual methods
.method public write(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)V
    .locals 2
    .param p1, "source"    # Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-super {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/thrid/okio/ForwardingSink;->write(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)V

    .line 150
    iget-wide v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/CallServerInterceptor$CountingSink;->successfulCount:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/CallServerInterceptor$CountingSink;->successfulCount:J

    .line 151
    return-void
.end method
