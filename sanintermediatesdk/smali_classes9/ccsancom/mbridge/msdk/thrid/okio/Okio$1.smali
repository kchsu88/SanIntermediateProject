.class final Lccsancom/mbridge/msdk/thrid/okio/Okio$1;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lccsancom/mbridge/msdk/thrid/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/thrid/okio/Okio;->sink(Ljava/io/OutputStream;Lccsancom/mbridge/msdk/thrid/okio/Timeout;)Lccsancom/mbridge/msdk/thrid/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$out:Ljava/io/OutputStream;

.field final synthetic val$timeout:Lccsancom/mbridge/msdk/thrid/okio/Timeout;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okio/Timeout;Ljava/io/OutputStream;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okio/Okio$1;->val$timeout:Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    iput-object p2, p0, Lccsancom/mbridge/msdk/thrid/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 97
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 93
    return-void
.end method

.method public timeout()Lccsancom/mbridge/msdk/thrid/okio/Timeout;
    .locals 1

    .line 100
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/Okio$1;->val$timeout:Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)V
    .locals 7
    .param p1, "source"    # Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-wide v0, p1, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lccsancom/mbridge/msdk/thrid/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 74
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 75
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/Okio$1;->val$timeout:Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/Timeout;->throwIfReached()V

    .line 76
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->head:Lccsancom/mbridge/msdk/thrid/okio/Segment;

    .line 77
    .local v0, "head":Lccsancom/mbridge/msdk/thrid/okio/Segment;
    iget v1, v0, Lccsancom/mbridge/msdk/thrid/okio/Segment;->limit:I

    iget v2, v0, Lccsancom/mbridge/msdk/thrid/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 78
    .local v2, "toCopy":I
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    iget-object v3, v0, Lccsancom/mbridge/msdk/thrid/okio/Segment;->data:[B

    iget v4, v0, Lccsancom/mbridge/msdk/thrid/okio/Segment;->pos:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 80
    iget v1, v0, Lccsancom/mbridge/msdk/thrid/okio/Segment;->pos:I

    add-int/2addr v1, v2

    iput v1, v0, Lccsancom/mbridge/msdk/thrid/okio/Segment;->pos:I

    .line 81
    int-to-long v3, v2

    sub-long/2addr p2, v3

    .line 82
    iget-wide v3, p1, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size:J

    int-to-long v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p1, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size:J

    .line 84
    iget v1, v0, Lccsancom/mbridge/msdk/thrid/okio/Segment;->pos:I

    iget v3, v0, Lccsancom/mbridge/msdk/thrid/okio/Segment;->limit:I

    if-ne v1, v3, :cond_0

    .line 85
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/Segment;->pop()Lccsancom/mbridge/msdk/thrid/okio/Segment;

    move-result-object v1

    iput-object v1, p1, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->head:Lccsancom/mbridge/msdk/thrid/okio/Segment;

    .line 86
    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okio/SegmentPool;->recycle(Lccsancom/mbridge/msdk/thrid/okio/Segment;)V

    .line 88
    .end local v0    # "head":Lccsancom/mbridge/msdk/thrid/okio/Segment;
    .end local v2    # "toCopy":I
    :cond_0
    goto :goto_0

    .line 89
    :cond_1
    return-void
.end method
