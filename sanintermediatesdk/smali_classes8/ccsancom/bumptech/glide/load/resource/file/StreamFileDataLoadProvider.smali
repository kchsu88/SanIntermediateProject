.class public Lccsancom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;
.super Ljava/lang/Object;
.source "StreamFileDataLoadProvider.java"

# interfaces
.implements Lccsancom/bumptech/glide/provider/DataLoadProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/provider/DataLoadProvider<",
        "Ljava/io/InputStream;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final ERROR_DECODER:Lccsancom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;


# instance fields
.field private final cacheDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final encoder:Lccsancom/bumptech/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/Encoder<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lccsancom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;-><init>(Lccsancom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$1;)V

    sput-object v0, Lccsancom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;->ERROR_DECODER:Lccsancom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lccsancom/bumptech/glide/load/resource/file/FileDecoder;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/resource/file/FileDecoder;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;->cacheDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    .line 26
    new-instance v0, Lccsancom/bumptech/glide/load/model/StreamEncoder;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/model/StreamEncoder;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;->encoder:Lccsancom/bumptech/glide/load/Encoder;

    .line 27
    return-void
.end method


# virtual methods
.method public getCacheDecoder()Lccsancom/bumptech/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;->cacheDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    return-object v0
.end method

.method public getEncoder()Lccsancom/bumptech/glide/load/ResourceEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/ResourceEncoder<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-static {}, Lccsancom/bumptech/glide/load/resource/NullResourceEncoder;->get()Lccsancom/bumptech/glide/load/resource/NullResourceEncoder;

    move-result-object v0

    return-object v0
.end method

.method public getSourceDecoder()Lccsancom/bumptech/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/InputStream;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 36
    sget-object v0, Lccsancom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;->ERROR_DECODER:Lccsancom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;

    return-object v0
.end method

.method public getSourceEncoder()Lccsancom/bumptech/glide/load/Encoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/Encoder<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;->encoder:Lccsancom/bumptech/glide/load/Encoder;

    return-object v0
.end method
