.class public final Lccsancom/google/android/material/shape/OffsetEdgeTreatment;
.super Lccsancom/google/android/material/shape/EdgeTreatment;
.source "OffsetEdgeTreatment.java"


# instance fields
.field private final offset:F

.field private final other:Lccsancom/google/android/material/shape/EdgeTreatment;


# direct methods
.method public constructor <init>(Lccsancom/google/android/material/shape/EdgeTreatment;F)V
    .locals 0
    .param p1, "other"    # Lccsancom/google/android/material/shape/EdgeTreatment;
    .param p2, "offset"    # F

    .line 27
    invoke-direct {p0}, Lccsancom/google/android/material/shape/EdgeTreatment;-><init>()V

    .line 28
    iput-object p1, p0, Lccsancom/google/android/material/shape/OffsetEdgeTreatment;->other:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 29
    iput p2, p0, Lccsancom/google/android/material/shape/OffsetEdgeTreatment;->offset:F

    .line 30
    return-void
.end method


# virtual methods
.method forceIntersection()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lccsancom/google/android/material/shape/OffsetEdgeTreatment;->other:Lccsancom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0}, Lccsancom/google/android/material/shape/EdgeTreatment;->forceIntersection()Z

    move-result v0

    return v0
.end method

.method public getEdgePath(FFFLccsancom/google/android/material/shape/ShapePath;)V
    .locals 2
    .param p1, "length"    # F
    .param p2, "center"    # F
    .param p3, "interpolation"    # F
    .param p4, "shapePath"    # Lccsancom/google/android/material/shape/ShapePath;

    .line 35
    iget-object v0, p0, Lccsancom/google/android/material/shape/OffsetEdgeTreatment;->other:Lccsancom/google/android/material/shape/EdgeTreatment;

    iget v1, p0, Lccsancom/google/android/material/shape/OffsetEdgeTreatment;->offset:F

    sub-float v1, p2, v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lccsancom/google/android/material/shape/EdgeTreatment;->getEdgePath(FFFLccsancom/google/android/material/shape/ShapePath;)V

    .line 36
    return-void
.end method
