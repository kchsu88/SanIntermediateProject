.class public final Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
.super Ljava/lang/Object;
.source "ShapeAppearanceModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/shape/ShapeAppearanceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bottomEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

.field private bottomLeftCorner:Lccsancom/google/android/material/shape/CornerTreatment;

.field private bottomLeftCornerSize:Lccsancom/google/android/material/shape/CornerSize;

.field private bottomRightCorner:Lccsancom/google/android/material/shape/CornerTreatment;

.field private bottomRightCornerSize:Lccsancom/google/android/material/shape/CornerSize;

.field private leftEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

.field private rightEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

.field private topEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

.field private topLeftCorner:Lccsancom/google/android/material/shape/CornerTreatment;

.field private topLeftCornerSize:Lccsancom/google/android/material/shape/CornerSize;

.field private topRightCorner:Lccsancom/google/android/material/shape/CornerTreatment;

.field private topRightCornerSize:Lccsancom/google/android/material/shape/CornerSize;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    nop

    .line 47
    invoke-static {}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lccsancom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 49
    nop

    .line 50
    invoke-static {}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lccsancom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 52
    nop

    .line 53
    invoke-static {}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lccsancom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 55
    nop

    .line 56
    invoke-static {}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lccsancom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 58
    new-instance v0, Lccsancom/google/android/material/shape/AbsoluteCornerSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    .line 59
    new-instance v0, Lccsancom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lccsancom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    .line 60
    new-instance v0, Lccsancom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lccsancom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    .line 61
    new-instance v0, Lccsancom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lccsancom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    .line 63
    invoke-static {}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lccsancom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->topEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 64
    invoke-static {}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lccsancom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->rightEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 65
    invoke-static {}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lccsancom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 66
    invoke-static {}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lccsancom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->leftEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 68
    return-void
.end method

.method public constructor <init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 2
    .param p1, "other"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    nop

    .line 47
    invoke-static {}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lccsancom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 49
    nop

    .line 50
    invoke-static {}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lccsancom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 52
    nop

    .line 53
    invoke-static {}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lccsancom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 55
    nop

    .line 56
    invoke-static {}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lccsancom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 58
    new-instance v0, Lccsancom/google/android/material/shape/AbsoluteCornerSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    .line 59
    new-instance v0, Lccsancom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lccsancom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    .line 60
    new-instance v0, Lccsancom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lccsancom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    .line 61
    new-instance v0, Lccsancom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lccsancom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    .line 63
    invoke-static {}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lccsancom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->topEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 64
    invoke-static {}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lccsancom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->rightEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 65
    invoke-static {}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lccsancom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 66
    invoke-static {}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lccsancom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->leftEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 71
    iget-object v0, p1, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 72
    iget-object v0, p1, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 73
    iget-object v0, p1, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 74
    iget-object v0, p1, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 76
    iget-object v0, p1, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    .line 77
    iget-object v0, p1, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    .line 78
    iget-object v0, p1, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    .line 79
    iget-object v0, p1, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    .line 81
    iget-object v0, p1, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->topEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 82
    iget-object v0, p1, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->rightEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 83
    iget-object v0, p1, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 84
    iget-object v0, p1, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->leftEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 85
    return-void
.end method

.method static synthetic access$100(Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lccsancom/google/android/material/shape/CornerTreatment;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 44
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    return-object v0
.end method

.method static synthetic access$1000(Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lccsancom/google/android/material/shape/EdgeTreatment;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 44
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->rightEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method

.method static synthetic access$1100(Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lccsancom/google/android/material/shape/EdgeTreatment;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 44
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method

.method static synthetic access$1200(Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lccsancom/google/android/material/shape/EdgeTreatment;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 44
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->leftEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method

.method static synthetic access$200(Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lccsancom/google/android/material/shape/CornerTreatment;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 44
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    return-object v0
.end method

.method static synthetic access$300(Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lccsancom/google/android/material/shape/CornerTreatment;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 44
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    return-object v0
.end method

.method static synthetic access$400(Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lccsancom/google/android/material/shape/CornerTreatment;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 44
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    return-object v0
.end method

.method static synthetic access$500(Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lccsancom/google/android/material/shape/CornerSize;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 44
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    return-object v0
.end method

.method static synthetic access$600(Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lccsancom/google/android/material/shape/CornerSize;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 44
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    return-object v0
.end method

.method static synthetic access$700(Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lccsancom/google/android/material/shape/CornerSize;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 44
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    return-object v0
.end method

.method static synthetic access$800(Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lccsancom/google/android/material/shape/CornerSize;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 44
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    return-object v0
.end method

.method static synthetic access$900(Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lccsancom/google/android/material/shape/EdgeTreatment;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 44
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->topEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method

.method private static compatCornerTreatmentSize(Lccsancom/google/android/material/shape/CornerTreatment;)F
    .locals 1
    .param p0, "treatment"    # Lccsancom/google/android/material/shape/CornerTreatment;

    .line 418
    instance-of v0, p0, Lccsancom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v0, :cond_0

    .line 419
    move-object v0, p0

    check-cast v0, Lccsancom/google/android/material/shape/RoundedCornerTreatment;

    iget v0, v0, Lccsancom/google/android/material/shape/RoundedCornerTreatment;->radius:F

    return v0

    .line 420
    :cond_0
    instance-of v0, p0, Lccsancom/google/android/material/shape/CutCornerTreatment;

    if-eqz v0, :cond_1

    .line 421
    move-object v0, p0

    check-cast v0, Lccsancom/google/android/material/shape/CutCornerTreatment;

    iget v0, v0, Lccsancom/google/android/material/shape/CutCornerTreatment;->size:F

    return v0

    .line 423
    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method


# virtual methods
.method public build()Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .locals 2

    .line 429
    new-instance v0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;-><init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;Lccsancom/google/android/material/shape/ShapeAppearanceModel$1;)V

    return-object v0
.end method

.method public setAllCornerSizes(F)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1
    .param p1, "cornerSize"    # F

    .line 131
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(F)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 132
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(F)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 133
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(F)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(F)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 131
    return-object v0
.end method

.method public setAllCornerSizes(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1
    .param p1, "cornerSize"    # Lccsancom/google/android/material/shape/CornerSize;

    .line 122
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 124
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 122
    return-object v0
.end method

.method public setAllCorners(IF)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1
    .param p1, "cornerFamily"    # I
    .param p2, "cornerSize"    # F

    .line 98
    invoke-static {p1}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(I)Lccsancom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCorners(Lccsancom/google/android/material/shape/CornerTreatment;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {v0, p2}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCornerSizes(F)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 98
    return-object v0
.end method

.method public setAllCorners(Lccsancom/google/android/material/shape/CornerTreatment;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1
    .param p1, "cornerTreatment"    # Lccsancom/google/android/material/shape/CornerTreatment;

    .line 109
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCorner(Lccsancom/google/android/material/shape/CornerTreatment;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCorner(Lccsancom/google/android/material/shape/CornerTreatment;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCorner(Lccsancom/google/android/material/shape/CornerTreatment;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 112
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCorner(Lccsancom/google/android/material/shape/CornerTreatment;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 109
    return-object v0
.end method

.method public setAllEdges(Lccsancom/google/android/material/shape/EdgeTreatment;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1
    .param p1, "edgeTreatment"    # Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 366
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setLeftEdge(Lccsancom/google/android/material/shape/EdgeTreatment;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 367
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopEdge(Lccsancom/google/android/material/shape/EdgeTreatment;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 368
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setRightEdge(Lccsancom/google/android/material/shape/EdgeTreatment;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 369
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomEdge(Lccsancom/google/android/material/shape/EdgeTreatment;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 366
    return-object v0
.end method

.method public setBottomEdge(Lccsancom/google/android/material/shape/EdgeTreatment;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 0
    .param p1, "bottomEdge"    # Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 412
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 413
    return-object p0
.end method

.method public setBottomLeftCorner(IF)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1
    .param p1, "cornerFamily"    # I
    .param p2, "cornerSize"    # F

    .line 326
    invoke-static {p1}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(I)Lccsancom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCorner(Lccsancom/google/android/material/shape/CornerTreatment;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 327
    invoke-virtual {v0, p2}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(F)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 326
    return-object v0
.end method

.method public setBottomLeftCorner(ILccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1
    .param p1, "cornerFamily"    # I
    .param p2, "cornerSize"    # Lccsancom/google/android/material/shape/CornerSize;

    .line 339
    invoke-static {p1}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(I)Lccsancom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCorner(Lccsancom/google/android/material/shape/CornerTreatment;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 340
    invoke-virtual {v0, p2}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 339
    return-object v0
.end method

.method public setBottomLeftCorner(Lccsancom/google/android/material/shape/CornerTreatment;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 2
    .param p1, "bottomLeftCorner"    # Lccsancom/google/android/material/shape/CornerTreatment;

    .line 350
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 352
    invoke-static {p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->compatCornerTreatmentSize(Lccsancom/google/android/material/shape/CornerTreatment;)F

    move-result v0

    .line 353
    .local v0, "size":F
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 354
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(F)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 356
    :cond_0
    return-object p0
.end method

.method public setBottomLeftCornerSize(F)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1
    .param p1, "cornerSize"    # F

    .line 182
    new-instance v0, Lccsancom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, p1}, Lccsancom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    .line 183
    return-object p0
.end method

.method public setBottomLeftCornerSize(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 0
    .param p1, "cornerSize"    # Lccsancom/google/android/material/shape/CornerSize;

    .line 189
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    .line 190
    return-object p0
.end method

.method public setBottomRightCorner(IF)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1
    .param p1, "cornerFamily"    # I
    .param p2, "cornerSize"    # F

    .line 284
    invoke-static {p1}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(I)Lccsancom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCorner(Lccsancom/google/android/material/shape/CornerTreatment;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 285
    invoke-virtual {v0, p2}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(F)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 284
    return-object v0
.end method

.method public setBottomRightCorner(ILccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1
    .param p1, "cornerFamily"    # I
    .param p2, "cornerSize"    # Lccsancom/google/android/material/shape/CornerSize;

    .line 297
    invoke-static {p1}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(I)Lccsancom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCorner(Lccsancom/google/android/material/shape/CornerTreatment;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 298
    invoke-virtual {v0, p2}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 297
    return-object v0
.end method

.method public setBottomRightCorner(Lccsancom/google/android/material/shape/CornerTreatment;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 2
    .param p1, "bottomRightCorner"    # Lccsancom/google/android/material/shape/CornerTreatment;

    .line 308
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 310
    invoke-static {p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->compatCornerTreatmentSize(Lccsancom/google/android/material/shape/CornerTreatment;)F

    move-result v0

    .line 311
    .local v0, "size":F
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 312
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(F)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 314
    :cond_0
    return-object p0
.end method

.method public setBottomRightCornerSize(F)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1
    .param p1, "cornerSize"    # F

    .line 168
    new-instance v0, Lccsancom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, p1}, Lccsancom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    .line 169
    return-object p0
.end method

.method public setBottomRightCornerSize(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 0
    .param p1, "cornerSize"    # Lccsancom/google/android/material/shape/CornerSize;

    .line 175
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    .line 176
    return-object p0
.end method

.method public setLeftEdge(Lccsancom/google/android/material/shape/EdgeTreatment;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 0
    .param p1, "leftEdge"    # Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 379
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->leftEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 380
    return-object p0
.end method

.method public setRightEdge(Lccsancom/google/android/material/shape/EdgeTreatment;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 0
    .param p1, "rightEdge"    # Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 401
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->rightEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 402
    return-object p0
.end method

.method public setTopEdge(Lccsancom/google/android/material/shape/EdgeTreatment;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 0
    .param p1, "topEdge"    # Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 390
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->topEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 391
    return-object p0
.end method

.method public setTopLeftCorner(IF)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1
    .param p1, "cornerFamily"    # I
    .param p2, "cornerSize"    # F

    .line 201
    invoke-static {p1}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(I)Lccsancom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCorner(Lccsancom/google/android/material/shape/CornerTreatment;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 202
    invoke-virtual {v0, p2}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(F)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 201
    return-object v0
.end method

.method public setTopLeftCorner(ILccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1
    .param p1, "cornerFamily"    # I
    .param p2, "cornerSize"    # Lccsancom/google/android/material/shape/CornerSize;

    .line 214
    invoke-static {p1}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(I)Lccsancom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCorner(Lccsancom/google/android/material/shape/CornerTreatment;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 215
    invoke-virtual {v0, p2}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 214
    return-object v0
.end method

.method public setTopLeftCorner(Lccsancom/google/android/material/shape/CornerTreatment;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 2
    .param p1, "topLeftCorner"    # Lccsancom/google/android/material/shape/CornerTreatment;

    .line 225
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 227
    invoke-static {p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->compatCornerTreatmentSize(Lccsancom/google/android/material/shape/CornerTreatment;)F

    move-result v0

    .line 228
    .local v0, "size":F
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(F)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 231
    :cond_0
    return-object p0
.end method

.method public setTopLeftCornerSize(F)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1
    .param p1, "cornerSize"    # F

    .line 140
    new-instance v0, Lccsancom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, p1}, Lccsancom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    .line 141
    return-object p0
.end method

.method public setTopLeftCornerSize(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 0
    .param p1, "cornerSize"    # Lccsancom/google/android/material/shape/CornerSize;

    .line 147
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    .line 148
    return-object p0
.end method

.method public setTopRightCorner(IF)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1
    .param p1, "cornerFamily"    # I
    .param p2, "cornerSize"    # F

    .line 242
    invoke-static {p1}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(I)Lccsancom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCorner(Lccsancom/google/android/material/shape/CornerTreatment;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 243
    invoke-virtual {v0, p2}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(F)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 242
    return-object v0
.end method

.method public setTopRightCorner(ILccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1
    .param p1, "cornerFamily"    # I
    .param p2, "cornerSize"    # Lccsancom/google/android/material/shape/CornerSize;

    .line 255
    invoke-static {p1}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(I)Lccsancom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCorner(Lccsancom/google/android/material/shape/CornerTreatment;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 256
    invoke-virtual {v0, p2}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 255
    return-object v0
.end method

.method public setTopRightCorner(Lccsancom/google/android/material/shape/CornerTreatment;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 2
    .param p1, "topRightCorner"    # Lccsancom/google/android/material/shape/CornerTreatment;

    .line 266
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 268
    invoke-static {p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->compatCornerTreatmentSize(Lccsancom/google/android/material/shape/CornerTreatment;)F

    move-result v0

    .line 269
    .local v0, "size":F
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(F)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 272
    :cond_0
    return-object p0
.end method

.method public setTopRightCornerSize(F)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1
    .param p1, "cornerSize"    # F

    .line 154
    new-instance v0, Lccsancom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, p1}, Lccsancom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    .line 155
    return-object p0
.end method

.method public setTopRightCornerSize(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 0
    .param p1, "cornerSize"    # Lccsancom/google/android/material/shape/CornerSize;

    .line 161
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    .line 162
    return-object p0
.end method
