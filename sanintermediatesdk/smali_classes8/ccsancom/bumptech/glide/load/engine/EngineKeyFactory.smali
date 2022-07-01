.class Lccsancom/bumptech/glide/load/engine/EngineKeyFactory;
.super Ljava/lang/Object;
.source "EngineKeyFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildKey(Ljava/lang/String;Lccsancom/bumptech/glide/load/Key;IILccsancom/bumptech/glide/load/ResourceDecoder;Lccsancom/bumptech/glide/load/ResourceDecoder;Lccsancom/bumptech/glide/load/Transformation;Lccsancom/bumptech/glide/load/ResourceEncoder;Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lccsancom/bumptech/glide/load/Encoder;)Lccsancom/bumptech/glide/load/engine/EngineKey;
    .locals 12
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "signature"    # Lccsancom/bumptech/glide/load/Key;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "cacheDecoder"    # Lccsancom/bumptech/glide/load/ResourceDecoder;
    .param p6, "sourceDecoder"    # Lccsancom/bumptech/glide/load/ResourceDecoder;
    .param p7, "transformation"    # Lccsancom/bumptech/glide/load/Transformation;
    .param p8, "encoder"    # Lccsancom/bumptech/glide/load/ResourceEncoder;
    .param p9, "transcoder"    # Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .param p10, "sourceEncoder"    # Lccsancom/bumptech/glide/load/Encoder;

    .line 16
    new-instance v11, Lccsancom/bumptech/glide/load/engine/EngineKey;

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lccsancom/bumptech/glide/load/engine/EngineKey;-><init>(Ljava/lang/String;Lccsancom/bumptech/glide/load/Key;IILccsancom/bumptech/glide/load/ResourceDecoder;Lccsancom/bumptech/glide/load/ResourceDecoder;Lccsancom/bumptech/glide/load/Transformation;Lccsancom/bumptech/glide/load/ResourceEncoder;Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lccsancom/bumptech/glide/load/Encoder;)V

    return-object v11
.end method
