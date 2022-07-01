.class public interface abstract Lccsancom/google/android/exoplayer2/metadata/MetadataDecoderFactory;
.super Ljava/lang/Object;
.source "MetadataDecoderFactory.java"


# static fields
.field public static final DEFAULT:Lccsancom/google/android/exoplayer2/metadata/MetadataDecoderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lccsancom/google/android/exoplayer2/metadata/MetadataDecoderFactory$1;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/metadata/MetadataDecoderFactory$1;-><init>()V

    sput-object v0, Lccsancom/google/android/exoplayer2/metadata/MetadataDecoderFactory;->DEFAULT:Lccsancom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

    return-void
.end method


# virtual methods
.method public abstract createDecoder(Lccsancom/google/android/exoplayer2/Format;)Lccsancom/google/android/exoplayer2/metadata/MetadataDecoder;
.end method

.method public abstract supportsFormat(Lccsancom/google/android/exoplayer2/Format;)Z
.end method
