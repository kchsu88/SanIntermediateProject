.class public final synthetic Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda62;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lccsancom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda62;->f$0:Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iput p2, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda62;->f$1:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda62;->f$0:Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget v1, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda62;->f$1:F

    check-cast p1, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;->lambda$onVolumeChanged$15(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;FLccsancom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return-void
.end method
