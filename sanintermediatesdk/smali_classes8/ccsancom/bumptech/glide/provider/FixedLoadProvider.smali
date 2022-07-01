.class public Lccsancom/bumptech/glide/provider/FixedLoadProvider;
.super Ljava/lang/Object;
.source "FixedLoadProvider.java"

# interfaces
.implements Lccsancom/bumptech/glide/provider/LoadProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/provider/LoadProvider<",
        "TA;TT;TZ;TR;>;"
    }
.end annotation


# instance fields
.field private final dataLoadProvider:Lccsancom/bumptech/glide/provider/DataLoadProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/provider/DataLoadProvider<",
            "TT;TZ;>;"
        }
    .end annotation
.end field

.field private final modelLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "TA;TT;>;"
        }
    .end annotation
.end field

.field private final transcoder:Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
            "TZ;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/bumptech/glide/load/model/ModelLoader;Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lccsancom/bumptech/glide/provider/DataLoadProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "TA;TT;>;",
            "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
            "TZ;TR;>;",
            "Lccsancom/bumptech/glide/provider/DataLoadProvider<",
            "TT;TZ;>;)V"
        }
    .end annotation

    .line 26
    .local p0, "this":Lccsancom/bumptech/glide/provider/FixedLoadProvider;, "Lccsancom/bumptech/glide/provider/FixedLoadProvider<TA;TT;TZ;TR;>;"
    .local p1, "modelLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<TA;TT;>;"
    .local p2, "transcoder":Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;"
    .local p3, "dataLoadProvider":Lccsancom/bumptech/glide/provider/DataLoadProvider;, "Lccsancom/bumptech/glide/provider/DataLoadProvider<TT;TZ;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-eqz p1, :cond_2

    .line 30
    iput-object p1, p0, Lccsancom/bumptech/glide/provider/FixedLoadProvider;->modelLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    .line 32
    if-eqz p2, :cond_1

    .line 35
    iput-object p2, p0, Lccsancom/bumptech/glide/provider/FixedLoadProvider;->transcoder:Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    .line 37
    if-eqz p3, :cond_0

    .line 40
    iput-object p3, p0, Lccsancom/bumptech/glide/provider/FixedLoadProvider;->dataLoadProvider:Lccsancom/bumptech/glide/provider/DataLoadProvider;

    .line 41
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "DataLoadProvider must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Transcoder must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ModelLoader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCacheDecoder()Lccsancom/bumptech/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/File;",
            "TZ;>;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lccsancom/bumptech/glide/provider/FixedLoadProvider;, "Lccsancom/bumptech/glide/provider/FixedLoadProvider<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/provider/FixedLoadProvider;->dataLoadProvider:Lccsancom/bumptech/glide/provider/DataLoadProvider;

    invoke-interface {v0}, Lccsancom/bumptech/glide/provider/DataLoadProvider;->getCacheDecoder()Lccsancom/bumptech/glide/load/ResourceDecoder;

    move-result-object v0

    return-object v0
.end method

.method public getEncoder()Lccsancom/bumptech/glide/load/ResourceEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/ResourceEncoder<",
            "TZ;>;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lccsancom/bumptech/glide/provider/FixedLoadProvider;, "Lccsancom/bumptech/glide/provider/FixedLoadProvider<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/provider/FixedLoadProvider;->dataLoadProvider:Lccsancom/bumptech/glide/provider/DataLoadProvider;

    invoke-interface {v0}, Lccsancom/bumptech/glide/provider/DataLoadProvider;->getEncoder()Lccsancom/bumptech/glide/load/ResourceEncoder;

    move-result-object v0

    return-object v0
.end method

.method public getModelLoader()Lccsancom/bumptech/glide/load/model/ModelLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "TA;TT;>;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lccsancom/bumptech/glide/provider/FixedLoadProvider;, "Lccsancom/bumptech/glide/provider/FixedLoadProvider<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/provider/FixedLoadProvider;->modelLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    return-object v0
.end method

.method public getSourceDecoder()Lccsancom/bumptech/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 72
    .local p0, "this":Lccsancom/bumptech/glide/provider/FixedLoadProvider;, "Lccsancom/bumptech/glide/provider/FixedLoadProvider<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/provider/FixedLoadProvider;->dataLoadProvider:Lccsancom/bumptech/glide/provider/DataLoadProvider;

    invoke-interface {v0}, Lccsancom/bumptech/glide/provider/DataLoadProvider;->getSourceDecoder()Lccsancom/bumptech/glide/load/ResourceDecoder;

    move-result-object v0

    return-object v0
.end method

.method public getSourceEncoder()Lccsancom/bumptech/glide/load/Encoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/Encoder<",
            "TT;>;"
        }
    .end annotation

    .line 80
    .local p0, "this":Lccsancom/bumptech/glide/provider/FixedLoadProvider;, "Lccsancom/bumptech/glide/provider/FixedLoadProvider<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/provider/FixedLoadProvider;->dataLoadProvider:Lccsancom/bumptech/glide/provider/DataLoadProvider;

    invoke-interface {v0}, Lccsancom/bumptech/glide/provider/DataLoadProvider;->getSourceEncoder()Lccsancom/bumptech/glide/load/Encoder;

    move-result-object v0

    return-object v0
.end method

.method public getTranscoder()Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
            "TZ;TR;>;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lccsancom/bumptech/glide/provider/FixedLoadProvider;, "Lccsancom/bumptech/glide/provider/FixedLoadProvider<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/provider/FixedLoadProvider;->transcoder:Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    return-object v0
.end method
