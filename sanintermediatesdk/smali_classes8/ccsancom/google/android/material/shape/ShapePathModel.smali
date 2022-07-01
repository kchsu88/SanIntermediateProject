.class public Lccsancom/google/android/material/shape/ShapePathModel;
.super Lccsancom/google/android/material/shape/ShapeAppearanceModel;
.source "ShapePathModel.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;-><init>()V

    return-void
.end method


# virtual methods
.method public setAllCorners(Lccsancom/google/android/material/shape/CornerTreatment;)V
    .locals 0
    .param p1, "cornerTreatment"    # Lccsancom/google/android/material/shape/CornerTreatment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapePathModel;->topLeftCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 37
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapePathModel;->topRightCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 38
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapePathModel;->bottomRightCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 39
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapePathModel;->bottomLeftCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 40
    return-void
.end method

.method public setAllEdges(Lccsancom/google/android/material/shape/EdgeTreatment;)V
    .locals 0
    .param p1, "edgeTreatment"    # Lccsancom/google/android/material/shape/EdgeTreatment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapePathModel;->leftEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 51
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapePathModel;->topEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 52
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapePathModel;->rightEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 53
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapePathModel;->bottomEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 54
    return-void
.end method

.method public setBottomEdge(Lccsancom/google/android/material/shape/EdgeTreatment;)V
    .locals 0
    .param p1, "bottomEdge"    # Lccsancom/google/android/material/shape/EdgeTreatment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 172
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapePathModel;->bottomEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 173
    return-void
.end method

.method public setBottomLeftCorner(Lccsancom/google/android/material/shape/CornerTreatment;)V
    .locals 0
    .param p1, "bottomLeftCorner"    # Lccsancom/google/android/material/shape/CornerTreatment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapePathModel;->bottomLeftCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 140
    return-void
.end method

.method public setBottomRightCorner(Lccsancom/google/android/material/shape/CornerTreatment;)V
    .locals 0
    .param p1, "bottomRightCorner"    # Lccsancom/google/android/material/shape/CornerTreatment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapePathModel;->bottomRightCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 129
    return-void
.end method

.method public setCornerTreatments(Lccsancom/google/android/material/shape/CornerTreatment;Lccsancom/google/android/material/shape/CornerTreatment;Lccsancom/google/android/material/shape/CornerTreatment;Lccsancom/google/android/material/shape/CornerTreatment;)V
    .locals 0
    .param p1, "topLeftCorner"    # Lccsancom/google/android/material/shape/CornerTreatment;
    .param p2, "topRightCorner"    # Lccsancom/google/android/material/shape/CornerTreatment;
    .param p3, "bottomRightCorner"    # Lccsancom/google/android/material/shape/CornerTreatment;
    .param p4, "bottomLeftCorner"    # Lccsancom/google/android/material/shape/CornerTreatment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapePathModel;->topLeftCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 72
    iput-object p2, p0, Lccsancom/google/android/material/shape/ShapePathModel;->topRightCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 73
    iput-object p3, p0, Lccsancom/google/android/material/shape/ShapePathModel;->bottomRightCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 74
    iput-object p4, p0, Lccsancom/google/android/material/shape/ShapePathModel;->bottomLeftCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 75
    return-void
.end method

.method public setEdgeTreatments(Lccsancom/google/android/material/shape/EdgeTreatment;Lccsancom/google/android/material/shape/EdgeTreatment;Lccsancom/google/android/material/shape/EdgeTreatment;Lccsancom/google/android/material/shape/EdgeTreatment;)V
    .locals 0
    .param p1, "leftEdge"    # Lccsancom/google/android/material/shape/EdgeTreatment;
    .param p2, "topEdge"    # Lccsancom/google/android/material/shape/EdgeTreatment;
    .param p3, "rightEdge"    # Lccsancom/google/android/material/shape/EdgeTreatment;
    .param p4, "bottomEdge"    # Lccsancom/google/android/material/shape/EdgeTreatment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapePathModel;->leftEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 93
    iput-object p2, p0, Lccsancom/google/android/material/shape/ShapePathModel;->topEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 94
    iput-object p3, p0, Lccsancom/google/android/material/shape/ShapePathModel;->rightEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 95
    iput-object p4, p0, Lccsancom/google/android/material/shape/ShapePathModel;->bottomEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 96
    return-void
.end method

.method public setLeftEdge(Lccsancom/google/android/material/shape/EdgeTreatment;)V
    .locals 0
    .param p1, "leftEdge"    # Lccsancom/google/android/material/shape/EdgeTreatment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapePathModel;->leftEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 184
    return-void
.end method

.method public setRightEdge(Lccsancom/google/android/material/shape/EdgeTreatment;)V
    .locals 0
    .param p1, "rightEdge"    # Lccsancom/google/android/material/shape/EdgeTreatment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapePathModel;->rightEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 162
    return-void
.end method

.method public setTopEdge(Lccsancom/google/android/material/shape/EdgeTreatment;)V
    .locals 0
    .param p1, "topEdge"    # Lccsancom/google/android/material/shape/EdgeTreatment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapePathModel;->topEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 151
    return-void
.end method

.method public setTopLeftCorner(Lccsancom/google/android/material/shape/CornerTreatment;)V
    .locals 0
    .param p1, "topLeftCorner"    # Lccsancom/google/android/material/shape/CornerTreatment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapePathModel;->topLeftCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 107
    return-void
.end method

.method public setTopRightCorner(Lccsancom/google/android/material/shape/CornerTreatment;)V
    .locals 0
    .param p1, "topRightCorner"    # Lccsancom/google/android/material/shape/CornerTreatment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapePathModel;->topRightCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 118
    return-void
.end method
