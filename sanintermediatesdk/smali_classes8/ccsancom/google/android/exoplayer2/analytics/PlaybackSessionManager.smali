.class public interface abstract Lccsancom/google/android/exoplayer2/analytics/PlaybackSessionManager;
.super Ljava/lang/Object;
.source "PlaybackSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;
    }
.end annotation


# virtual methods
.method public abstract belongsToSession(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Z
.end method

.method public abstract finishAllSessions(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract getActiveSessionId()Ljava/lang/String;
.end method

.method public abstract getSessionForMediaPeriodId(Lccsancom/google/android/exoplayer2/Timeline;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Ljava/lang/String;
.end method

.method public abstract setListener(Lccsancom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;)V
.end method

.method public abstract updateSessions(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract updateSessionsWithDiscontinuity(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
.end method

.method public abstract updateSessionsWithTimelineChange(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
.end method
