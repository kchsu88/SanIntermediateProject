.class public Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private ageSeconds:I

.field final cacheResponse:Lccsancom/mbridge/msdk/thrid/okhttp/Response;

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private lastModified:Ljava/util/Date;

.field private lastModifiedString:Ljava/lang/String;

.field final nowMillis:J

.field private receivedResponseMillis:J

.field final request:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private servedDateString:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLccsancom/mbridge/msdk/thrid/okhttp/Request;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V
    .locals 7
    .param p1, "nowMillis"    # J
    .param p3, "request"    # Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .param p4, "cacheResponse"    # Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    .line 159
    iput-wide p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->nowMillis:J

    .line 160
    iput-object p3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->request:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    .line 161
    iput-object p4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->cacheResponse:Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    .line 163
    if-eqz p4, :cond_5

    .line 164
    invoke-virtual {p4}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->sentRequestAtMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    .line 165
    invoke-virtual {p4}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->receivedResponseAtMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    .line 166
    invoke-virtual {p4}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->headers()Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    move-result-object v1

    .line 167
    .local v1, "headers":Lccsancom/mbridge/msdk/thrid/okhttp/Headers;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_5

    .line 168
    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "fieldName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    .line 170
    .local v5, "value":Ljava/lang/String;
    const-string v6, "Date"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 171
    invoke-static {v5}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    iput-object v6, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 172
    iput-object v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    goto :goto_1

    .line 173
    :cond_0
    const-string v6, "Expires"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 174
    invoke-static {v5}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    iput-object v6, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    goto :goto_1

    .line 175
    :cond_1
    const-string v6, "Last-Modified"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 176
    invoke-static {v5}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    iput-object v6, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    .line 177
    iput-object v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    goto :goto_1

    .line 178
    :cond_2
    const-string v6, "ETag"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 179
    iput-object v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    goto :goto_1

    .line 180
    :cond_3
    const-string v6, "Age"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 181
    invoke-static {v5, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    .line 167
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    .end local v1    # "headers":Lccsancom/mbridge/msdk/thrid/okhttp/Headers;
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_5
    return-void
.end method

.method private cacheResponseAge()J
    .locals 10

    .line 318
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    .line 319
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    move-wide v0, v1

    .line 321
    .local v0, "apparentReceivedAge":J
    iget v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    int-to-long v3, v3

    .line 322
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_1

    :cond_1
    move-wide v2, v0

    .line 324
    .local v2, "receivedAge":J
    :goto_1
    iget-wide v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-wide v6, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    sub-long v6, v4, v6

    .line 325
    .local v6, "responseDuration":J
    iget-wide v8, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->nowMillis:J

    sub-long/2addr v8, v4

    .line 326
    .local v8, "residentDuration":J
    add-long v4, v2, v6

    add-long/2addr v4, v8

    return-wide v4
.end method

.method private computeFreshnessLifetime()J
    .locals 8

    .line 289
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->cacheResponse:Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->cacheControl()Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;

    move-result-object v0

    .line 290
    .local v0, "responseCaching":Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 291
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    return-wide v1

    .line 292
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_3

    .line 293
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 294
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    .line 296
    .local v4, "servedMillis":J
    :goto_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 297
    .local v6, "delta":J
    cmp-long v1, v6, v2

    if-lez v1, :cond_2

    move-wide v2, v6

    :cond_2
    return-wide v2

    .line 298
    .end local v4    # "servedMillis":J
    .end local v6    # "delta":J
    :cond_3
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->cacheResponse:Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    .line 299
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->request()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->query()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    .line 304
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v1, :cond_4

    .line 305
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_1

    :cond_4
    iget-wide v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    .line 307
    .restart local v4    # "servedMillis":J
    :goto_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v6, v4, v6

    .line 308
    .restart local v6    # "delta":J
    cmp-long v1, v6, v2

    if-lez v1, :cond_5

    const-wide/16 v1, 0xa

    div-long v2, v6, v1

    :cond_5
    return-wide v2

    .line 310
    .end local v4    # "servedMillis":J
    .end local v6    # "delta":J
    :cond_6
    return-wide v2
.end method

.method private getCandidate()Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;
    .locals 18

    .line 206
    move-object/from16 v0, p0

    iget-object v1, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->cacheResponse:Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 207
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;

    iget-object v3, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->request:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    invoke-direct {v1, v3, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/Request;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V

    return-object v1

    .line 211
    :cond_0
    iget-object v1, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->request:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->isHttps()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->cacheResponse:Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->handshake()Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;

    move-result-object v1

    if-nez v1, :cond_1

    .line 212
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;

    iget-object v3, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->request:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    invoke-direct {v1, v3, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/Request;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V

    return-object v1

    .line 218
    :cond_1
    iget-object v1, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->cacheResponse:Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    iget-object v3, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->request:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    invoke-static {v1, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;->isCacheable(Lccsancom/mbridge/msdk/thrid/okhttp/Response;Lccsancom/mbridge/msdk/thrid/okhttp/Request;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 219
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;

    iget-object v3, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->request:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    invoke-direct {v1, v3, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/Request;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V

    return-object v1

    .line 222
    :cond_2
    iget-object v1, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->request:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->cacheControl()Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;

    move-result-object v1

    .line 223
    .local v1, "requestCaching":Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;->noCache()Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->request:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    invoke-static {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->hasConditions(Lccsancom/mbridge/msdk/thrid/okhttp/Request;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v17, v1

    move-object v8, v2

    goto/16 :goto_1

    .line 227
    :cond_3
    iget-object v3, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->cacheResponse:Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->cacheControl()Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;

    move-result-object v3

    .line 229
    .local v3, "responseCaching":Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->cacheResponseAge()J

    move-result-wide v4

    .line 230
    .local v4, "ageMillis":J
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->computeFreshnessLifetime()J

    move-result-wide v6

    .line 232
    .local v6, "freshMillis":J
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    .line 233
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 236
    :cond_4
    const-wide/16 v10, 0x0

    .line 237
    .local v10, "minFreshMillis":J
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;->minFreshSeconds()I

    move-result v8

    if-eq v8, v9, :cond_5

    .line 238
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;->minFreshSeconds()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v8, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    .line 241
    :cond_5
    const-wide/16 v12, 0x0

    .line 242
    .local v12, "maxStaleMillis":J
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;->mustRevalidate()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;->maxStaleSeconds()I

    move-result v8

    if-eq v8, v9, :cond_6

    .line 243
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;->maxStaleSeconds()I

    move-result v9

    int-to-long v14, v9

    invoke-virtual {v8, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    .line 246
    :cond_6
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;->noCache()Z

    move-result v8

    if-nez v8, :cond_9

    add-long v8, v4, v10

    add-long v14, v6, v12

    cmp-long v16, v8, v14

    if-gez v16, :cond_9

    .line 247
    iget-object v8, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->cacheResponse:Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    invoke-virtual {v8}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->newBuilder()Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v8

    .line 248
    .local v8, "builder":Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;
    add-long v14, v4, v10

    const-string v9, "Warning"

    cmp-long v16, v14, v6

    if-ltz v16, :cond_7

    .line 249
    const-string v14, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v8, v9, v14}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    .line 251
    :cond_7
    const-wide/32 v14, 0x5265c00

    .line 252
    .local v14, "oneDayMillis":J
    cmp-long v16, v4, v14

    if-lez v16, :cond_8

    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->isFreshnessLifetimeHeuristic()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 253
    const-string v2, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v8, v9, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    .line 255
    :cond_8
    new-instance v2, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;

    invoke-virtual {v8}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v9

    move-object/from16 v17, v1

    const/4 v1, 0x0

    .end local v1    # "requestCaching":Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;
    .local v17, "requestCaching":Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;
    invoke-direct {v2, v1, v9}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/Request;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V

    return-object v2

    .line 246
    .end local v8    # "builder":Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;
    .end local v14    # "oneDayMillis":J
    .end local v17    # "requestCaching":Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;
    .restart local v1    # "requestCaching":Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;
    :cond_9
    move-object/from16 v17, v1

    .line 262
    .end local v1    # "requestCaching":Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;
    .restart local v17    # "requestCaching":Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;
    iget-object v1, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 263
    const-string v1, "If-None-Match"

    .line 264
    .local v1, "conditionName":Ljava/lang/String;
    iget-object v2, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    .local v2, "conditionValue":Ljava/lang/String;
    goto :goto_0

    .line 265
    .end local v1    # "conditionName":Ljava/lang/String;
    .end local v2    # "conditionValue":Ljava/lang/String;
    :cond_a
    iget-object v1, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-eqz v1, :cond_b

    .line 266
    const-string v1, "If-Modified-Since"

    .line 267
    .restart local v1    # "conditionName":Ljava/lang/String;
    iget-object v2, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    .restart local v2    # "conditionValue":Ljava/lang/String;
    goto :goto_0

    .line 268
    .end local v1    # "conditionName":Ljava/lang/String;
    .end local v2    # "conditionValue":Ljava/lang/String;
    :cond_b
    iget-object v1, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v1, :cond_c

    .line 269
    const-string v1, "If-Modified-Since"

    .line 270
    .restart local v1    # "conditionName":Ljava/lang/String;
    iget-object v2, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    .line 275
    .restart local v2    # "conditionValue":Ljava/lang/String;
    :goto_0
    iget-object v8, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->request:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    invoke-virtual {v8}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->headers()Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    move-result-object v8

    invoke-virtual {v8}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->newBuilder()Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    move-result-object v8

    .line 276
    .local v8, "conditionalRequestHeaders":Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;
    sget-object v9, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;->instance:Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;

    invoke-virtual {v9, v8, v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;->addLenient(Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v9, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->request:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    invoke-virtual {v9}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->newBuilder()Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v9

    .line 279
    invoke-virtual {v8}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    move-result-object v14

    invoke-virtual {v9, v14}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->headers(Lccsancom/mbridge/msdk/thrid/okhttp/Headers;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v9

    .line 280
    invoke-virtual {v9}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v9

    .line 281
    .local v9, "conditionalRequest":Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    new-instance v14, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;

    iget-object v15, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->cacheResponse:Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    invoke-direct {v14, v9, v15}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/Request;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V

    return-object v14

    .line 272
    .end local v1    # "conditionName":Ljava/lang/String;
    .end local v2    # "conditionValue":Ljava/lang/String;
    .end local v8    # "conditionalRequestHeaders":Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;
    .end local v9    # "conditionalRequest":Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    :cond_c
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;

    iget-object v2, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->request:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    const/4 v8, 0x0

    invoke-direct {v1, v2, v8}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/Request;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V

    return-object v1

    .line 223
    .end local v3    # "responseCaching":Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;
    .end local v4    # "ageMillis":J
    .end local v6    # "freshMillis":J
    .end local v10    # "minFreshMillis":J
    .end local v12    # "maxStaleMillis":J
    .end local v17    # "requestCaching":Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;
    .local v1, "requestCaching":Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;
    :cond_d
    move-object/from16 v17, v1

    move-object v8, v2

    .line 224
    .end local v1    # "requestCaching":Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;
    .restart local v17    # "requestCaching":Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;
    :goto_1
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;

    iget-object v2, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->request:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    invoke-direct {v1, v2, v8}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/Request;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V

    return-object v1
.end method

.method private static hasConditions(Lccsancom/mbridge/msdk/thrid/okhttp/Request;)Z
    .locals 1
    .param p0, "request"    # Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    .line 343
    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isFreshnessLifetimeHeuristic()Z
    .locals 2

    .line 334
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->cacheResponse:Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->cacheControl()Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public get()Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;
    .locals 3

    .line 191
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->getCandidate()Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;

    move-result-object v0

    .line 193
    .local v0, "candidate":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;
    iget-object v1, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;->networkRequest:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->request:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->cacheControl()Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;->onlyIfCached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/Request;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V

    return-object v1

    .line 198
    :cond_0
    return-object v0
.end method
