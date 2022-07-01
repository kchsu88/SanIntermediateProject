.class public Lccsancom/vungle/warren/vision/VisionAggregationData;
.super Ljava/lang/Object;
.source "VisionAggregationData.java"


# instance fields
.field public id:Ljava/lang/String;

.field public lastTimeStamp:J

.field public viewCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "viewCount"    # I
    .param p3, "lastTimeStamp"    # J

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lccsancom/vungle/warren/vision/VisionAggregationData;->id:Ljava/lang/String;

    .line 13
    iput p2, p0, Lccsancom/vungle/warren/vision/VisionAggregationData;->viewCount:I

    .line 14
    iput-wide p3, p0, Lccsancom/vungle/warren/vision/VisionAggregationData;->lastTimeStamp:J

    .line 15
    return-void
.end method
