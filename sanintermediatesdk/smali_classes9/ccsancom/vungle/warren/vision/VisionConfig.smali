.class public Lccsancom/vungle/warren/vision/VisionConfig;
.super Ljava/lang/Object;
.source "VisionConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/vision/VisionConfig$Limits;
    }
.end annotation


# instance fields
.field public aggregationFilters:[Ljava/lang/String;
    .annotation runtime Lccsancom/google/gson/annotations/SerializedName;
        value = "aggregation_filters"
    .end annotation
.end field

.field public aggregationTimeWindows:[I
    .annotation runtime Lccsancom/google/gson/annotations/SerializedName;
        value = "aggregation_time_windows"
    .end annotation
.end field

.field public enabled:Z
    .annotation runtime Lccsancom/google/gson/annotations/SerializedName;
        value = "enabled"
    .end annotation
.end field

.field public viewLimit:Lccsancom/vungle/warren/vision/VisionConfig$Limits;
    .annotation runtime Lccsancom/google/gson/annotations/SerializedName;
        value = "view_limit"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
