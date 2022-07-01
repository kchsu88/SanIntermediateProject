.class public final synthetic Lccsancom/google/android/exoplayer2/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory;


# static fields
.field public static final synthetic INSTANCE:Lccsancom/google/android/exoplayer2/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lccsancom/google/android/exoplayer2/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lccsancom/google/android/exoplayer2/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;->INSTANCE:Lccsancom/google/android/exoplayer2/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createExtractors()[Lccsancom/google/android/exoplayer2/extractor/Extractor;
    .locals 1

    invoke-static {}, Lccsancom/google/android/exoplayer2/extractor/amr/AmrExtractor;->lambda$static$0()[Lccsancom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method

.method public synthetic createExtractors(Lccsanandroid/net/Uri;Ljava/util/Map;)[Lccsancom/google/android/exoplayer2/extractor/Extractor;
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory$-CC;->$default$createExtractors(Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory;Lccsanandroid/net/Uri;Ljava/util/Map;)[Lccsancom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p1

    return-object p1
.end method
