.class final Lccsancom/mbridge/msdk/thrid/okio/Okio$2;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lccsancom/mbridge/msdk/thrid/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/thrid/okio/Okio;->source(Ljava/io/InputStream;Lccsancom/mbridge/msdk/thrid/okio/Timeout;)Lccsancom/mbridge/msdk/thrid/okio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$in:Ljava/io/InputStream;

.field final synthetic val$timeout:Lccsancom/mbridge/msdk/thrid/okio/Timeout;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okio/Timeout;Ljava/io/InputStream;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okio/Okio$2;->val$timeout:Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    iput-object p2, p0, Lccsancom/mbridge/msdk/thrid/okio/Okio$2;->val$in:Ljava/io/InputStream;

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

    .line 151
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/Okio$2;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 152
    return-void
.end method

.method public read(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)J
    .locals 7
    .param p1, "sink"    # Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    .line 134
    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 136
    :cond_0
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/Okio$2;->val$timeout:Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/Timeout;->throwIfReached()V

    .line 137
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->writableSegment(I)Lccsancom/mbridge/msdk/thrid/okio/Segment;

    move-result-object v0

    .line 138
    .local v0, "tail":Lccsancom/mbridge/msdk/thrid/okio/Segment;
    iget v1, v0, Lccsancom/mbridge/msdk/thrid/okio/Segment;->limit:I

    rsub-int v1, v1, 0x2000

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 139
    .local v2, "maxToCopy":I
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/Okio$2;->val$in:Ljava/io/InputStream;

    iget-object v3, v0, Lccsancom/mbridge/msdk/thrid/okio/Segment;->data:[B

    iget v4, v0, Lccsancom/mbridge/msdk/thrid/okio/Segment;->limit:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 140
    .local v1, "bytesRead":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    const-wide/16 v3, -0x1

    return-wide v3

    .line 141
    :cond_1
    iget v3, v0, Lccsancom/mbridge/msdk/thrid/okio/Segment;->limit:I

    add-int/2addr v3, v1

    iput v3, v0, Lccsancom/mbridge/msdk/thrid/okio/Segment;->limit:I

    .line 142
    iget-wide v3, p1, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p1, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size:J
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    int-to-long v3, v1

    return-wide v3

    .line 144
    .end local v0    # "tail":Lccsancom/mbridge/msdk/thrid/okio/Segment;
    .end local v1    # "bytesRead":I
    .end local v2    # "maxToCopy":I
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/AssertionError;
    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 146
    :cond_2
    throw v0

    .line 133
    .end local v0    # "e":Ljava/lang/AssertionError;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Lccsancom/mbridge/msdk/thrid/okio/Timeout;
    .locals 1

    .line 155
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/Okio$2;->val$timeout:Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/Okio$2;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method