.class public Lccsancom/vungle/warren/vision/VisionAggregationInfo;
.super Ljava/lang/Object;
.source "VisionAggregationInfo.java"


# instance fields
.field public lastCreative:Ljava/lang/String;

.field public totalCount:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "totalCount"    # I
    .param p2, "lastCreative"    # Ljava/lang/String;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lccsancom/vungle/warren/vision/VisionAggregationInfo;->totalCount:I

    .line 11
    iput-object p2, p0, Lccsancom/vungle/warren/vision/VisionAggregationInfo;->lastCreative:Ljava/lang/String;

    .line 12
    return-void
.end method
