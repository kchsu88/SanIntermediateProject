.class Lccsancom/bumptech/glide/load/engine/DecodeJob;
.super Ljava/lang/Object;
.source "DecodeJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/engine/DecodeJob$FileOpener;,
        Lccsancom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;,
        Lccsancom/bumptech/glide/load/engine/DecodeJob$SourceWriter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FILE_OPENER:Lccsancom/bumptech/glide/load/engine/DecodeJob$FileOpener;

.field private static final TAG:Ljava/lang/String; = "DecodeJob"


# instance fields
.field private final diskCacheProvider:Lccsancom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

.field private final diskCacheStrategy:Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private final fetcher:Lccsancom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/data/DataFetcher<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final fileOpener:Lccsancom/bumptech/glide/load/engine/DecodeJob$FileOpener;

.field private final height:I

.field private volatile isCancelled:Z

.field private final loadProvider:Lccsancom/bumptech/glide/provider/DataLoadProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/provider/DataLoadProvider<",
            "TA;TT;>;"
        }
    .end annotation
.end field

.field private final priority:Lccsancom/bumptech/glide/Priority;

.field private final resultKey:Lccsancom/bumptech/glide/load/engine/EngineKey;

.field private final transcoder:Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
            "TT;TZ;>;"
        }
    .end annotation
.end field

.field private final transformation:Lccsancom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/Transformation<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lccsancom/bumptech/glide/load/engine/DecodeJob$FileOpener;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/engine/DecodeJob$FileOpener;-><init>()V

    sput-object v0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->DEFAULT_FILE_OPENER:Lccsancom/bumptech/glide/load/engine/DecodeJob$FileOpener;

    return-void
.end method

.method public constructor <init>(Lccsancom/bumptech/glide/load/engine/EngineKey;IILccsancom/bumptech/glide/load/data/DataFetcher;Lccsancom/bumptech/glide/provider/DataLoadProvider;Lccsancom/bumptech/glide/load/Transformation;Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lccsancom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;Lccsancom/bumptech/glide/Priority;)V
    .locals 12
    .param p1, "resultKey"    # Lccsancom/bumptech/glide/load/engine/EngineKey;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p8, "diskCacheProvider"    # Lccsancom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;
    .param p9, "diskCacheStrategy"    # Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;
    .param p10, "priority"    # Lccsancom/bumptech/glide/Priority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/EngineKey;",
            "II",
            "Lccsancom/bumptech/glide/load/data/DataFetcher<",
            "TA;>;",
            "Lccsancom/bumptech/glide/provider/DataLoadProvider<",
            "TA;TT;>;",
            "Lccsancom/bumptech/glide/load/Transformation<",
            "TT;>;",
            "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
            "TT;TZ;>;",
            "Lccsancom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;",
            "Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;",
            "Lccsancom/bumptech/glide/Priority;",
            ")V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lccsancom/bumptech/glide/load/engine/DecodeJob;, "Lccsancom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    .local p4, "fetcher":Lccsancom/bumptech/glide/load/data/DataFetcher;, "Lccsancom/bumptech/glide/load/data/DataFetcher<TA;>;"
    .local p5, "loadProvider":Lccsancom/bumptech/glide/provider/DataLoadProvider;, "Lccsancom/bumptech/glide/provider/DataLoadProvider<TA;TT;>;"
    .local p6, "transformation":Lccsancom/bumptech/glide/load/Transformation;, "Lccsancom/bumptech/glide/load/Transformation<TT;>;"
    .local p7, "transcoder":Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TT;TZ;>;"
    sget-object v11, Lccsancom/bumptech/glide/load/engine/DecodeJob;->DEFAULT_FILE_OPENER:Lccsancom/bumptech/glide/load/engine/DecodeJob$FileOpener;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lccsancom/bumptech/glide/load/engine/DecodeJob;-><init>(Lccsancom/bumptech/glide/load/engine/EngineKey;IILccsancom/bumptech/glide/load/data/DataFetcher;Lccsancom/bumptech/glide/provider/DataLoadProvider;Lccsancom/bumptech/glide/load/Transformation;Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lccsancom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;Lccsancom/bumptech/glide/Priority;Lccsancom/bumptech/glide/load/engine/DecodeJob$FileOpener;)V

    .line 53
    return-void
.end method

.method constructor <init>(Lccsancom/bumptech/glide/load/engine/EngineKey;IILccsancom/bumptech/glide/load/data/DataFetcher;Lccsancom/bumptech/glide/provider/DataLoadProvider;Lccsancom/bumptech/glide/load/Transformation;Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lccsancom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;Lccsancom/bumptech/glide/Priority;Lccsancom/bumptech/glide/load/engine/DecodeJob$FileOpener;)V
    .locals 0
    .param p1, "resultKey"    # Lccsancom/bumptech/glide/load/engine/EngineKey;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p8, "diskCacheProvider"    # Lccsancom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;
    .param p9, "diskCacheStrategy"    # Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;
    .param p10, "priority"    # Lccsancom/bumptech/glide/Priority;
    .param p11, "fileOpener"    # Lccsancom/bumptech/glide/load/engine/DecodeJob$FileOpener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/EngineKey;",
            "II",
            "Lccsancom/bumptech/glide/load/data/DataFetcher<",
            "TA;>;",
            "Lccsancom/bumptech/glide/provider/DataLoadProvider<",
            "TA;TT;>;",
            "Lccsancom/bumptech/glide/load/Transformation<",
            "TT;>;",
            "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
            "TT;TZ;>;",
            "Lccsancom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;",
            "Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;",
            "Lccsancom/bumptech/glide/Priority;",
            "Lccsancom/bumptech/glide/load/engine/DecodeJob$FileOpener;",
            ")V"
        }
    .end annotation

    .line 59
    .local p0, "this":Lccsancom/bumptech/glide/load/engine/DecodeJob;, "Lccsancom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    .local p4, "fetcher":Lccsancom/bumptech/glide/load/data/DataFetcher;, "Lccsancom/bumptech/glide/load/data/DataFetcher<TA;>;"
    .local p5, "loadProvider":Lccsancom/bumptech/glide/provider/DataLoadProvider;, "Lccsancom/bumptech/glide/provider/DataLoadProvider<TA;TT;>;"
    .local p6, "transformation":Lccsancom/bumptech/glide/load/Transformation;, "Lccsancom/bumptech/glide/load/Transformation<TT;>;"
    .local p7, "transcoder":Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TT;TZ;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->resultKey:Lccsancom/bumptech/glide/load/engine/EngineKey;

    .line 61
    iput p2, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->width:I

    .line 62
    iput p3, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->height:I

    .line 63
    iput-object p4, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->fetcher:Lccsancom/bumptech/glide/load/data/DataFetcher;

    .line 64
    iput-object p5, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->loadProvider:Lccsancom/bumptech/glide/provider/DataLoadProvider;

    .line 65
    iput-object p6, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->transformation:Lccsancom/bumptech/glide/load/Transformation;

    .line 66
    iput-object p7, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->transcoder:Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    .line 67
    iput-object p8, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lccsancom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    .line 68
    iput-object p9, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 69
    iput-object p10, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->priority:Lccsancom/bumptech/glide/Priority;

    .line 70
    iput-object p11, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->fileOpener:Lccsancom/bumptech/glide/load/engine/DecodeJob$FileOpener;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lccsancom/bumptech/glide/load/engine/DecodeJob;)Lccsancom/bumptech/glide/load/engine/DecodeJob$FileOpener;
    .locals 1
    .param p0, "x0"    # Lccsancom/bumptech/glide/load/engine/DecodeJob;

    .line 30
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->fileOpener:Lccsancom/bumptech/glide/load/engine/DecodeJob$FileOpener;

    return-object v0
.end method

.method private cacheAndDecodeSourceData(Ljava/lang/Object;)Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    .local p0, "this":Lccsancom/bumptech/glide/load/engine/DecodeJob;, "Lccsancom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    .local p1, "data":Ljava/lang/Object;, "TA;"
    invoke-static {}, Lccsancom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    .line 200
    .local v0, "startTime":J
    new-instance v2, Lccsancom/bumptech/glide/load/engine/DecodeJob$SourceWriter;

    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->loadProvider:Lccsancom/bumptech/glide/provider/DataLoadProvider;

    invoke-interface {v3}, Lccsancom/bumptech/glide/provider/DataLoadProvider;->getSourceEncoder()Lccsancom/bumptech/glide/load/Encoder;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lccsancom/bumptech/glide/load/engine/DecodeJob$SourceWriter;-><init>(Lccsancom/bumptech/glide/load/engine/DecodeJob;Lccsancom/bumptech/glide/load/Encoder;Ljava/lang/Object;)V

    .line 201
    .local v2, "writer":Lccsancom/bumptech/glide/load/engine/DecodeJob$SourceWriter;, "Lccsancom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>.SourceWriter<TA;>;"
    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lccsancom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    invoke-interface {v3}, Lccsancom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->getDiskCache()Lccsancom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v3

    iget-object v4, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->resultKey:Lccsancom/bumptech/glide/load/engine/EngineKey;

    invoke-virtual {v4}, Lccsancom/bumptech/glide/load/engine/EngineKey;->getOriginalKey()Lccsancom/bumptech/glide/load/Key;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lccsancom/bumptech/glide/load/engine/cache/DiskCache;->put(Lccsancom/bumptech/glide/load/Key;Lccsancom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V

    .line 202
    const-string v3, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 203
    const-string v5, "Wrote source to cache"

    invoke-direct {p0, v5, v0, v1}, Lccsancom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    .line 206
    :cond_0
    invoke-static {}, Lccsancom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    .line 207
    iget-object v5, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->resultKey:Lccsancom/bumptech/glide/load/engine/EngineKey;

    invoke-virtual {v5}, Lccsancom/bumptech/glide/load/engine/EngineKey;->getOriginalKey()Lccsancom/bumptech/glide/load/Key;

    move-result-object v5

    invoke-direct {p0, v5}, Lccsancom/bumptech/glide/load/engine/DecodeJob;->loadFromCache(Lccsancom/bumptech/glide/load/Key;)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v5

    .line 208
    .local v5, "result":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<TT;>;"
    invoke-static {v3, v4}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v5, :cond_1

    .line 209
    const-string v3, "Decoded source from cache"

    invoke-direct {p0, v3, v0, v1}, Lccsancom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    .line 211
    :cond_1
    return-object v5
.end method

.method private decodeFromSourceData(Ljava/lang/Object;)Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    .local p0, "this":Lccsancom/bumptech/glide/load/engine/DecodeJob;, "Lccsancom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    .local p1, "data":Ljava/lang/Object;, "TA;"
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/load/engine/DecodeJob;->cacheAndDecodeSourceData(Ljava/lang/Object;)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .local v0, "decoded":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<TT;>;"
    goto :goto_0

    .line 189
    .end local v0    # "decoded":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<TT;>;"
    :cond_0
    invoke-static {}, Lccsancom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    .line 190
    .local v0, "startTime":J
    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->loadProvider:Lccsancom/bumptech/glide/provider/DataLoadProvider;

    invoke-interface {v2}, Lccsancom/bumptech/glide/provider/DataLoadProvider;->getSourceDecoder()Lccsancom/bumptech/glide/load/ResourceDecoder;

    move-result-object v2

    iget v3, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->width:I

    iget v4, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->height:I

    invoke-interface {v2, p1, v3, v4}, Lccsancom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v2

    .line 191
    .local v2, "decoded":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<TT;>;"
    const/4 v3, 0x2

    const-string v4, "DecodeJob"

    invoke-static {v4, v3}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    const-string v3, "Decoded from source"

    invoke-direct {p0, v3, v0, v1}, Lccsancom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    .line 195
    .end local v0    # "startTime":J
    :cond_1
    move-object v0, v2

    .end local v2    # "decoded":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<TT;>;"
    .local v0, "decoded":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<TT;>;"
    :goto_0
    return-object v0
.end method

.method private decodeSource()Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 167
    .local p0, "this":Lccsancom/bumptech/glide/load/engine/DecodeJob;, "Lccsancom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    const/4 v0, 0x0

    .line 169
    .local v0, "decoded":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<TT;>;"
    :try_start_0
    invoke-static {}, Lccsancom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v1

    .line 170
    .local v1, "startTime":J
    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->fetcher:Lccsancom/bumptech/glide/load/data/DataFetcher;

    iget-object v4, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->priority:Lccsancom/bumptech/glide/Priority;

    invoke-interface {v3, v4}, Lccsancom/bumptech/glide/load/data/DataFetcher;->loadData(Lccsancom/bumptech/glide/Priority;)Ljava/lang/Object;

    move-result-object v3

    .line 171
    .local v3, "data":Ljava/lang/Object;, "TA;"
    const-string v4, "DecodeJob"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 172
    const-string v4, "Fetched data"

    invoke-direct {p0, v4, v1, v2}, Lccsancom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    .line 174
    :cond_0
    iget-boolean v4, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->isCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 175
    const/4 v4, 0x0

    .line 179
    iget-object v5, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->fetcher:Lccsancom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v5}, Lccsancom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    return-object v4

    .line 177
    :cond_1
    :try_start_1
    invoke-direct {p0, v3}, Lccsancom/bumptech/glide/load/engine/DecodeJob;->decodeFromSourceData(Ljava/lang/Object;)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v4

    .line 179
    .end local v1    # "startTime":J
    .end local v3    # "data":Ljava/lang/Object;, "TA;"
    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->fetcher:Lccsancom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v1}, Lccsancom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    .line 180
    nop

    .line 181
    return-object v0

    .line 179
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->fetcher:Lccsancom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v2}, Lccsancom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    throw v1
.end method

.method private loadFromCache(Lccsancom/bumptech/glide/load/Key;)Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 5
    .param p1, "key"    # Lccsancom/bumptech/glide/load/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/Key;",
            ")",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    .local p0, "this":Lccsancom/bumptech/glide/load/engine/DecodeJob;, "Lccsancom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lccsancom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    invoke-interface {v0}, Lccsancom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->getDiskCache()Lccsancom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/bumptech/glide/load/engine/cache/DiskCache;->get(Lccsancom/bumptech/glide/load/Key;)Ljava/io/File;

    move-result-object v0

    .line 216
    .local v0, "cacheFile":Ljava/io/File;
    if-nez v0, :cond_0

    .line 217
    const/4 v1, 0x0

    return-object v1

    .line 220
    :cond_0
    const/4 v1, 0x0

    .line 222
    .local v1, "result":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<TT;>;"
    :try_start_0
    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->loadProvider:Lccsancom/bumptech/glide/provider/DataLoadProvider;

    invoke-interface {v2}, Lccsancom/bumptech/glide/provider/DataLoadProvider;->getCacheDecoder()Lccsancom/bumptech/glide/load/ResourceDecoder;

    move-result-object v2

    iget v3, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->width:I

    iget v4, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->height:I

    invoke-interface {v2, v0, v3, v4}, Lccsancom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 224
    if-nez v1, :cond_1

    .line 225
    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lccsancom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    invoke-interface {v2}, Lccsancom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->getDiskCache()Lccsancom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v2

    invoke-interface {v2, p1}, Lccsancom/bumptech/glide/load/engine/cache/DiskCache;->delete(Lccsancom/bumptech/glide/load/Key;)V

    .line 228
    :cond_1
    return-object v1

    .line 224
    :catchall_0
    move-exception v2

    if-nez v1, :cond_2

    .line 225
    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lccsancom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    invoke-interface {v3}, Lccsancom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->getDiskCache()Lccsancom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v3

    invoke-interface {v3, p1}, Lccsancom/bumptech/glide/load/engine/cache/DiskCache;->delete(Lccsancom/bumptech/glide/load/Key;)V

    :cond_2
    throw v2
.end method

.method private logWithTimeAndKey(Ljava/lang/String;J)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "startTime"    # J

    .line 251
    .local p0, "this":Lccsancom/bumptech/glide/load/engine/DecodeJob;, "Lccsancom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lccsancom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->resultKey:Lccsancom/bumptech/glide/load/engine/EngineKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DecodeJob"

    invoke-static {v1, v0}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void
.end method

.method private transcode(Lccsancom/bumptech/glide/load/engine/Resource;)Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "TT;>;)",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "TZ;>;"
        }
    .end annotation

    .line 244
    .local p0, "this":Lccsancom/bumptech/glide/load/engine/DecodeJob;, "Lccsancom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    .local p1, "transformed":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<TT;>;"
    if-nez p1, :cond_0

    .line 245
    const/4 v0, 0x0

    return-object v0

    .line 247
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->transcoder:Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {v0, p1}, Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->transcode(Lccsancom/bumptech/glide/load/engine/Resource;)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    return-object v0
.end method

.method private transform(Lccsancom/bumptech/glide/load/engine/Resource;)Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "TT;>;)",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "TT;>;"
        }
    .end annotation

    .line 232
    .local p0, "this":Lccsancom/bumptech/glide/load/engine/DecodeJob;, "Lccsancom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    .local p1, "decoded":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<TT;>;"
    if-nez p1, :cond_0

    .line 233
    const/4 v0, 0x0

    return-object v0

    .line 236
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->transformation:Lccsancom/bumptech/glide/load/Transformation;

    iget v1, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->width:I

    iget v2, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->height:I

    invoke-interface {v0, p1, v1, v2}, Lccsancom/bumptech/glide/load/Transformation;->transform(Lccsancom/bumptech/glide/load/engine/Resource;II)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 237
    .local v0, "transformed":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<TT;>;"
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 238
    invoke-interface {p1}, Lccsancom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 240
    :cond_1
    return-object v0
.end method

.method private transformEncodeAndTranscode(Lccsancom/bumptech/glide/load/engine/Resource;)Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "TT;>;)",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "TZ;>;"
        }
    .end annotation

    .line 138
    .local p0, "this":Lccsancom/bumptech/glide/load/engine/DecodeJob;, "Lccsancom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    .local p1, "decoded":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<TT;>;"
    invoke-static {}, Lccsancom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    .line 139
    .local v0, "startTime":J
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/load/engine/DecodeJob;->transform(Lccsancom/bumptech/glide/load/engine/Resource;)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v2

    .line 140
    .local v2, "transformed":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<TT;>;"
    const-string v3, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 141
    const-string v5, "Transformed resource from source"

    invoke-direct {p0, v5, v0, v1}, Lccsancom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    .line 144
    :cond_0
    invoke-direct {p0, v2}, Lccsancom/bumptech/glide/load/engine/DecodeJob;->writeTransformedToCache(Lccsancom/bumptech/glide/load/engine/Resource;)V

    .line 146
    invoke-static {}, Lccsancom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    .line 147
    invoke-direct {p0, v2}, Lccsancom/bumptech/glide/load/engine/DecodeJob;->transcode(Lccsancom/bumptech/glide/load/engine/Resource;)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v5

    .line 148
    .local v5, "result":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<TZ;>;"
    invoke-static {v3, v4}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    const-string v3, "Transcoded transformed from source"

    invoke-direct {p0, v3, v0, v1}, Lccsancom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    .line 151
    :cond_1
    return-object v5
.end method

.method private writeTransformedToCache(Lccsancom/bumptech/glide/load/engine/Resource;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "TT;>;)V"
        }
    .end annotation

    .line 155
    .local p0, "this":Lccsancom/bumptech/glide/load/engine/DecodeJob;, "Lccsancom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    .local p1, "transformed":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<TT;>;"
    if-eqz p1, :cond_2

    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    invoke-static {}, Lccsancom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    .line 159
    .local v0, "startTime":J
    new-instance v2, Lccsancom/bumptech/glide/load/engine/DecodeJob$SourceWriter;

    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->loadProvider:Lccsancom/bumptech/glide/provider/DataLoadProvider;

    invoke-interface {v3}, Lccsancom/bumptech/glide/provider/DataLoadProvider;->getEncoder()Lccsancom/bumptech/glide/load/ResourceEncoder;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lccsancom/bumptech/glide/load/engine/DecodeJob$SourceWriter;-><init>(Lccsancom/bumptech/glide/load/engine/DecodeJob;Lccsancom/bumptech/glide/load/Encoder;Ljava/lang/Object;)V

    .line 160
    .local v2, "writer":Lccsancom/bumptech/glide/load/engine/DecodeJob$SourceWriter;, "Lccsancom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>.SourceWriter<Lccsancom/bumptech/glide/load/engine/Resource<TT;>;>;"
    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lccsancom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    invoke-interface {v3}, Lccsancom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->getDiskCache()Lccsancom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v3

    iget-object v4, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->resultKey:Lccsancom/bumptech/glide/load/engine/EngineKey;

    invoke-interface {v3, v4, v2}, Lccsancom/bumptech/glide/load/engine/cache/DiskCache;->put(Lccsancom/bumptech/glide/load/Key;Lccsancom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V

    .line 161
    const/4 v3, 0x2

    const-string v4, "DecodeJob"

    invoke-static {v4, v3}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    const-string v3, "Wrote transformed from source to cache"

    invoke-direct {p0, v3, v0, v1}, Lccsancom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    .line 164
    :cond_1
    return-void

    .line 156
    .end local v0    # "startTime":J
    .end local v2    # "writer":Lccsancom/bumptech/glide/load/engine/DecodeJob$SourceWriter;, "Lccsancom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>.SourceWriter<Lccsancom/bumptech/glide/load/engine/Resource<TT;>;>;"
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 133
    .local p0, "this":Lccsancom/bumptech/glide/load/engine/DecodeJob;, "Lccsancom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->isCancelled:Z

    .line 134
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->fetcher:Lccsancom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lccsancom/bumptech/glide/load/data/DataFetcher;->cancel()V

    .line 135
    return-void
.end method

.method public decodeFromSource()Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "TZ;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 128
    .local p0, "this":Lccsancom/bumptech/glide/load/engine/DecodeJob;, "Lccsancom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/engine/DecodeJob;->decodeSource()Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 129
    .local v0, "decoded":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<TT;>;"
    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/load/engine/DecodeJob;->transformEncodeAndTranscode(Lccsancom/bumptech/glide/load/engine/Resource;)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v1

    return-object v1
.end method

.method public decodeResultFromCache()Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "TZ;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    .local p0, "this":Lccsancom/bumptech/glide/load/engine/DecodeJob;, "Lccsancom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_0
    invoke-static {}, Lccsancom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    .line 85
    .local v0, "startTime":J
    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->resultKey:Lccsancom/bumptech/glide/load/engine/EngineKey;

    invoke-direct {p0, v2}, Lccsancom/bumptech/glide/load/engine/DecodeJob;->loadFromCache(Lccsancom/bumptech/glide/load/Key;)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v2

    .line 86
    .local v2, "transformed":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<TT;>;"
    const-string v3, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 87
    const-string v5, "Decoded transformed from cache"

    invoke-direct {p0, v5, v0, v1}, Lccsancom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    .line 89
    :cond_1
    invoke-static {}, Lccsancom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    .line 90
    invoke-direct {p0, v2}, Lccsancom/bumptech/glide/load/engine/DecodeJob;->transcode(Lccsancom/bumptech/glide/load/engine/Resource;)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v5

    .line 91
    .local v5, "result":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<TZ;>;"
    invoke-static {v3, v4}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    const-string v3, "Transcoded transformed from cache"

    invoke-direct {p0, v3, v0, v1}, Lccsancom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    .line 94
    :cond_2
    return-object v5
.end method

.method public decodeSourceFromCache()Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "TZ;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    .local p0, "this":Lccsancom/bumptech/glide/load/engine/DecodeJob;, "Lccsancom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 108
    :cond_0
    invoke-static {}, Lccsancom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    .line 109
    .local v0, "startTime":J
    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/DecodeJob;->resultKey:Lccsancom/bumptech/glide/load/engine/EngineKey;

    invoke-virtual {v2}, Lccsancom/bumptech/glide/load/engine/EngineKey;->getOriginalKey()Lccsancom/bumptech/glide/load/Key;

    move-result-object v2

    invoke-direct {p0, v2}, Lccsancom/bumptech/glide/load/engine/DecodeJob;->loadFromCache(Lccsancom/bumptech/glide/load/Key;)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v2

    .line 110
    .local v2, "decoded":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<TT;>;"
    const/4 v3, 0x2

    const-string v4, "DecodeJob"

    invoke-static {v4, v3}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    const-string v3, "Decoded source from cache"

    invoke-direct {p0, v3, v0, v1}, Lccsancom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    .line 113
    :cond_1
    invoke-direct {p0, v2}, Lccsancom/bumptech/glide/load/engine/DecodeJob;->transformEncodeAndTranscode(Lccsancom/bumptech/glide/load/engine/Resource;)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v3

    return-object v3
.end method
