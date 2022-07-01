.class public final synthetic Lccsancom/google/android/exoplayer2/source/DefaultMediaSourceFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory;


# instance fields
.field public final synthetic f$0:Lccsancom/google/android/exoplayer2/Format;


# direct methods
.method public synthetic constructor <init>(Lccsancom/google/android/exoplayer2/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/source/DefaultMediaSourceFactory$$ExternalSyntheticLambda0;->f$0:Lccsancom/google/android/exoplayer2/Format;

    return-void
.end method


# virtual methods
.method public final createExtractors()[Lccsancom/google/android/exoplayer2/extractor/Extractor;
    .locals 1

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/DefaultMediaSourceFactory$$ExternalSyntheticLambda0;->f$0:Lccsancom/google/android/exoplayer2/Format;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->lambda$createMediaSource$0(Lccsancom/google/android/exoplayer2/Format;)[Lccsancom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method

.method public synthetic createExtractors(Lccsanandroid/net/Uri;Ljava/util/Map;)[Lccsancom/google/android/exoplayer2/extractor/Extractor;
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory$-CC;->$default$createExtractors(Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory;Lccsanandroid/net/Uri;Ljava/util/Map;)[Lccsancom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p1

    return-object p1
.end method
