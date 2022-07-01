.class Lccsancom/bumptech/glide/load/engine/EngineKey;
.super Ljava/lang/Object;
.source "EngineKey.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/Key;


# static fields
.field private static final EMPTY_LOG_STRING:Ljava/lang/String; = ""


# instance fields
.field private final cacheDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

.field private final decoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

.field private final encoder:Lccsancom/bumptech/glide/load/ResourceEncoder;

.field private hashCode:I

.field private final height:I

.field private final id:Ljava/lang/String;

.field private originalKey:Lccsancom/bumptech/glide/load/Key;

.field private final signature:Lccsancom/bumptech/glide/load/Key;

.field private final sourceEncoder:Lccsancom/bumptech/glide/load/Encoder;

.field private stringKey:Ljava/lang/String;

.field private final transcoder:Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

.field private final transformation:Lccsancom/bumptech/glide/load/Transformation;

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lccsancom/bumptech/glide/load/Key;IILccsancom/bumptech/glide/load/ResourceDecoder;Lccsancom/bumptech/glide/load/ResourceDecoder;Lccsancom/bumptech/glide/load/Transformation;Lccsancom/bumptech/glide/load/ResourceEncoder;Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lccsancom/bumptech/glide/load/Encoder;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "signature"    # Lccsancom/bumptech/glide/load/Key;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "cacheDecoder"    # Lccsancom/bumptech/glide/load/ResourceDecoder;
    .param p6, "decoder"    # Lccsancom/bumptech/glide/load/ResourceDecoder;
    .param p7, "transformation"    # Lccsancom/bumptech/glide/load/Transformation;
    .param p8, "encoder"    # Lccsancom/bumptech/glide/load/ResourceEncoder;
    .param p9, "transcoder"    # Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .param p10, "sourceEncoder"    # Lccsancom/bumptech/glide/load/Encoder;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->signature:Lccsancom/bumptech/glide/load/Key;

    .line 36
    iput p3, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->width:I

    .line 37
    iput p4, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->height:I

    .line 38
    iput-object p5, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    .line 39
    iput-object p6, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->decoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    .line 40
    iput-object p7, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->transformation:Lccsancom/bumptech/glide/load/Transformation;

    .line 41
    iput-object p8, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->encoder:Lccsancom/bumptech/glide/load/ResourceEncoder;

    .line 42
    iput-object p9, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->transcoder:Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    .line 43
    iput-object p10, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lccsancom/bumptech/glide/load/Encoder;

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 55
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 56
    return v0

    .line 58
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_c

    .line 62
    :cond_1
    move-object v2, p1

    check-cast v2, Lccsancom/bumptech/glide/load/engine/EngineKey;

    .line 64
    .local v2, "engineKey":Lccsancom/bumptech/glide/load/engine/EngineKey;
    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    iget-object v4, v2, Lccsancom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 65
    return v1

    .line 66
    :cond_2
    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->signature:Lccsancom/bumptech/glide/load/Key;

    iget-object v4, v2, Lccsancom/bumptech/glide/load/engine/EngineKey;->signature:Lccsancom/bumptech/glide/load/Key;

    invoke-interface {v3, v4}, Lccsancom/bumptech/glide/load/Key;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 67
    return v1

    .line 68
    :cond_3
    iget v3, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->height:I

    iget v4, v2, Lccsancom/bumptech/glide/load/engine/EngineKey;->height:I

    if-eq v3, v4, :cond_4

    .line 69
    return v1

    .line 70
    :cond_4
    iget v3, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->width:I

    iget v4, v2, Lccsancom/bumptech/glide/load/engine/EngineKey;->width:I

    if-eq v3, v4, :cond_5

    .line 71
    return v1

    .line 72
    :cond_5
    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->transformation:Lccsancom/bumptech/glide/load/Transformation;

    if-nez v3, :cond_6

    const/4 v4, 0x1

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    :goto_0
    iget-object v5, v2, Lccsancom/bumptech/glide/load/engine/EngineKey;->transformation:Lccsancom/bumptech/glide/load/Transformation;

    if-nez v5, :cond_7

    const/4 v5, 0x1

    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    :goto_1
    xor-int/2addr v4, v5

    if-eqz v4, :cond_8

    .line 73
    return v1

    .line 74
    :cond_8
    if-eqz v3, :cond_9

    invoke-interface {v3}, Lccsancom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lccsancom/bumptech/glide/load/engine/EngineKey;->transformation:Lccsancom/bumptech/glide/load/Transformation;

    invoke-interface {v4}, Lccsancom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 75
    return v1

    .line 76
    :cond_9
    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->decoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    if-nez v3, :cond_a

    const/4 v4, 0x1

    goto :goto_2

    :cond_a
    const/4 v4, 0x0

    :goto_2
    iget-object v5, v2, Lccsancom/bumptech/glide/load/engine/EngineKey;->decoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    if-nez v5, :cond_b

    const/4 v5, 0x1

    goto :goto_3

    :cond_b
    const/4 v5, 0x0

    :goto_3
    xor-int/2addr v4, v5

    if-eqz v4, :cond_c

    .line 77
    return v1

    .line 78
    :cond_c
    if-eqz v3, :cond_d

    invoke-interface {v3}, Lccsancom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lccsancom/bumptech/glide/load/engine/EngineKey;->decoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v4}, Lccsancom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 79
    return v1

    .line 80
    :cond_d
    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    if-nez v3, :cond_e

    const/4 v4, 0x1

    goto :goto_4

    :cond_e
    const/4 v4, 0x0

    :goto_4
    iget-object v5, v2, Lccsancom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    if-nez v5, :cond_f

    const/4 v5, 0x1

    goto :goto_5

    :cond_f
    const/4 v5, 0x0

    :goto_5
    xor-int/2addr v4, v5

    if-eqz v4, :cond_10

    .line 81
    return v1

    .line 82
    :cond_10
    if-eqz v3, :cond_11

    invoke-interface {v3}, Lccsancom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lccsancom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v4}, Lccsancom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 83
    return v1

    .line 84
    :cond_11
    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->encoder:Lccsancom/bumptech/glide/load/ResourceEncoder;

    if-nez v3, :cond_12

    const/4 v4, 0x1

    goto :goto_6

    :cond_12
    const/4 v4, 0x0

    :goto_6
    iget-object v5, v2, Lccsancom/bumptech/glide/load/engine/EngineKey;->encoder:Lccsancom/bumptech/glide/load/ResourceEncoder;

    if-nez v5, :cond_13

    const/4 v5, 0x1

    goto :goto_7

    :cond_13
    const/4 v5, 0x0

    :goto_7
    xor-int/2addr v4, v5

    if-eqz v4, :cond_14

    .line 85
    return v1

    .line 86
    :cond_14
    if-eqz v3, :cond_15

    invoke-interface {v3}, Lccsancom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lccsancom/bumptech/glide/load/engine/EngineKey;->encoder:Lccsancom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v4}, Lccsancom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 87
    return v1

    .line 88
    :cond_15
    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->transcoder:Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-nez v3, :cond_16

    const/4 v4, 0x1

    goto :goto_8

    :cond_16
    const/4 v4, 0x0

    :goto_8
    iget-object v5, v2, Lccsancom/bumptech/glide/load/engine/EngineKey;->transcoder:Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-nez v5, :cond_17

    const/4 v5, 0x1

    goto :goto_9

    :cond_17
    const/4 v5, 0x0

    :goto_9
    xor-int/2addr v4, v5

    if-eqz v4, :cond_18

    .line 89
    return v1

    .line 90
    :cond_18
    if-eqz v3, :cond_19

    invoke-interface {v3}, Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lccsancom/bumptech/glide/load/engine/EngineKey;->transcoder:Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {v4}, Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 91
    return v1

    .line 92
    :cond_19
    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lccsancom/bumptech/glide/load/Encoder;

    if-nez v3, :cond_1a

    const/4 v4, 0x1

    goto :goto_a

    :cond_1a
    const/4 v4, 0x0

    :goto_a
    iget-object v5, v2, Lccsancom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lccsancom/bumptech/glide/load/Encoder;

    if-nez v5, :cond_1b

    const/4 v5, 0x1

    goto :goto_b

    :cond_1b
    const/4 v5, 0x0

    :goto_b
    xor-int/2addr v4, v5

    if-eqz v4, :cond_1c

    .line 93
    return v1

    .line 94
    :cond_1c
    if-eqz v3, :cond_1d

    invoke-interface {v3}, Lccsancom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lccsancom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lccsancom/bumptech/glide/load/Encoder;

    invoke-interface {v4}, Lccsancom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 95
    return v1

    .line 97
    :cond_1d
    return v0

    .line 59
    .end local v2    # "engineKey":Lccsancom/bumptech/glide/load/engine/EngineKey;
    :cond_1e
    :goto_c
    return v1
.end method

.method public getOriginalKey()Lccsancom/bumptech/glide/load/Key;
    .locals 3

    .line 47
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->originalKey:Lccsancom/bumptech/glide/load/Key;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lccsancom/bumptech/glide/load/engine/OriginalKey;

    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->signature:Lccsancom/bumptech/glide/load/Key;

    invoke-direct {v0, v1, v2}, Lccsancom/bumptech/glide/load/engine/OriginalKey;-><init>(Ljava/lang/String;Lccsancom/bumptech/glide/load/Key;)V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->originalKey:Lccsancom/bumptech/glide/load/Key;

    .line 50
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->originalKey:Lccsancom/bumptech/glide/load/Key;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 102
    iget v0, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    if-nez v0, :cond_6

    .line 103
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 104
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->signature:Lccsancom/bumptech/glide/load/Key;

    invoke-interface {v1}, Lccsancom/bumptech/glide/load/Key;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 105
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->width:I

    add-int/2addr v0, v1

    iput v0, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 106
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->height:I

    add-int/2addr v0, v1

    iput v0, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 107
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lccsancom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 108
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->decoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lccsancom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    iput v0, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 109
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->transformation:Lccsancom/bumptech/glide/load/Transformation;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lccsancom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    iput v0, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 110
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->encoder:Lccsancom/bumptech/glide/load/ResourceEncoder;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lccsancom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    iput v0, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 111
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->transcoder:Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    iput v0, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 112
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lccsancom/bumptech/glide/load/Encoder;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lccsancom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_5
    add-int/2addr v0, v2

    iput v0, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 114
    :cond_6
    iget v0, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 119
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->stringKey:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EngineKey{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->signature:Lccsancom/bumptech/glide/load/Key;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "+["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x78

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]+"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    const-string v4, ""

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lccsancom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->decoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lccsancom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->transformation:Lccsancom/bumptech/glide/load/Transformation;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lccsancom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->encoder:Lccsancom/bumptech/glide/load/ResourceEncoder;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lccsancom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_3
    move-object v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->transcoder:Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_4
    move-object v3, v4

    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lccsancom/bumptech/glide/load/Encoder;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lccsancom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v4

    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->stringKey:Ljava/lang/String;

    .line 156
    :cond_6
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->stringKey:Ljava/lang/String;

    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 4
    .param p1, "messageDigest"    # Ljava/security/MessageDigest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 161
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->width:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->height:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 165
    .local v0, "dimensions":[B
    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->signature:Lccsancom/bumptech/glide/load/Key;

    invoke-interface {v1, p1}, Lccsancom/bumptech/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 166
    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 167
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 168
    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    const-string v3, ""

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lccsancom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 169
    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->decoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lccsancom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 170
    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->transformation:Lccsancom/bumptech/glide/load/Transformation;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lccsancom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 171
    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->encoder:Lccsancom/bumptech/glide/load/ResourceEncoder;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lccsancom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v3

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 173
    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lccsancom/bumptech/glide/load/Encoder;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lccsancom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v3

    :cond_4
    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 174
    return-void
.end method
