.class public Lccsancom/bumptech/glide/provider/ChildLoadProvider;
.super Ljava/lang/Object;
.source "ChildLoadProvider.java"

# interfaces
.implements Lccsancom/bumptech/glide/provider/LoadProvider;
.implements Ljava/lang/Cloneable;


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
        "TA;TT;TZ;TR;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private cacheDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/File;",
            "TZ;>;"
        }
    .end annotation
.end field

.field private encoder:Lccsancom/bumptech/glide/load/ResourceEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/ResourceEncoder<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private final parent:Lccsancom/bumptech/glide/provider/LoadProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/provider/LoadProvider<",
            "TA;TT;TZ;TR;>;"
        }
    .end annotation
.end field

.field private sourceDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "TT;TZ;>;"
        }
    .end annotation
.end field

.field private sourceEncoder:Lccsancom/bumptech/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/Encoder<",
            "TT;>;"
        }
    .end annotation
.end field

.field private transcoder:Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
            "TZ;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/bumptech/glide/provider/LoadProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/provider/LoadProvider<",
            "TA;TT;TZ;TR;>;)V"
        }
    .end annotation

    .line 29
    .local p0, "this":Lccsancom/bumptech/glide/provider/ChildLoadProvider;, "Lccsancom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    .local p1, "parent":Lccsancom/bumptech/glide/provider/LoadProvider;, "Lccsancom/bumptech/glide/provider/LoadProvider<TA;TT;TZ;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lccsancom/bumptech/glide/provider/ChildLoadProvider;->parent:Lccsancom/bumptech/glide/provider/LoadProvider;

    .line 31
    return-void
.end method


# virtual methods
.method public clone()Lccsancom/bumptech/glide/provider/ChildLoadProvider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/provider/ChildLoadProvider<",
            "TA;TT;TZ;TR;>;"
        }
    .end annotation

    .line 149
    .local p0, "this":Lccsancom/bumptech/glide/provider/ChildLoadProvider;, "Lccsancom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/provider/ChildLoadProvider;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 20
    .local p0, "this":Lccsancom/bumptech/glide/provider/ChildLoadProvider;, "Lccsancom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    invoke-virtual {p0}, Lccsancom/bumptech/glide/provider/ChildLoadProvider;->clone()Lccsancom/bumptech/glide/provider/ChildLoadProvider;

    move-result-object v0

    return-object v0
.end method

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

    .line 90
    .local p0, "this":Lccsancom/bumptech/glide/provider/ChildLoadProvider;, "Lccsancom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/provider/ChildLoadProvider;->cacheDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    if-eqz v0, :cond_0

    .line 91
    return-object v0

    .line 93
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/provider/ChildLoadProvider;->parent:Lccsancom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v0}, Lccsancom/bumptech/glide/provider/LoadProvider;->getCacheDecoder()Lccsancom/bumptech/glide/load/ResourceDecoder;

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

    .line 126
    .local p0, "this":Lccsancom/bumptech/glide/provider/ChildLoadProvider;, "Lccsancom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/provider/ChildLoadProvider;->encoder:Lccsancom/bumptech/glide/load/ResourceEncoder;

    if-eqz v0, :cond_0

    .line 127
    return-object v0

    .line 129
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/provider/ChildLoadProvider;->parent:Lccsancom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v0}, Lccsancom/bumptech/glide/provider/LoadProvider;->getEncoder()Lccsancom/bumptech/glide/load/ResourceEncoder;

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

    .line 35
    .local p0, "this":Lccsancom/bumptech/glide/provider/ChildLoadProvider;, "Lccsancom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/provider/ChildLoadProvider;->parent:Lccsancom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v0}, Lccsancom/bumptech/glide/provider/LoadProvider;->getModelLoader()Lccsancom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

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

    .line 102
    .local p0, "this":Lccsancom/bumptech/glide/provider/ChildLoadProvider;, "Lccsancom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/provider/ChildLoadProvider;->sourceDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    if-eqz v0, :cond_0

    .line 103
    return-object v0

    .line 105
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/provider/ChildLoadProvider;->parent:Lccsancom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v0}, Lccsancom/bumptech/glide/provider/LoadProvider;->getSourceDecoder()Lccsancom/bumptech/glide/load/ResourceDecoder;

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

    .line 114
    .local p0, "this":Lccsancom/bumptech/glide/provider/ChildLoadProvider;, "Lccsancom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/provider/ChildLoadProvider;->sourceEncoder:Lccsancom/bumptech/glide/load/Encoder;

    if-eqz v0, :cond_0

    .line 115
    return-object v0

    .line 117
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/provider/ChildLoadProvider;->parent:Lccsancom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v0}, Lccsancom/bumptech/glide/provider/LoadProvider;->getSourceEncoder()Lccsancom/bumptech/glide/load/Encoder;

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

    .line 138
    .local p0, "this":Lccsancom/bumptech/glide/provider/ChildLoadProvider;, "Lccsancom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/provider/ChildLoadProvider;->transcoder:Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-eqz v0, :cond_0

    .line 139
    return-object v0

    .line 141
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/provider/ChildLoadProvider;->parent:Lccsancom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v0}, Lccsancom/bumptech/glide/provider/LoadProvider;->getTranscoder()Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v0

    return-object v0
.end method

.method public setCacheDecoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/File;",
            "TZ;>;)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lccsancom/bumptech/glide/provider/ChildLoadProvider;, "Lccsancom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    .local p1, "cacheDecoder":Lccsancom/bumptech/glide/load/ResourceDecoder;, "Lccsancom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;TZ;>;"
    iput-object p1, p0, Lccsancom/bumptech/glide/provider/ChildLoadProvider;->cacheDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    .line 45
    return-void
.end method

.method public setEncoder(Lccsancom/bumptech/glide/load/ResourceEncoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/ResourceEncoder<",
            "TZ;>;)V"
        }
    .end annotation

    .line 63
    .local p0, "this":Lccsancom/bumptech/glide/provider/ChildLoadProvider;, "Lccsancom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    .local p1, "encoder":Lccsancom/bumptech/glide/load/ResourceEncoder;, "Lccsancom/bumptech/glide/load/ResourceEncoder<TZ;>;"
    iput-object p1, p0, Lccsancom/bumptech/glide/provider/ChildLoadProvider;->encoder:Lccsancom/bumptech/glide/load/ResourceEncoder;

    .line 64
    return-void
.end method

.method public setSourceDecoder(Lccsancom/bumptech/glide/load/ResourceDecoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "TT;TZ;>;)V"
        }
    .end annotation

    .line 53
    .local p0, "this":Lccsancom/bumptech/glide/provider/ChildLoadProvider;, "Lccsancom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    .local p1, "sourceDecoder":Lccsancom/bumptech/glide/load/ResourceDecoder;, "Lccsancom/bumptech/glide/load/ResourceDecoder<TT;TZ;>;"
    iput-object p1, p0, Lccsancom/bumptech/glide/provider/ChildLoadProvider;->sourceDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    .line 54
    return-void
.end method

.method public setSourceEncoder(Lccsancom/bumptech/glide/load/Encoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/Encoder<",
            "TT;>;)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Lccsancom/bumptech/glide/provider/ChildLoadProvider;, "Lccsancom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    .local p1, "sourceEncoder":Lccsancom/bumptech/glide/load/Encoder;, "Lccsancom/bumptech/glide/load/Encoder<TT;>;"
    iput-object p1, p0, Lccsancom/bumptech/glide/provider/ChildLoadProvider;->sourceEncoder:Lccsancom/bumptech/glide/load/Encoder;

    .line 83
    return-void
.end method

.method public setTranscoder(Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
            "TZ;TR;>;)V"
        }
    .end annotation

    .line 73
    .local p0, "this":Lccsancom/bumptech/glide/provider/ChildLoadProvider;, "Lccsancom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
    .local p1, "transcoder":Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;"
    iput-object p1, p0, Lccsancom/bumptech/glide/provider/ChildLoadProvider;->transcoder:Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    .line 74
    return-void
.end method
