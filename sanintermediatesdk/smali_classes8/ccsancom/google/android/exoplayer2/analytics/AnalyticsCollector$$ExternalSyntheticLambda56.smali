.class public final synthetic Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda56;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lccsancom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda56;->f$0:Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iput-boolean p2, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda56;->f$1:Z

    iput p3, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda56;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda56;->f$0:Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-boolean v1, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda56;->f$1:Z

    iget v2, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda56;->f$2:I

    check-cast p1, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;

    invoke-static {v0, v1, v2, p1}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;->lambda$onPlayWhenReadyChanged$41(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZILccsancom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return-void
.end method