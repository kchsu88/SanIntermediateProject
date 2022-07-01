.class Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;
.super Ljava/lang/Object;
.source "MaterialContainerTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/transition/platform/MaterialContainerTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProgressThresholdsGroup"
.end annotation


# instance fields
.field private final fade:Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

.field private final scale:Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

.field private final scaleMask:Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

.field private final shapeMask:Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;


# direct methods
.method private constructor <init>(Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V
    .locals 0
    .param p1, "fade"    # Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .param p2, "scale"    # Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .param p3, "scaleMask"    # Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .param p4, "shapeMask"    # Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 1531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1532
    iput-object p1, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->fade:Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 1533
    iput-object p2, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->scale:Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 1534
    iput-object p3, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->scaleMask:Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 1535
    iput-object p4, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->shapeMask:Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 1536
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .param p2, "x1"    # Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .param p3, "x2"    # Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .param p4, "x3"    # Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .param p5, "x4"    # Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$1;

    .line 1521
    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V

    return-void
.end method

.method static synthetic access$400(Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 1521
    iget-object v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->fade:Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    return-object v0
.end method

.method static synthetic access$500(Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 1521
    iget-object v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->scale:Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    return-object v0
.end method

.method static synthetic access$600(Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 1521
    iget-object v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->scaleMask:Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    return-object v0
.end method

.method static synthetic access$700(Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 1521
    iget-object v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->shapeMask:Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    return-object v0
.end method
