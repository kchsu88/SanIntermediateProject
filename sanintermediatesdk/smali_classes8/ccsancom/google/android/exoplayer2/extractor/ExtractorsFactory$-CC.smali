.class public final synthetic Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory$-CC;
.super Ljava/lang/Object;
.source "ExtractorsFactory.java"


# direct methods
.method public static $default$createExtractors(Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory;Lccsanandroid/net/Uri;Ljava/util/Map;)[Lccsancom/google/android/exoplayer2/extractor/Extractor;
    .locals 1
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory;
    .param p1, "uri"    # Lccsanandroid/net/Uri;

    .line 43
    .local p2, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p0}, Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory;->createExtractors()[Lccsancom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory;->EMPTY:Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public static synthetic lambda$static$0()[Lccsancom/google/android/exoplayer2/extractor/Extractor;
    .locals 1

    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [Lccsancom/google/android/exoplayer2/extractor/Extractor;

    return-object v0
.end method
