.class public Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
.super Ljava/lang/Object;
.source "MaterialContainerTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/transition/platform/MaterialContainerTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressThresholds"
.end annotation


# instance fields
.field private final end:F

.field private final start:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "start"    # F
    .param p2, "end"    # F

    .line 1505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1506
    iput p1, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->start:F

    .line 1507
    iput p2, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->end:F

    .line 1508
    return-void
.end method

.method static synthetic access$1000(Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)F
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 1496
    iget v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->start:F

    return v0
.end method

.method static synthetic access$1100(Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)F
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 1496
    iget v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->end:F

    return v0
.end method


# virtual methods
.method public getEnd()F
    .locals 1

    .line 1517
    iget v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->end:F

    return v0
.end method

.method public getStart()F
    .locals 1

    .line 1512
    iget v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->start:F

    return v0
.end method
