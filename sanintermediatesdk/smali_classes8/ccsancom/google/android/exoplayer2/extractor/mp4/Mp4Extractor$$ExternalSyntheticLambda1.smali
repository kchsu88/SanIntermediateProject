.class public final synthetic Lccsancom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lccsancom/google/common/base/Function;


# static fields
.field public static final synthetic INSTANCE:Lccsancom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lccsancom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lccsancom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda1;->INSTANCE:Lccsancom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lccsancom/google/android/exoplayer2/extractor/mp4/Track;

    invoke-static {p1}, Lccsancom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->lambda$processMoovAtom$1(Lccsancom/google/android/exoplayer2/extractor/mp4/Track;)Lccsancom/google/android/exoplayer2/extractor/mp4/Track;

    move-result-object p1

    return-object p1
.end method
