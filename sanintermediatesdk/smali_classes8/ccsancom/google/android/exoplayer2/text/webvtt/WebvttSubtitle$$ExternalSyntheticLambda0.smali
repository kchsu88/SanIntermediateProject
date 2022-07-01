.class public final synthetic Lccsancom/google/android/exoplayer2/text/webvtt/WebvttSubtitle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lccsancom/google/android/exoplayer2/text/webvtt/WebvttSubtitle$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttSubtitle$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttSubtitle$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttSubtitle$$ExternalSyntheticLambda0;->INSTANCE:Lccsancom/google/android/exoplayer2/text/webvtt/WebvttSubtitle$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;

    check-cast p2, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;

    invoke-static {p1, p2}, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->lambda$getCues$0(Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;)I

    move-result p1

    return p1
.end method
