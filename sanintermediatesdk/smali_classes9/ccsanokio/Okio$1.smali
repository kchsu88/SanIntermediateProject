.class final Lccsanokio/Okio$1;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lccsanokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanokio/Okio;->sink(Ljava/io/OutputStream;Lccsanokio/Timeout;)Lccsanokio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$out:Ljava/io/OutputStream;

.field final synthetic val$timeout:Lccsanokio/Timeout;


# direct methods
.method constructor <init>(Lccsanokio/Timeout;Ljava/io/OutputStream;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lccsanokio/Okio$1;->val$timeout:Lccsanokio/Timeout;

    iput-object p2, p0, Lccsanokio/Okio$1;->val$out:Ljava/io/OutputStream;

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

    .line 97
    iget-object v0, p0, Lccsanokio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 98
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lccsanokio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 94
    return-void
.end method

.method public timeout()Lccsanokio/Timeout;
    .locals 1

    .line 101
    iget-object v0, p0, Lccsanokio/Okio$1;->val$timeout:Lccsanokio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanokio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lccsanokio/Buffer;J)V
    .locals 7
    .param p1, "source"    # Lccsanokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-wide v0, p1, Lccsanokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lccsanokio/Util;->checkOffsetAndCount(JJJ)V

    .line 75
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 76
    iget-object v0, p0, Lccsanokio/Okio$1;->val$timeout:Lccsanokio/Timeout;

    invoke-virtual {v0}, Lccsanokio/Timeout;->throwIfReached()V

    .line 77
    iget-object v0, p1, Lccsanokio/Buffer;->head:Lccsanokio/Segment;

    .line 78
    .local v0, "head":Lccsanokio/Segment;
    iget v1, v0, Lccsanokio/Segment;->limit:I

    iget v2, v0, Lccsanokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 79
    .local v2, "toCopy":I
    iget-object v1, p0, Lccsanokio/Okio$1;->val$out:Ljava/io/OutputStream;

    iget-object v3, v0, Lccsanokio/Segment;->data:[B

    iget v4, v0, Lccsanokio/Segment;->pos:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 81
    iget v1, v0, Lccsanokio/Segment;->pos:I

    add-int/2addr v1, v2

    iput v1, v0, Lccsanokio/Segment;->pos:I

    .line 82
    int-to-long v3, v2

    sub-long/2addr p2, v3

    .line 83
    iget-wide v3, p1, Lccsanokio/Buffer;->size:J

    int-to-long v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p1, Lccsanokio/Buffer;->size:J

    .line 85
    iget v1, v0, Lccsanokio/Segment;->pos:I

    iget v3, v0, Lccsanokio/Segment;->limit:I

    if-ne v1, v3, :cond_0

    .line 86
    invoke-virtual {v0}, Lccsanokio/Segment;->pop()Lccsanokio/Segment;

    move-result-object v1

    iput-object v1, p1, Lccsanokio/Buffer;->head:Lccsanokio/Segment;

    .line 87
    invoke-static {v0}, Lccsanokio/SegmentPool;->recycle(Lccsanokio/Segment;)V

    .line 89
    .end local v0    # "head":Lccsanokio/Segment;
    .end local v2    # "toCopy":I
    :cond_0
    goto :goto_0

    .line 90
    :cond_1
    return-void
.end method
