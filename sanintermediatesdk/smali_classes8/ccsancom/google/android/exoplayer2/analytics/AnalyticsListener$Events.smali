.class public final Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$Events;
.super Ljava/lang/Object;
.source "AnalyticsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Events"
.end annotation


# instance fields
.field private final eventTimes:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;",
            ">;"
        }
    .end annotation
.end field

.field private final flags:Lccsancom/google/android/exoplayer2/util/FlagSet;


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/util/FlagSet;Lccsanandroid/util/SparseArray;)V
    .locals 4
    .param p1, "flags"    # Lccsancom/google/android/exoplayer2/util/FlagSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/android/exoplayer2/util/FlagSet;",
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p2, "eventTimes":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$Events;->flags:Lccsancom/google/android/exoplayer2/util/FlagSet;

    .line 93
    new-instance v0, Lccsanandroid/util/SparseArray;

    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lccsanandroid/util/SparseArray;-><init>(I)V

    .line 94
    .local v0, "flagsToTimes":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 95
    invoke-virtual {p1, v1}, Lccsancom/google/android/exoplayer2/util/FlagSet;->get(I)I

    move-result v2

    .line 96
    .local v2, "eventFlag":I
    invoke-virtual {p2, v2}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    invoke-static {v3}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    invoke-virtual {v0, v2, v3}, Lccsanandroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 94
    .end local v2    # "eventFlag":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "i":I
    :cond_0
    iput-object v0, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$Events;->eventTimes:Lccsanandroid/util/SparseArray;

    .line 99
    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 1
    .param p1, "event"    # I

    .line 118
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$Events;->flags:Lccsancom/google/android/exoplayer2/util/FlagSet;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/util/FlagSet;->contains(I)Z

    move-result v0

    return v0
.end method

.method public varargs containsAny([I)Z
    .locals 1
    .param p1, "events"    # [I

    .line 128
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$Events;->flags:Lccsancom/google/android/exoplayer2/util/FlagSet;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/util/FlagSet;->containsAny([I)Z

    move-result v0

    return v0
.end method

.method public get(I)I
    .locals 1
    .param p1, "index"    # I

    .line 147
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$Events;->flags:Lccsancom/google/android/exoplayer2/util/FlagSet;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/util/FlagSet;->get(I)I

    move-result v0

    return v0
.end method

.method public getEventTime(I)Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .locals 1
    .param p1, "event"    # I

    .line 108
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$Events;->eventTimes:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0, p1}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 133
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$Events;->flags:Lccsancom/google/android/exoplayer2/util/FlagSet;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v0

    return v0
.end method
