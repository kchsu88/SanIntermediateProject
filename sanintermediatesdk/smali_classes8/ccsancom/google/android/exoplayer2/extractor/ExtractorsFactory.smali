.class public interface abstract Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory;
.super Ljava/lang/Object;
.source "ExtractorsFactory.java"


# static fields
.field public static final EMPTY:Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    sget-object v0, Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory$$ExternalSyntheticLambda0;->INSTANCE:Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory$$ExternalSyntheticLambda0;

    sput-object v0, Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory;->EMPTY:Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method


# virtual methods
.method public abstract createExtractors()[Lccsancom/google/android/exoplayer2/extractor/Extractor;
.end method

.method public abstract createExtractors(Lccsanandroid/net/Uri;Ljava/util/Map;)[Lccsancom/google/android/exoplayer2/extractor/Extractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Lccsancom/google/android/exoplayer2/extractor/Extractor;"
        }
    .end annotation
.end method
