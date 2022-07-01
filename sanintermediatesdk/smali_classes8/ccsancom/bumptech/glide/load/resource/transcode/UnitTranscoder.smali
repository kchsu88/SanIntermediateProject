.class public Lccsancom/bumptech/glide/load/resource/transcode/UnitTranscoder;
.super Ljava/lang/Object;
.source "UnitTranscoder.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
        "TZ;TZ;>;"
    }
.end annotation


# static fields
.field private static final UNIT_TRANSCODER:Lccsancom/bumptech/glide/load/resource/transcode/UnitTranscoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/resource/transcode/UnitTranscoder<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lccsancom/bumptech/glide/load/resource/transcode/UnitTranscoder;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/resource/transcode/UnitTranscoder;-><init>()V

    sput-object v0, Lccsancom/bumptech/glide/load/resource/transcode/UnitTranscoder;->UNIT_TRANSCODER:Lccsancom/bumptech/glide/load/resource/transcode/UnitTranscoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    .local p0, "this":Lccsancom/bumptech/glide/load/resource/transcode/UnitTranscoder;, "Lccsancom/bumptech/glide/load/resource/transcode/UnitTranscoder<TZ;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
            "TZ;TZ;>;"
        }
    .end annotation

    .line 15
    sget-object v0, Lccsancom/bumptech/glide/load/resource/transcode/UnitTranscoder;->UNIT_TRANSCODER:Lccsancom/bumptech/glide/load/resource/transcode/UnitTranscoder;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 25
    .local p0, "this":Lccsancom/bumptech/glide/load/resource/transcode/UnitTranscoder;, "Lccsancom/bumptech/glide/load/resource/transcode/UnitTranscoder<TZ;>;"
    const-string v0, ""

    return-object v0
.end method

.method public transcode(Lccsancom/bumptech/glide/load/engine/Resource;)Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "TZ;>;)",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "TZ;>;"
        }
    .end annotation

    .line 20
    .local p0, "this":Lccsancom/bumptech/glide/load/resource/transcode/UnitTranscoder;, "Lccsancom/bumptech/glide/load/resource/transcode/UnitTranscoder<TZ;>;"
    .local p1, "toTranscode":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<TZ;>;"
    return-object p1
.end method
